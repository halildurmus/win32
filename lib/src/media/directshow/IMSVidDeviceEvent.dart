// IMSVidDeviceEvent.dart

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

import '../../system/com/IDispatch.dart';
import '../../media/directshow/IMSVidDevice.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidDeviceEvent = '{1C15D480-911D-11D2-B632-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IMSVidDeviceEvent extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IMSVidDeviceEvent(Pointer<COMObject> ptr) : super(ptr);

  int StateChange(
    Pointer<COMObject> lpd,
    int oldState,
    int newState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpd,
            Int32 oldState,
            Int32 newState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpd,
            int oldState,
            int newState,
          )>()(
        ptr.ref.lpVtbl,
        lpd,
        oldState,
        newState,
      );
}
