// IRDPSRAPITransportStream.dart

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
import '../../system/desktopsharing/IRDPSRAPITransportStreamBuffer.dart';
import '../../foundation/structs.g.dart';
import '../../system/desktopsharing/IRDPSRAPITransportStreamEvents.dart';

/// @nodoc
const IID_IRDPSRAPITransportStream = '{36CFA065-43BB-4EF7-AED7-9B88A5053036}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPITransportStream extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IRDPSRAPITransportStream(Pointer<COMObject> ptr) : super(ptr);

  int AllocBuffer(
    int maxPayload,
    Pointer<Pointer<COMObject>> ppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 maxPayload,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int maxPayload,
            Pointer<Pointer<COMObject>> ppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        maxPayload,
        ppBuffer,
      );

  int FreeBuffer(
    Pointer<COMObject> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );

  int WriteBuffer(
    Pointer<COMObject> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );

  int ReadBuffer(
    Pointer<COMObject> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );

  int Open(
    Pointer<COMObject> pCallbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallbacks,
          )>()(
        ptr.ref.lpVtbl,
        pCallbacks,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
