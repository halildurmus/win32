// IActiveScriptProfilerControl4.dart

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

import '../../../system/diagnostics/debug/IActiveScriptProfilerControl3.dart';
import '../../../system/diagnostics/debug/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptProfilerControl4 =
    '{160F94FD-9DBC-40D4-9EAC-2B71DB3132F4}';

/// {@category Interface}
/// {@category com}
class IActiveScriptProfilerControl4 extends IActiveScriptProfilerControl3 {
  // vtable begins at 9, is 1 entries long.
  IActiveScriptProfilerControl4(Pointer<COMObject> ptr) : super(ptr);

  int SummarizeHeap(
    Pointer<PROFILER_HEAP_SUMMARY> heapSummary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROFILER_HEAP_SUMMARY> heapSummary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROFILER_HEAP_SUMMARY> heapSummary,
          )>()(
        ptr.ref.lpVtbl,
        heapSummary,
      );
}
