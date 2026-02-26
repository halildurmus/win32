# Changelog

All notable changes to this project will be documented in this file.

## [3.0.0] - 2026-02-25

### 🔄 Breaking Changes

- `FileDialog.hWndOwner` type changed from `int` to `Pointer`.
- `WindowsKnownFolder` is now an extension type that wraps a `GUID`, allowing it
  to be used directly anywhere a `GUID` is expected without unwrapping.
- `CustomPlace.field` has been replaced with a new `folder` field of type
  `WindowsKnownFolder`.
- `CustomPlace` now holds a
  `WindowsKnownFolder folder` instead.

### 🚀 Features

- In Flutter apps, when `hWndOwner` is not set explicitly, the dialog now
  automatically detects the Flutter window and uses it as the owner.

  This ensures the dialog always opens as a modal in front of the Flutter
  window, preventing the app from appearing frozen when the user clicks away
  while the dialog is open.

  In Dart-only apps, no owner is set and the previous behaviour is preserved.

### 📦 Dependencies

- Bumped minimum required Dart SDK version to `3.11.0`.

[3.0.0]: https://github.com/halildurmus/filepicker_windows/compare/v2.1.4...filepicker_windows-v3.0.0

## 2.1.4

- Bump minimum required Dart version to `3.4.0`

## 2.1.3

- Add `initialDirectory` and `alwaysShowInitialDirectory` fields to
  `DirectoryPicker` (#36).

## 2.1.2

- Add `alwaysShowInitialDirectory` field to control whether the dialog box
  should always show the directory defined in `initialDirectory` to the user,
  regardless of previous user interaction.

## 2.1.1

- Fix deprecation warnings
- Update links

## 2.1.0

- Add `addToRecentDocuments` field to control whether an item being opened or
  saved will be added to the recent documents list.
- Add `dereferenceLinks` field to specify whether shortcuts should be treated as
  their target items.
- Add `showHiddenAndSystemItems` field to control whether hidden and system
  items are displayed in the file dialog.
- Bump minimum required Dart version to `3.2.0`.

## 2.0.11

- Improved code quality.

## 2.0.10

- Improved code quality.
- Improved documentation.
- Added example for selecting a directory.

## 2.0.9

- Add `getFiles()` method into the `OpenFilePicker` to enable selecting
  multiple files (#12, thanks to @ritheshSalyan)

## 2.0.8

- Add support for setting the initial directory (#23, thanks to @amarland)

## 2.0.7

- Fix crashes in v2.0.6 (#24)

## 2.0.6

- Update win32 dependency

## 2.0.5

- Tidy up folders and remove some potential memory leaks

## 2.0.4

- Update win32 dependency

## 2.0.3

- Update win32 dependency

## 2.0.2

- Upgrade dependencies and resolve lint warnings

## 2.0.1

- Upgrade win32 dependency

## 2.0.0

- Enable sound null safety

## 1.0.0

- Mark as stable version
- Update to new Windows template for example application
- Update package dependencies

## 0.1.2

- Update APIs

## 0.1.0

- Basic implementation using win32.
- Add example that shows using OpenFileDialog to select desktop wallpaper.
