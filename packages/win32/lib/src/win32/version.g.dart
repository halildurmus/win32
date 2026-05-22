// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _version = DynamicLibrary.open('version.dll');

/// Retrieves version information for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winver/nf-winver-getfileversioninfow>.
///
/// {@category version}
Win32Result<bool> GetFileVersionInfo(
  PCWSTR lptstrFilename,
  int dwLen,
  Pointer lpData,
) {
  resolveGetLastError();
  final result_ = _GetFileVersionInfo(lptstrFilename, NULL, dwLen, lpData);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetFileVersionInfo = _version
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Uint32, Pointer),
      int Function(Pointer<Utf16>, int, int, Pointer)
    >('GetFileVersionInfoW');

/// Retrieves version information for the specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winver/nf-winver-getfileversioninfoexw>.
///
/// {@category version}
Win32Result<bool> GetFileVersionInfoEx(
  GET_FILE_VERSION_INFO_FLAGS dwFlags,
  PCWSTR lpwstrFilename,
  int dwLen,
  Pointer lpData,
) {
  resolveGetLastError();
  final result_ = _GetFileVersionInfoEx(
    dwFlags,
    lpwstrFilename,
    NULL,
    dwLen,
    lpData,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetFileVersionInfoEx = _version
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Utf16>, Uint32, Uint32, Pointer),
      int Function(int, Pointer<Utf16>, int, int, Pointer)
    >('GetFileVersionInfoExW');

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
Win32Result<int> GetFileVersionInfoSize(
  PCWSTR lptstrFilename,
  Pointer<Uint32>? lpdwHandle,
) {
  resolveGetLastError();
  final result_ = _GetFileVersionInfoSize(
    lptstrFilename,
    lpdwHandle ?? nullptr,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetFileVersionInfoSize = _version
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetFileVersionInfoSizeW');

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
Win32Result<int> GetFileVersionInfoSizeEx(
  GET_FILE_VERSION_INFO_FLAGS dwFlags,
  PCWSTR lpwstrFilename,
  Pointer<Uint32> lpdwHandle,
) {
  resolveGetLastError();
  final result_ = _GetFileVersionInfoSizeEx(
    dwFlags,
    lpwstrFilename,
    lpdwHandle,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetFileVersionInfoSizeEx = _version
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint32>)
    >('GetFileVersionInfoSizeExW');

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
) => .new(
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

final _VerFindFile = _version
    .lookupFunction<
      Uint32 Function(
        Uint32,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      )
    >('VerFindFileW');

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
) => .new(
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

final _VerInstallFile = _version
    .lookupFunction<
      Uint32 Function(
        Uint32,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Uint32>,
      )
    >('VerInstallFileW');

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

final _VerQueryValue = _version
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Pointer>,
        Pointer<Uint32>,
      ),
      int Function(Pointer, Pointer<Utf16>, Pointer<Pointer>, Pointer<Uint32>)
    >('VerQueryValueW');
