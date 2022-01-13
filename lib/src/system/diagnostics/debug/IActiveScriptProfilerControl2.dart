// IActiveScriptProfilerControl2.dart

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

import '../../../system/diagnostics/debug/IActiveScriptProfilerControl.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptProfilerControl2 =
    '{47810165-498F-40BE-94F1-653557E9E7DA}';

/// {@category Interface}
/// {@category com}
class IActiveScriptProfilerControl2 extends IActiveScriptProfilerControl {
  // vtable begins at 6, is 2 entries long.
  IActiveScriptProfilerControl2(Pointer<COMObject> ptr) : super(ptr);

  int CompleteProfilerStart() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int PrepareProfilerStop() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
