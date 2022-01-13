// IThumbnailStreamCache.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IThumbnailStreamCache = '{90E11430-9569-41D8-AE75-6D4D2AE7CCA0}';

/// {@category Interface}
/// {@category com}
class IThumbnailStreamCache extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IThumbnailStreamCache(Pointer<COMObject> ptr) : super(ptr);

  int GetThumbnailStream(
    Pointer<Utf16> path,
    int cacheId,
    int options,
    int requestedThumbnailSize,
    Pointer<SIZE> thumbnailSize,
    Pointer<Pointer<COMObject>> thumbnailStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Uint64 cacheId,
            Int32 options,
            Uint32 requestedThumbnailSize,
            Pointer<SIZE> thumbnailSize,
            Pointer<Pointer<COMObject>> thumbnailStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int cacheId,
            int options,
            int requestedThumbnailSize,
            Pointer<SIZE> thumbnailSize,
            Pointer<Pointer<COMObject>> thumbnailStream,
          )>()(
        ptr.ref.lpVtbl,
        path,
        cacheId,
        options,
        requestedThumbnailSize,
        thumbnailSize,
        thumbnailStream,
      );

  int SetThumbnailStream(
    Pointer<Utf16> path,
    int cacheId,
    SIZE thumbnailSize,
    Pointer<COMObject> thumbnailStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Uint64 cacheId,
            SIZE thumbnailSize,
            Pointer<COMObject> thumbnailStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int cacheId,
            SIZE thumbnailSize,
            Pointer<COMObject> thumbnailStream,
          )>()(
        ptr.ref.lpVtbl,
        path,
        cacheId,
        thumbnailSize,
        thumbnailStream,
      );
}

/// @nodoc
const CLSID_ThumbnailStreamCache = '{CBE0FED3-4B91-4E90-8354-8A8C84EC6872}';

/// {@category com}
class ThumbnailStreamCache extends IThumbnailStreamCache {
  ThumbnailStreamCache(Pointer<COMObject> ptr) : super(ptr);

  factory ThumbnailStreamCache.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ThumbnailStreamCache);
    final iid = calloc<GUID>()..ref.setGUID(IID_IThumbnailStreamCache);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ThumbnailStreamCache(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
