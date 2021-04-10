## 1.0.0-pre.2

- Update to Dart 2.13, which includes new support for packed structs and arrays.
- Overhaul the APIs to include much better support for attributes. WinMD can now
  successfully access all the Win32 APIs (enums, delegates, functions,
  interfaces and structs) and all documented metadata, as demonstrated with the
  object_tests folder.
- Add support for events, properties, and delegates.
- Much better documentation
- Support generics.

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
