// IDedupIterateChunksHash32.dart

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
import '../../storage/datadeduplication/structs.g.dart';

/// @nodoc
const IID_IDedupIterateChunksHash32 = '{90B584D3-72AA-400F-9767-CAD866A5A2D8}';

/// {@category Interface}
/// {@category com}
class IDedupIterateChunksHash32 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDedupIterateChunksHash32(Pointer<COMObject> ptr) : super(ptr);

  int PushBuffer(
    Pointer<Uint8> pBuffer,
    int ulBufferLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pBuffer,
            Uint32 ulBufferLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pBuffer,
            int ulBufferLength,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
        ulBufferLength,
      );

  int Next(
    int ulMaxChunks,
    Pointer<DEDUP_CHUNK_INFO_HASH32> pArrChunks,
    Pointer<Uint32> pulFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulMaxChunks,
            Pointer<DEDUP_CHUNK_INFO_HASH32> pArrChunks,
            Pointer<Uint32> pulFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulMaxChunks,
            Pointer<DEDUP_CHUNK_INFO_HASH32> pArrChunks,
            Pointer<Uint32> pulFetched,
          )>()(
        ptr.ref.lpVtbl,
        ulMaxChunks,
        pArrChunks,
        pulFetched,
      );

  int Drain() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
