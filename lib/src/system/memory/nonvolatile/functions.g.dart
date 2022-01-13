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
import '../../../system/memory/nonvolatile/structs.g.dart'; // -----------------------------------------------------------------------

// ntdll.dll
// -----------------------------------------------------------------------
final _ntdll = DynamicLibrary.open('ntdll.dll');

int RtlDrainNonVolatileFlush(
  Pointer NvToken,
) =>
    _RtlDrainNonVolatileFlush(
      NvToken,
    );

late final _RtlDrainNonVolatileFlush = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer NvToken,
),
    int Function(
  Pointer NvToken,
)>('RtlDrainNonVolatileFlush');

int RtlFillNonVolatileMemory(
  Pointer NvToken,
  Pointer NvDestination,
  int Size,
  int Value,
  int Flags,
) =>
    _RtlFillNonVolatileMemory(
      NvToken,
      NvDestination,
      Size,
      Value,
      Flags,
    );

late final _RtlFillNonVolatileMemory = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer NvToken,
  Pointer NvDestination,
  IntPtr Size,
  Uint8 Value,
  Uint32 Flags,
),
    int Function(
  Pointer NvToken,
  Pointer NvDestination,
  int Size,
  int Value,
  int Flags,
)>('RtlFillNonVolatileMemory');

int RtlFlushNonVolatileMemory(
  Pointer NvToken,
  Pointer NvBuffer,
  int Size,
  int Flags,
) =>
    _RtlFlushNonVolatileMemory(
      NvToken,
      NvBuffer,
      Size,
      Flags,
    );

late final _RtlFlushNonVolatileMemory = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer NvToken,
  Pointer NvBuffer,
  IntPtr Size,
  Uint32 Flags,
),
    int Function(
  Pointer NvToken,
  Pointer NvBuffer,
  int Size,
  int Flags,
)>('RtlFlushNonVolatileMemory');

int RtlFlushNonVolatileMemoryRanges(
  Pointer NvToken,
  Pointer<NV_MEMORY_RANGE> NvRanges,
  int NumRanges,
  int Flags,
) =>
    _RtlFlushNonVolatileMemoryRanges(
      NvToken,
      NvRanges,
      NumRanges,
      Flags,
    );

late final _RtlFlushNonVolatileMemoryRanges = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer NvToken,
  Pointer<NV_MEMORY_RANGE> NvRanges,
  IntPtr NumRanges,
  Uint32 Flags,
),
    int Function(
  Pointer NvToken,
  Pointer<NV_MEMORY_RANGE> NvRanges,
  int NumRanges,
  int Flags,
)>('RtlFlushNonVolatileMemoryRanges');

int RtlFreeNonVolatileToken(
  Pointer NvToken,
) =>
    _RtlFreeNonVolatileToken(
      NvToken,
    );

late final _RtlFreeNonVolatileToken = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer NvToken,
),
    int Function(
  Pointer NvToken,
)>('RtlFreeNonVolatileToken');

int RtlGetNonVolatileToken(
  Pointer NvBuffer,
  int Size,
  Pointer<Pointer> NvToken,
) =>
    _RtlGetNonVolatileToken(
      NvBuffer,
      Size,
      NvToken,
    );

late final _RtlGetNonVolatileToken = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer NvBuffer,
  IntPtr Size,
  Pointer<Pointer> NvToken,
),
    int Function(
  Pointer NvBuffer,
  int Size,
  Pointer<Pointer> NvToken,
)>('RtlGetNonVolatileToken');

int RtlWriteNonVolatileMemory(
  Pointer NvToken,
  Pointer NvDestination,
  Pointer Source,
  int Size,
  int Flags,
) =>
    _RtlWriteNonVolatileMemory(
      NvToken,
      NvDestination,
      Source,
      Size,
      Flags,
    );

late final _RtlWriteNonVolatileMemory = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer NvToken,
  Pointer NvDestination,
  Pointer Source,
  IntPtr Size,
  Uint32 Flags,
),
    int Function(
  Pointer NvToken,
  Pointer NvDestination,
  Pointer Source,
  int Size,
  int Flags,
)>('RtlWriteNonVolatileMemory');
