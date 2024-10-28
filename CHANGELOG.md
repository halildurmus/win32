# Changelog

All notable changes to this project will be documented in this file.

## [1.0.0] - 2024-10-28

### 🎉 First Stable Release 🚀

This release marks the first stable release of the `win32_clipboard` package,
offering a refined and feature-rich API for interacting with the Windows
Clipboard in Dart.

### 🔄 Breaking Changes

- **`Clipboard`**:
  - **`getData`**: Now returns `ClipboardData?` instead of `String?`.
  - **`setData`**: Now takes a `ClipboardData` instance as the only argument.
  - **`registerFormat`**: Now returns `ClipboardFormat` instead of `int`.
- **`ClipboardFormat`**:
  - `formatId` field renamed to `id`.
  - `name`: The optional named parameter `name` is now a required positional
    parameter and is no longer nullable.
  - `text`: Constant renamed to `unicodeText`.

### ✨ New Features

- **Clipboard File List Support**:
  - Added `Clipboard.getFileList()` to retrieve a list of files from the
    clipboard.
  - Added `Clipboard.setFileList()` to set a list of files on the clipboard.
  - Added `Clipboard.hasFileList` getter to check if the clipboard contains file
    list data.
  - Added `ClipboardFormat.fileList` constant for identifying the file list
    format.

- **Data Change Listeners**:
  - Added `Clipboard.onDataChanged(ClipboardFormat format)` to listen for
    changes in specific clipboard formats.
  - Added `Clipboard.onFileListChanged` getter to listen for file list changes.
  - Added `Clipboard.onTextChanged` getter to listen for text changes.

- **New Data Types**:
  - Introduced `ClipboardData` as a base class for clipboard data.
  - Added subclasses:
    - `FileListData` for handling file lists.
    - `PointerData` for handling pointer-based data.
    - `UnicodeTextData` for handling Unicode text data.

### 🛠 Improvements

- Refined API to be more intuitive and consistent across all clipboard
  operations.
- Optimized internal structure for better performance and reliability.

### 🚨 Dart SDK Requirement

- Bumped the minimum required Dart SDK version to `3.5.0`.

## 0.1.3

- Bump minimum required Dart SDK version to `3.4.0`

## 0.1.2

- Fix deprecation warnings
- Update links
- Bump minimum required Dart SDK version to `3.3.0`

## 0.1.1

- Improved documentation.

## 0.1.0

- Initial version.

[1.0.0]: https://github.com/halildurmus/win32_clipboard/compare/v0.1.3...v1.0.0
