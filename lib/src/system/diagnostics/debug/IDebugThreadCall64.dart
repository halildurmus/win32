// IDebugThreadCall64.dart

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
const IID_IDebugThreadCall64 = '{CB3FA335-E979-42FD-9FCF-A7546A0F3905}';

/// {@category Interface}
/// {@category com}
class IDebugThreadCall64 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugThreadCall64(Pointer<COMObject> ptr) : super(ptr);

  int ThreadCallHandler(
    int dwParam1,
    int dwParam2,
    int dwParam3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 dwParam1,
            Uint64 dwParam2,
            Uint64 dwParam3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwParam1,
            int dwParam2,
            int dwParam3,
          )>()(
        ptr.ref.lpVtbl,
        dwParam1,
        dwParam2,
        dwParam3,
      );
}
