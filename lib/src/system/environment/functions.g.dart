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
import '../../system/environment/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

Pointer CreateEnclave(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int dwInitialCommitment,
  int flEnclaveType,
  Pointer lpEnclaveInformation,
  int dwInfoLength,
  Pointer<Uint32> lpEnclaveError,
) =>
    _CreateEnclave(
      hProcess,
      lpAddress,
      dwSize,
      dwInitialCommitment,
      flEnclaveType,
      lpEnclaveInformation,
      dwInfoLength,
      lpEnclaveError,
    );

late final _CreateEnclave = _kernel32.lookupFunction<
    Pointer Function(
  IntPtr hProcess,
  Pointer lpAddress,
  IntPtr dwSize,
  IntPtr dwInitialCommitment,
  Uint32 flEnclaveType,
  Pointer lpEnclaveInformation,
  Uint32 dwInfoLength,
  Pointer<Uint32> lpEnclaveError,
),
    Pointer Function(
  int hProcess,
  Pointer lpAddress,
  int dwSize,
  int dwInitialCommitment,
  int flEnclaveType,
  Pointer lpEnclaveInformation,
  int dwInfoLength,
  Pointer<Uint32> lpEnclaveError,
)>('CreateEnclave');

int ExpandEnvironmentStrings(
  Pointer<Utf16> lpSrc,
  Pointer<Utf16> lpDst,
  int nSize,
) =>
    _ExpandEnvironmentStrings(
      lpSrc,
      lpDst,
      nSize,
    );

late final _ExpandEnvironmentStrings = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpSrc,
  Pointer<Utf16> lpDst,
  Uint32 nSize,
),
    int Function(
  Pointer<Utf16> lpSrc,
  Pointer<Utf16> lpDst,
  int nSize,
)>('ExpandEnvironmentStringsW');

int FreeEnvironmentStrings(
  Pointer<Utf16> penv,
) =>
    _FreeEnvironmentStrings(
      penv,
    );

late final _FreeEnvironmentStrings = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> penv,
),
    int Function(
  Pointer<Utf16> penv,
)>('FreeEnvironmentStringsW');

Pointer<Utf16> GetCommandLine() => _GetCommandLine();

late final _GetCommandLine = _kernel32.lookupFunction<Pointer<Utf16> Function(),
    Pointer<Utf16> Function()>('GetCommandLineW');

int GetCurrentDirectory(
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
) =>
    _GetCurrentDirectory(
      nBufferLength,
      lpBuffer,
    );

late final _GetCurrentDirectory = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 nBufferLength,
  Pointer<Utf16> lpBuffer,
),
    int Function(
  int nBufferLength,
  Pointer<Utf16> lpBuffer,
)>('GetCurrentDirectoryW');

Pointer<Utf16> GetEnvironmentStrings() => _GetEnvironmentStrings();

late final _GetEnvironmentStrings = _kernel32.lookupFunction<
    Pointer<Utf16> Function(),
    Pointer<Utf16> Function()>('GetEnvironmentStringsW');

int GetEnvironmentVariable(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpBuffer,
  int nSize,
) =>
    _GetEnvironmentVariable(
      lpName,
      lpBuffer,
      nSize,
    );

late final _GetEnvironmentVariable = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpBuffer,
  Uint32 nSize,
),
    int Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpBuffer,
  int nSize,
)>('GetEnvironmentVariableW');

int InitializeEnclave(
  int hProcess,
  Pointer lpAddress,
  Pointer lpEnclaveInformation,
  int dwInfoLength,
  Pointer<Uint32> lpEnclaveError,
) =>
    _InitializeEnclave(
      hProcess,
      lpAddress,
      lpEnclaveInformation,
      dwInfoLength,
      lpEnclaveError,
    );

late final _InitializeEnclave = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer lpAddress,
  Pointer lpEnclaveInformation,
  Uint32 dwInfoLength,
  Pointer<Uint32> lpEnclaveError,
),
    int Function(
  int hProcess,
  Pointer lpAddress,
  Pointer lpEnclaveInformation,
  int dwInfoLength,
  Pointer<Uint32> lpEnclaveError,
)>('InitializeEnclave');

