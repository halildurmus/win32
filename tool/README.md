This folder contains utilities to help with developing the win32 package.

# Code-generation tools

As of win32 2.0.1 and above, the Win32, COM and WinRT APIs available in this
package are generated from metadata supplied by Microsoft. The metadata is in
the form of an ECMA-335 specification file, generated from this repo:
  <https://github.com/microsoft/win32metadata>

The metadata is extracted and parsed using the separate winmd package:
  <https://pub.dev/packages/winmd>

Not every API is projected.

- For Win32 APIs, the JSON files prefixed with `win32_` in the `generator\data`
  directory are used to determine which APIs to project.
- For COM APIs, the `com_types.json` file in the `generator\data` directory
  explicitly names the types that should be projected.
- For WinRT APIs, the JSON files prefixed with `winrt_` in the `generator\data`
  directory are used to determine which APIs to project.

During the build process, you should call `generate.cmd` from the project root
to instantiate these types and generate the classes from them, for example:

```terminal
C:\src\win32> tool\generate.cmd
```

This tool will also test both the generation library and the generated output
with unit tests.

# Other utilities

This folder also includes a few other small utilities of limited usefulness.

- `build.cmd`. Generates EXE files for some of the Dart samples.
- `struct_sizes\struct_sizes.cpp`. Measures the size of structs in
  structs.g.dart on both 32-bit and 64-bit architectures so the appropriate unit
  tests can be generated.
