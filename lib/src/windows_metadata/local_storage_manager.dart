import 'dart:collection';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:ffi/ffi.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;

import '../bindings.dart';
import '../exception.dart';
import 'package.dart';

/// Handles caching and local storage of downloaded Windows metadata packages.
///
/// By default, data is stored in:
/// - **Windows**: `%LocalAppData%\winmd`
/// - **Other platforms**: `$HOME/.cache/winmd`
final class LocalStorageManager {
  /// Creates a new [LocalStorageManager] instance.
  ///
  /// If [storagePath] is provided, it overrides the default location.
  LocalStorageManager({String? storagePath})
    : path = storagePath ?? _resolveDefaultStoragePath(_defaultDirectoryName);

  /// Absolute path to the storage directory.
  final String path;

  /// The default directory name used for local storage.
  static const _defaultDirectoryName = 'winmd';

  /// Resolves and creates the default storage directory if necessary.
  static String _resolveDefaultStoragePath(String directoryName) {
    final String basePath;

    if (Platform.isWindows) {
      final ppszPath = calloc<Pointer<Utf16>>();
      final rfid = FOLDERID_LocalAppData;
      final hr = SHGetKnownFolderPath(rfid, 0, 0, ppszPath);
      calloc.free(rfid);
      if (hr != S_OK) {
        calloc.free(ppszPath);
        throw const WinmdException('Failed to get LocalAppData folder path.');
      }
      final path = ppszPath.value;
      final localAppData = path.toDartString();
      basePath = localAppData;
      calloc
        ..free(path)
        ..free(ppszPath);
    } else {
      final home = Platform.environment['HOME'];
      if (home == null || home.isEmpty) {
        throw const WinmdException('Failed to resolve home directory.');
      }
      basePath = p.join(home, '.cache');
    }

    final fullPath = p.join(basePath, directoryName);
    final directory = Directory(fullPath);
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }
    return directory.path;
  }

  Directory get _storageDirectory => Directory(path);

  /// Locates an existing package directory by [package] and [version].
  ///
  /// Returns the absolute path if found, or `null` otherwise.
  String? findPackageDirectory(WindowsMetadataPackage package, String version) {
    final packagePath = _packagePath(package, version);
    final metadataPath = p.join(packagePath, package.assetName);
    if (File(metadataPath).existsSync()) return packagePath;
    return null;
  }

  /// Fetches the package directory, downloading and extracting it if necessary.
  ///
  /// - Checks if the package exists locally.
  /// - If absent, downloads the package via [downloadFunction].
  /// - Extracts the archive contents into a new directory.
  /// - Optionally logs progress if a [logger] is provided.
  ///
  /// Returns the absolute package directory path.
  Future<String> getPackageDirectory(
    WindowsMetadataPackage package,
    String version,
    Future<Uint8List> Function() downloadFunction, {
    Logger? logger,
  }) async {
    final packagePath = _packagePath(package, version);
    final metadataPath = p.join(packagePath, package.assetName);
    if (File(metadataPath).existsSync()) return packagePath;
    Directory(packagePath).createSync(recursive: true);
    logger?.info('Downloading "$package" version "$version"...');
    final downloadTimer = Stopwatch()..start();
    final archiveBytes = await downloadFunction();
    downloadTimer.stop();
    logger?.info(
      'Download complete: '
      '${(archiveBytes.lengthInBytes / (1024 * 1024)).toStringAsFixed(1)} MB '
      'in ${(downloadTimer.elapsedMilliseconds / 1000.0).toStringAsFixed(1)} '
      'seconds.',
    );
    logger?.info('Extracting archive...');
    final extractionTimer = Stopwatch()..start();
    final archive = ZipDecoder().decodeBytes(archiveBytes);
    extractArchiveToDiskSync(archive, packagePath);
    extractionTimer.stop();
    logger?.info(
      'Extraction completed in '
      '${(extractionTimer.elapsedMilliseconds / 1000.0).toStringAsFixed(1)} '
      'seconds.',
    );
    return packagePath;
  }

  /// Lists all locally cached package directories.
  ///
  /// Returns a read-only list of paths.
  List<String> get storedPackageDirectories {
    if (!_storageDirectory.existsSync()) return const [];
    return UnmodifiableListView(
      _storageDirectory
          .listSync()
          .whereType<Directory>()
          .where((dir) => p.basename(dir.path).contains('@'))
          .map((dir) => dir.path)
          .toList(),
    );
  }

  /// Deletes all cached packages.
  ///
  /// Silently ignores errors during deletion.
  void clear() {
    if (!_storageDirectory.existsSync()) return;
    for (final entity in _storageDirectory.listSync()) {
      try {
        entity.deleteSync(recursive: true);
      } catch (_) {}
    }
  }

  /// Constructs the absolute path for a given package and version.
  String _packagePath(WindowsMetadataPackage package, String version) =>
      p.join(path, '${package.packageId}@$version');
}
