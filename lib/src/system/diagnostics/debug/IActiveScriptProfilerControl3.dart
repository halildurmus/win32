// IActiveScriptProfilerControl3.dart

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

import '../../../system/diagnostics/debug/IActiveScriptProfilerControl2.dart';
import '../../../system/diagnostics/debug/IActiveScriptProfilerHeapEnum.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptProfilerControl3 =
    '{0B403015-F381-4023-A5D0-6FED076DE716}';

/// {@category Interface}
/// {@category com}
class IActiveScriptProfilerControl3 extends IActiveScriptProfilerControl2 {
  // vtable begins at 8, is 1 entries long.
  IActiveScriptProfilerControl3(Pointer<COMObject> ptr) : super(ptr);

  int EnumHeap(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
