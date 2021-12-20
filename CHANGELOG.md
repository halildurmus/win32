## 1.0.21

- Extra backstop of looking locally for Win32 metadata file. This is for
  compiled EXEs.
  
## 1.0.20

- Export architecture mixin.
- Add more tests.

## 1.0.19

- Update to latest win32metadata `.winmd` file.
- Add code coverage generation

## 1.0.18

- Move architectures to a mixin.

## 1.0.17

- Much faster for deeply nested types.
- Add support for "fake" getters and setters in Win32 metadata.
- More tolerant support of nested types.
- Built-in support for platform architecture without attribute queries.
- More tests.

## 1.0.16

- Better integrate support for nested types.

## 1.0.15

- Add platform architecture support.

## 1.0.14

- Add support for nested types.

## 1.0.13

- Update to latest win32metadata `.winmd` file.

## 1.0.12

- Fix accidental break.

## 1.0.11

- [Broken build] Please upgrade to 1.0.12.
- Update to latest win32metadata `.winmd` file.

## 1.0.10

- Minor tweaks to property detection
- Update to latest win32metadata `.winmd` file.

## 1.0.9

- Update to latest win32metadata `.winmd` file.

## 1.0.8

- Update to latest win32metadata `.winmd` file.

## 1.0.7

- Update to latest win32metadata `.winmd` file.

## 1.0.6

- Update to latest win32metadata `.winmd` file.

## 1.0.5

- Update to latest win32metadata `.winmd` file.

## 1.0.4

- Treat HSTRING as an int, rather than as a `Pointer<IntPtr>`, for consistency
  with other handle types.

## 1.0.3

- Fix bug with parsing generic type definitions (thanks, @sunbreak)
- Update to latest win32metadata `.winmd` file.

## 1.0.2

- Update to latest win32metadata `.winmd` file.

## 1.0.1

- Update to latest win32metadata `.winmd` file.
- Switch to linter package

## 1.0.0

- Update to Dart 2.13, which includes new FFI support for packed structs, type
  aliases and arrays.
- Overhaul the APIs to include much better support for attributes. WinMD can now
  successfully access all the Win32 APIs (enums, delegates, functions,
  interfaces and structs) and all documented metadata, as demonstrated with the
  object_tests folder.
- Move all projection code to [win32](https://pub.dev/packages/win32). This
  package now is focused exclusively on extracting metadata from WinMD files,
  rather than attempting to build Dart projections from it. That code is a
  better fit for win32, since it will evolve with the generated output.
- Add support for events, properties, and delegates.
- Expose scope in TokenObject.
- Clearer abstraction between underlying COM calls and external API.
- Update to latest win32metadata `.winmd` file.
- Support generic parameters and generic parameter constraints.
- Add support for GetPEKind and GetUserVersionString.
- Much better documentation.

## 0.4.12

- Update to latest win32metadata `.winmd` file.
- Support nested classes

## 0.4.11

- Update to latest win32metadata `.winmd` file.
- Use metadata for Win32 intrinsic value types

## 0.4.10

- Update to latest win32metadata `.winmd` file.

## 0.4.9

- Update to latest win32metadata `.winmd` file.

## 0.4.8

- Update to latest win32metadata `.winmd` file.

## 0.4.7

- Minor fixes

## 0.4.6

- Add struct generation

## 0.4.5

- Bundle the latest win32metadata `.winmd` file with the package, and expose it
  via the `MetadataStore.getWin32Scope()` method. This will ensure that this
  library's projection APIs stay in sync with any changes to the metadata file
  itself. You can still supply your own copy of `Windows.Win32.winmd` file and
  load with the `MetadataStore.getScopeForFile()` call.
- Project all enums as `Uint32`, for consistency.
- Add more tests to ensure a couple of regressions never creep in again.

## 0.4.4

- Fix projection of Pointers to interfaces (thanks @bonukai).

## 0.4.3

- Add PVALENTW
- Revert tip-of-tree .winmd

## 0.4.2

- Add more COM interface types

## 0.4.1

- Support printing COM tests

## 0.4.0

- Broad refactoring, focusing the core WinMD package on reading metadata and
  moving transforms to the projection/ folder. Also fix a memory leak on the
  enumerations.
- Rework API for projection of metadata
- Improve generation of Windows Runtime get properties and types
- Add more tests

## 0.3.0-dev.2

- Updated to FFI 1.0 and adopted breaking changes

## 0.3.0-dev.1

- Refactoring

## 0.2.0-dev.4

- Improvements to Win32 metadata parsing
- Move primary development branch to `main`

## 0.2.0-dev.3

- Fix Dart floating-point type error

## 0.2.0-dev.2

- Add basic support for Win32 metadata

## 0.2.0-dev.1

- Initial version, extracted from win32
