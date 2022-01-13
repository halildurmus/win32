// IDirectDraw4.dart

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
import '../../graphics/directdraw/IDirectDrawSurface4.dart';
import '../../graphics/directdraw/callbacks.g.dart';

/// @nodoc
const IID_IDirectDraw4 = '{9C59509A-39BD-11D1-8C4A-00C04FD930C5}';

/// {@category Interface}
/// {@category com}
class IDirectDraw4 extends IUnknown {
  // vtable begins at 3, is 25 entries long.
  IDirectDraw4(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<DDSURFACEDESC2> param0,
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
            Pointer<DDSURFACEDESC2> param0,
            Pointer<Pointer<COMObject>> param1,
            Pointer<COMObject> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSURFACEDESC2> param0,
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
    Pointer<DDSURFACEDESC2> param1,
    Pointer param2,
    Pointer<NativeFunction<LPDDENUMMODESCALLBACK2>> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DDSURFACEDESC2> param1,
            Pointer param2,
            Pointer<NativeFunction<LPDDENUMMODESCALLBACK2>> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DDSURFACEDESC2> param1,
            Pointer param2,
            Pointer<NativeFunction<LPDDENUMMODESCALLBACK2>> param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int EnumSurfaces(
    int param0,
    Pointer<DDSURFACEDESC2> param1,
    Pointer param2,
    Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK2>> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DDSURFACEDESC2> param1,
            Pointer param2,
            Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK2>> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DDSURFACEDESC2> param1,
            Pointer param2,
            Pointer<NativeFunction<LPDDENUMSURFACESCALLBACK2>> param3,
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
    Pointer<DDSURFACEDESC2> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDSURFACEDESC2> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSURFACEDESC2> param0,
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
    Pointer<DDSCAPS2> param0,
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
            Pointer<DDSCAPS2> param0,
            Pointer<Uint32> param1,
            Pointer<Uint32> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDSCAPS2> param0,
            Pointer<Uint32> param1,
            Pointer<Uint32> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int GetSurfaceFromDC(
    int param0,
    Pointer<Pointer<COMObject>> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
            Pointer<Pointer<COMObject>> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<Pointer<COMObject>> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int RestoreAllSurfaces() => ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int TestCooperativeLevel() => ptr.ref.lpVtbl.value
          .elementAt(26)
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

  int GetDeviceIdentifier(
    Pointer<DDDEVICEIDENTIFIER> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDDEVICEIDENTIFIER> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDDEVICEIDENTIFIER> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );
}
