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
import '../../system/useraccesslogging/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// ualapi.dll
// -----------------------------------------------------------------------
final _ualapi = DynamicLibrary.open('ualapi.dll');

int UalInstrument(
  Pointer<UAL_DATA_BLOB> Data,
) =>
    _UalInstrument(
      Data,
    );

late final _UalInstrument = _ualapi.lookupFunction<
    Int32 Function(
  Pointer<UAL_DATA_BLOB> Data,
),
    int Function(
  Pointer<UAL_DATA_BLOB> Data,
)>('UalInstrument');

int UalRegisterProduct(
  Pointer<Utf16> wszProductName,
  Pointer<Utf16> wszRoleName,
  Pointer<Utf16> wszGuid,
) =>
    _UalRegisterProduct(
      wszProductName,
      wszRoleName,
      wszGuid,
    );

late final _UalRegisterProduct = _ualapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wszProductName,
  Pointer<Utf16> wszRoleName,
  Pointer<Utf16> wszGuid,
),
    int Function(
  Pointer<Utf16> wszProductName,
  Pointer<Utf16> wszRoleName,
  Pointer<Utf16> wszGuid,
)>('UalRegisterProduct');

int UalStart(
  Pointer<UAL_DATA_BLOB> Data,
) =>
    _UalStart(
      Data,
    );

late final _UalStart = _ualapi.lookupFunction<
    Int32 Function(
  Pointer<UAL_DATA_BLOB> Data,
),
    int Function(
  Pointer<UAL_DATA_BLOB> Data,
)>('UalStart');

int UalStop(
  Pointer<UAL_DATA_BLOB> Data,
) =>
    _UalStop(
      Data,
    );

late final _UalStop = _ualapi.lookupFunction<
    Int32 Function(
  Pointer<UAL_DATA_BLOB> Data,
),
    int Function(
  Pointer<UAL_DATA_BLOB> Data,
)>('UalStop');
