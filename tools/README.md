# Tools

This directory contains utilities to help with developing the `package:win32`.

## Code-generation tools

The Win32 and COM APIs available in this package are generated from
[win32metadata]. The metadata is in the form of an ECMA-335 specification
file, and extracted and parsed using the separate [winmd] package.

Not every API is projected.

- For Win32 APIs, the JSON files prefixed with `win32_` in the
  [packages\generator\data] directory are used to determine which APIs to
  project.
- For COM APIs, the [com_types.json] file in the [packages\generator\data]
  directory explicitly names the types that should be projected.

During the build process, you should run `generate.dart` from the project root
to instantiate these types and generate the classes from them, for example:

```cmd
dart tools\generate.dart
```

If you pass the `--test` (`-t`) flag, this tool will also test `generator` and
`win32` packages with unit tests after generating the code.

## Other utilities

This folder also includes a few other small utilities of limited usefulness.

- `build.dart`: Generates EXE files for some of the Dart examples.
- `update_changelog.dart`: Updates the CHANGELOG.md with the latest changes.

[com_types.json]: ../packages/generator/data/com_types.json
[packages\generator\data]: ../packages/generator/data
[win32metadata]: https://github.com/microsoft/win32metadata
[winmd]: https://pub.dev/packages/winmd
