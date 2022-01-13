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
import '../../devices/serialcommunication/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// msports.dll
// -----------------------------------------------------------------------
final _msports = DynamicLibrary.open('msports.dll');

int ComDBClaimNextFreePort(
  int HComDB,
  Pointer<Uint32> ComNumber,
) =>
    _ComDBClaimNextFreePort(
      HComDB,
      ComNumber,
    );

late final _ComDBClaimNextFreePort = _msports.lookupFunction<
    Int32 Function(
  IntPtr HComDB,
  Pointer<Uint32> ComNumber,
),
    int Function(
  int HComDB,
  Pointer<Uint32> ComNumber,
)>('ComDBClaimNextFreePort');

int ComDBClaimPort(
  int HComDB,
  int ComNumber,
  int ForceClaim,
  Pointer<Int32> Forced,
) =>
    _ComDBClaimPort(
      HComDB,
      ComNumber,
      ForceClaim,
      Forced,
    );

late final _ComDBClaimPort = _msports.lookupFunction<
    Int32 Function(
  IntPtr HComDB,
  Uint32 ComNumber,
  Int32 ForceClaim,
  Pointer<Int32> Forced,
),
    int Function(
  int HComDB,
  int ComNumber,
  int ForceClaim,
  Pointer<Int32> Forced,
)>('ComDBClaimPort');

int ComDBClose(
  int HComDB,
) =>
    _ComDBClose(
      HComDB,
    );

late final _ComDBClose = _msports.lookupFunction<
    Int32 Function(
  IntPtr HComDB,
),
    int Function(
  int HComDB,
)>('ComDBClose');

int ComDBGetCurrentPortUsage(
  int HComDB,
  Pointer<Uint8> Buffer,
  int BufferSize,
  int ReportType,
  Pointer<Uint32> MaxPortsReported,
) =>
    _ComDBGetCurrentPortUsage(
      HComDB,
      Buffer,
      BufferSize,
      ReportType,
      MaxPortsReported,
    );

late final _ComDBGetCurrentPortUsage = _msports.lookupFunction<
    Int32 Function(
  IntPtr HComDB,
  Pointer<Uint8> Buffer,
  Uint32 BufferSize,
  Uint32 ReportType,
  Pointer<Uint32> MaxPortsReported,
),
    int Function(
  int HComDB,
  Pointer<Uint8> Buffer,
  int BufferSize,
  int ReportType,
  Pointer<Uint32> MaxPortsReported,
)>('ComDBGetCurrentPortUsage');

int ComDBOpen(
  Pointer<IntPtr> PHComDB,
) =>
    _ComDBOpen(
      PHComDB,
    );

late final _ComDBOpen = _msports.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> PHComDB,
),
    int Function(
  Pointer<IntPtr> PHComDB,
)>('ComDBOpen');

int ComDBReleasePort(
  int HComDB,
  int ComNumber,
) =>
    _ComDBReleasePort(
      HComDB,
      ComNumber,
    );

late final _ComDBReleasePort = _msports.lookupFunction<
    Int32 Function(
  IntPtr HComDB,
  Uint32 ComNumber,
),
    int Function(
  int HComDB,
  int ComNumber,
)>('ComDBReleasePort');

int ComDBResizeDatabase(
  int HComDB,
  int NewSize,
) =>
    _ComDBResizeDatabase(
      HComDB,
      NewSize,
    );

late final _ComDBResizeDatabase = _msports.lookupFunction<
    Int32 Function(
  IntPtr HComDB,
  Uint32 NewSize,
),
    int Function(
  int HComDB,
  int NewSize,
)>('ComDBResizeDatabase');
