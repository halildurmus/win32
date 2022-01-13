// IDirectDrawClipper.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/directdraw/IDirectDraw.dart';

/// @nodoc
const IID_IDirectDrawClipper = '{6C14DB85-A733-11CE-A521-0020AF0BE560}';

/// {@category Interface}
/// {@category com}
class IDirectDrawClipper extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDirectDrawClipper(Pointer<COMObject> ptr) : super(ptr);

  int GetClipList(
    Pointer<RECT> param0,
    Pointer<RGNDATA> param1,
    Pointer<Uint32> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> param0,
            Pointer<RGNDATA> param1,
            Pointer<Uint32> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> param0,
            Pointer<RGNDATA> param1,
            Pointer<Uint32> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int GetHWnd(
    Pointer<IntPtr> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int Initialize(
    Pointer<COMObject> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int IsClipListChanged(
    Pointer<Int32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int SetClipList(
    Pointer<RGNDATA> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RGNDATA> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RGNDATA> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int SetHWnd(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
}
