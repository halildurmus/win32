// IAudioAmbisonicsControl.dart

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
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioAmbisonicsControl = '{28724C91-DF35-4856-9F76-D6A26413F3DF}';

/// {@category Interface}
/// {@category com}
class IAudioAmbisonicsControl extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAudioAmbisonicsControl(Pointer<COMObject> ptr) : super(ptr);

  int SetData(
    Pointer<AMBISONICS_PARAMS> pAmbisonicsParams,
    int cbAmbisonicsParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AMBISONICS_PARAMS> pAmbisonicsParams,
            Uint32 cbAmbisonicsParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AMBISONICS_PARAMS> pAmbisonicsParams,
            int cbAmbisonicsParams,
          )>()(
        ptr.ref.lpVtbl,
        pAmbisonicsParams,
        cbAmbisonicsParams,
      );

  int SetHeadTracking(
    int bEnableHeadTracking,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bEnableHeadTracking,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnableHeadTracking,
          )>()(
        ptr.ref.lpVtbl,
        bEnableHeadTracking,
      );

  int GetHeadTracking(
    Pointer<Int32> pbEnableHeadTracking,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbEnableHeadTracking,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbEnableHeadTracking,
          )>()(
        ptr.ref.lpVtbl,
        pbEnableHeadTracking,
      );

  int SetRotation(
    double X,
    double Y,
    double Z,
    double W,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float X,
            Float Y,
            Float Z,
            Float W,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double X,
            double Y,
            double Z,
            double W,
          )>()(
        ptr.ref.lpVtbl,
        X,
        Y,
        Z,
        W,
      );
}