int IsEnclaveTypeSupported(
  int flEnclaveType,
) =>
    _IsEnclaveTypeSupported(
      flEnclaveType,
    );

late final _IsEnclaveTypeSupported = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 flEnclaveType,
),
    int Function(
  int flEnclaveType,
)>('IsEnclaveTypeSupported');

int LoadEnclaveData(
  int hProcess,
  Pointer lpAddress,
  Pointer lpBuffer,
  int nSize,
  int flProtect,
  Pointer lpPageInformation,
  int dwInfoLength,
  Pointer<IntPtr> lpNumberOfBytesWritten,
  Pointer<Uint32> lpEnclaveError,
) =>
    _LoadEnclaveData(
      hProcess,
      lpAddress,
      lpBuffer,
      nSize,
      flProtect,
      lpPageInformation,
      dwInfoLength,
      lpNumberOfBytesWritten,
      lpEnclaveError,
    );

late final _LoadEnclaveData = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hProcess,
  Pointer lpAddress,
  Pointer lpBuffer,
  IntPtr nSize,
  Uint32 flProtect,
  Pointer lpPageInformation,
  Uint32 dwInfoLength,
  Pointer<IntPtr> lpNumberOfBytesWritten,
  Pointer<Uint32> lpEnclaveError,
),
    int Function(
  int hProcess,
  Pointer lpAddress,
  Pointer lpBuffer,
  int nSize,
  int flProtect,
  Pointer lpPageInformation,
  int dwInfoLength,
  Pointer<IntPtr> lpNumberOfBytesWritten,
  Pointer<Uint32> lpEnclaveError,
)>('LoadEnclaveData');

int NeedCurrentDirectoryForExePath(
  Pointer<Utf16> ExeName,
) =>
    _NeedCurrentDirectoryForExePath(
      ExeName,
    );

late final _NeedCurrentDirectoryForExePath = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> ExeName,
),
    int Function(
  Pointer<Utf16> ExeName,
)>('NeedCurrentDirectoryForExePathW');

int SetCurrentDirectory(
  Pointer<Utf16> lpPathName,
) =>
    _SetCurrentDirectory(
      lpPathName,
    );

late final _SetCurrentDirectory = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpPathName,
),
    int Function(
  Pointer<Utf16> lpPathName,
)>('SetCurrentDirectoryW');

int SetEnvironmentStrings(
  Pointer<Utf16> NewEnvironment,
) =>
    _SetEnvironmentStrings(
      NewEnvironment,
    );

late final _SetEnvironmentStrings = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> NewEnvironment,
),
    int Function(
  Pointer<Utf16> NewEnvironment,
)>('SetEnvironmentStringsW');

int SetEnvironmentVariable(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpValue,
) =>
    _SetEnvironmentVariable(
      lpName,
      lpValue,
    );

late final _SetEnvironmentVariable = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpValue,
),
    int Function(
  Pointer<Utf16> lpName,
  Pointer<Utf16> lpValue,
)>('SetEnvironmentVariableW');

// -----------------------------------------------------------------------
// userenv.dll
// -----------------------------------------------------------------------
final _userenv = DynamicLibrary.open('userenv.dll');

int CreateEnvironmentBlock(
  Pointer<Pointer> lpEnvironment,
  int hToken,
  int bInherit,
) =>
    _CreateEnvironmentBlock(
      lpEnvironment,
      hToken,
      bInherit,
    );

late final _CreateEnvironmentBlock = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Pointer> lpEnvironment,
  IntPtr hToken,
  Int32 bInherit,
),
    int Function(
  Pointer<Pointer> lpEnvironment,
  int hToken,
  int bInherit,
)>('CreateEnvironmentBlock');

int DestroyEnvironmentBlock(
  Pointer lpEnvironment,
) =>
    _DestroyEnvironmentBlock(
      lpEnvironment,
    );

