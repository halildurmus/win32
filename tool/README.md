This folder contains utilities to help with developing the win32 package.

# Code-generation tools

As of win32 2.0.1 and above, the Win32, COM and WinRT APIs available in this
package are generated from metadata supplied by Microsoft. The metadata is in
the form of an ECMA-335 specification file, generated from this repo:
  <https://github.com/microsoft/win32metadata>

The metadata is extracted and parsed using the separate winmd package:
  <https://pub.dev/packages/winmd>

The `.winmd` file supplied in the `tool\metadata` directory is used to generate the
APIs.

Not every API is projected.

- For Win32 APIs, the JSON file in the `manual_gen` directory is used to
  determine which APIs to project.
- For COM and WinRT APIs, the Dart files in the `metadata` directly explicitly
  name the types that should be projected.

During the build process, you should call `generate.cmd` to instantiate these
types and generate the classes from them.

# Other utilities

This folder also includes a few other small utilities of limited usefulness.

- `build.cmd`. Generates EXE files for some of the Dart samples.
- `constants.cpp`. Small helper app for confirm widths of various types across
  32-bit and 64-bit architectures.
- `struct_sizes.cpp`. Measures the size of structs in structs.dart on both
  32-bit and 64-bit architectures so the appropriate unit tests can be
  generated.
