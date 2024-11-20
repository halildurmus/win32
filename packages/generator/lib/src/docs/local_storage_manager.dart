// ignore_for_file: non_constant_identifier_names

import 'dart:collection';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:ffi/ffi.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;

import '../metadata_package.dart';

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
  static const _defaultDirectoryName = 'win32_generator';

  /// Determines and creates (if necessary) the local storage directory.
  static String _resolveStorageDirectory(String directoryName) {
    final rfid = _FOLDERID_LocalAppData;
    try {
      final pszPath = _SHGetKnownFolderPath(rfid, 0, 0);
      if (pszPath == null || pszPath == nullptr) {
        throw StateError(
          'Failed to retrieve the path to the local AppData folder.',
        );
      }

      final appDataPath = pszPath.toDartString();
      calloc.free(pszPath);
      final directoryPath = p.join(appDataPath, directoryName);
      final directory = Directory(directoryPath);
      if (!directory.existsSync()) {
        directory.createSync(recursive: true);
      }
      return directory.path;
    } finally {
      calloc.free(rfid);
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

@Packed(4)
base class _GUID extends Struct {
  @Uint32()
  external int Data1;

  @Uint16()
  external int Data2;

  @Uint16()
  external int Data3;

  @Array(8)
  external Array<Uint8> _Data4;

  /// The last 8 bytes of the GUID.
  ///
  /// The first 2 bytes correspond to the third group of 4 hexadecimal digits,
  /// while the remaining 6 bytes form the final 12 hexadecimal digits.
  Uint8List get Data4 {
    final list = Uint8List(8);
    final data4 = _Data4;
    for (var i = 0; i < 8; i++) {
      list[i] = data4[i];
    }
    return list;
  }

  set Data4(Uint8List value) {
    if (value.length != 8) {
      throw ArgumentError.value(
        value,
        'value',
        'Must contain exactly 8 bytes.',
      );
    }

    final data4 = _Data4;
    for (var i = 0; i < 8; i++) {
      data4[i] = value[i];
    }
  }
}

Pointer<_GUID> get _FOLDERID_LocalAppData {
  final rfid = calloc<_GUID>();
  rfid.ref
    ..Data1 = 0xf1b32785
    ..Data2 = 0x6fba
    ..Data3 = 0x4fcf
    ..Data4 = Uint8List.fromList(const [
      0x9d,
      0x55,
      0x7b,
      0x8e,
      0x7f,
      0x15,
      0x70,
      0x91,
    ]);
  return rfid;
}

Pointer<Utf16>? _SHGetKnownFolderPath(
  Pointer<_GUID> rfid,
  int dwFlags,
  int? hToken,
) {
  final ppszPath = calloc<Pointer<Utf16>>();
  final hr$ = __SHGetKnownFolderPath(rfid, dwFlags, hToken ?? 0, ppszPath);
  if (hr$ < 0) {
    calloc.free(ppszPath);
    return null;
  }
  final result$ = ppszPath.value;
  calloc.free(ppszPath);
  return result$;
}

@Native<
  Int32 Function(Pointer<_GUID>, Uint32, IntPtr, Pointer<Pointer<Utf16>>)
>(symbol: 'SHGetKnownFolderPath')
external int __SHGetKnownFolderPath(
  Pointer<_GUID> rfid,
  int dwFlags,
  int hToken,
  Pointer<Pointer<Utf16>> ppszPath,
);
