// IVMRMixerControl9.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IVMRMixerControl9 = '{1A777EAA-47C8-4930-B2C9-8FEE1C1B0F3B}';

/// {@category Interface}
/// {@category com}
class IVMRMixerControl9 extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IVMRMixerControl9(Pointer<COMObject> ptr) : super(ptr);

  int SetAlpha(
    int dwStreamID,
    double Alpha,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Float Alpha,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            double Alpha,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        Alpha,
      );

  int GetAlpha(
    int dwStreamID,
    Pointer<Float> pAlpha,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<Float> pAlpha,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<Float> pAlpha,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        pAlpha,
      );

  int SetZOrder(
    int dwStreamID,
    int dwZ,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Uint32 dwZ,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            int dwZ,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        dwZ,
      );

  int GetZOrder(
    int dwStreamID,
    Pointer<Uint32> pZ,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<Uint32> pZ,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<Uint32> pZ,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        pZ,
      );

  int SetOutputRect(
    int dwStreamID,
    Pointer<VMR9NormalizedRect> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<VMR9NormalizedRect> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<VMR9NormalizedRect> pRect,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        pRect,
      );

  int GetOutputRect(
    int dwStreamID,
    Pointer<VMR9NormalizedRect> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<VMR9NormalizedRect> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<VMR9NormalizedRect> pRect,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        pRect,
      );

  int SetBackgroundClr(
    int ClrBkg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ClrBkg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ClrBkg,
          )>()(
        ptr.ref.lpVtbl,
        ClrBkg,
      );

  int GetBackgroundClr(
    Pointer<Uint32> lpClrBkg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpClrBkg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpClrBkg,
          )>()(
        ptr.ref.lpVtbl,
        lpClrBkg,
      );

  int SetMixingPrefs(
    int dwMixerPrefs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMixerPrefs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMixerPrefs,
          )>()(
        ptr.ref.lpVtbl,
        dwMixerPrefs,
      );

  int GetMixingPrefs(
    Pointer<Uint32> pdwMixerPrefs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMixerPrefs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMixerPrefs,
          )>()(
        ptr.ref.lpVtbl,
        pdwMixerPrefs,
      );

  int SetProcAmpControl(
    int dwStreamID,
    Pointer<VMR9ProcAmpControl> lpClrControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<VMR9ProcAmpControl> lpClrControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<VMR9ProcAmpControl> lpClrControl,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        lpClrControl,
      );

  int GetProcAmpControl(
    int dwStreamID,
    Pointer<VMR9ProcAmpControl> lpClrControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<VMR9ProcAmpControl> lpClrControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<VMR9ProcAmpControl> lpClrControl,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        lpClrControl,
      );

  int GetProcAmpControlRange(
    int dwStreamID,
    Pointer<VMR9ProcAmpControlRange> lpClrControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<VMR9ProcAmpControlRange> lpClrControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<VMR9ProcAmpControlRange> lpClrControl,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        lpClrControl,
      );
}
