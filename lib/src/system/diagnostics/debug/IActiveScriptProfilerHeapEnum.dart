// IActiveScriptProfilerHeapEnum.dart

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
const IID_IActiveScriptProfilerHeapEnum =
    '{32E4694E-0D37-419B-B93D-FA20DED6E8EA}';

/// {@category Interface}
/// {@category com}
class IActiveScriptProfilerHeapEnum extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IActiveScriptProfilerHeapEnum(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int celt,
    Pointer<Pointer<PROFILER_HEAP_OBJECT>> heapObjects,
    Pointer<Uint32> pceltFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
            Pointer<Pointer<PROFILER_HEAP_OBJECT>> heapObjects,
            Pointer<Uint32> pceltFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<Pointer<PROFILER_HEAP_OBJECT>> heapObjects,
            Pointer<Uint32> pceltFetched,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        heapObjects,
        pceltFetched,
      );

  int GetOptionalInfo(
    Pointer<PROFILER_HEAP_OBJECT> heapObject,
    int celt,
    Pointer<PROFILER_HEAP_OBJECT_OPTIONAL_INFO> optionalInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROFILER_HEAP_OBJECT> heapObject,
            Uint32 celt,
            Pointer<PROFILER_HEAP_OBJECT_OPTIONAL_INFO> optionalInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROFILER_HEAP_OBJECT> heapObject,
            int celt,
            Pointer<PROFILER_HEAP_OBJECT_OPTIONAL_INFO> optionalInfo,
          )>()(
        ptr.ref.lpVtbl,
        heapObject,
        celt,
        optionalInfo,
      );

  int FreeObjectAndOptionalInfo(
    int celt,
    Pointer<Pointer<PROFILER_HEAP_OBJECT>> heapObjects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
            Pointer<Pointer<PROFILER_HEAP_OBJECT>> heapObjects,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<Pointer<PROFILER_HEAP_OBJECT>> heapObjects,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        heapObjects,
      );

  int GetNameIdMap(
    Pointer<Pointer<Pointer<Pointer<Utf16>>>> pNameList,
    Pointer<Uint32> pcelt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Pointer<Pointer<Utf16>>>> pNameList,
            Pointer<Uint32> pcelt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Pointer<Pointer<Utf16>>>> pNameList,
            Pointer<Uint32> pcelt,
          )>()(
        ptr.ref.lpVtbl,
        pNameList,
        pcelt,
      );
}
