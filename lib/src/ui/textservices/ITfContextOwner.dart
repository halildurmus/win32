// ITfContextOwner.dart

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
import '../../ui/textservices/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ITfContextOwner = '{AA80E80C-2021-11D2-93E0-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class ITfContextOwner extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ITfContextOwner(Pointer<COMObject> ptr) : super(ptr);

  int GetACPFromPoint(
    Pointer<POINT> ptScreen,
    int dwFlags,
    Pointer<Int32> pacp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> ptScreen,
            Uint32 dwFlags,
            Pointer<Int32> pacp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> ptScreen,
            int dwFlags,
            Pointer<Int32> pacp,
          )>()(
        ptr.ref.lpVtbl,
        ptScreen,
        dwFlags,
        pacp,
      );

  int GetTextExt(
    int acpStart,
    int acpEnd,
    Pointer<RECT> prc,
    Pointer<Int32> pfClipped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 acpStart,
            Int32 acpEnd,
            Pointer<RECT> prc,
            Pointer<Int32> pfClipped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpStart,
            int acpEnd,
            Pointer<RECT> prc,
            Pointer<Int32> pfClipped,
          )>()(
        ptr.ref.lpVtbl,
        acpStart,
        acpEnd,
        prc,
        pfClipped,
      );

  int GetScreenExt(
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        prc,
      );

  int GetStatus(
    Pointer<TS_STATUS> pdcs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TS_STATUS> pdcs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TS_STATUS> pdcs,
          )>()(
        ptr.ref.lpVtbl,
        pdcs,
      );

  int GetWnd(
    Pointer<IntPtr> phwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwnd,
          )>()(
        ptr.ref.lpVtbl,
        phwnd,
      );

  int GetAttribute(
    Pointer<GUID> rguidAttribute,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidAttribute,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidAttribute,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        rguidAttribute,
        pvarValue,
      );
}
