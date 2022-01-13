// IVPBaseConfig.dart

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
import '../../graphics/directdraw/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../graphics/directdraw/IDirectDrawSurface.dart';

/// @nodoc
const IID_IVPBaseConfig = 'null';

/// {@category Interface}
/// {@category com}
class IVPBaseConfig extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IVPBaseConfig(Pointer<COMObject> ptr) : super(ptr);

  int GetConnectInfo(
    Pointer<Uint32> pdwNumConnectInfo,
    Pointer<DDVIDEOPORTCONNECT> pddVPConnectInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwNumConnectInfo,
            Pointer<DDVIDEOPORTCONNECT> pddVPConnectInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwNumConnectInfo,
            Pointer<DDVIDEOPORTCONNECT> pddVPConnectInfo,
          )>()(
        ptr.ref.lpVtbl,
        pdwNumConnectInfo,
        pddVPConnectInfo,
      );

  int SetConnectInfo(
    int dwChosenEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChosenEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChosenEntry,
          )>()(
        ptr.ref.lpVtbl,
        dwChosenEntry,
      );

  int GetVPDataInfo(
    Pointer<AMVPDATAINFO> pamvpDataInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AMVPDATAINFO> pamvpDataInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AMVPDATAINFO> pamvpDataInfo,
          )>()(
        ptr.ref.lpVtbl,
        pamvpDataInfo,
      );

  int GetMaxPixelRate(
    Pointer<AMVPSIZE> pamvpSize,
    Pointer<Uint32> pdwMaxPixelsPerSecond,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AMVPSIZE> pamvpSize,
            Pointer<Uint32> pdwMaxPixelsPerSecond,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AMVPSIZE> pamvpSize,
            Pointer<Uint32> pdwMaxPixelsPerSecond,
          )>()(
        ptr.ref.lpVtbl,
        pamvpSize,
        pdwMaxPixelsPerSecond,
      );

  int InformVPInputFormats(
    int dwNumFormats,
    Pointer<DDPIXELFORMAT> pDDPixelFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwNumFormats,
            Pointer<DDPIXELFORMAT> pDDPixelFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwNumFormats,
            Pointer<DDPIXELFORMAT> pDDPixelFormats,
          )>()(
        ptr.ref.lpVtbl,
        dwNumFormats,
        pDDPixelFormats,
      );

  int GetVideoFormats(
    Pointer<Uint32> pdwNumFormats,
    Pointer<DDPIXELFORMAT> pddPixelFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwNumFormats,
            Pointer<DDPIXELFORMAT> pddPixelFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwNumFormats,
            Pointer<DDPIXELFORMAT> pddPixelFormats,
          )>()(
        ptr.ref.lpVtbl,
        pdwNumFormats,
        pddPixelFormats,
      );

  int SetVideoFormat(
    int dwChosenEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChosenEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChosenEntry,
          )>()(
        ptr.ref.lpVtbl,
        dwChosenEntry,
      );

  int SetInvertPolarity() => ptr.ref.lpVtbl.value
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

  int GetOverlaySurface(
    Pointer<Pointer<COMObject>> ppddOverlaySurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppddOverlaySurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppddOverlaySurface,
          )>()(
        ptr.ref.lpVtbl,
        ppddOverlaySurface,
      );

  int SetDirectDrawKernelHandle(
    int dwDDKernelHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwDDKernelHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDDKernelHandle,
          )>()(
        ptr.ref.lpVtbl,
        dwDDKernelHandle,
      );

  int SetVideoPortID(
    int dwVideoPortID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwVideoPortID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwVideoPortID,
          )>()(
        ptr.ref.lpVtbl,
        dwVideoPortID,
      );

  int SetDDSurfaceKernelHandles(
    int cHandles,
    Pointer<IntPtr> rgDDKernelHandles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cHandles,
            Pointer<IntPtr> rgDDKernelHandles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cHandles,
            Pointer<IntPtr> rgDDKernelHandles,
          )>()(
        ptr.ref.lpVtbl,
        cHandles,
        rgDDKernelHandles,
      );

  int SetSurfaceParameters(
    int dwPitch,
    int dwXOrigin,
    int dwYOrigin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPitch,
            Uint32 dwXOrigin,
            Uint32 dwYOrigin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPitch,
            int dwXOrigin,
            int dwYOrigin,
          )>()(
        ptr.ref.lpVtbl,
        dwPitch,
        dwXOrigin,
        dwYOrigin,
      );
}
