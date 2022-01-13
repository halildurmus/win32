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
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// cscapi.dll
// -----------------------------------------------------------------------
final _cscapi = DynamicLibrary.open('cscapi.dll');

int OfflineFilesEnable(
  int bEnable,
  Pointer<Int32> pbRebootRequired,
) =>
    _OfflineFilesEnable(
      bEnable,
      pbRebootRequired,
    );

late final _OfflineFilesEnable = _cscapi.lookupFunction<
    Uint32 Function(
  Int32 bEnable,
  Pointer<Int32> pbRebootRequired,
),
    int Function(
  int bEnable,
  Pointer<Int32> pbRebootRequired,
)>('OfflineFilesEnable');

int OfflineFilesQueryStatus(
  Pointer<Int32> pbActive,
  Pointer<Int32> pbEnabled,
) =>
    _OfflineFilesQueryStatus(
      pbActive,
      pbEnabled,
    );

late final _OfflineFilesQueryStatus = _cscapi.lookupFunction<
    Uint32 Function(
  Pointer<Int32> pbActive,
  Pointer<Int32> pbEnabled,
),
    int Function(
  Pointer<Int32> pbActive,
  Pointer<Int32> pbEnabled,
)>('OfflineFilesQueryStatus');

int OfflineFilesQueryStatusEx(
  Pointer<Int32> pbActive,
  Pointer<Int32> pbEnabled,
  Pointer<Int32> pbAvailable,
) =>
    _OfflineFilesQueryStatusEx(
      pbActive,
      pbEnabled,
      pbAvailable,
    );

late final _OfflineFilesQueryStatusEx = _cscapi.lookupFunction<
    Uint32 Function(
  Pointer<Int32> pbActive,
  Pointer<Int32> pbEnabled,
  Pointer<Int32> pbAvailable,
),
    int Function(
  Pointer<Int32> pbActive,
  Pointer<Int32> pbEnabled,
  Pointer<Int32> pbAvailable,
)>('OfflineFilesQueryStatusEx');

int OfflineFilesStart() => _OfflineFilesStart();

late final _OfflineFilesStart = _cscapi
    .lookupFunction<Uint32 Function(), int Function()>('OfflineFilesStart');