late final _DestroyEnvironmentBlock = _userenv.lookupFunction<
    Int32 Function(
  Pointer lpEnvironment,
),
    int Function(
  Pointer lpEnvironment,
)>('DestroyEnvironmentBlock');

int ExpandEnvironmentStringsForUser(
  int hToken,
  Pointer<Utf16> lpSrc,
  Pointer<Utf16> lpDest,
  int dwSize,
) =>
    _ExpandEnvironmentStringsForUser(
      hToken,
      lpSrc,
      lpDest,
      dwSize,
    );

late final _ExpandEnvironmentStringsForUser = _userenv.lookupFunction<
    Int32 Function(
  IntPtr hToken,
  Pointer<Utf16> lpSrc,
  Pointer<Utf16> lpDest,
  Uint32 dwSize,
),
    int Function(
  int hToken,
  Pointer<Utf16> lpSrc,
  Pointer<Utf16> lpDest,
  int dwSize,
)>('ExpandEnvironmentStringsForUserW');

// -----------------------------------------------------------------------
// api-ms-win-core-enclave-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_enclave_l1_1_1 =
    DynamicLibrary.open('api-ms-win-core-enclave-l1-1-1.dll');

int DeleteEnclave(
  Pointer lpAddress,
) =>
    _DeleteEnclave(
      lpAddress,
    );

late final _DeleteEnclave = _api_ms_win_core_enclave_l1_1_1.lookupFunction<
    Int32 Function(
  Pointer lpAddress,
),
    int Function(
  Pointer lpAddress,
)>('DeleteEnclave');

int LoadEnclaveImage(
  Pointer lpEnclaveAddress,
  Pointer<Utf16> lpImageName,
) =>
    _LoadEnclaveImage(
      lpEnclaveAddress,
      lpImageName,
    );

late final _LoadEnclaveImage = _api_ms_win_core_enclave_l1_1_1.lookupFunction<
    Int32 Function(
  Pointer lpEnclaveAddress,
  Pointer<Utf16> lpImageName,
),
    int Function(
  Pointer lpEnclaveAddress,
  Pointer<Utf16> lpImageName,
)>('LoadEnclaveImageW');

// -----------------------------------------------------------------------
// vertdll.dll
// -----------------------------------------------------------------------
final _vertdll = DynamicLibrary.open('vertdll.dll');

int CallEnclave(
  int lpRoutine,
  Pointer lpParameter,
  int fWaitForThread,
  Pointer<Pointer> lpReturnValue,
) =>
    _CallEnclave(
      lpRoutine,
      lpParameter,
      fWaitForThread,
      lpReturnValue,
    );

late final _CallEnclave = _vertdll.lookupFunction<
    Int32 Function(
  IntPtr lpRoutine,
  Pointer lpParameter,
  Int32 fWaitForThread,
  Pointer<Pointer> lpReturnValue,
),
    int Function(
  int lpRoutine,
  Pointer lpParameter,
  int fWaitForThread,
  Pointer<Pointer> lpReturnValue,
)>('CallEnclave');

int EnclaveGetAttestationReport(
  Pointer<Uint8> EnclaveData,
  Pointer Report,
  int BufferSize,
  Pointer<Uint32> OutputSize,
) =>
    _EnclaveGetAttestationReport(
      EnclaveData,
      Report,
      BufferSize,
      OutputSize,
    );

late final _EnclaveGetAttestationReport = _vertdll.lookupFunction<
    Int32 Function(
  Pointer<Uint8> EnclaveData,
  Pointer Report,
  Uint32 BufferSize,
  Pointer<Uint32> OutputSize,
),
    int Function(
  Pointer<Uint8> EnclaveData,
  Pointer Report,
  int BufferSize,
  Pointer<Uint32> OutputSize,
)>('EnclaveGetAttestationReport');

int EnclaveGetEnclaveInformation(
  int InformationSize,
  Pointer<ENCLAVE_INFORMATION> EnclaveInformation,
) =>
    _EnclaveGetEnclaveInformation(
      InformationSize,
      EnclaveInformation,
    );

