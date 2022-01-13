// IMSVidEVREvent.dart

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

import '../../media/directshow/IMSVidOutputDeviceEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidEVREvent = '{349ABB10-883C-4F22-8714-CECAEEE45D62}';

/// {@category Interface}
/// {@category com}
class IMSVidEVREvent extends IMSVidOutputDeviceEvent {
  // vtable begins at 8, is 1 entries long.
  IMSVidEVREvent(Pointer<COMObject> ptr) : super(ptr);

  int OnUserEvent(
    int lEventCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lEventCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lEventCode,
          )>()(
        ptr.ref.lpVtbl,
        lEventCode,
      );
}
