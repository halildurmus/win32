// IDebugThreadCall32.dart

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
const IID_IDebugThreadCall32 = '{51973C36-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugThreadCall32 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugThreadCall32(Pointer<COMObject> ptr) : super(ptr);

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
            Uint32 dwParam1,
            Uint32 dwParam2,
            Uint32 dwParam3,
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
