// IShellRunDll.dart

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
const IID_IShellRunDll = '{FCE4BDE0-4B68-4B80-8E9C-7426315A7388}';

/// {@category Interface}
/// {@category com}
class IShellRunDll extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IShellRunDll(Pointer<COMObject> ptr) : super(ptr);

  int Run(
    Pointer<Utf16> pszArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszArgs,
          )>()(
        ptr.ref.lpVtbl,
        pszArgs,
      );
}
