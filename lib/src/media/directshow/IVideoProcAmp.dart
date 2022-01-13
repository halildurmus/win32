// IVideoProcAmp.dart

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
const IID_IVideoProcAmp = '{4050560E-42A7-413A-85C2-09269A2D0F44}';

/// {@category Interface}
/// {@category com}
class IVideoProcAmp extends IUnknown {
  // vtable begins at 3, is 39 entries long.
  IVideoProcAmp(Pointer<COMObject> ptr) : super(ptr);

  int get_BacklightCompensation(
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

  int put_BacklightCompensation(
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

  int getRange_BacklightCompensation(
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

  int get_Brightness(
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

  int put_Brightness(
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

  int getRange_Brightness(
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

  int get_ColorEnable(
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

  int put_ColorEnable(
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

  int getRange_ColorEnable(
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

  int get_Contrast(
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

  int put_Contrast(
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

  int getRange_Contrast(
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

  int get_Gamma(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int put_Gamma(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int getRange_Gamma(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int get_Saturation(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int put_Saturation(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int getRange_Saturation(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int get_Sharpness(
    Pointer<Int32> pValue,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int put_Sharpness(
    int Value,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int getRange_Sharpness(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int get_WhiteBalance(
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

  int put_WhiteBalance(
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

  int getRange_WhiteBalance(
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

  int get_Gain(
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

  int put_Gain(
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

  int getRange_Gain(
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

  int get_Hue(
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

  int put_Hue(
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

  int getRange_Hue(
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

  int get_DigitalMultiplier(
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

  int put_DigitalMultiplier(
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

  int getRange_DigitalMultiplier(
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

  int get_PowerlineFrequency(
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

  int put_PowerlineFrequency(
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

  int getRange_PowerlineFrequency(
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

  int get_WhiteBalanceComponent(
    Pointer<Int32> pValue1,
    Pointer<Int32> pValue2,
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue1,
            Pointer<Int32> pValue2,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue1,
            Pointer<Int32> pValue2,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pValue1,
        pValue2,
        pFlags,
      );

  int put_WhiteBalanceComponent(
    int Value1,
    int Value2,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Value1,
            Int32 Value2,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value1,
            int Value2,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Value1,
        Value2,
        Flags,
      );

  int getRange_WhiteBalanceComponent(
    Pointer<Int32> pMin,
    Pointer<Int32> pMax,
    Pointer<Int32> pSteppingDelta,
    Pointer<Int32> pDefault,
    Pointer<Int32> pCapsFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
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
}
