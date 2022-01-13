// ICommDlgBrowser.dart

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
import '../../ui/shell/IShellView.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/common/structs.g.dart';

/// @nodoc
const IID_ICommDlgBrowser = '{000214F1-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ICommDlgBrowser extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ICommDlgBrowser(Pointer<COMObject> ptr) : super(ptr);

  int OnDefaultCommand(
    Pointer<COMObject> ppshv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int OnStateChange(
    Pointer<COMObject> ppshv,
    int uChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppshv,
            Uint32 uChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppshv,
            int uChange,
          )>()(
        ptr.ref.lpVtbl,
        ppshv,
        uChange,
      );

  int IncludeObject(
    Pointer<COMObject> ppshv,
    Pointer<ITEMIDLIST> pidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppshv,
            Pointer<ITEMIDLIST> pidl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppshv,
            Pointer<ITEMIDLIST> pidl,
          )>()(
        ptr.ref.lpVtbl,
        ppshv,
        pidl,
      );
}
