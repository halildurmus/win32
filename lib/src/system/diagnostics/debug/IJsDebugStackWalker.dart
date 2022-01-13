// IJsDebugStackWalker.dart

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
import '../../../system/diagnostics/debug/IJsDebugFrame.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IJsDebugStackWalker = '{DB24B094-73C4-456C-A4EC-E90EA00BDFE3}';

/// {@category Interface}
/// {@category com}
class IJsDebugStackWalker extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IJsDebugStackWalker(Pointer<COMObject> ptr) : super(ptr);

  int GetNext(
    Pointer<Pointer<COMObject>> ppFrame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFrame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFrame,
          )>()(
        ptr.ref.lpVtbl,
        ppFrame,
      );
}
