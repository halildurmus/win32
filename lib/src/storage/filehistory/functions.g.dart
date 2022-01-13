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
import '../../system/windowsprogramming/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// fhsvcctl.dll
// -----------------------------------------------------------------------
final _fhsvcctl = DynamicLibrary.open('fhsvcctl.dll');

int FhServiceBlockBackup(
  int Pipe,
) =>
    _FhServiceBlockBackup(
      Pipe,
    );

late final _FhServiceBlockBackup = _fhsvcctl.lookupFunction<
    Int32 Function(
  IntPtr Pipe,
),
    int Function(
  int Pipe,
)>('FhServiceBlockBackup');

int FhServiceClosePipe(
  int Pipe,
) =>
    _FhServiceClosePipe(
      Pipe,
    );

late final _FhServiceClosePipe = _fhsvcctl.lookupFunction<
    Int32 Function(
  IntPtr Pipe,
),
    int Function(
  int Pipe,
)>('FhServiceClosePipe');

int FhServiceOpenPipe(
  int StartServiceIfStopped,
  Pointer<IntPtr> Pipe,
) =>
    _FhServiceOpenPipe(
      StartServiceIfStopped,
      Pipe,
    );

late final _FhServiceOpenPipe = _fhsvcctl.lookupFunction<
    Int32 Function(
  Int32 StartServiceIfStopped,
  Pointer<IntPtr> Pipe,
),
    int Function(
  int StartServiceIfStopped,
  Pointer<IntPtr> Pipe,
)>('FhServiceOpenPipe');

int FhServiceReloadConfiguration(
  int Pipe,
) =>
    _FhServiceReloadConfiguration(
      Pipe,
    );

late final _FhServiceReloadConfiguration = _fhsvcctl.lookupFunction<
    Int32 Function(
  IntPtr Pipe,
),
    int Function(
  int Pipe,
)>('FhServiceReloadConfiguration');

int FhServiceStartBackup(
  int Pipe,
  int LowPriorityIo,
) =>
    _FhServiceStartBackup(
      Pipe,
      LowPriorityIo,
    );

late final _FhServiceStartBackup = _fhsvcctl.lookupFunction<
    Int32 Function(
  IntPtr Pipe,
  Int32 LowPriorityIo,
),
    int Function(
  int Pipe,
  int LowPriorityIo,
)>('FhServiceStartBackup');

int FhServiceStopBackup(
  int Pipe,
  int StopTracking,
) =>
    _FhServiceStopBackup(
      Pipe,
      StopTracking,
    );

late final _FhServiceStopBackup = _fhsvcctl.lookupFunction<
    Int32 Function(
  IntPtr Pipe,
  Int32 StopTracking,
),
    int Function(
  int Pipe,
  int StopTracking,
)>('FhServiceStopBackup');

int FhServiceUnblockBackup(
  int Pipe,
) =>
    _FhServiceUnblockBackup(
      Pipe,
    );

late final _FhServiceUnblockBackup = _fhsvcctl.lookupFunction<
    Int32 Function(
  IntPtr Pipe,
),
    int Function(
  int Pipe,
)>('FhServiceUnblockBackup');
