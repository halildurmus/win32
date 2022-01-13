// IActionProgressDialog.dart

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

/// @nodoc
const IID_IActionProgressDialog = '{49FF1172-EADC-446D-9285-156453A6431C}';

/// {@category Interface}
/// {@category com}
class IActionProgressDialog extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IActionProgressDialog(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int flags,
    Pointer<Utf16> pszTitle,
    Pointer<Utf16> pszCancel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 flags,
            Pointer<Utf16> pszTitle,
            Pointer<Utf16> pszCancel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            Pointer<Utf16> pszTitle,
            Pointer<Utf16> pszCancel,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        pszTitle,
        pszCancel,
      );

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
