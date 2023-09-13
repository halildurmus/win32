// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'exception.dart';
import 'nuget_package.dart';

/// A utility class for managing local storage of this package.
///
/// This class is used to store downloaded NuGet packages locally. The packages
/// are stored in the user's local app data directory, under a subdirectory
/// named `winmd`.
abstract final class LocalStorage {
  static const _directoryName = 'winmd';
  static final _directory = Directory(path);

  /// Path to the local storage directory.
  static final path = _getDirectory();

  /// Retrieves or creates the local storage directory.
  static String _getDirectory() {
    final szPath = wsalloc(MAX_PATH);
    final result = SHGetFolderPath(NULL, CSIDL_LOCAL_APPDATA, NULL, 0, szPath);
    if (result != S_OK) {
      throw const WinmdException('Failed to retrieve a valid directory.');
    }

    final appDataPath = szPath.toDartString();
    final winmdDir = Directory('$appDataPath\\$_directoryName')
      ..createSync(recursive: true);
    return winmdDir.path;
  }

  /// Determines whether the local storage directory at [path] exists.
  static bool get exists => _directory.existsSync();

  /// Looks for a package with the given [packageName] and [version].
  ///
  /// If [version] is not specified, the package with the latest version is
  /// returned.
  static NuGetPackage? getPackage(
    String packageName, {
    String? version,
  }) {
    if (version != null) {
      return packages
          .where((p) => p.name == packageName && p.version == version)
          .firstOrNull;
    }

    return packages.where((p) => p.name == packageName).lastOrNull;
  }

  /// Returns a list of [NuGetPackage]s in the local storage directory.
  static List<NuGetPackage> get packages {
    final packages = <NuGetPackage>[];
    if (!exists) return packages;

    for (final directory in _directory.listSync().whereType<Directory>()) {
      final directoryName = directory.path.split(Platform.pathSeparator).last;
      final [packageName, packageVersion] = directoryName.split('@');
      final package = NuGetPackage(
        name: packageName,
        version: packageVersion,
        path: directory.path,
      );
      packages.add(package);
    }

    return packages;
  }

  /// Deletes the contents of the local storage directory.
  static void clear() {
    if (exists) {
      for (final file in _directory.listSync()) {
        file.deleteSync(recursive: true);
      }
    }
  }
}
