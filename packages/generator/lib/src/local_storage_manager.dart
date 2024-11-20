// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:collection';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:ffi/ffi.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;

import 'exception.dart';
import 'nuget_package.dart';

/// Handles caching and local storage of downloaded NuGet packages.
///
/// By default, data is stored in:
/// - **Windows**: `%LocalAppData%\winmd`
/// - **Linux and macOS**: `$HOME/.cache/winmd`
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
      final rfid = _FOLDERID_LocalAppData;
      final hr = _SHGetKnownFolderPath(rfid, 0, 0, ppszPath);
      calloc.free(rfid);
      if (hr != _S_OK) {
        calloc.free(ppszPath);
        throw const GeneratorException(
          'Failed to get LocalAppData folder path.',
        );
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
        throw const GeneratorException('Failed to resolve home directory.');
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
  String? findPackageDirectory(NuGetPackage package, String version) {
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
    NuGetPackage package,
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
  String _packagePath(NuGetPackage package, String version) =>
      p.join(path, '${package.packageId}@$version');
}

typedef _DWORD = Uint32;
typedef _HANDLE = IntPtr;
typedef _HRESULT = Int32;
typedef _PWSTR = Pointer<Utf16>;

const _S_OK = 0;

Pointer<_GUID> get _FOLDERID_LocalAppData {
  final guid = malloc<_GUID>();
  guid.ref
    ..Data1 = 0xF1B32785
    ..Data2 = 0x6FBA
    ..Data3 = 0x4FCF
    ..Data4[0] = 0x9D
    ..Data4[1] = 0x55
    ..Data4[2] = 0x7B
    ..Data4[3] = 0x8E
    ..Data4[4] = 0x7F
    ..Data4[5] = 0x15
    ..Data4[6] = 0x70
    ..Data4[7] = 0x91;
  return guid;
}

@Packed(4)
final class _GUID extends Struct {
  @Uint32()
  external int Data1;

  @Uint16()
  external int Data2;

  @Uint16()
  external int Data3;

  @Array(8)
  external Array<Uint8> Data4;
}

@Native<_HRESULT Function(Pointer<_GUID>, _DWORD, _HANDLE, Pointer<_PWSTR>)>(
  symbol: 'SHGetKnownFolderPath',
  isLeaf: true,
)
external int _SHGetKnownFolderPath(
  Pointer<_GUID> rfid,
  int dwFlags,
  int hToken,
  Pointer<_PWSTR> ppszPath,
);
