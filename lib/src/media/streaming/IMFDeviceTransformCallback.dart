// IMFDeviceTransformCallback.dart

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
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFDeviceTransformCallback = '{6D5CB646-29EC-41FB-8179-8C4C6D750811}';

/// {@category Interface}
/// {@category com}
class IMFDeviceTransformCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFDeviceTransformCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnBufferSent(
    Pointer<COMObject> pCallbackAttributes,
    int pinId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallbackAttributes,
            Uint32 pinId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallbackAttributes,
            int pinId,
          )>()(
        ptr.ref.lpVtbl,
        pCallbackAttributes,
        pinId,
      );
}
