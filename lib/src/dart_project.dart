// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:path/path.dart' as p;

/// A set of Flutter and Dart assets used to initialize a Flutter engine.
class DartProject {
  /// Creates a [DartProject] from a series of absolute paths.
  ///
  /// The three paths are:
  /// - `aotLibraryPath`: Path to the AOT snapshot file.
  /// - `assetsPath`: Path to the assets directory as built by the Flutter tool.
  /// - `icuDataPath`: Path to the `icudtl.dat` file.
  ///
  /// The paths can either be absolute, or relative to the directory containing
  /// the running executable.
  const DartProject({
    required this.aotLibraryPath,
    required this.assetsPath,
    required this.icuDataPath,
  });

  /// The path to the AOT library.
  ///
  /// This will always return a path, but non-AOT builds will not be expected to
  /// actually have a library at that path.
  final String aotLibraryPath;

  /// The path to the assets directory.
  final String assetsPath;

  /// The path to the ICU data.
  final String icuDataPath;

  /// Creates a [DartProject] from a directory path.
  ///
  /// The directory should contain the following top-level items:
  /// - `app.so`, for an AOT build (as built by the Flutter tool)
  /// - `flutter_assets` (as built by the Flutter tool)
  /// - `icudtl.dat` (provided as a resource by the Flutter tool)
  ///
  /// The path can either be absolute, or relative to the directory containing
  /// the running executable.
  factory DartProject.fromPath(String path) => DartProject(
        aotLibraryPath: p.join(path, 'app.so'),
        assetsPath: p.join(path, 'flutter_assets'),
        icuDataPath: p.join(path, 'icudtl.dat'),
      );

  /// Creates a [DartProject] from the root Flutter folder, after running
  /// `flutter assemble`, with a command such as: `flutter assemble
  /// -dTargetPlatform=windows-x64 --output=build -dBuildMode=release
  /// release_bundle_windows_assets`.
  ///
  /// The directory should contain the following top-level items:
  /// - `icudtl.dat` (provided as a resource by the Flutter tool)
  /// - `flutter_assets` (as built by the Flutter tool)
  /// - `app.so`, for an AOT build (as built by the Flutter tool)
  ///
  /// The path can either be absolute, or relative to the directory containing
  /// the running executable.
  factory DartProject.fromRoot(String path) => DartProject(
        aotLibraryPath: p.join(path, 'build', 'windows', 'app.so'),
        assetsPath: p.join(path, 'build', 'flutter_assets'),
        icuDataPath:
            p.join(path, 'windows', 'flutter', 'ephemeral', 'icudtl.dat'),
      );
}
