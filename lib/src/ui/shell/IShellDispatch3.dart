// IShellDispatch3.dart

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

import '../../ui/shell/IShellDispatch2.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellDispatch3 = '{177160CA-BB5A-411C-841D-BD38FACDEAA0}';

/// {@category Interface}
/// {@category com}
class IShellDispatch3 extends IShellDispatch2 {
  // vtable begins at 39, is 1 entries long.
  IShellDispatch3(Pointer<COMObject> ptr) : super(ptr);

  int AddToRecent(
    VARIANT varFile,
    Pointer<Utf16> bstrCategory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varFile,
            Pointer<Utf16> bstrCategory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varFile,
            Pointer<Utf16> bstrCategory,
          )>()(
        ptr.ref.lpVtbl,
        varFile,
        bstrCategory,
      );
}
