// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// A Dart library that provides support for querying and accessing the Windows
/// Registry from Dart, with idiomatic classes and collections of objects that
/// facilitate reading and writing values.
///
/// The Windows Registry is a system-defined database in which applications and
/// system components store and retrieve configuration data. The data stored in
/// the registry varies according to the version of Microsoft Windows.
/// Applications use the registry API to retrieve, modify, or delete registry
/// data.
///
/// For example:
///
/// ```dart
/// import 'package:win32_registry/win32_registry.dart';
///
/// void main() {
///   const keyPath = r'Software\Microsoft\Windows NT\CurrentVersion';
///   final key = Registry.openPath(RegistryHive.localMachine, path: keyPath);
///
///   final buildNumber = key.getValueAsString('CurrentBuild');
///   if (buildNumber != null) {
///     print('Windows build number: $buildNumber');
///   }
///
///   key.close();
/// }
/// ```
///
/// The example demonstrates how to use this library to open a registry key,
/// retrieve a value, and print it to the console.
library;

export 'src/models/models.dart';
export 'src/registry.dart';
export 'src/registry_key.dart';
export 'src/registry_value.dart';
