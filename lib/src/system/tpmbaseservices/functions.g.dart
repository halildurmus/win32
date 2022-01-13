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
import '../../foundation/structs.g.dart';
import '../../system/tpmbaseservices/structs.g.dart'; // -----------------------------------------------------------------------

// tbs.dll
// -----------------------------------------------------------------------
final _tbs = DynamicLibrary.open('tbs.dll');

int GetDeviceID(
  Pointer<Uint8> pbWindowsAIK,
  int cbWindowsAIK,
  Pointer<Uint32> pcbResult,
  Pointer<Int32> pfProtectedByTPM,
) =>
    _GetDeviceID(
      pbWindowsAIK,
      cbWindowsAIK,
      pcbResult,
      pfProtectedByTPM,
    );

late final _GetDeviceID = _tbs.lookupFunction<
    Int32 Function(
  Pointer<Uint8> pbWindowsAIK,
  Uint32 cbWindowsAIK,
  Pointer<Uint32> pcbResult,
  Pointer<Int32> pfProtectedByTPM,
),
    int Function(
  Pointer<Uint8> pbWindowsAIK,
  int cbWindowsAIK,
  Pointer<Uint32> pcbResult,
  Pointer<Int32> pfProtectedByTPM,
)>('GetDeviceID');

int GetDeviceIDString(
  Pointer<Utf16> pszWindowsAIK,
  int cchWindowsAIK,
  Pointer<Uint32> pcchResult,
  Pointer<Int32> pfProtectedByTPM,
) =>
    _GetDeviceIDString(
      pszWindowsAIK,
      cchWindowsAIK,
      pcchResult,
      pfProtectedByTPM,
    );

late final _GetDeviceIDString = _tbs.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszWindowsAIK,
  Uint32 cchWindowsAIK,
  Pointer<Uint32> pcchResult,
  Pointer<Int32> pfProtectedByTPM,
),
    int Function(
  Pointer<Utf16> pszWindowsAIK,
  int cchWindowsAIK,
  Pointer<Uint32> pcchResult,
  Pointer<Int32> pfProtectedByTPM,
)>('GetDeviceIDString');

int Tbsi_Context_Create(
  Pointer<TBS_CONTEXT_PARAMS> pContextParams,
  Pointer<Pointer> phContext,
) =>
    _Tbsi_Context_Create(
      pContextParams,
      phContext,
    );

late final _Tbsi_Context_Create = _tbs.lookupFunction<
    Uint32 Function(
  Pointer<TBS_CONTEXT_PARAMS> pContextParams,
  Pointer<Pointer> phContext,
),
    int Function(
  Pointer<TBS_CONTEXT_PARAMS> pContextParams,
  Pointer<Pointer> phContext,
)>('Tbsi_Context_Create');

int Tbsi_Create_Windows_Key(
  int keyHandle,
) =>
    _Tbsi_Create_Windows_Key(
      keyHandle,
    );

late final _Tbsi_Create_Windows_Key = _tbs.lookupFunction<
    Uint32 Function(
  Uint32 keyHandle,
),
    int Function(
  int keyHandle,
)>('Tbsi_Create_Windows_Key');

int Tbsi_GetDeviceInfo(
  int Size,
  Pointer Info,
) =>
    _Tbsi_GetDeviceInfo(
      Size,
      Info,
    );

late final _Tbsi_GetDeviceInfo = _tbs.lookupFunction<
    Uint32 Function(
  Uint32 Size,
  Pointer Info,
),
    int Function(
  int Size,
  Pointer Info,
)>('Tbsi_GetDeviceInfo');

int Tbsi_Get_OwnerAuth(
  Pointer hContext,
  int ownerauthType,
  Pointer<Uint8> pOutputBuf,
  Pointer<Uint32> pOutputBufLen,
) =>
    _Tbsi_Get_OwnerAuth(
      hContext,
      ownerauthType,
      pOutputBuf,
      pOutputBufLen,
    );

late final _Tbsi_Get_OwnerAuth = _tbs.lookupFunction<
    Uint32 Function(
  Pointer hContext,
  Uint32 ownerauthType,
  Pointer<Uint8> pOutputBuf,
  Pointer<Uint32> pOutputBufLen,
),
    int Function(
  Pointer hContext,
  int ownerauthType,
  Pointer<Uint8> pOutputBuf,
  Pointer<Uint32> pOutputBufLen,
)>('Tbsi_Get_OwnerAuth');

