# AGENTS.md

## Start here
- Treat this repo as a **package monorepo**, not a single app. The real work lives under `packages/`; the root `pubspec.yaml` is mostly default Flutter scaffold and is **not** the source of truth for package workflows.
- The most useful overview is the root `README.md`. Most package `README.md` files are still placeholders.

## Architecture map
- `packages/xml_schema_validator/`: low-level XSD parser/validator. `XSdSchema.fromFile(...)` recursively follows `xs:include`/`xs:import` and powers validation/generation.
- `packages/xml_schema_builder/`: `build_runner` generator for `@FromSchema(...)` typedefs. See `lib/src/generator.dart` and `build.yaml`.
- `packages/soap_client/`: native Dart SOAP + mTLS transport. `SoapClient.nfe()` loads bundled SEFAZ/authority certs and auto-discovers WSDL operations before requests.
- `packages/nfe_client/`: main NF-e package. `NFeV4` in `lib/src/client.dart` picks production vs homologation endpoints from `enderecos.dart` / `enderecos_homologacao.dart`, signs XML, and calls SOAP services.
- `packages/danfe_nfe/`: PDF generation on top of `nfe_client` models (`generateDanfeFromProcNFe`, `generateCartaDeCorrecao`).
- Dependency direction is intentional: `xml_schema_validator` → `xml_schema_builder` → `soap_client` → `nfe_client` → `danfe_nfe`.

## Generated code rules
- In `nfe_client/lib/src/schemas/`, the handwritten file is the schema wrapper (for example `nfe4.dart`) and it usually has both `part '*.xsd.g.dart'` and `part '*.g.dart'`.
- **Do not hand-edit** `*.xsd.g.dart` or `*.g.dart`; change the wrapper typedef/extension or the source XSD under `packages/nfe_client/schemas/`, then regenerate.
- Generation pattern: `@FromSchema('schemas/...xsd') typedef FooSchema = _FooSchema;`.
- Regeneration command (run inside `packages/nfe_client`): `dart run build_runner build --delete-conflicting-outputs`.

## Working in this repo
- Run commands **inside the target package directory**; there is no workspace tool like Melos configured.
- Useful commands:
  - `cd packages/nfe_client && dart test`
  - `cd packages/nfe_client && dart analyze`
  - `cd packages/danfe_nfe && dart test`
  - `cd packages/xml_schema_validator && dart test`
- Current observed test state:
  - `packages/nfe_client/test/utils_test.dart` passes.
  - `packages/danfe_nfe/test/danfe_nfe_test.dart` references missing fixtures like `test/123-nfe.xml`.
  - `packages/xml_schema_validator/test/xml_schema_validator_test.dart` references missing `test/schemas/...` fixtures.
- `dart analyze` in `nfe_client` currently emits many **info-level** findings from generated schema files; avoid “cleaning up” generated files by hand.

## Project-specific conventions
- Endpoint routing is centralized in `NFeV4.fromUF(...)`; prefer adding new NF-e operations there instead of hardcoding URLs elsewhere.
- `common.dart` contains standalone replacements for types/utilities that used to come from an internal `global` package. Reuse these helpers instead of reintroducing external/shared dependencies.
- Many domain APIs intentionally use SEFAZ field names (`tpAmb`, `cUF`, `chNFe`, `CNPJ`, `CPF`). Preserve those names when extending schemas/clients.
- `CertificadoDigital` in `nfe_client/lib/src/models.dart` decrypts PEM/RSA/X509 material lazily via `encryptDecrypt.dart`; by default it reads `CERTS_ENCRYPT` from the environment.
- `encryptDecrypt.dart` uses legacy AES-CBC with a fixed IV (`NFE_CLIENT_IV_BASE64`); keep compatibility unless the task explicitly changes the storage format.
- Before injecting free-text into NF-e XML, use the sanitization helpers in `nfe_client/lib/src/schemas/utils.dart` (`removerCharRestrito`, `undoRemoverCharRestrito`). The tests in `packages/nfe_client/test/utils_test.dart` document the expected behavior.

## Editing guidance by area
- For NF-e transport/features: inspect `packages/nfe_client/lib/src/client.dart`, `tasks.dart`, `models.dart`, and the matching schema wrapper in `lib/src/schemas/`.
- For SOAP/mTLS issues: inspect `packages/soap_client/lib/src/types.dart` first; it handles retries, envelope creation, and WSDL auto-discovery.
- For DANFE output changes: start at `packages/danfe_nfe/lib/src/danfe_nfe_base.dart`, then the layout-specific files (`retrato.dart`, `paisagem.dart`, `simplificadoEtiqueta.dart`).
- For schema-generation bugs: trace from a wrapper file in `nfe_client/lib/src/schemas/` back to `xml_schema_builder` and `xml_schema_validator`, not directly into generated output.

