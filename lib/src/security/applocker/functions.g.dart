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
import '../../security/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/applocker/structs.g.dart'; // -----------------------------------------------------------------------

// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int SaferCloseLevel(
  int hLevelHandle,
) =>
    _SaferCloseLevel(
      hLevelHandle,
    );

late final _SaferCloseLevel = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hLevelHandle,
),
    int Function(
  int hLevelHandle,
)>('SaferCloseLevel');

int SaferComputeTokenFromLevel(
  int LevelHandle,
  int InAccessToken,
  Pointer<IntPtr> OutAccessToken,
  int dwFlags,
  Pointer lpReserved,
) =>
    _SaferComputeTokenFromLevel(
      LevelHandle,
      InAccessToken,
      OutAccessToken,
      dwFlags,
      lpReserved,
    );

late final _SaferComputeTokenFromLevel = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr LevelHandle,
  IntPtr InAccessToken,
  Pointer<IntPtr> OutAccessToken,
  Uint32 dwFlags,
  Pointer lpReserved,
),
    int Function(
  int LevelHandle,
  int InAccessToken,
  Pointer<IntPtr> OutAccessToken,
  int dwFlags,
  Pointer lpReserved,
)>('SaferComputeTokenFromLevel');

int SaferCreateLevel(
  int dwScopeId,
  int dwLevelId,
  int OpenFlags,
  Pointer<IntPtr> pLevelHandle,
  Pointer lpReserved,
) =>
    _SaferCreateLevel(
      dwScopeId,
      dwLevelId,
      OpenFlags,
      pLevelHandle,
      lpReserved,
    );

late final _SaferCreateLevel = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 dwScopeId,
  Uint32 dwLevelId,
  Uint32 OpenFlags,
  Pointer<IntPtr> pLevelHandle,
  Pointer lpReserved,
),
    int Function(
  int dwScopeId,
  int dwLevelId,
  int OpenFlags,
  Pointer<IntPtr> pLevelHandle,
  Pointer lpReserved,
)>('SaferCreateLevel');

int SaferGetLevelInformation(
  int LevelHandle,
  int dwInfoType,
  Pointer lpQueryBuffer,
  int dwInBufferSize,
  Pointer<Uint32> lpdwOutBufferSize,
) =>
    _SaferGetLevelInformation(
      LevelHandle,
      dwInfoType,
      lpQueryBuffer,
      dwInBufferSize,
      lpdwOutBufferSize,
    );

late final _SaferGetLevelInformation = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr LevelHandle,
  Int32 dwInfoType,
  Pointer lpQueryBuffer,
  Uint32 dwInBufferSize,
  Pointer<Uint32> lpdwOutBufferSize,
),
    int Function(
  int LevelHandle,
  int dwInfoType,
  Pointer lpQueryBuffer,
  int dwInBufferSize,
  Pointer<Uint32> lpdwOutBufferSize,
)>('SaferGetLevelInformation');

int SaferGetPolicyInformation(
  int dwScopeId,
  int SaferPolicyInfoClass,
  int InfoBufferSize,
  Pointer InfoBuffer,
  Pointer<Uint32> InfoBufferRetSize,
  Pointer lpReserved,
) =>
    _SaferGetPolicyInformation(
      dwScopeId,
      SaferPolicyInfoClass,
      InfoBufferSize,
      InfoBuffer,
      InfoBufferRetSize,
      lpReserved,
    );

late final _SaferGetPolicyInformation = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 dwScopeId,
  Int32 SaferPolicyInfoClass,
  Uint32 InfoBufferSize,
  Pointer InfoBuffer,
  Pointer<Uint32> InfoBufferRetSize,
  Pointer lpReserved,
),
    int Function(
  int dwScopeId,
  int SaferPolicyInfoClass,
  int InfoBufferSize,
  Pointer InfoBuffer,
  Pointer<Uint32> InfoBufferRetSize,
  Pointer lpReserved,
)>('SaferGetPolicyInformation');

int SaferIdentifyLevel(
  int dwNumProperties,
  Pointer<SAFER_CODE_PROPERTIES_V2> pCodeProperties,
  Pointer<IntPtr> pLevelHandle,
  Pointer lpReserved,
) =>
    _SaferIdentifyLevel(
      dwNumProperties,
      pCodeProperties,
      pLevelHandle,
      lpReserved,
    );

late final _SaferIdentifyLevel = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 dwNumProperties,
  Pointer<SAFER_CODE_PROPERTIES_V2> pCodeProperties,
  Pointer<IntPtr> pLevelHandle,
  Pointer lpReserved,
),
    int Function(
  int dwNumProperties,
  Pointer<SAFER_CODE_PROPERTIES_V2> pCodeProperties,
  Pointer<IntPtr> pLevelHandle,
  Pointer lpReserved,
)>('SaferIdentifyLevel');

int SaferRecordEventLogEntry(
  int hLevel,
  Pointer<Utf16> szTargetPath,
  Pointer lpReserved,
) =>
    _SaferRecordEventLogEntry(
      hLevel,
      szTargetPath,
      lpReserved,
    );

late final _SaferRecordEventLogEntry = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr hLevel,
  Pointer<Utf16> szTargetPath,
  Pointer lpReserved,
),
    int Function(
  int hLevel,
  Pointer<Utf16> szTargetPath,
  Pointer lpReserved,
)>('SaferRecordEventLogEntry');

int SaferSetLevelInformation(
  int LevelHandle,
  int dwInfoType,
  Pointer lpQueryBuffer,
  int dwInBufferSize,
) =>
    _SaferSetLevelInformation(
      LevelHandle,
      dwInfoType,
      lpQueryBuffer,
      dwInBufferSize,
    );

late final _SaferSetLevelInformation = _advapi32.lookupFunction<
    Int32 Function(
  IntPtr LevelHandle,
  Int32 dwInfoType,
  Pointer lpQueryBuffer,
  Uint32 dwInBufferSize,
),
    int Function(
  int LevelHandle,
  int dwInfoType,
  Pointer lpQueryBuffer,
  int dwInBufferSize,
)>('SaferSetLevelInformation');

int SaferSetPolicyInformation(
  int dwScopeId,
  int SaferPolicyInfoClass,
  int InfoBufferSize,
  Pointer InfoBuffer,
  Pointer lpReserved,
) =>
    _SaferSetPolicyInformation(
      dwScopeId,
      SaferPolicyInfoClass,
      InfoBufferSize,
      InfoBuffer,
      lpReserved,
    );

late final _SaferSetPolicyInformation = _advapi32.lookupFunction<
    Int32 Function(
  Uint32 dwScopeId,
  Int32 SaferPolicyInfoClass,
  Uint32 InfoBufferSize,
  Pointer InfoBuffer,
  Pointer lpReserved,
),
    int Function(
  int dwScopeId,
  int SaferPolicyInfoClass,
  int InfoBufferSize,
  Pointer InfoBuffer,
  Pointer lpReserved,
)>('SaferSetPolicyInformation');

int SaferiIsExecutableFileType(
  Pointer<Utf16> szFullPathname,
  int bFromShellExecute,
) =>
    _SaferiIsExecutableFileType(
      szFullPathname,
      bFromShellExecute,
    );

late final _SaferiIsExecutableFileType = _advapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szFullPathname,
  Uint8 bFromShellExecute,
),
    int Function(
  Pointer<Utf16> szFullPathname,
  int bFromShellExecute,
)>('SaferiIsExecutableFileType');
