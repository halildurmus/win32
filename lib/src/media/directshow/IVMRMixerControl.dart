// IVMRMixerControl.dart

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
const IID_IVMRMixerControl = '{1C1A17B0-BED0-415D-974B-DC6696131599}';

/// {@category Interface}
/// {@category com}
class IVMRMixerControl extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IVMRMixerControl(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<NORMALIZEDRECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<NORMALIZEDRECT> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<NORMALIZEDRECT> pRect,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        pRect,
      );

  int GetOutputRect(
    int dwStreamID,
    Pointer<NORMALIZEDRECT> pRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<NORMALIZEDRECT> pRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<NORMALIZEDRECT> pRect,
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
}
