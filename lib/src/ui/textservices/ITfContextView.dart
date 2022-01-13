// ITfContextView.dart

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
import '../../ui/textservices/ITfRange.dart';

/// @nodoc
const IID_ITfContextView = '{2433BF8E-0F9B-435C-BA2C-180611978C30}';

/// {@category Interface}
/// {@category com}
class ITfContextView extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITfContextView(Pointer<COMObject> ptr) : super(ptr);

  int GetRangeFromPoint(
    int ec,
    Pointer<POINT> ppt,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<POINT> ppt,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<POINT> ppt,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppRange,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        ppt,
        dwFlags,
        ppRange,
      );

  int GetTextExt(
    int ec,
    Pointer<COMObject> pRange,
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
            Uint32 ec,
            Pointer<COMObject> pRange,
            Pointer<RECT> prc,
            Pointer<Int32> pfClipped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pRange,
            Pointer<RECT> prc,
            Pointer<Int32> pfClipped,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pRange,
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

  int GetWnd(
    Pointer<IntPtr> phwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
}
