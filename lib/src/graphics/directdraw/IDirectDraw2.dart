// IDirectDraw2.dart

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
import '../../graphics/directdraw/IDirectDrawClipper.dart';
import '../../specialTypes.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/directdraw/IDirectDrawPalette.dart';
import '../../graphics/directdraw/structs.g.dart';
import '../../graphics/directdraw/IDirectDrawSurface.dart';
import '../../graphics/directdraw/callbacks.g.dart';

/// @nodoc
const IID_IDirectDraw2 = '{B3A6F3E0-2B43-11CF-A2DE-00AA00B93356}';

/// {@category Interface}
/// {@category com}
class IDirectDraw2 extends IUnknown {
  // vtable begins at 3, is 21 entries long.
  IDirectDraw2(Pointer<COMObject> ptr) : super(ptr);

  int Compact() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int CreateClipper(
    int param0,
    Pointer<Pointer<COMObject>> param1,
    Pointer<COMObject> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<Pointer<COMObject>> param1,
            Pointer<COMObject> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<Pointer<COMObject>> param1,
            Pointer<COMObject> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int CreatePalette(
    int param0,
    Pointer<PALETTEENTRY> param1,
    Pointer<Pointer<COMObject>> param2,
    Pointer<COMObject> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<PALETTEENTRY> param1,
            Pointer<Pointer<COMObject>> param2,
            Pointer<COMObject> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<PALETTEENTRY> param1,
            Pointer<Pointer<COMObject>> param2,
            Pointer<COMObject> param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int CreateSurface(
    Pointer<DDSURFACEDESC> param0,
    Pointer<Pointer<COMObject>> param1,
    Pointer<COMObject> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDSURFACEDESC> param0,
            Pointer<Pointer<COMObject>> param1,
            Pointer<COMObject> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSURFACEDESC> param0,
            Pointer<Pointer<COMObject>> param1,
            Pointer<COMObject> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int DuplicateSurface(
    Pointer<COMObject> param0,
    Pointer<Pointer<COMObject>> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
            Pointer<Pointer<COMObject>> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
            Pointer<Pointer<COMObject>> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int EnumDisplayModes(
    int param0,
    Pointer<DDSURFACEDESC> param1,
    Pointer param2,
    Pointer<NativeFunction<LPDDENUMMODESCALLBACK>> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DDSURFACEDESC> param1,
            Pointer param2,
            Pointer<NativeFunction<LPDDENUMMODESCALLBACK>> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DDSURFACEDESC> param1,
            Pointer param2,
            Pointer<NativeFunction<LPDDENUMMODESCALLBACK>> param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int EnumSurfaces(
    int param0,
    Pointer<DDSURFACEDESC> param1,
    Pointer param2,
    Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DDSURFACEDESC> param1,
            Pointer param2,
            Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DDSURFACEDESC> param1,
            Pointer param2,
            Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK>> param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int FlipToGDISurface() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int GetCaps(
    Pointer<DDCAPS_DX7> param0,
    Pointer<DDCAPS_DX7> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDCAPS_DX7> param0,
            Pointer<DDCAPS_DX7> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDCAPS_DX7> param0,
            Pointer<DDCAPS_DX7> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetDisplayMode(
    Pointer<DDSURFACEDESC> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDSURFACEDESC> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSURFACEDESC> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetFourCCCodes(
    Pointer<Uint32> param0,
    Pointer<Uint32> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> param0,
            Pointer<Uint32> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> param0,
            Pointer<Uint32> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetGDISurface(
    Pointer<Pointer<COMObject>> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetMonitorFrequency(
    Pointer<Uint32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetScanLine(
    Pointer<Uint32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetVerticalBlankStatus(
    Pointer<Int32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int Initialize(
    Pointer<GUID> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int RestoreDisplayMode() => ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int SetCooperativeLevel(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int SetDisplayMode(
    int param0,
    int param1,
    int param2,
    int param3,
    int param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
            Uint32 param2,
            Uint32 param3,
            Uint32 param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            int param2,
            int param3,
            int param4,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
        param4,
      );

  int WaitForVerticalBlank(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            IntPtr param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetAvailableVidMem(
    Pointer<DDSCAPS> param0,
    Pointer<Uint32> param1,
    Pointer<Uint32> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDSCAPS> param0,
            Pointer<Uint32> param1,
            Pointer<Uint32> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSCAPS> param0,
            Pointer<Uint32> param1,
            Pointer<Uint32> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );
}
