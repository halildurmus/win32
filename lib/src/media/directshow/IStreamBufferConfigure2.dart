// IStreamBufferConfigure2.dart

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

import '../../media/directshow/IStreamBufferConfigure.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamBufferConfigure2 = '{53E037BF-3992-4282-AE34-2487B4DAE06B}';

/// {@category Interface}
/// {@category com}
class IStreamBufferConfigure2 extends IStreamBufferConfigure {
  // vtable begins at 9, is 4 entries long.
  IStreamBufferConfigure2(Pointer<COMObject> ptr) : super(ptr);

  int SetMultiplexedPacketSize(
    int cbBytesPerPacket,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbBytesPerPacket,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbBytesPerPacket,
          )>()(
        ptr.ref.lpVtbl,
        cbBytesPerPacket,
      );

  int GetMultiplexedPacketSize(
    Pointer<Uint32> pcbBytesPerPacket,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbBytesPerPacket,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbBytesPerPacket,
          )>()(
        ptr.ref.lpVtbl,
        pcbBytesPerPacket,
      );

  int SetFFTransitionRates(
    int dwMaxFullFrameRate,
    int dwMaxNonSkippingRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMaxFullFrameRate,
            Uint32 dwMaxNonSkippingRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMaxFullFrameRate,
            int dwMaxNonSkippingRate,
          )>()(
        ptr.ref.lpVtbl,
        dwMaxFullFrameRate,
        dwMaxNonSkippingRate,
      );

  int GetFFTransitionRates(
    Pointer<Uint32> pdwMaxFullFrameRate,
    Pointer<Uint32> pdwMaxNonSkippingRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMaxFullFrameRate,
            Pointer<Uint32> pdwMaxNonSkippingRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMaxFullFrameRate,
            Pointer<Uint32> pdwMaxNonSkippingRate,
          )>()(
        ptr.ref.lpVtbl,
        pdwMaxFullFrameRate,
        pdwMaxNonSkippingRate,
      );
}
