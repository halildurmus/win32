import 'dart:io';

import 'package:cli_util/cli_logging.dart' as cli_logging;
import 'package:logging/logging.dart';
import 'package:nuget/nuget.dart';
import 'package:path/path.dart' as p;

import '../mdmerge.dart';
import '../reader/metadata_index.dart';
import '../reader/metadata_reader.dart';
import 'local_storage_manager.dart';
import 'package.dart';

/// Loads Windows Metadata (`.winmd`) files into a [MetadataIndex] for
/// consumption.
///
/// This class simplifies working with Windows Metadata by abstracting over
/// NuGet interactions, local caching, and metadata merging.
///
/// Supports loading Windows Metadata from all major sources:
/// - **Win32** – Classic Windows APIs
/// - **WDK** – Windows Driver Kit APIs
/// - **WinRT** – Windows Runtime APIs
final class WindowsMetadataLoader {
  /// Creates a new instance of [WindowsMetadataLoader] with an optional
  /// [LocalStorageManager] and [Logger].
  factory WindowsMetadataLoader({
    LocalStorageManager? localStorageManager,
    Logger? logger,
  }) {
    logger ??= _createDefaultLogger();
    localStorageManager ??= LocalStorageManager();
    return WindowsMetadataLoader._(
      localStorageManager: localStorageManager,
      logger: logger,
    );
  }

  WindowsMetadataLoader._({
    required LocalStorageManager localStorageManager,
    required Logger logger,
  }) : _localStorageManager = localStorageManager,
       _logger = logger;

  final LocalStorageManager _localStorageManager;
  final Logger _logger;

  /// Loads the Windows Driver Kit (WDK) metadata into a [MetadataIndex].
  ///
  /// [version] specifies the exact version to load. If omitted,
  /// the latest available version (including **pre-releases**) is used.
  Future<MetadataIndex> loadWdkMetadata({String? version}) =>
      _loadSingleMetadata(.wdk, version: version);

  /// Loads the Win32 metadata into a [MetadataIndex].
  ///
  /// [version] specifies the exact version to load. If omitted,
  /// the latest available version (including **pre-releases**) is used.
  Future<MetadataIndex> loadWin32Metadata({String? version}) =>
      _loadSingleMetadata(.win32, version: version);

  /// Loads the Windows Runtime (WinRT) metadata into a [MetadataIndex].
  ///
  /// [version] specifies the exact version to load. If omitted,
  /// the latest available **stable** version is used.
  Future<MetadataIndex> loadWinrtMetadata({String? version}) =>
      _loadSingleMetadata(.winrt, version: version);

  /// Loads WDK, Win32, and WinRT metadata into a [MetadataIndex].
  ///
  /// Versions can be specified individually through [versions].
  /// If omitted, the latest versions will be automatically resolved.
  Future<MetadataIndex> loadAllMetadata({WindowsMetadataVersions? versions}) =>
      loadMultipleMetadata(
        packages: WindowsMetadataPackage.values,
        versions: versions,
      );

  /// Loads multiple Windows Metadata packages into a [MetadataIndex].
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
    final bytesList = await Future.wait(
      resolvedPaths.map((path) => File(path).readAsBytes()),
    );
    final readers = bytesList.map(MetadataReader.read).toList();
    return .fromReaders(readers);
  }

  Future<MetadataIndex> _loadSingleMetadata(
    WindowsMetadataPackage package, {
    String? version,
  }) async {
    final path = await _resolveMetadataPath(package, version);
    final bytes = await File(path).readAsBytes();
    final reader = MetadataReader.read(bytes);
    return .fromReader(reader);
  }

  Future<String> _resolveMetadataPath(
    WindowsMetadataPackage package,
    String? version,
  ) async {
    final WindowsMetadataPackage(:packageId, :assetName) = package;
    _logger.fine('Resolving metadata path for "$assetName"...');

    // Try user-specified version from local cache.
    if (version != null) {
      final cached = _tryFindCachedMetadataPath(package, version);
      if (cached != null) {
        _logger.fine(
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

      _logger.fine(
        'Resolved latest version of "$packageId": "$resolvedVersion"',
      );

      // Try resolved version from local cache.
      final cached = _tryFindCachedMetadataPath(package, resolvedVersion);
      if (cached != null) {
        _logger.fine(
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
      );

      final metadataFile = File(p.join(packageDirectory, assetName));

      // For WinRT, merge metadata if necessary.
      if (package == .winrt && !metadataFile.existsSync()) {
        final metadataPath = p.join(packageDirectory, 'ref', 'netstandard2.0');
        final logger = cli_logging.Logger.standard(
          ansi: .new(stdout.supportsAnsiEscapes),
        );
        final progress = logger.progress('Merging WinRT metadata files');
        mdmerge(inputPaths: [metadataPath], outputPath: metadataFile.path);
        progress.finish(showTiming: true);
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
    .wdk => wdk,
    .win32 => win32,
    .winrt => winrt,
  };
}

extension on WindowsMetadataPackage {
  /// Whether _pre-release_ versions should be considered when resolving
  /// versions.
  bool get allowPrerelease => this != .winrt;
}

/// Creates a default logger that logs to stdout and stderr.
Logger _createDefaultLogger() {
  final logger = Logger.detached('winmd')..level = .INFO;
  logger.onRecord.listen((record) {
    if (record.level >= .WARNING) {
      stderr.writeln(record.message);
    } else {
      stdout.writeln(record.message);
    }
    if (record.error != null) {
      stderr.writeln(record.error);
    }
    if (record.stackTrace != null) {
      stderr.writeln(record.stackTrace);
    }
  });
  return logger;
}
