// IMFByteStreamCacheControl2.dart

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

import '../../media/mediafoundation/IMFByteStreamCacheControl.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFByteStreamCacheControl2 = '{71CE469C-F34B-49EA-A56B-2D2A10E51149}';

/// {@category Interface}
/// {@category com}
class IMFByteStreamCacheControl2 extends IMFByteStreamCacheControl {
  // vtable begins at 4, is 3 entries long.
  IMFByteStreamCacheControl2(Pointer<COMObject> ptr) : super(ptr);

  int GetByteRanges(
    Pointer<Uint32> pcRanges,
    Pointer<Pointer<MF_BYTE_STREAM_CACHE_RANGE>> ppRanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcRanges,
            Pointer<Pointer<MF_BYTE_STREAM_CACHE_RANGE>> ppRanges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcRanges,
            Pointer<Pointer<MF_BYTE_STREAM_CACHE_RANGE>> ppRanges,
          )>()(
        ptr.ref.lpVtbl,
        pcRanges,
        ppRanges,
      );

  int SetCacheLimit(
    int qwBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 qwBytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int qwBytes,
          )>()(
        ptr.ref.lpVtbl,
        qwBytes,
      );

  int IsBackgroundTransferActive(
    Pointer<Int32> pfActive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfActive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfActive,
          )>()(
        ptr.ref.lpVtbl,
        pfActive,
      );
}
