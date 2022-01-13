// IBPCSatelliteTuner.dart

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

import '../../media/directshow/IAMTuner.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBPCSatelliteTuner = '{211A8765-03AC-11D1-8D13-00AA00BD8339}';

/// {@category Interface}
/// {@category com}
class IBPCSatelliteTuner extends IAMTuner {
  // vtable begins at 18, is 3 entries long.
  IBPCSatelliteTuner(Pointer<COMObject> ptr) : super(ptr);

  int get_DefaultSubChannelTypes(
    Pointer<Int32> plDefaultVideoType,
    Pointer<Int32> plDefaultAudioType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plDefaultVideoType,
            Pointer<Int32> plDefaultAudioType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plDefaultVideoType,
            Pointer<Int32> plDefaultAudioType,
          )>()(
        ptr.ref.lpVtbl,
        plDefaultVideoType,
        plDefaultAudioType,
      );

  int put_DefaultSubChannelTypes(
    int lDefaultVideoType,
    int lDefaultAudioType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lDefaultVideoType,
            Int32 lDefaultAudioType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lDefaultVideoType,
            int lDefaultAudioType,
          )>()(
        ptr.ref.lpVtbl,
        lDefaultVideoType,
        lDefaultAudioType,
      );

  int IsTapingPermitted() => ptr.ref.lpVtbl.value
          .elementAt(20)
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
