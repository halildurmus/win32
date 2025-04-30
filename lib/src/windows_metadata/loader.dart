import 'dart:io';

import 'package:nuget/nuget.dart';
import 'package:path/path.dart' as p;

import '../logger.dart';
import '../mdmerge.dart';
import '../reader/metadata_index.dart';
import '../reader/metadata_reader.dart';
import 'local_storage_manager.dart';
import 'package.dart';

/// Loads Windows metadata (`.winmd`) files into a [MetadataIndex] for
/// consumption.
///
/// This class simplifies working with Windows metadata by abstracting over
/// NuGet interactions, local caching, and metadata merging.
///
/// Supports loading Windows metadata from all major sources:
/// - **Win32** – Classic Windows APIs
/// - **WDK** – Windows Driver Kit APIs
/// - **WinRT** – Windows Runtime APIs
final class WindowsMetadataLoader {
  WindowsMetadataLoader({LocalStorageManager? localStorageManager})
    : _localStorageManager = localStorageManager ?? LocalStorageManager();

  final LocalStorageManager _localStorageManager;

  /// Loads the Windows Driver Kit (WDK) metadata into a [MetadataIndex].
  ///
  /// [version] specifies the exact version to load. If omitted,
  /// the latest available version (including **pre-releases**) is used.
  Future<MetadataIndex> loadWdkMetadata({String? version}) =>
      _loadSingleMetadata(WindowsMetadataPackage.wdk, version: version);

  /// Loads the Win32 metadata into a [MetadataIndex].
  ///
  /// [version] specifies the exact version to load. If omitted,
  /// the latest available version (including **pre-releases**) is used.
  Future<MetadataIndex> loadWin32Metadata({String? version}) =>
      _loadSingleMetadata(WindowsMetadataPackage.win32, version: version);

  /// Loads the Windows Runtime (WinRT) metadata into a [MetadataIndex].
  ///
  /// [version] specifies the exact version to load. If omitted,
  /// the latest available **stable** version is used.
  Future<MetadataIndex> loadWinrtMetadata({String? version}) =>
      _loadSingleMetadata(WindowsMetadataPackage.winrt, version: version);

  /// Loads WDK, Win32, and WinRT metadata into a [MetadataIndex].
  ///
  /// Versions can be specified individually through [versions].
  /// If omitted, the latest versions will be automatically resolved.
  Future<MetadataIndex> loadAllMetadata({WindowsMetadataVersions? versions}) =>
      loadMultipleMetadata(
        packages: WindowsMetadataPackage.values,
        versions: versions,
      );

  /// Loads multiple Windows metadata packages into a [MetadataIndex].
  ///
  /// Example:
  /// ```dart
  /// final metadataLoader = WindowsMetadataLoader();
  /// final index = await metadataLoader.loadMultipleMetadata(
  ///   packages: [WindowsMetadataPackage.wdk, WindowsMetadataPackage.win32],
  ///   versions: WindowsMetadataVersions(wdk: '0.13.25-experimental'),
  /// );
  /// ```
  Future<MetadataIndex> loadMultipleMetadata({
    required List<WindowsMetadataPackage> packages,
    WindowsMetadataVersions? versions,
  }) async {
    if (packages.isEmpty) {
      throw ArgumentError.value(
        packages,
        'packages',
        'Must contain at least one metadata package.',
      );
    }

    final resolvedPaths = await Future.wait(
      packages.map((package) {
        final version = versions?._resolve(package);
        return _resolveMetadataPath(package, version);
      }),
    );
    final readers = resolvedPaths
        .map((p) => MetadataReader.read(File(p).readAsBytesSync()))
        .toList();
    return MetadataIndex.fromReaders(readers);
  }

  Future<MetadataIndex> _loadSingleMetadata(
    WindowsMetadataPackage package, {
    String? version,
  }) async {
    final path = await _resolveMetadataPath(package, version);
    final bytes = File(path).readAsBytesSync();
    final reader = MetadataReader.read(bytes);
    return MetadataIndex.fromReader(reader);
  }

  Future<String> _resolveMetadataPath(
    WindowsMetadataPackage package,
    String? version,
  ) async {
    final WindowsMetadataPackage(:packageId, :assetName) = package;
    winmdLogger.fine('Resolving metadata path for "$assetName"...');

    // Try user-specified version from local cache.
    if (version != null) {
      final cached = _tryFindCachedMetadataPath(package, version);
      if (cached != null) {
        winmdLogger.fine(
          'Using cached metadata for "$packageId" version "$version".',
        );
        return cached;
      }
    }

    final nugetClient = NuGetClient();
    try {
      // Resolve latest version.
      final resolvedVersion =
          version ??
          await nugetClient.getLatestPackageVersion(
            packageId,
            includePrerelease: package.allowPrerelease,
          );

      winmdLogger.fine(
        'Resolved latest version of "$packageId": "$resolvedVersion"',
      );

      // Try resolved version from local cache.
      final cached = _tryFindCachedMetadataPath(package, resolvedVersion);
      if (cached != null) {
        winmdLogger.fine(
          'Using cached metadata for "$packageId" version "$resolvedVersion".',
        );
        return cached;
      }

      // Download and extract.
      final packageDirectory = await _localStorageManager.getPackageDirectory(
        package,
        resolvedVersion,
        () async => nugetClient.downloadPackageContent(
          packageId,
          version: resolvedVersion,
        ),
        logger: winmdLogger,
      );

      final metadataFile = File(p.join(packageDirectory, assetName));

      // For WinRT, merge metadata if necessary.
      if (package == WindowsMetadataPackage.winrt &&
          !metadataFile.existsSync()) {
        final metadataPath = p.join(packageDirectory, 'ref', 'netstandard2.0');
        winmdLogger.info('Merging WinRT metadata files...');
        final mergeTimer = Stopwatch()..start();
        mdmerge(inputPaths: [metadataPath], outputPath: metadataFile.path);
        mergeTimer.stop();
        winmdLogger.info(
          'Merge completed in '
          'in ${(mergeTimer.elapsedMilliseconds / 1000.0).toStringAsFixed(1)} '
          'seconds.',
        );
      }

      return metadataFile.path;
    } finally {
      nugetClient.close();
    }
  }

  String? _tryFindCachedMetadataPath(
    WindowsMetadataPackage package,
    String version,
  ) {
    final directory = _localStorageManager.findPackageDirectory(
      package,
      version,
    );
    if (directory != null) return p.join(directory, package.assetName);
    return null;
  }
}

/// A container for specifying versions of metadata packages when loading.
///
/// If a version is omitted, the latest available version will be used.
final class WindowsMetadataVersions {
  /// Creates a new instance of [WindowsMetadataVersions] with the specified
  /// versions.
  const WindowsMetadataVersions({this.wdk, this.win32, this.winrt});

  /// The version of the Windows Driver Kit (WDK) metadata.
  final String? wdk;

  /// The version of the Win32 metadata.
  final String? win32;

  /// The version of the Windows Runtime (WinRT) metadata.
  final String? winrt;

  /// Resolves the version for the given [package].
  String? _resolve(WindowsMetadataPackage package) => switch (package) {
    WindowsMetadataPackage.wdk => wdk,
    WindowsMetadataPackage.win32 => win32,
    WindowsMetadataPackage.winrt => winrt,
  };
}

extension on WindowsMetadataPackage {
  /// Whether _pre-release_ versions should be considered when resolving
  /// versions.
  bool get allowPrerelease => this != WindowsMetadataPackage.winrt;
}
