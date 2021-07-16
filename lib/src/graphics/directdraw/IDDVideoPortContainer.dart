// IDDVideoPortContainer.dart

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
import '../../ui/displaydevices/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';
import '../../graphics/directdraw/callbacks.g.dart';

/// @nodoc
const IID_IDDVideoPortContainer = '{6C142760-A733-11CE-A521-0020AF0BE560}';

typedef _CreateVideoPort_Native = Int32 Function(
    Pointer obj,
    Uint32 param0,
    Pointer<DDVIDEOPORTDESC> param1,
    Pointer<COMObject> param2,
    COMObject param3);
typedef _CreateVideoPort_Dart = int Function(
    Pointer obj,
    int param0,
    Pointer<DDVIDEOPORTDESC> param1,
    Pointer<COMObject> param2,
    COMObject param3);

typedef _EnumVideoPorts_Native = Int32 Function(
    Pointer obj,
    Uint32 param0,
    Pointer<DDVIDEOPORTCAPS> param1,
    Pointer param2,
    Pointer<NativeFunction<LPDDENUMVIDEOCALLBACK>> param3);
typedef _EnumVideoPorts_Dart = int Function(
    Pointer obj,
    int param0,
    Pointer<DDVIDEOPORTCAPS> param1,
    Pointer param2,
    Pointer<NativeFunction<LPDDENUMVIDEOCALLBACK>> param3);

typedef _GetVideoPortConnectInfo_Native = Int32 Function(Pointer obj,
    Uint32 param0, Pointer<Uint32> pcInfo, Pointer<DDVIDEOPORTCONNECT> param2);
typedef _GetVideoPortConnectInfo_Dart = int Function(Pointer obj, int param0,
    Pointer<Uint32> pcInfo, Pointer<DDVIDEOPORTCONNECT> param2);

typedef _QueryVideoPortStatus_Native = Int32 Function(
    Pointer obj, Uint32 param0, Pointer<DDVIDEOPORTSTATUS> param1);
typedef _QueryVideoPortStatus_Dart = int Function(
    Pointer obj, int param0, Pointer<DDVIDEOPORTSTATUS> param1);

/// {@category Interface}
/// {@category com}
class IDDVideoPortContainer extends IUnknown {
  // vtable begins at 3, ends at 6

  IDDVideoPortContainer(Pointer<COMObject> ptr) : super(ptr);

  int CreateVideoPort(int param0, Pointer<DDVIDEOPORTDESC> param1,
          Pointer<COMObject> param2, COMObject param3) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_CreateVideoPort_Native>>>()
              .value
              .asFunction<_CreateVideoPort_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3);

  int EnumVideoPorts(
          int param0,
          Pointer<DDVIDEOPORTCAPS> param1,
          Pointer param2,
          Pointer<NativeFunction<LPDDENUMVIDEOCALLBACK>> param3) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_EnumVideoPorts_Native>>>()
              .value
              .asFunction<_EnumVideoPorts_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2, param3);

  int GetVideoPortConnectInfo(int param0, Pointer<Uint32> pcInfo,
          Pointer<DDVIDEOPORTCONNECT> param2) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_GetVideoPortConnectInfo_Native>>>()
              .value
              .asFunction<_GetVideoPortConnectInfo_Dart>()(
          ptr.ref.lpVtbl, param0, pcInfo, param2);

  int QueryVideoPortStatus(int param0, Pointer<DDVIDEOPORTSTATUS> param1) => ptr
      .ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_QueryVideoPortStatus_Native>>>()
      .value
      .asFunction<_QueryVideoPortStatus_Dart>()(ptr.ref.lpVtbl, param0, param1);
}
