// IPrintDialogCallback.dart

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

/// @nodoc
const IID_IPrintDialogCallback = '{5852A2C3-6530-11D1-B6A3-0000F8757BF9}';

typedef _InitDone_Native = Int32 Function(Pointer obj);
typedef _InitDone_Dart = int Function(Pointer obj);

typedef _SelectionChange_Native = Int32 Function(Pointer obj);
typedef _SelectionChange_Dart = int Function(Pointer obj);

typedef _HandleMessage_Native = Int32 Function(Pointer obj, IntPtr hDlg,
    Uint32 uMsg, IntPtr wParam, IntPtr lParam, Pointer<IntPtr> pResult);
typedef _HandleMessage_Dart = int Function(Pointer obj, int hDlg, int uMsg,
    int wParam, int lParam, Pointer<IntPtr> pResult);

/// {@category Interface}
/// {@category com}
class IPrintDialogCallback extends IUnknown {
  // vtable begins at 3, ends at 5

  IPrintDialogCallback(Pointer<COMObject> ptr) : super(ptr);

  int InitDone() => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_InitDone_Native>>>()
      .value
      .asFunction<_InitDone_Dart>()(ptr.ref.lpVtbl);

  int SelectionChange() => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_SelectionChange_Native>>>()
      .value
      .asFunction<_SelectionChange_Dart>()(ptr.ref.lpVtbl);

  int HandleMessage(int hDlg, int uMsg, int wParam, int lParam,
          Pointer<IntPtr> pResult) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_HandleMessage_Native>>>()
              .value
              .asFunction<_HandleMessage_Dart>()(
          ptr.ref.lpVtbl, hDlg, uMsg, wParam, lParam, pResult);
}
