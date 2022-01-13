// IActiveScriptSiteWindow.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptSiteWindow = '{D10F6761-83E9-11CF-8F20-00805F2CD064}';

/// {@category Interface}
/// {@category com}
class IActiveScriptSiteWindow extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IActiveScriptSiteWindow(Pointer<COMObject> ptr) : super(ptr);

  int GetWindow(
    Pointer<IntPtr> phwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int EnableModeless(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );
}