late final _EnclaveGetEnclaveInformation = _vertdll.lookupFunction<
    Int32 Function(
  Uint32 InformationSize,
  Pointer<ENCLAVE_INFORMATION> EnclaveInformation,
),
    int Function(
  int InformationSize,
  Pointer<ENCLAVE_INFORMATION> EnclaveInformation,
)>('EnclaveGetEnclaveInformation');

int EnclaveSealData(
  Pointer DataToEncrypt,
  int DataToEncryptSize,
  int IdentityPolicy,
  int RuntimePolicy,
  Pointer ProtectedBlob,
  int BufferSize,
  Pointer<Uint32> ProtectedBlobSize,
) =>
    _EnclaveSealData(
      DataToEncrypt,
      DataToEncryptSize,
      IdentityPolicy,
      RuntimePolicy,
      ProtectedBlob,
      BufferSize,
      ProtectedBlobSize,
    );

late final _EnclaveSealData = _vertdll.lookupFunction<
    Int32 Function(
  Pointer DataToEncrypt,
  Uint32 DataToEncryptSize,
  Int32 IdentityPolicy,
  Uint32 RuntimePolicy,
  Pointer ProtectedBlob,
  Uint32 BufferSize,
  Pointer<Uint32> ProtectedBlobSize,
),
    int Function(
  Pointer DataToEncrypt,
  int DataToEncryptSize,
  int IdentityPolicy,
  int RuntimePolicy,
  Pointer ProtectedBlob,
  int BufferSize,
  Pointer<Uint32> ProtectedBlobSize,
)>('EnclaveSealData');

int EnclaveUnsealData(
  Pointer ProtectedBlob,
  int ProtectedBlobSize,
  Pointer DecryptedData,
  int BufferSize,
  Pointer<Uint32> DecryptedDataSize,
  Pointer<ENCLAVE_IDENTITY> SealingIdentity,
  Pointer<Uint32> UnsealingFlags,
) =>
    _EnclaveUnsealData(
      ProtectedBlob,
      ProtectedBlobSize,
      DecryptedData,
      BufferSize,
      DecryptedDataSize,
      SealingIdentity,
      UnsealingFlags,
    );

late final _EnclaveUnsealData = _vertdll.lookupFunction<
    Int32 Function(
  Pointer ProtectedBlob,
  Uint32 ProtectedBlobSize,
  Pointer DecryptedData,
  Uint32 BufferSize,
  Pointer<Uint32> DecryptedDataSize,
  Pointer<ENCLAVE_IDENTITY> SealingIdentity,
  Pointer<Uint32> UnsealingFlags,
),
    int Function(
  Pointer ProtectedBlob,
  int ProtectedBlobSize,
  Pointer DecryptedData,
  int BufferSize,
  Pointer<Uint32> DecryptedDataSize,
  Pointer<ENCLAVE_IDENTITY> SealingIdentity,
  Pointer<Uint32> UnsealingFlags,
)>('EnclaveUnsealData');

int EnclaveVerifyAttestationReport(
  int EnclaveType,
  Pointer Report,
  int ReportSize,
) =>
    _EnclaveVerifyAttestationReport(
      EnclaveType,
      Report,
      ReportSize,
    );

late final _EnclaveVerifyAttestationReport = _vertdll.lookupFunction<
    Int32 Function(
  Uint32 EnclaveType,
  Pointer Report,
  Uint32 ReportSize,
),
    int Function(
  int EnclaveType,
  Pointer Report,
  int ReportSize,
)>('EnclaveVerifyAttestationReport');

int TerminateEnclave(
  Pointer lpAddress,
  int fWait,
) =>
    _TerminateEnclave(
      lpAddress,
      fWait,
    );

late final _TerminateEnclave = _vertdll.lookupFunction<
    Int32 Function(
  Pointer lpAddress,
  Int32 fWait,
),
    int Function(
  Pointer lpAddress,
  int fWait,
)>('TerminateEnclave');
