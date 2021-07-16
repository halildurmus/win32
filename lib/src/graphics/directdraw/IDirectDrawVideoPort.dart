// IDirectDrawVideoPort.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../graphics/directdraw/structs.g.dart';
import '../../ui/displaydevices/structs.g.dart';

/// @nodoc
const IID_IDirectDrawVideoPort = '{B36D93E0-2B43-11CF-A2DE-00AA00B93356}';

typedef _Flip_Native = Int32 Function(
    Pointer obj, COMObject param0, Uint32 param1);
typedef _Flip_Dart = int Function(Pointer obj, COMObject param0, int param1);

typedef _GetBandwidthInfo_Native = Int32 Function(
    Pointer obj,
    Pointer<DDPIXELFORMAT> param0,
    Uint32 param1,
    Uint32 param2,
    Uint32 param3,
    Pointer<DDVIDEOPORTBANDWIDTH> param4);
typedef _GetBandwidthInfo_Dart = int Function(
    Pointer obj,
    Pointer<DDPIXELFORMAT> param0,
    int param1,
    int param2,
    int param3,
    Pointer<DDVIDEOPORTBANDWIDTH> param4);

typedef _GetColorControls_Native = Int32 Function(
    Pointer obj, Pointer<DDCOLORCONTROL> param0);
typedef _GetColorControls_Dart = int Function(
    Pointer obj, Pointer<DDCOLORCONTROL> param0);

typedef _GetInputFormats_Native = Int32 Function(Pointer obj,
    Pointer<Uint32> lpNumFormats, Pointer<DDPIXELFORMAT> param1, Uint32 param2);
typedef _GetInputFormats_Dart = int Function(Pointer obj,
    Pointer<Uint32> lpNumFormats, Pointer<DDPIXELFORMAT> param1, int param2);

typedef _GetOutputFormats_Native = Int32 Function(
    Pointer obj,
    Pointer<DDPIXELFORMAT> param0,
    Pointer<Uint32> lpNumFormats,
    Pointer<DDPIXELFORMAT> param2,
    Uint32 param3);
typedef _GetOutputFormats_Dart = int Function(
    Pointer obj,
    Pointer<DDPIXELFORMAT> param0,
    Pointer<Uint32> lpNumFormats,
    Pointer<DDPIXELFORMAT> param2,
    int param3);

typedef _GetFieldPolarity_Native = Int32 Function(
    Pointer obj, Pointer<Int32> param0);
typedef _GetFieldPolarity_Dart = int Function(
    Pointer obj, Pointer<Int32> param0);

typedef _GetVideoLine_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> param0);
typedef _GetVideoLine_Dart = int Function(Pointer obj, Pointer<Uint32> param0);

typedef _GetVideoSignalStatus_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> param0);
typedef _GetVideoSignalStatus_Dart = int Function(
    Pointer obj, Pointer<Uint32> param0);

typedef _SetColorControls_Native = Int32 Function(
    Pointer obj, Pointer<DDCOLORCONTROL> param0);
typedef _SetColorControls_Dart = int Function(
    Pointer obj, Pointer<DDCOLORCONTROL> param0);

typedef _SetTargetSurface_Native = Int32 Function(
    Pointer obj, COMObject param0, Uint32 param1);
typedef _SetTargetSurface_Dart = int Function(
    Pointer obj, COMObject param0, int param1);

typedef _StartVideo_Native = Int32 Function(
    Pointer obj, Pointer<DDVIDEOPORTINFO> param0);
typedef _StartVideo_Dart = int Function(
    Pointer obj, Pointer<DDVIDEOPORTINFO> param0);

typedef _StopVideo_Native = Int32 Function(Pointer obj);
typedef _StopVideo_Dart = int Function(Pointer obj);

typedef _UpdateVideo_Native = Int32 Function(
    Pointer obj, Pointer<DDVIDEOPORTINFO> param0);
typedef _UpdateVideo_Dart = int Function(
    Pointer obj, Pointer<DDVIDEOPORTINFO> param0);

typedef _WaitForSync_Native = Int32 Function(
    Pointer obj, Uint32 param0, Uint32 param1, Uint32 param2);
