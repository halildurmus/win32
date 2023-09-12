// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:ffi/ffi.dart';
import 'package:nuget/nuget.dart';
import 'package:win32/win32.dart';

import 'models/models.dart';
import 'scope.dart';
import 'type_def.dart';

/// Caches a reader for each file scope.
///
/// Use this to obtain a reference of a scope without creating unnecessary
/// copies or cycles.
final class MetadataStore {
  static final scopeCache = <String, Scope>{};
  static IMetaDataDispenser? _dispenser;
  static NuGetClient? _nugetClient;
  static bool _isInitialized = false;

  /// Initializes the [MetadataStore] object.
  ///
  /// This is performed automatically by any method that utilizes it.
  static void initialize() {
    // This must have the same object lifetime as MetadataStore itself.
    final dispenserObject = calloc<COMObject>();
    final clsidCorMetaDataDispenser =
        convertToCLSID(CLSID_CorMetaDataDispenser);
    final iidIMetaDataDispenser = convertToIID(IID_IMetaDataDispenser);

    try {
      final hr = MetaDataGetDispenser(clsidCorMetaDataDispenser,
          iidIMetaDataDispenser, dispenserObject.cast());
      if (FAILED(hr)) {
        free(dispenserObject);
        throw WindowsException(hr);
      }

      _dispenser = IMetaDataDispenser(dispenserObject)..detach();
      _nugetClient = NuGetClient();
      _isInitialized = true;
    } finally {
      free(clsidCorMetaDataDispenser);
      free(iidIMetaDataDispenser);
    }
  }

  /// Returns the metadata for a [typeName] (e.g.,
  /// `Windows.Globalization.Calendar`).
  static TypeDef? getMetadataForType(String typeName) {
    final scope = getScopeForType(typeName);
    return scope.findTypeDef(typeName);
  }

  /// Returns the scope for a [typeName] (e.g.,
  /// `Windows.Globalization.Calendar`).
  static Scope getScopeForType(String typeName) {
    if (typeName.isEmpty) {
      throw ArgumentError.value(typeName, 'typeName', 'Must not be empty.');
    }

    if (!typeName.startsWith('Windows')) {
      throw ArgumentError.value(
          typeName, 'typeName', 'Must start with `Windows`.');
    }

    if (!_isInitialized) initialize();

    if (typeName.startsWith('Windows.Win32')) {
      final assetName = MetadataType.win32.assetName;
      if (scopeCache.containsKey(assetName)) return scopeCache[assetName]!;

      throw WinmdException(
        'Metadata scope for `$typeName` could not be found. Please ensure '
        'that you load the Win32 metadata first by calling '
        '`loadWin32Metadata()`.',
      );
    }

    if (typeName.startsWith('Windows')) {
      final assetName = MetadataType.winrt.assetName;
      if (scopeCache.containsKey(assetName)) return scopeCache[assetName]!;

      throw WinmdException(
        'Metadata scope for `$typeName` could not be found. Please ensure '
        'that you load the WinRT metadata first by calling '
        '`loadWinRTMetadata()`.',
      );
    }

    throw WinmdException('Could not find metadata scope for $typeName.');
  }

  /// Returns the scope for a Windows Metadata [file].
  static Scope loadMetadataFromFile(File file) {
    if (!file.existsSync()) {
      throw ArgumentError.value(file, 'file', 'File does not exist.');
    }

    if (!_isInitialized) initialize();
    assert(_dispenser != null);

    final szFile = file.path.toNativeUtf16();
    final pReader = calloc<COMObject>();
    final iidIMetaDataImport2 = convertToIID(IID_IMetaDataImport2);
    final pAssemblyImport = calloc<COMObject>();
    final iidIMetaDataAssemblyImport =
        convertToIID(IID_IMetaDataAssemblyImport);

    try {
      var hr = _dispenser!.openScope(
          szFile, CorOpenFlags.ofRead, iidIMetaDataImport2, pReader.cast());
      if (FAILED(hr)) {
        free(pAssemblyImport);
        free(pReader);
        throw WindowsException(hr);
      }

      hr = _dispenser!.openScope(szFile, CorOpenFlags.ofRead,
          iidIMetaDataAssemblyImport, pAssemblyImport.cast());
      if (FAILED(hr)) {
        free(pAssemblyImport);
        free(pReader);
        throw WindowsException(hr);
      }

      final scope = Scope(
          IMetaDataImport2(pReader), IMetaDataAssemblyImport(pAssemblyImport));
      final fileName = file.uri.pathSegments.last;
      scopeCache[fileName] = scope;

      return scope;
    } finally {
      free(szFile);
      free(iidIMetaDataImport2);
      free(iidIMetaDataAssemblyImport);
    }
  }

