// ICommDlgBrowser2.dart

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

import '../../ui/shell/ICommDlgBrowser.dart';
import '../../ui/shell/IShellView.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICommDlgBrowser2 = '{10339516-2894-11D2-9039-00C04F8EEB3E}';

/// {@category Interface}
/// {@category com}
class ICommDlgBrowser2 extends ICommDlgBrowser {
  // vtable begins at 6, is 3 entries long.
  ICommDlgBrowser2(Pointer<COMObject> ptr) : super(ptr);

  int Notify(
    Pointer<COMObject> ppshv,
    int dwNotifyType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppshv,
            Uint32 dwNotifyType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppshv,
            int dwNotifyType,
          )>()(
        ptr.ref.lpVtbl,
        ppshv,
        dwNotifyType,
      );

  int GetDefaultMenuText(
    Pointer<COMObject> ppshv,
    Pointer<Utf16> pszText,
    int cchMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppshv,
            Pointer<Utf16> pszText,
            Int32 cchMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppshv,
            Pointer<Utf16> pszText,
            int cchMax,
          )>()(
        ptr.ref.lpVtbl,
        ppshv,
        pszText,
        cchMax,
      );

  int GetViewFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );
}
