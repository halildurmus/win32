import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:ffi/ffi.dart';
import 'package:path/path.dart' as p;
import 'package:win32/win32.dart';

import '../extensions/collection.dart';
import '../metadata_package.dart';

/// Manages local storage and caching for downloaded packages.
final class LocalStorageManager {
  /// Creates an instance of [LocalStorageManager].
  ///
  /// If a [path] is provided it will be used as the storage directory;
  /// otherwise a default directory (based on the Windows LocalAppData folder)
  /// is used.
  LocalStorageManager([String? path])
    : path = path ?? _getDirectory(_defaultDirectoryName);

  /// The absolute path to the local storage directory.
  final String path;

  /// The default directory name for local storage.
  static const _defaultDirectoryName = 'win32_generator';

  /// Retrieves or creates the local storage directory.
  ///
  /// This method retrieves the Windows LocalAppData folder and appends
  /// [directoryName] to it. If the directory does not exist, it is created.
  static String _getDirectory(String directoryName) {
    final pszPath = calloc<PWSTR>();
    final rfid = GUIDFromString(FOLDERID_LocalAppData);
    try {
      final result = SHGetKnownFolderPath(rfid, KF_FLAG_DEFAULT, 0, pszPath);
      if (result != S_OK || pszPath.value == nullptr) {
        throw StateError('Failed to retrieve a valid directory.');
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

  /// Returns a reference to the local storage directory.
  Directory get _directory => Directory(path);

  /// Retrieves the package directory for the given [package] and [version].
  ///
  /// If the package is not found locally, the provided [downloadFunction] is
  /// invoked to download the package archive. The archive is then extracted to
  /// disk.
  ///
  /// Returns the absolute path to the package directory.
  Future<String> getOrDownloadPackage(
    MetadataPackage package,
    String version,
    Future<Uint8List> Function() downloadFunction,
  ) async {
    final packageDirectoryPath = p.join(path, '${package.packageId}@$version');
    final msgpackFilePath = p.join(packageDirectoryPath, 'apidocs.msgpack');
    final msgpackFile = File(msgpackFilePath);

    // Return the package directory if the MessagePack file already exists.
    if (msgpackFile.existsSync()) return packageDirectoryPath;

    // Ensure that the package directory exists.
    final packageDirectory = Directory(packageDirectoryPath);
    if (!packageDirectory.existsSync()) {
      await packageDirectory.create(recursive: true);
    }

    final bytes = await downloadFunction();
    final archive = ZipDecoder().decodeBytes(bytes);
    await extractArchiveToDisk(archive, packageDirectoryPath);
    return packageDirectoryPath;
  }

  /// Returns a list of package paths within the local storage directory.
  List<String> get packagePaths {
    if (!_directory.existsSync()) return const <String>[];

    final packages = <String>[];
    for (final entity in _directory.listSync().whereType<Directory>()) {
      final directoryName = p.basename(entity.path);
      if (directoryName.contains('@')) {
        packages.add(entity.path);
      }
    }

    return packages.toFixedList();
  }

  /// Deletes all downloaded packages from the local storage directory.
  void clear() {
    if (_directory.existsSync()) {
      for (final entity in _directory.listSync()) {
        try {
          entity.deleteSync(recursive: true);
        } catch (_) {}
      }
    }
  }
}
