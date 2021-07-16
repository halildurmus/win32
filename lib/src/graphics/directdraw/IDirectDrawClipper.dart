// IDirectDrawClipper.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';

/// @nodoc
const IID_IDirectDrawClipper = '{6C14DB85-A733-11CE-A521-0020AF0BE560}';

typedef _GetClipList_Native = Int32 Function(Pointer obj, Pointer<RECT> param0,
    Pointer<RGNDATA> param1, Pointer<Uint32> param2);
typedef _GetClipList_Dart = int Function(Pointer obj, Pointer<RECT> param0,
    Pointer<RGNDATA> param1, Pointer<Uint32> param2);

typedef _GetHWnd_Native = Int32 Function(Pointer obj, Pointer<IntPtr> param0);
typedef _GetHWnd_Dart = int Function(Pointer obj, Pointer<IntPtr> param0);

typedef _Initialize_Native = Int32 Function(
    Pointer obj, COMObject param0, Uint32 param1);
typedef _Initialize_Dart = int Function(
    Pointer obj, COMObject param0, int param1);

typedef _IsClipListChanged_Native = Int32 Function(
    Pointer obj, Pointer<Int32> param0);
typedef _IsClipListChanged_Dart = int Function(
    Pointer obj, Pointer<Int32> param0);

typedef _SetClipList_Native = Int32 Function(
    Pointer obj, Pointer<RGNDATA> param0, Uint32 param1);
typedef _SetClipList_Dart = int Function(
    Pointer obj, Pointer<RGNDATA> param0, int param1);

typedef _SetHWnd_Native = Int32 Function(
    Pointer obj, Uint32 param0, IntPtr param1);
typedef _SetHWnd_Dart = int Function(Pointer obj, int param0, int param1);

/// {@category Interface}
/// {@category com}
class IDirectDrawClipper extends IUnknown {
  // vtable begins at 3, ends at 8

  IDirectDrawClipper(Pointer<COMObject> ptr) : super(ptr);

  int GetClipList(Pointer<RECT> param0, Pointer<RGNDATA> param1,
          Pointer<Uint32> param2) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_GetClipList_Native>>>()
              .value
              .asFunction<_GetClipList_Dart>()(
          ptr.ref.lpVtbl, param0, param1, param2);

  int GetHWnd(Pointer<IntPtr> param0) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetHWnd_Native>>>()
      .value
      .asFunction<_GetHWnd_Dart>()(ptr.ref.lpVtbl, param0);

  int Initialize(COMObject param0, int param1) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_Initialize_Native>>>()
      .value
      .asFunction<_Initialize_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int IsClipListChanged(Pointer<Int32> param0) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_IsClipListChanged_Native>>>()
      .value
      .asFunction<_IsClipListChanged_Dart>()(ptr.ref.lpVtbl, param0);

  int SetClipList(Pointer<RGNDATA> param0, int param1) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_SetClipList_Native>>>()
      .value
      .asFunction<_SetClipList_Dart>()(ptr.ref.lpVtbl, param0, param1);

  int SetHWnd(int param0, int param1) => ptr.ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_SetHWnd_Native>>>()
      .value
      .asFunction<_SetHWnd_Dart>()(ptr.ref.lpVtbl, param0, param1);
}