  static Future<Uint8List> _downloadPackage(
      String packageName, String version) async {
    final packageId = packageName.toLowerCase();
    print('Downloading $packageId.$version.nupkg...');
    return await _nugetClient!
        .downloadPackageContent(packageId, version: version);
  }

  static Future<String> _unpackPackage(
      String packageName, String version) async {
    final path = '${LocalStorage.path}\\$packageName@$version';
    final packageDir = Directory(path);
    final MetadataType(:assetName) = MetadataType.fromPackageName(packageName);
    final metadataFile = File('$path\\$assetName');
    if (metadataFile.existsSync()) return path;

    packageDir.createSync(recursive: true);
    final bytes = await _downloadPackage(packageName, version);
    final archive = ZipDecoder().decodeBytes(bytes);
    extractArchiveToDisk(archive, path);

    return path;
  }

  static Future<Scope> _loadWin32Metadata({required String version}) async {
    final MetadataType(:assetName, :packageName) = MetadataType.win32;
    final packagePath = await _unpackPackage(packageName, version);
    final metadataFile = File('$packagePath\\$assetName');
    return loadMetadataFromFile(metadataFile);
  }

  /// Returns the scope that contains the Win32 metadata.
  static Future<Scope> loadWin32Metadata({String? version}) async {
    if (!_isInitialized) initialize();

    final MetadataType(:assetName, :packageName) = MetadataType.win32;
    final downloadVersion = version ??
        await _nugetClient!
            .getLatestPackageVersion(packageName, includePrerelease: true);

    // If the metadata is already downloaded, load it.
    final package =
        LocalStorage.getPackage(packageName, version: downloadVersion);
    if (package != null) {
      final metadataFile = File('${package.path}\\$assetName');
      if (metadataFile.existsSync()) return loadMetadataFromFile(metadataFile);
    }

    // The lock file is used to prevent multiple processes from downloading the
    // same package at the same time during the test run.
    final lockFile = File('${LocalStorage.path}\\$packageName.lock');
    final randomAccessFile = lockFile.openSync(mode: FileMode.write)
      ..lockSync(FileLock.blockingExclusive);
    try {
      return await _loadWin32Metadata(version: downloadVersion);
    } finally {
      randomAccessFile.closeSync();
      try {
        lockFile.deleteSync();
      } catch (_) {}
    }
  }

  static Future<Scope> _loadWinRTMetadata({required String version}) async {
    final MetadataType(:assetName, :packageName) = MetadataType.winrt;
    final packagePath = await _unpackPackage(packageName, version);

    final metadataFile = File('$packagePath\\$assetName');
    if (!metadataFile.existsSync()) {
      // Merge the Windows Metadata (.winmd) files into a single file.
      MdMerge.mergeMetadata('$packagePath\\ref\\netstandard2.0', packagePath);
    }

    return loadMetadataFromFile(metadataFile);
  }

  /// Returns the scope that contains the WinRT metadata.
  static Future<Scope> loadWinRTMetadata({String? version}) async {
    if (!_isInitialized) initialize();

    final MetadataType(:assetName, :packageName) = MetadataType.winrt;
    final downloadVersion = version ??
        await _nugetClient!
            .getLatestPackageVersion(packageName, includePrerelease: true);

    // If the metadata is already downloaded, load it.
    final package =
        LocalStorage.getPackage(packageName, version: downloadVersion);
    if (package != null) {
      final metadataFile = File('${package.path}\\$assetName');
      if (metadataFile.existsSync()) return loadMetadataFromFile(metadataFile);
    }

    // The lock file is used to prevent multiple processes from downloading the
    // same package at the same time during the test run.
    final lockFile = File('${LocalStorage.path}\\$packageName.lock');
    final randomAccessFile = lockFile.openSync(mode: FileMode.write)
      ..lockSync(FileLock.blockingExclusive);
    try {
      return await _loadWinRTMetadata(version: downloadVersion);
    } finally {
      randomAccessFile.closeSync();
      try {
        lockFile.deleteSync();
      } catch (_) {}
    }
  }

  /// Disposes of all objects.
  ///
  /// The readers and dispensers should be automatically torn down with the end
  /// of the process, but it's polite to do this in an orderly manner,
  /// particularly if the calling app outlives the cache lifetime.
  static void close() {
    if (!_isInitialized) return;
    assert(_dispenser != null);
    assert(_nugetClient != null);
    scopeCache.clear();
    _dispenser!.release();
    free(_dispenser!.ptr);
    _dispenser = null;
    _nugetClient!.close();
    _nugetClient = null;
    _isInitialized = false;
  }

  /// Prints information about the cache for debugging purposes.
  static String get cacheInfo => '[${scopeCache.keys.join(', ')}]';
}
