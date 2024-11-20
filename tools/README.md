# 🛠️ Tools

This directory contains utilities to support the development of the
`package:win32`.

## 🧑‍💻 Code-Generation Tools

The **Win32** and **COM APIs** available in this package are generated from
[win32metadata]. This metadata is provided in an ECMA-335 specification file and
processed using the [winmd] package.

👉 **Note**: Not all APIs are projected. Here's how it works:

### 🪛 Win32 API Generation

- JSON files prefixed with `win32_` in the [packages\generator\data] directory
  determine the APIs to project.

### 🧩 COM API Generation

- The types to project are explicitly named in the [com_types.json] file, also
  located in the [packages\generator\data] directory.

### ⚙️ How to Generate

To generate the classes, use the `generate.dart` script from the project root:

```cmd
dart tools\generate.dart
```

#### 🧪 Testing During Generation

Add the `--test` (`-t`) flag to automatically run unit tests for both
`generator` and `win32` packages after generating the code:

```cmd
dart tools\generate.dart -t
```

## 🧰 Other Utilities

This folder also contains additional utilities for specific tasks:

- 🏗️ **`build.dart`** Builds EXE files for Dart examples.

- 📝 **`update_changelog.dart`** Updates the `CHANGELOG.md` with the latest
  changes.

- 🖼️ **`update_goldens.dart`** Updates golden files for tests in the
  `package:generator`.

[com_types.json]: ../packages/generator/data/com_types.json
[packages\generator\data]: ../packages/generator/data
[win32metadata]: https://github.com/microsoft/win32metadata
[winmd]: https://pub.dev/packages/winmd
