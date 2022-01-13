// IRDPSRAPITransportStreamEvents.dart

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

/// @nodoc
const IID_IRDPSRAPITransportStreamEvents =
    '{EA81C254-F5AF-4E40-982E-3E63BB595276}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPITransportStreamEvents extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IRDPSRAPITransportStreamEvents(Pointer<COMObject> ptr) : super(ptr);

  void OnWriteCompleted(
    Pointer<COMObject> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );

  void OnReadCompleted(
    Pointer<COMObject> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );

  void OnStreamClosed(
    int hrReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 hrReason,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int hrReason,
          )>()(
        ptr.ref.lpVtbl,
        hrReason,
      );
}
