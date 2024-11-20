// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/version.g.dart';
import '../allocator.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Retrieves version information for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winver/nf-winver-getfileversioninfow>.
///
/// {@category version}
@pragma('vm:prefer-inline')
bool GetFileVersionInfo(PCWSTR lptstrFilename, int dwLen, Pointer lpData) =>
    GetFileVersionInfoW_Wrapper(lptstrFilename, NULL, dwLen, lpData) != FALSE;

/// Retrieves version information for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winver/nf-winver-getfileversioninfoexw>.
///
/// {@category version}
@pragma('vm:prefer-inline')
bool GetFileVersionInfoEx(
  GET_FILE_VERSION_INFO_FLAGS dwFlags,
  PCWSTR lpwstrFilename,
  int dwLen,
  Pointer lpData,
) =>
    GetFileVersionInfoExW_Wrapper(
      dwFlags,
      lpwstrFilename,
      NULL,
      dwLen,
      lpData,
    ) !=
    FALSE;

/// Determines whether the operating system can retrieve version information for
/// a specified file.
///
/// If version information is available, GetFileVersionInfoSize returns the
/// size, in bytes, of that information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winver/nf-winver-getfileversioninfosizew>.
///
/// {@category version}
@pragma('vm:prefer-inline')
int GetFileVersionInfoSize(
  PCWSTR lptstrFilename,
  Pointer<Uint32>? lpdwHandle,
) => GetFileVersionInfoSizeW_Wrapper(lptstrFilename, lpdwHandle ?? nullptr);

/// Determines whether the operating system can retrieve version information for
/// a specified file.
///
/// If version information is available, GetFileVersionInfoSizeEx returns the
/// size, in bytes, of that information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winver/nf-winver-getfileversioninfosizeexw>.
///
/// {@category version}
@pragma('vm:prefer-inline')
int GetFileVersionInfoSizeEx(
  GET_FILE_VERSION_INFO_FLAGS dwFlags,
  PCWSTR lpwstrFilename,
  Pointer<Uint32> lpdwHandle,
) => GetFileVersionInfoSizeExW_Wrapper(dwFlags, lpwstrFilename, lpdwHandle);

/// Determines where to install a file based on whether it locates another
/// version of the file in the system.
///
/// The values VerFindFile returns in the specified buffers are used in a
/// subsequent call to the VerInstallFile function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winver/nf-winver-verfindfilew>.
///
/// {@category version}
@pragma('vm:prefer-inline')
VER_FIND_FILE_STATUS VerFindFile(
  VER_FIND_FILE_FLAGS uFlags,
  PCWSTR szFileName,
  PCWSTR? szWinDir,
  PCWSTR szAppDir,
  PWSTR szCurDir,
  Pointer<Uint32> puCurDirLen,
  PWSTR szDestDir,
  Pointer<Uint32> puDestDirLen,
) => VER_FIND_FILE_STATUS(
  _VerFindFile(
    uFlags,
    szFileName,
    szWinDir ?? nullptr,
    szAppDir,
    szCurDir,
    puCurDirLen,
    szDestDir,
    puDestDirLen,
  ),
);

@Native<
  Uint32 Function(
    Uint32,
    PCWSTR,
    PCWSTR,
    PCWSTR,
    PWSTR,
    Pointer<Uint32>,
    PWSTR,
    Pointer<Uint32>,
  )
>(symbol: 'VerFindFileW')
external int _VerFindFile(
  int uFlags,
  PCWSTR szFileName,
  PCWSTR szWinDir,
  PCWSTR szAppDir,
  PWSTR szCurDir,
  Pointer<Uint32> puCurDirLen,
  PWSTR szDestDir,
  Pointer<Uint32> puDestDirLen,
);

/// Installs the specified file based on information returned from the
/// VerFindFile function.
///
/// VerInstallFile decompresses the file, if necessary, assigns a unique
/// filename, and checks for errors, such as outdated files.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winver/nf-winver-verinstallfilew>.
///
/// {@category version}
@pragma('vm:prefer-inline')
VER_INSTALL_FILE_STATUS VerInstallFile(
  VER_INSTALL_FILE_FLAGS uFlags,
  PCWSTR szSrcFileName,
  PCWSTR szDestFileName,
  PCWSTR szSrcDir,
  PCWSTR szDestDir,
  PCWSTR szCurDir,
  PWSTR szTmpFile,
  Pointer<Uint32> puTmpFileLen,
) => VER_INSTALL_FILE_STATUS(
  _VerInstallFile(
    uFlags,
    szSrcFileName,
    szDestFileName,
    szSrcDir,
    szDestDir,
    szCurDir,
    szTmpFile,
    puTmpFileLen,
  ),
);

@Native<
  Uint32 Function(
    Uint32,
    PCWSTR,
    PCWSTR,
    PCWSTR,
    PCWSTR,
    PCWSTR,
    PWSTR,
    Pointer<Uint32>,
  )
>(symbol: 'VerInstallFileW')
external int _VerInstallFile(
  int uFlags,
  PCWSTR szSrcFileName,
  PCWSTR szDestFileName,
  PCWSTR szSrcDir,
  PCWSTR szDestDir,
  PCWSTR szCurDir,
  PWSTR szTmpFile,
  Pointer<Uint32> puTmpFileLen,
);

/// Retrieves specified version information from the specified
/// version-information resource.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winver/nf-winver-verqueryvaluew>.
///
/// {@category version}
@pragma('vm:prefer-inline')
bool VerQueryValue(
  Pointer pBlock,
  PCWSTR lpSubBlock,
  Pointer<Pointer> lplpBuffer,
  Pointer<Uint32> puLen,
) => _VerQueryValue(pBlock, lpSubBlock, lplpBuffer, puLen) != FALSE;

@Native<BOOL Function(Pointer, PCWSTR, Pointer<Pointer>, Pointer<Uint32>)>(
  symbol: 'VerQueryValueW',
)
external int _VerQueryValue(
  Pointer pBlock,
  PCWSTR lpSubBlock,
  Pointer<Pointer> lplpBuffer,
  Pointer<Uint32> puLen,
);
