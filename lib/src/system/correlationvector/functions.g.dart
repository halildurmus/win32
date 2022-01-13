// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../system/correlationvector/structs.g.dart'; // -----------------------------------------------------------------------

// ntdll.dll
// -----------------------------------------------------------------------
final _ntdll = DynamicLibrary.open('ntdll.dll');

int RtlExtendCorrelationVector(
  Pointer<CORRELATION_VECTOR> CorrelationVector,
) =>
    _RtlExtendCorrelationVector(
      CorrelationVector,
    );

late final _RtlExtendCorrelationVector = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer<CORRELATION_VECTOR> CorrelationVector,
),
    int Function(
  Pointer<CORRELATION_VECTOR> CorrelationVector,
)>('RtlExtendCorrelationVector');

int RtlIncrementCorrelationVector(
  Pointer<CORRELATION_VECTOR> CorrelationVector,
) =>
    _RtlIncrementCorrelationVector(
      CorrelationVector,
    );

late final _RtlIncrementCorrelationVector = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer<CORRELATION_VECTOR> CorrelationVector,
),
    int Function(
  Pointer<CORRELATION_VECTOR> CorrelationVector,
)>('RtlIncrementCorrelationVector');

int RtlInitializeCorrelationVector(
  Pointer<CORRELATION_VECTOR> CorrelationVector,
  int Version,
  Pointer<GUID> Guid,
) =>
    _RtlInitializeCorrelationVector(
      CorrelationVector,
      Version,
      Guid,
    );

late final _RtlInitializeCorrelationVector = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer<CORRELATION_VECTOR> CorrelationVector,
  Int32 Version,
  Pointer<GUID> Guid,
),
    int Function(
  Pointer<CORRELATION_VECTOR> CorrelationVector,
  int Version,
  Pointer<GUID> Guid,
)>('RtlInitializeCorrelationVector');

int RtlValidateCorrelationVector(
  Pointer<CORRELATION_VECTOR> Vector,
) =>
    _RtlValidateCorrelationVector(
      Vector,
    );

late final _RtlValidateCorrelationVector = _ntdll.lookupFunction<
    Uint32 Function(
  Pointer<CORRELATION_VECTOR> Vector,
),
    int Function(
  Pointer<CORRELATION_VECTOR> Vector,
)>('RtlValidateCorrelationVector');
