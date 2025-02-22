import 'dart:collection';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:ffi/ffi.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;
import 'package:win32/win32.dart';

import 'exception.dart';
import 'metadata_package.dart';

/// Manages local storage and caching for downloaded packages.
///
/// This class encapsulates all functionality related to determining
/// the local storage directory, retrieving package directories, downloading
/// and extracting package archives, as well as managing and cleaning up
/// cached packages.
///
/// The default storage directory is located in the Windows's local AppData
/// folder. Consumers can override the default location by providing a custom
/// path.
final class LocalStorageManager {
  /// Creates an instance of [LocalStorageManager].
  ///
  /// If [path] is provided, it will be used as the storage directory.
  /// Otherwise, the default directory (based on the Windows's local AppData
  /// folder) is used.
  LocalStorageManager([String? path])
    : path = path ?? _resolveStorageDirectory(_defaultDirectoryName);

  /// The absolute path to the local storage directory.
  final String path;

  /// The default directory name used for local storage.
  static const _defaultDirectoryName = 'winmd';

  /// Determines and creates (if necessary) the local storage directory.
  ///
  /// Throws a [WinmdException] if the directory cannot be created.
  static String _resolveStorageDirectory(String directoryName) {
    final pszPath = calloc<PWSTR>();
    final rfid = GUIDFromString(FOLDERID_LocalAppData);
    try {
      final result = SHGetKnownFolderPath(rfid, KF_FLAG_DEFAULT, 0, pszPath);
      if (result != S_OK || pszPath.value == nullptr) {
        throw const WinmdException(
          'Failed to retrieve the path to the local AppData folder.',
        );
      }

      final appDataPath = pszPath.value.toDartString();
      free(pszPath.value);
      final directoryPath = p.join(appDataPath, directoryName);
      final directory = Directory(directoryPath);
      if (!directory.existsSync()) {
        directory.createSync(recursive: true);
      }
      return directory.path;
    } finally {
      free(pszPath);
      free(rfid);
    }
  }

  /// Returns a [Directory] instance representing the local storage directory.
  Directory get _directory => Directory(path);

  /// Retrieves the package directory for the given [package] and [version].
  ///
  /// Returns the absolute path to the package directory if found;
  /// otherwise, returns `null`.
  String? findPackageDirectory(MetadataPackage package, String version) {
    final packageDirectoryPath = p.join(path, '${package.packageId}@$version');
    final metadataFilePath = p.join(packageDirectoryPath, package.assetName);
    final metadataFile = File(metadataFilePath);
    return metadataFile.existsSync() ? packageDirectoryPath : null;
  }

  /// Retrieves the package directory for the given [package] and [version],
  /// downloading and extracting it if not found locally.
  ///
  /// This method first checks if the package directory already exists.
  /// If it does not, it calls the provided [downloadFunction] to download the
  /// package archive, extracts its contents into a new directory, and returns
  /// the directory path.
  Future<String> getPackageDirectory(
    MetadataPackage package,
    String version,
    Future<Uint8List> Function() downloadFunction, {
    Logger? logger,
  }) async {
    final packageDirectoryPath = p.join(path, '${package.packageId}@$version');
    final metadataFilePath = p.join(packageDirectoryPath, package.assetName);
    final metadataFile = File(metadataFilePath);

    // Return the package directory if the metadata file already exists.
    if (metadataFile.existsSync()) return packageDirectoryPath;

    // Ensure that the package directory exists.
    final packageDirectory = Directory(packageDirectoryPath);
    if (!packageDirectory.existsSync()) {
      packageDirectory.createSync(recursive: true);
    }

    logger?.info(
      'Downloading NuGet package "$package" (version $version) into '
      '"$path"...',
    );
    var startTime = DateTime.now();
    final bytes = await downloadFunction();
    var duration = DateTime.now().difference(startTime);
    var seconds = (duration.inMilliseconds / 1000.0).toStringAsFixed(1);
    final fileSizeInMB = (bytes.lengthInBytes / (1024 * 1024)).toStringAsFixed(
      1,
    );
    logger?.info(
      'Download complete ($fileSizeInMB MB in ${seconds}s). '
      'Package extracted to '
      '"${p.join(path, '$package@$version')}".',
    );
    logger?.info('Extracting archive to disk...');
    startTime = DateTime.now();
    final archive = ZipDecoder().decodeBytes(bytes);
    extractArchiveToDiskSync(archive, packageDirectoryPath);
    duration = DateTime.now().difference(startTime);
    seconds = (duration.inMilliseconds / 1000.0).toStringAsFixed(1);
    logger?.info('Archive extracted in $seconds seconds.');
    return packageDirectoryPath;
  }

  /// Returns an unmodifiable list of all package directories stored locally.
  ///
  /// This getter scans the local storage directory for subdirectories with
  /// names following the convention `<packageId>@<version>`.
  List<String> get storedPackageDirectories {
    if (!_directory.existsSync()) return const <String>[];

    final packages = <String>[];
    for (final entity in _directory.listSync().whereType<Directory>()) {
      final directoryName = p.basename(entity.path);
      if (directoryName.contains('@')) {
        packages.add(entity.path);
      }
    }

    return UnmodifiableListView(packages);
  }

  /// Deletes all downloaded packages from the local storage directory.
  ///
  /// This method attempts to delete every entity (file or directory) found in
  /// the local storage directory. Errors during deletion are silently ignored.
  void clear() {
    for (final entity in _directory.listSync()) {
      try {
        entity.deleteSync(recursive: true);
      } catch (_) {}
    }
  }
}
