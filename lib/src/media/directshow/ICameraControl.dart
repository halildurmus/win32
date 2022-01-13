// ICameraControl.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICameraControl = '{2BA1785D-4D1B-44EF-85E8-C7F1D3F20184}';

/// {@category Interface}
/// {@category com}
class ICameraControl extends IUnknown {
  // vtable begins at 3, is 51 entries long.
  ICameraControl(Pointer<COMObject> ptr) : super(ptr);

  int get_Exposure(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_Exposure(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_Exposure(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_Focus(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_Focus(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_Focus(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_Iris(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_Iris(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_Iris(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_Zoom(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_Zoom(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_Zoom(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_FocalLengths(
    Pointer<Int32> plOcularFocalLength,
    Pointer<Int32> plObjectiveFocalLengthMin,
    Pointer<Int32> plObjectiveFocalLengthMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plOcularFocalLength,
            Pointer<Int32> plObjectiveFocalLengthMin,
            Pointer<Int32> plObjectiveFocalLengthMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plOcularFocalLength,
            Pointer<Int32> plObjectiveFocalLengthMin,
            Pointer<Int32> plObjectiveFocalLengthMax,
          )>()(
        ptr.ref.lpVtbl,
        plOcularFocalLength,
        plObjectiveFocalLengthMin,
        plObjectiveFocalLengthMax,
      );

  int get_Pan(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_Pan(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_Pan(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_Tilt(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_Tilt(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_Tilt(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_PanTilt(
    Pointer<Int32> pPanValue,
    Pointer<Int32> pTiltValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPanValue,
            Pointer<Int32> pTiltValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPanValue,
            Pointer<Int32> pTiltValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pPanValue,
        pTiltValue,
        pFlags,
      );

  int put_PanTilt(
    int PanValue,
    int TiltValue,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PanValue,
            Int32 TiltValue,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PanValue,
            int TiltValue,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        PanValue,
        TiltValue,
        Flags,
      );

  int get_Roll(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_Roll(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_Roll(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_ExposureRelative(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_ExposureRelative(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_ExposureRelative(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_FocusRelative(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_FocusRelative(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_FocusRelative(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_IrisRelative(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_IrisRelative(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_IrisRelative(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_ZoomRelative(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_ZoomRelative(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_ZoomRelative(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_PanRelative(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_PanRelative(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int get_TiltRelative(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_TiltRelative(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_TiltRelative(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_PanTiltRelative(
    Pointer<Int32> pPanValue,
    Pointer<Int32> pTiltValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPanValue,
            Pointer<Int32> pTiltValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPanValue,
            Pointer<Int32> pTiltValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pPanValue,
        pTiltValue,
        pFlags,
      );

  int put_PanTiltRelative(
    int PanValue,
    int TiltValue,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PanValue,
            Int32 TiltValue,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PanValue,
            int TiltValue,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        PanValue,
        TiltValue,
        Flags,
      );

  int getRange_PanRelative(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_RollRelative(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_RollRelative(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int getRange_RollRelative(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMin,
            Pointer<Int32> pMax,
            Pointer<Int32> pSteppingDelta,
            Pointer<Int32> pDefault,
            Pointer<Int32> pCapsFlag,
          )>()(
        ptr.ref.lpVtbl,
        pMin,
        pMax,
        pSteppingDelta,
        pDefault,
        pCapsFlag,
      );

  int get_ScanMode(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_ScanMode(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );

  int get_PrivacyMode(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
        pFlags,
      );

  int put_PrivacyMode(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        Flags,
      );
}
