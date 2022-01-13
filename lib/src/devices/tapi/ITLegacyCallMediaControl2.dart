// ITLegacyCallMediaControl2.dart

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

import '../../devices/tapi/ITLegacyCallMediaControl.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/structs.g.dart';
import '../../devices/tapi/ITCollection2.dart';
import '../../devices/tapi/ITDetectTone.dart';
import '../../devices/tapi/ITCustomTone.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ITLegacyCallMediaControl2 = '{57CA332D-7BC2-44F1-A60C-936FE8D7CE73}';

/// {@category Interface}
/// {@category com}
class ITLegacyCallMediaControl2 extends ITLegacyCallMediaControl {
  // vtable begins at 12, is 10 entries long.
  ITLegacyCallMediaControl2(Pointer<COMObject> ptr) : super(ptr);

  int GenerateDigits2(
    Pointer<Utf16> pDigits,
    int DigitMode,
    int lDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pDigits,
            Int32 DigitMode,
            Int32 lDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pDigits,
            int DigitMode,
            int lDuration,
          )>()(
        ptr.ref.lpVtbl,
        pDigits,
        DigitMode,
        lDuration,
      );

  int GatherDigits(
    int DigitMode,
    int lNumDigits,
    Pointer<Utf16> pTerminationDigits,
    int lFirstDigitTimeout,
    int lInterDigitTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DigitMode,
            Int32 lNumDigits,
            Pointer<Utf16> pTerminationDigits,
            Int32 lFirstDigitTimeout,
            Int32 lInterDigitTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DigitMode,
            int lNumDigits,
            Pointer<Utf16> pTerminationDigits,
            int lFirstDigitTimeout,
            int lInterDigitTimeout,
          )>()(
        ptr.ref.lpVtbl,
        DigitMode,
        lNumDigits,
        pTerminationDigits,
        lFirstDigitTimeout,
        lInterDigitTimeout,
      );

  int DetectTones(
    Pointer<TAPI_DETECTTONE> pToneList,
    int lNumTones,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TAPI_DETECTTONE> pToneList,
            Int32 lNumTones,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TAPI_DETECTTONE> pToneList,
            int lNumTones,
          )>()(
        ptr.ref.lpVtbl,
        pToneList,
        lNumTones,
      );

  int DetectTonesByCollection(
    Pointer<COMObject> pDetectToneCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDetectToneCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDetectToneCollection,
          )>()(
        ptr.ref.lpVtbl,
        pDetectToneCollection,
      );

  int GenerateTone(
    int ToneMode,
    int lDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ToneMode,
            Int32 lDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ToneMode,
            int lDuration,
          )>()(
        ptr.ref.lpVtbl,
        ToneMode,
        lDuration,
      );

  int GenerateCustomTones(
    Pointer<TAPI_CUSTOMTONE> pToneList,
    int lNumTones,
    int lDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TAPI_CUSTOMTONE> pToneList,
            Int32 lNumTones,
            Int32 lDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TAPI_CUSTOMTONE> pToneList,
            int lNumTones,
            int lDuration,
          )>()(
        ptr.ref.lpVtbl,
        pToneList,
        lNumTones,
        lDuration,
      );

  int GenerateCustomTonesByCollection(
    Pointer<COMObject> pCustomToneCollection,
    int lDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCustomToneCollection,
            Int32 lDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCustomToneCollection,
            int lDuration,
          )>()(
        ptr.ref.lpVtbl,
        pCustomToneCollection,
        lDuration,
      );

  int CreateDetectToneObject(
    Pointer<Pointer<COMObject>> ppDetectTone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDetectTone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDetectTone,
          )>()(
        ptr.ref.lpVtbl,
        ppDetectTone,
      );

  int CreateCustomToneObject(
    Pointer<Pointer<COMObject>> ppCustomTone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCustomTone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCustomTone,
          )>()(
        ptr.ref.lpVtbl,
        ppCustomTone,
      );

  int GetIDAsVariant(
    Pointer<Utf16> bstrDeviceClass,
    Pointer<VARIANT> pVarDeviceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDeviceClass,
            Pointer<VARIANT> pVarDeviceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDeviceClass,
            Pointer<VARIANT> pVarDeviceID,
          )>()(
        ptr.ref.lpVtbl,
        bstrDeviceClass,
        pVarDeviceID,
      );
}
