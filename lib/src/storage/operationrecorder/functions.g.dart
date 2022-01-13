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
import '../../storage/operationrecorder/structs.g.dart'; // -----------------------------------------------------------------------

// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int OperationEnd(
  Pointer<OPERATION_END_PARAMETERS> OperationEndParams,
) =>
    _OperationEnd(
      OperationEndParams,
    );

late final _OperationEnd = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<OPERATION_END_PARAMETERS> OperationEndParams,
),
    int Function(
  Pointer<OPERATION_END_PARAMETERS> OperationEndParams,
)>('OperationEnd');

int OperationStart(
  Pointer<OPERATION_START_PARAMETERS> OperationStartParams,
) =>
    _OperationStart(
      OperationStartParams,
    );

late final _OperationStart = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<OPERATION_START_PARAMETERS> OperationStartParams,
),
    int Function(
  Pointer<OPERATION_START_PARAMETERS> OperationStartParams,
)>('OperationStart');
