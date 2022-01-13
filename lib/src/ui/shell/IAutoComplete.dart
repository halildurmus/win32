// IAutoComplete.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IAutoComplete = '{00BB2762-6A77-11D0-A535-00C04FD7D062}';

/// {@category Interface}
/// {@category com}
class IAutoComplete extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAutoComplete(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    int hwndEdit,
    Pointer<COMObject> punkACL,
    Pointer<Utf16> pwszRegKeyPath,
    Pointer<Utf16> pwszQuickComplete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndEdit,
            Pointer<COMObject> punkACL,
            Pointer<Utf16> pwszRegKeyPath,
            Pointer<Utf16> pwszQuickComplete,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndEdit,
            Pointer<COMObject> punkACL,
            Pointer<Utf16> pwszRegKeyPath,
            Pointer<Utf16> pwszQuickComplete,
          )>()(
        ptr.ref.lpVtbl,
        hwndEdit,
        punkACL,
        pwszRegKeyPath,
        pwszQuickComplete,
      );

  int Enable(
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
