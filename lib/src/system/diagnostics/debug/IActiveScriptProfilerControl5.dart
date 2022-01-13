// IActiveScriptProfilerControl5.dart

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

import '../../../system/diagnostics/debug/IActiveScriptProfilerControl4.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../system/diagnostics/debug/IActiveScriptProfilerHeapEnum.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptProfilerControl5 =
    '{1C01A2D1-8F0F-46A5-9720-0D7ED2C62F0A}';

/// {@category Interface}
/// {@category com}
class IActiveScriptProfilerControl5 extends IActiveScriptProfilerControl4 {
  // vtable begins at 10, is 1 entries long.
  IActiveScriptProfilerControl5(Pointer<COMObject> ptr) : super(ptr);

  int EnumHeap2(
    int enumFlags,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 enumFlags,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumFlags,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        enumFlags,
        ppEnum,
      );
}
