// IActiveScriptErrorDebug110.dart

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
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptErrorDebug110 = '{516E42B6-89A8-4530-937B-5F0708431442}';

/// {@category Interface}
/// {@category com}
class IActiveScriptErrorDebug110 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IActiveScriptErrorDebug110(Pointer<COMObject> ptr) : super(ptr);

  int GetExceptionThrownKind(
    Pointer<Int32> pExceptionKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pExceptionKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pExceptionKind,
          )>()(
        ptr.ref.lpVtbl,
        pExceptionKind,
      );
}
