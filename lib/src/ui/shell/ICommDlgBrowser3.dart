// ICommDlgBrowser3.dart

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

import '../../ui/shell/ICommDlgBrowser2.dart';
import '../../ui/shell/IShellView.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICommDlgBrowser3 = '{C8AD25A1-3294-41EE-8165-71174BD01C57}';

/// {@category Interface}
/// {@category com}
class ICommDlgBrowser3 extends ICommDlgBrowser2 {
  // vtable begins at 9, is 3 entries long.
  ICommDlgBrowser3(Pointer<COMObject> ptr) : super(ptr);

  int OnColumnClicked(
    Pointer<COMObject> ppshv,
    int iColumn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppshv,
            Int32 iColumn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppshv,
            int iColumn,
          )>()(
        ptr.ref.lpVtbl,
        ppshv,
        iColumn,
      );

  int GetCurrentFilter(
    Pointer<Utf16> pszFileSpec,
    int cchFileSpec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFileSpec,
            Int32 cchFileSpec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFileSpec,
            int cchFileSpec,
          )>()(
        ptr.ref.lpVtbl,
        pszFileSpec,
        cchFileSpec,
      );

  int OnPreViewCreated(
    Pointer<COMObject> ppshv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppshv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppshv,
          )>()(
        ptr.ref.lpVtbl,
        ppshv,
      );
}
