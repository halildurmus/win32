// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'md_scope.dart';
import 'md_type.dart';

/// Caches a reader for each file scope.
///
/// Use this to obtain a reference of a scope without creating unnecessary
/// copies or cycles.
class WinmdStore {
  static IMetaDataDispenser dispenser;
  static final cache = <String, IMetaDataImport2>{};

  static bool isInitialized = false;

  static void initialize() {
    final dispenserObject = allocate<IntPtr>();

    final hr = MetaDataGetDispenser(
        convertToCLSID(CLSID_CorMetaDataDispenser).cast(),
        convertToIID(IID_IMetaDataDispenser).cast(),
        dispenserObject);

    if (FAILED(hr)) {
      throw WindowsException(hr);
    }

    dispenser = IMetaDataDispenser(dispenserObject.cast());

    isInitialized = true;
  }

  /// Takes a metadata file path and returns the matching scope.
  static WinmdScope getScopeForFile(String fileScope) {
    if (!isInitialized) initialize();

    if (cache.containsKey(fileScope)) {
      return WinmdScope(cache[fileScope]);
    } else {
      final szFile = TEXT(fileScope);
      final pReader = allocate<IntPtr>();

      try {
        final hr = dispenser.OpenScope(szFile, CorOpenFlags.ofRead,
            convertToIID(IID_IMetaDataImport2).cast(), pReader);
        if (FAILED(hr)) {
          throw WindowsException(hr);
        } else {
          cache[fileScope] = IMetaDataImport2(pReader.cast());
          return WinmdScope(cache[fileScope]);
        }
      } finally {
        free(szFile);
      }
    }
  }

  /// Takes a typename (e.g. `Windows.Globalization.Calendar`) and returns the
  /// metadata scope that contains the type.
  static WinmdScope getScopeForType(String typeName) {
    final hstrTypeName = convertToHString(typeName);

    final hstrMetaDataFilePath = allocate<IntPtr>();
    final spMetaDataImport = allocate<IntPtr>();
    final typeDef = allocate<Uint32>();

    try {
      // For apps that are not Windows Store apps, RoGetMetaDataFile can only be
      // used for classes that are part of the Windows Runtime itself (i.e. not
      // third-party types).
      final hr = RoGetMetaDataFile(hstrTypeName.value, nullptr,
          hstrMetaDataFilePath.address, spMetaDataImport, typeDef);
      if (SUCCEEDED(hr)) {
        final filePath = convertFromHString(hstrMetaDataFilePath);
        return getScopeForFile(filePath);
      } else if (hr == HRESULT_FROM_WIN32(APPMODEL_ERROR_NO_PACKAGE)) {
        return null;
      } else {
        throw WindowsException(hr);
      }
    } finally {
      WindowsDeleteString(hstrTypeName.value);
      WindowsDeleteString(hstrMetaDataFilePath.value);

      free(hstrTypeName);
      free(hstrMetaDataFilePath);
    }
  }

  static WinmdType getMetadataForType(String typeName) {
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
      free(reader.ptr);
    }
    free(dispenser.ptr);

    cache.clear();
    isInitialized = false;
  }

  /// Print information about the cache for debugging purposes.
  @override
  String toString() => 'Store: [${WinmdStore.cache.keys.join(', ')}]';
}
