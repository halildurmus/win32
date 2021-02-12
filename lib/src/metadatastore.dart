// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'scope.dart';
import 'typedef.dart';

/// Caches a reader for each file scope.
///
/// Use this to obtain a reference of a scope without creating unnecessary
/// copies or cycles.
class MetadataStore {
  static late final IMetaDataDispenser dispenser;
  static final cache = <String, IMetaDataImport2>{};

  static bool isInitialized = false;

  static void initialize() {
    // This must have the same object lifetime as MetadataStore itself.
    final dispenserObject = calloc<Pointer>();

    final hr = MetaDataGetDispenser(convertToCLSID(CLSID_CorMetaDataDispenser),
        convertToIID(IID_IMetaDataDispenser), dispenserObject);

    if (FAILED(hr)) {
      throw WindowsException(hr);
    }

    dispenser = IMetaDataDispenser(dispenserObject.cast());

    isInitialized = true;
  }

  /// Takes a metadata file path and returns the matching scope.
  static Scope getScopeForFile(String fileScope) {
    if (!isInitialized) initialize();

    if (cache.containsKey(fileScope)) {
      return Scope(cache[fileScope]!);
    } else {
      final szFile = fileScope.toNativeUtf16();
      final pReader = calloc<IntPtr>();

      try {
        final hr = dispenser.OpenScope(szFile, CorOpenFlags.ofRead,
            convertToIID(IID_IMetaDataImport2), pReader);
        if (FAILED(hr)) {
          throw WindowsException(hr);
        } else {
          cache[fileScope] = IMetaDataImport2(pReader.cast());
          return Scope(cache[fileScope]!);
        }
      } finally {
        calloc.free(szFile);
      }
    }
  }

  /// Takes a typename (e.g. `Windows.Globalization.Calendar`) and returns the
  /// metadata scope that contains the type.
  static Scope getScopeForType(String typeName) {
    if (typeName.startsWith('Windows.Win32')) {
      // It's a Win32 type.

      // The following will throw an exception if the Win32 scope isn't in the
      // cache, since we don't know where to find the Win32 metadata if it's not
      // already loaded. This won't be a problem, so long as the original Win32
      // metadata scope was loaded with getScopeForFile.
      final cacheEntry =
          cache.keys.firstWhere((entry) => entry.contains('Windows.Win32'));

      return Scope(cache[cacheEntry]!);
    } else {
      // Assume it's a Windows Runtime type
      final hstrTypeName = convertToHString(typeName);

      final hstrMetaDataFilePath = calloc<IntPtr>();
      final spMetaDataImport = calloc<Pointer>();
      final typeDef = calloc<Uint32>();

      try {
        // For apps that are not Windows Store apps, RoGetMetaDataFile can only be
        // used for classes that are part of the Windows Runtime itself (i.e. not
        // third-party types).
        final hr = RoGetMetaDataFile(hstrTypeName.value, nullptr,
            hstrMetaDataFilePath, spMetaDataImport, typeDef);
        if (SUCCEEDED(hr)) {
          final filePath = convertFromHString(hstrMetaDataFilePath);
          return getScopeForFile(filePath);
        } else {
          throw WindowsException(hr);
        }
      } finally {
        WindowsDeleteString(hstrTypeName.value);
        WindowsDeleteString(hstrMetaDataFilePath.value);

        calloc.free(hstrTypeName);
        calloc.free(hstrMetaDataFilePath);
      }
    }
  }

  static TypeDef getMetadataForType(String typeName) {
    if (!isInitialized) initialize();

    final scope = getScopeForType(typeName);
    return scope.findTypeDef(typeName);
  }

  /// Dispose of all objects.
  ///
  /// The readers and dispensers should be automatically torn down with the end
  /// of the process, but it's polite to do this in an orderly manner,
  /// particularly if the calling app outlives the cache lifetime.
  static void close() {
    if (!isInitialized) return;

    for (final reader in cache.values) {
      calloc.free(reader.ptr);
    }
    calloc.free(dispenser.ptr);

    cache.clear();
    isInitialized = false;
  }

  /// Print information about the cache for debugging purposes.
  @override
  String toString() => 'Store: [${MetadataStore.cache.keys.join(', ')}]';
}
