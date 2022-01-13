// IMF2DBuffer2.dart

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

import '../../media/mediafoundation/IMF2DBuffer.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMF2DBuffer2.dart';

/// @nodoc
const IID_IMF2DBuffer2 = '{33AE5EA6-4316-436F-8DDD-D73D22F829EC}';

/// {@category Interface}
/// {@category com}
class IMF2DBuffer2 extends IMF2DBuffer {
  // vtable begins at 10, is 2 entries long.
  IMF2DBuffer2(Pointer<COMObject> ptr) : super(ptr);

  int Lock2DSize(
    int lockFlags,
    Pointer<Pointer<Uint8>> ppbScanline0,
    Pointer<Int32> plPitch,
    Pointer<Pointer<Uint8>> ppbBufferStart,
    Pointer<Uint32> pcbBufferLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lockFlags,
            Pointer<Pointer<Uint8>> ppbScanline0,
            Pointer<Int32> plPitch,
            Pointer<Pointer<Uint8>> ppbBufferStart,
            Pointer<Uint32> pcbBufferLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lockFlags,
            Pointer<Pointer<Uint8>> ppbScanline0,
            Pointer<Int32> plPitch,
            Pointer<Pointer<Uint8>> ppbBufferStart,
            Pointer<Uint32> pcbBufferLength,
          )>()(
        ptr.ref.lpVtbl,
        lockFlags,
        ppbScanline0,
        plPitch,
        ppbBufferStart,
        pcbBufferLength,
      );

  int Copy2DTo(
    Pointer<COMObject> pDestBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pDestBuffer,
      );
}
