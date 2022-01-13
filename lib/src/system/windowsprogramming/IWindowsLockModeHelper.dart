// IWindowsLockModeHelper.dart

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
const IID_IWindowsLockModeHelper = '{F342D19E-CC22-4648-BB5D-03CCF75B47C5}';

/// {@category Interface}
/// {@category com}
class IWindowsLockModeHelper extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWindowsLockModeHelper(Pointer<COMObject> ptr) : super(ptr);

  int GetSMode(
    Pointer<Int32> isSmode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isSmode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isSmode,
          )>()(
        ptr.ref.lpVtbl,
        isSmode,
      );
}
