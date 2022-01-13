// IMSVidPlaybackEvent.dart

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

import '../../media/directshow/IMSVidInputDeviceEvent.dart';
import '../../media/directshow/IMSVidPlayback.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidPlaybackEvent = '{37B0353B-A4C8-11D2-B634-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IMSVidPlaybackEvent extends IMSVidInputDeviceEvent {
  // vtable begins at 7, is 1 entries long.
  IMSVidPlaybackEvent(Pointer<COMObject> ptr) : super(ptr);

  int EndOfMedia(
    Pointer<COMObject> lpd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpd,
          )>()(
        ptr.ref.lpVtbl,
        lpd,
      );
}