typedef _WaitForSync_Dart = int Function(
    Pointer obj, int param0, int param1, int param2);

/// {@category Interface}
/// {@category com}
class IDirectDrawVideoPort extends IUnknown {
  // vtable begins at 3, ends at 16

  IDirectDrawVideoPort(Pointer<COMObject> ptr) : super(ptr);

  int Flip(COMObject param0, int param1) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_Flip_Native>>>()
      .value
      .asFunction<_Flip_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int GetBandwidthInfo(Pointer<DDPIXELFORMAT> param0, int param1, int param2,
          int param3, Pointer<DDVIDEOPORTBANDWIDTH> param4) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_GetBandwidthInfo_Native>>>()
              .value
              .asFunction<_GetBandwidthInfo_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3, param4);

  int GetColorControls(Pointer<DDCOLORCONTROL> param0) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_GetColorControls_Native>>>()
      .value
      .asFunction<_GetColorControls_Dart>()(ptr.ref.lpVtbl, param0);

  int GetInputFormats(Pointer<Uint32> lpNumFormats,
          Pointer<DDPIXELFORMAT> param1, int param2) =>
      ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<Pointer<NativeFunction<_GetInputFormats_Native>>>()
              .value
              .asFunction<_GetInputFormats_Dart>()(
          ptr.ref.lpVtbl, lpNumFormats, param1, param2);

  int GetOutputFormats(
          Pointer<DDPIXELFORMAT> param0,
          Pointer<Uint32> lpNumFormats,
          Pointer<DDPIXELFORMAT> param2,
          int param3) =>
      ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<Pointer<NativeFunction<_GetOutputFormats_Native>>>()
              .value
              .asFunction<_GetOutputFormats_Dart>()(
          ptr.ref.lpVtbl, param0, lpNumFormats, param2, param3);

  int GetFieldPolarity(Pointer<Int32> param0) => ptr.ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_GetFieldPolarity_Native>>>()
      .value
      .asFunction<_GetFieldPolarity_Dart>()(ptr.ref.lpVtbl, param0);

  int GetVideoLine(Pointer<Uint32> param0) => ptr.ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_GetVideoLine_Native>>>()
      .value
      .asFunction<_GetVideoLine_Dart>()(ptr.ref.lpVtbl, param0);

  int GetVideoSignalStatus(Pointer<Uint32> param0) => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_GetVideoSignalStatus_Native>>>()
      .value
      .asFunction<_GetVideoSignalStatus_Dart>()(ptr.ref.lpVtbl, param0);

  int SetColorControls(Pointer<DDCOLORCONTROL> param0) => ptr.ref.lpVtbl.value
      .elementAt(11)
      .cast<Pointer<NativeFunction<_SetColorControls_Native>>>()
      .value
      .asFunction<_SetColorControls_Dart>()(ptr.ref.lpVtbl, param0);

  int SetTargetSurface(COMObject param0, int param1) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_SetTargetSurface_Native>>>()
      .value
      .asFunction<_SetTargetSurface_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int StartVideo(Pointer<DDVIDEOPORTINFO> param0) => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_StartVideo_Native>>>()
      .value
      .asFunction<_StartVideo_Dart>()(ptr.ref.lpVtbl, param0);

  int StopVideo() => ptr.ref.lpVtbl.value
      .elementAt(14)
      .cast<Pointer<NativeFunction<_StopVideo_Native>>>()
      .value
      .asFunction<_StopVideo_Dart>()(ptr.ref.lpVtbl);

  int UpdateVideo(Pointer<DDVIDEOPORTINFO> param0) => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_UpdateVideo_Native>>>()
      .value
      .asFunction<_UpdateVideo_Dart>()(ptr.ref.lpVtbl, param0);

  int WaitForSync(int param0, int param1, int param2) => ptr.ref.lpVtbl.value
      .elementAt(16)
      .cast<Pointer<NativeFunction<_WaitForSync_Native>>>()
      .value
      .asFunction<_WaitForSync_Dart>()(ptr.ref.lpVtbl, param0, param1, param2);
}
