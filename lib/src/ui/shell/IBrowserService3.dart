// IBrowserService3.dart

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

import '../../ui/shell/IBrowserService2.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/common/structs.g.dart';

/// @nodoc
const IID_IBrowserService3 = '{27D7CE21-762D-48F3-86F3-40E2FD3749C4}';

/// {@category Interface}
/// {@category com}
class IBrowserService3 extends IBrowserService2 {
  // vtable begins at 95, is 2 entries long.
  IBrowserService3(Pointer<COMObject> ptr) : super(ptr);

  int PositionViewWindow(
    int hwnd,
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        prc,
      );

  int IEParseDisplayNameEx(
    int uiCP,
    Pointer<Utf16> pwszPath,
    int dwFlags,
    Pointer<Pointer<ITEMIDLIST>> ppidlOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiCP,
            Pointer<Utf16> pwszPath,
            Uint32 dwFlags,
            Pointer<Pointer<ITEMIDLIST>> ppidlOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiCP,
            Pointer<Utf16> pwszPath,
            int dwFlags,
            Pointer<Pointer<ITEMIDLIST>> ppidlOut,
          )>()(
        ptr.ref.lpVtbl,
        uiCP,
        pwszPath,
        dwFlags,
        ppidlOut,
      );
}
