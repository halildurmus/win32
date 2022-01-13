// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/performance/hardwarecounterprofiling/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int DisableThreadProfiling(
  int PerformanceDataHandle,
) =>
    _DisableThreadProfiling(
      PerformanceDataHandle,
    );

late final _DisableThreadProfiling = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr PerformanceDataHandle,
),
    int Function(
  int PerformanceDataHandle,
)>('DisableThreadProfiling');

int EnableThreadProfiling(
  int ThreadHandle,
  int Flags,
  int HardwareCounters,
  Pointer<IntPtr> PerformanceDataHandle,
) =>
    _EnableThreadProfiling(
      ThreadHandle,
      Flags,
      HardwareCounters,
      PerformanceDataHandle,
    );

late final _EnableThreadProfiling = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr ThreadHandle,
  Uint32 Flags,
  Uint64 HardwareCounters,
  Pointer<IntPtr> PerformanceDataHandle,
),
    int Function(
  int ThreadHandle,
  int Flags,
  int HardwareCounters,
  Pointer<IntPtr> PerformanceDataHandle,
)>('EnableThreadProfiling');

int QueryThreadProfiling(
  int ThreadHandle,
  Pointer<Uint8> Enabled,
) =>
    _QueryThreadProfiling(
      ThreadHandle,
      Enabled,
    );

late final _QueryThreadProfiling = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr ThreadHandle,
  Pointer<Uint8> Enabled,
),
    int Function(
  int ThreadHandle,
  Pointer<Uint8> Enabled,
)>('QueryThreadProfiling');

int ReadThreadProfilingData(
  int PerformanceDataHandle,
  int Flags,
  Pointer<PERFORMANCE_DATA> PerformanceData,
) =>
    _ReadThreadProfilingData(
      PerformanceDataHandle,
      Flags,
      PerformanceData,
    );

late final _ReadThreadProfilingData = _kernel32.lookupFunction<
    Uint32 Function(
  IntPtr PerformanceDataHandle,
  Uint32 Flags,
  Pointer<PERFORMANCE_DATA> PerformanceData,
),
    int Function(
  int PerformanceDataHandle,
  int Flags,
  Pointer<PERFORMANCE_DATA> PerformanceData,
)>('ReadThreadProfilingData');
