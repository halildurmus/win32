# Changelog

All notable changes to this project will be documented in this file.

## [3.0.0] - 2026-02-22

### 🔄 Breaking Changes

This release introduces a **major overhaul of the API** with improved type
safety, and powerful new capabilities.

The package now offers transaction support, enhanced monitoring, and a more
intuitive interface for managing registry keys and values.

Key breaking changes include:

- **API Restructuring**:
  - Removed `Registry` class entirely. Static methods like `Registry.openPath()`
    are no longer available.
  - Removed `RegistryHive` enum. Use predefined top-level fields instead:
    - `RegistryHive.localMachine` → `LOCAL_MACHINE`
    - `RegistryHive.currentUser` → `CURRENT_USER`
    - `RegistryHive.classesRoot` → `CLASSES_ROOT`
    - `RegistryHive.allUsers` → `USERS`
    - `RegistryHive.performanceData` → `PERFORMANCE_DATA`
    - `RegistryHive.currentConfig` → `CURRENT_CONFIG`

- **`AccessRights` → `RegistryAccess`**:
  - Replaced enum with a final class offering bitwise combination support.
  - Renamed constants:
    - `readOnly` → `read`
    - `writeOnly` → `write`
    - `allAccess` → `all`
  - Added new access rights: `notify`, `readWrite`
  - Supports combining access rights with the `|` operator.

- **`RegistryKey`**:
  - Opening and creating keys now requires calling methods on predefined
    constants or existing keys:
    - Old: `Registry.openPath(RegistryHive.localMachine, path: keyPath)`
    - New: `LOCAL_MACHINE.open(keyPath)`
  - Renamed methods:
    - `getBinaryValue()` → `getBinary()`
    - `getIntValue()` → `getInt()`
    - `getStringValue()` → `getString()`
    - `getStringArrayValue()` → `getMultiString()`
    - `createKey()` → `create()`
    - `deleteKey()` → `removeSubkey()`
    - `deleteValue()` → `removeValue()`
    - `renameSubkey()` → `rename()`
  - `create()` and `open()` now accept a `RegistryOpenConfig` parameter for
    fine-grained control of access rights, options, and transactions.
  - `onChanged()` stream functionality replaced with `RegistryChangeMonitor`
    class.

- **`RegistryValue`**:
  - Constructors no longer accept a `name` parameter. Value names are now
    passed directly to `setValue()`:
    - Old: `RegistryValue.string('MyValue', 'data')`
    - New: `key.setValue('MyValue', RegistryValue.string('data'))` or with dot
      shorthand syntax: `key.setValue('MyValue', const .string('data'))`
  - Renamed factory constructors:
    - `int32()` → `dword()`
    - `int64()` → `qword()`
    - `stringArray()` → `multiString()`

- **`RegistryValueType`**:
  - Changed from enum to final class with a factory constructor.
  - Renamed constants:
    - `int32` → `dword`
    - `int64` → `qword`
    - `stringArray` → `multiString`
  - Renamed field: `value` → `raw`
  - Replaced `fromWin32()` factory with `fromRaw()`.

### 🚀 Features

- **Transaction Support**:
  - New `Transaction` class enables atomic registry operations.
  - Pass a `Transaction` instance via `RegistryOpenConfig` to perform
    multiple operations that can be committed or rolled back as a unit.

- **Enhanced Registry Monitoring**:
  - New `RegistryChangeMonitor` class provides isolate-backed, stream-based
    monitoring of registry key changes.
  - Replaces the previous `onChanged()` stream approach with more robust
    error handling and resource management.

- **Configuration Objects**:
  - `RegistryOpenConfig`: Centralizes parameters for opening and creating
    keys (access rights, creation behavior, options, transactions).
  - `RegistryOpenOptions`: Type-safe wrapper for native registry options
    (`nonVolatile`, `volatile`, `createLink`, `backupRestore`, etc.).

- **New Key Management Methods**:
  - `removeTree()`: Recursively deletes all subkeys and values within a key
    without deleting the key itself.
  - `removeValues()`: Deletes all values under a key without affecting
    subkeys.

### 📦 Dependencies

- Bumped minimum required Dart SDK version to `3.11.0`.

[3.0.0]: https://github.com/halildurmus/win32_registry/compare/v2.1.0..win32_registry-v3.0.0

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
