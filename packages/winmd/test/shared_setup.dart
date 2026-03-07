import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import 'versions.dart';

/// Shared fixtures for Windows Metadata tests.
final fixtures = WinmdTestFixtures();

/// Provides a reusable setup/teardown for tests that need Windows metadata.
///
/// All instances share a single [LocalStorageManager] backed by a persistent
/// cache, so NuGet packages are downloaded at most once per machine rather
/// than once per test file.
final class WinmdTestFixtures {
  factory WinmdTestFixtures() =>
      WinmdTestFixtures._(.new(localStorageManager: _sharedStorageManager));

  WinmdTestFixtures._(this._loader);

  final WindowsMetadataLoader _loader;

  /// Shared package cache directory used by all test fixtures.
  ///
  /// Stored under `.dart_tool/winmd_test_packages` so it is gitignored and
  /// scoped to this package. Packages are downloaded once and reused across all
  /// test files and repeated test runs. Delete this directory to force a fresh
  /// download.
  static final _sharedStorageManager = LocalStorageManager(
    storagePath: p.join(
      Directory.current.path,
      '.dart_tool',
      'winmd_test_packages',
    ),
  );

  Future<MetadataIndex> loadWin32Metadata() =>
      _loader.loadWin32Metadata(version: win32MetadataVersion);

  Future<MetadataIndex> loadWinrtMetadata() =>
      _loader.loadWinrtMetadata(version: winrtMetadataVersion);

  Future<MetadataIndex> loadAllMetadata() =>
      _loader.loadAllMetadata(versions: metadataVersions);

  Future<MetadataIndex> loadWin32AndWinrtMetadata() =>
      _loader.loadMultipleMetadata(
        packages: const [.win32, .winrt],
        versions: const .new(
          win32: win32MetadataVersion,
          winrt: winrtMetadataVersion,
        ),
      );
}
