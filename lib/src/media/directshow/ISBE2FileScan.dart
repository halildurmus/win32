// ISBE2FileScan.dart

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
const IID_ISBE2FileScan = '{3E2BF5A5-4F96-4899-A1A3-75E8BE9A5AC0}';

/// {@category Interface}
/// {@category com}
class ISBE2FileScan extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISBE2FileScan(Pointer<COMObject> ptr) : super(ptr);

  int RepairFile(
    Pointer<Utf16> filename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filename,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filename,
          )>()(
        ptr.ref.lpVtbl,
        filename,
      );
}