int Tbsi_Get_TCG_Log(
  Pointer hContext,
  Pointer<Uint8> pOutputBuf,
  Pointer<Uint32> pOutputBufLen,
) =>
    _Tbsi_Get_TCG_Log(
      hContext,
      pOutputBuf,
      pOutputBufLen,
    );

late final _Tbsi_Get_TCG_Log = _tbs.lookupFunction<
    Uint32 Function(
  Pointer hContext,
  Pointer<Uint8> pOutputBuf,
  Pointer<Uint32> pOutputBufLen,
),
    int Function(
  Pointer hContext,
  Pointer<Uint8> pOutputBuf,
  Pointer<Uint32> pOutputBufLen,
)>('Tbsi_Get_TCG_Log');

int Tbsi_Get_TCG_Log_Ex(
  int logType,
  Pointer<Uint8> pbOutput,
  Pointer<Uint32> pcbOutput,
) =>
    _Tbsi_Get_TCG_Log_Ex(
      logType,
      pbOutput,
      pcbOutput,
    );

late final _Tbsi_Get_TCG_Log_Ex = _tbs.lookupFunction<
    Uint32 Function(
  Uint32 logType,
  Pointer<Uint8> pbOutput,
  Pointer<Uint32> pcbOutput,
),
    int Function(
  int logType,
  Pointer<Uint8> pbOutput,
  Pointer<Uint32> pcbOutput,
)>('Tbsi_Get_TCG_Log_Ex');

int Tbsi_Physical_Presence_Command(
  Pointer hContext,
  Pointer<Uint8> pabInput,
  int cbInput,
  Pointer<Uint8> pabOutput,
  Pointer<Uint32> pcbOutput,
) =>
    _Tbsi_Physical_Presence_Command(
      hContext,
      pabInput,
      cbInput,
      pabOutput,
      pcbOutput,
    );

late final _Tbsi_Physical_Presence_Command = _tbs.lookupFunction<
    Uint32 Function(
  Pointer hContext,
  Pointer<Uint8> pabInput,
  Uint32 cbInput,
  Pointer<Uint8> pabOutput,
  Pointer<Uint32> pcbOutput,
),
    int Function(
  Pointer hContext,
  Pointer<Uint8> pabInput,
  int cbInput,
  Pointer<Uint8> pabOutput,
  Pointer<Uint32> pcbOutput,
)>('Tbsi_Physical_Presence_Command');

int Tbsi_Revoke_Attestation() => _Tbsi_Revoke_Attestation();

late final _Tbsi_Revoke_Attestation =
    _tbs.lookupFunction<Uint32 Function(), int Function()>(
        'Tbsi_Revoke_Attestation');

int Tbsip_Cancel_Commands(
  Pointer hContext,
) =>
    _Tbsip_Cancel_Commands(
      hContext,
    );

late final _Tbsip_Cancel_Commands = _tbs.lookupFunction<
    Uint32 Function(
  Pointer hContext,
),
    int Function(
  Pointer hContext,
)>('Tbsip_Cancel_Commands');

int Tbsip_Context_Close(
  Pointer hContext,
) =>
    _Tbsip_Context_Close(
      hContext,
    );

late final _Tbsip_Context_Close = _tbs.lookupFunction<
    Uint32 Function(
  Pointer hContext,
),
    int Function(
  Pointer hContext,
)>('Tbsip_Context_Close');

int Tbsip_Submit_Command(
  Pointer hContext,
  int Locality,
  int Priority,
  Pointer<Uint8> pabCommand,
  int cbCommand,
  Pointer<Uint8> pabResult,
  Pointer<Uint32> pcbResult,
) =>
    _Tbsip_Submit_Command(
      hContext,
      Locality,
      Priority,
      pabCommand,
      cbCommand,
      pabResult,
      pcbResult,
    );

late final _Tbsip_Submit_Command = _tbs.lookupFunction<
    Uint32 Function(
  Pointer hContext,
  Uint32 Locality,
  Uint32 Priority,
  Pointer<Uint8> pabCommand,
  Uint32 cbCommand,
  Pointer<Uint8> pabResult,
  Pointer<Uint32> pcbResult,
),
    int Function(
  Pointer hContext,
  int Locality,
  int Priority,
  Pointer<Uint8> pabCommand,
  int cbCommand,
  Pointer<Uint8> pabResult,
  Pointer<Uint32> pcbResult,
)>('Tbsip_Submit_Command');
