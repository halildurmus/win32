// IWinInetFileStream.dart

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
const IID_IWinInetFileStream = '{F134C4B7-B1F8-4E75-B886-74B90943BECB}';

/// {@category Interface}
/// {@category com}
class IWinInetFileStream extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWinInetFileStream(Pointer<COMObject> ptr) : super(ptr);

  int SetHandleForUnlock(
    int hWinInetLockHandle,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWinInetLockHandle,
            IntPtr dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWinInetLockHandle,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        hWinInetLockHandle,
        dwReserved,
      );

  int SetDeleteFile(
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
      );
}
