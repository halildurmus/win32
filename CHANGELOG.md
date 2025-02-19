# Changelog

All notable changes to this project will be documented in this file.

## [2.1.0] - 2025-02-19

### 📦 Dependencies

- Bump `win32` from 5.8.0 to 5.11.0 by @halildurmus in [#30](https://github.com/halildurmus/win32_registry/pull/30)

### 🎨 Styling

- Format with tall-style by @halildurmus in [#29](https://github.com/halildurmus/win32_registry/pull/29)

[2.1.0]: https://github.com/halildurmus/win32_registry/compare/v2.0.1..v2.1.0

## [2.0.1] - 2024-12-10

### 🐛 Bug Fixes

- Export `RegistryKeyInfo` class - ([d73d0b0](https://github.com/halildurmus/win32_registry/commit/d73d0b090821ba97e68b28758946eaed17a5aa33))
- Export `AccessRights` enum ([#26](https://github.com/halildurmus/win32_registry/issues/26)) - ([207b812](https://github.com/halildurmus/win32_registry/commit/207b8123cb2c8abea2755923c41c3d486588da86))

[2.0.1]: https://github.com/halildurmus/win32_registry/compare/v2.0.0..v2.0.1

## [2.0.0] - 2024-11-02

This release introduces significant changes to the API with a streamlined
structure, new methods for specific registry data handling, and enhanced support
for monitoring registry key changes.

### 🔄 Breaking Changes

- **`AccessRights`**:
  - `win32Value` field renamed to `value`.

- **`Registry`**:
  - Now an `abstract final` class.
  - Removed `performanceData` static getter.

- **`RegistryHive`**:
  - Constructor is now private.
  - `win32Value` field renamed to `value`.

- **`RegistryKey`**:
  - Now a `final` class.

- **`RegistryValue`**:
  - Now a `sealed` class.
  - Removed `fromWin32` factory constructor.
  - Removed `toWin32` getter.
  - Removed `data` field.

- **`RegistryValueType`**:
  - Constructor is now private.
  - `win32Value` field renamed to `value`.
  - Removed `unknown` value.
  - Removed `win32Type` getter.

### ✨ New Features

- **Registry Hive Construction**:
  - Added `RegistryHive.fromWin32` factory constructor for creating hives based
    on Win32 constants.

- **Enhanced Data Retrieval**:
  - Added type-specific methods to `RegistryKey`: `getBinaryValue`,
    `getIntValue`, `getStringValue`, and `getStringArrayValue` for retrieving
    data in specific formats.
  - Deprecated `getValueAsInt` and `getValueAsString` methods in favor of the
    new type-specific methods.

- **Registry Change Notifications**:
  - Introduced `RegistryKey.onChanged` stream for monitoring registry key
    changes, with optional subkey tracking.

- **Typed Registry Values**:
  - Introduced specialized subclasses in `RegistryValue` for each registry value
    type, enhancing clarity and simplifying data handling.

- **Registry Value Type Construction**:
  - Added `RegistryValueType.fromWin32` factory constructor to handle value type
    creation based on Win32 constants.

### 🚨 Dart SDK Requirement

- Bumped the minimum required Dart SDK version to `3.5.0`.

## 1.1.5

- Fix issue where creating `REG_SZ` or `REG_EXPANDED_SZ` string registry values
  resulted in malformed data. The null terminator for string values was
  incorrectly encoded as a single byte instead of the required two bytes for
  UTF-16 encoding (#22, thanks to @dancarrollg).

## 1.1.4

- Fix issue where `RegistryValue.data` for binary-type registry values might be
  freed before being read (#19, thanks @tylerlacey).
- Bump minimum required Dart SDK version to `3.4.0`

## 1.1.3

- Fix deprecation warnings
- Update links
- Bump minimum required Dart SDK version to `3.3.0`

## 1.1.2

- Improved code quality.
- Improved documentation.

## 1.1.1

- Update dependency constraints.

## 1.1.0

- Add `recursive` named option to method `deleteKey()` of `RegistryKey` (thanks
  @Zekfad)
- Use enhanced enums from Dart 2.17.
- Update dependency constraints.

## 1.0.2

- Update `ffi` dependency constraints to `>=1.1.2 <3.0.0`.

## 1.0.1

- Minor tweaks to documentation.

## 1.0.0

- First stable release.

[2.0.0]: https://github.com/halildurmus/win32_registry/compare/v1.1.5...v2.0.0
