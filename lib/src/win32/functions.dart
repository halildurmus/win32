// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'constants.dart';
import 'enums.dart';
import 'exception.dart';
import 'guid.dart';
import 'macros.dart';
import 'structs.dart';
import 'utils.dart';

final _rometadata = DynamicLibrary.open('rometadata.dll');

@pragma('vm:prefer-inline')
void MetaDataGetDispenser(
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) {
  final hr$ = HRESULT(_MetaDataGetDispenser(rclsid, riid, ppv));
  if (FAILED(hr$)) throw WindowsException(hr$);
}

final _MetaDataGetDispenser = _rometadata.lookupFunction<
  Int32 Function(Pointer<GUID>, Pointer<GUID>, Pointer<Pointer>),
  int Function(Pointer<GUID>, Pointer<GUID>, Pointer<Pointer>)
>('MetaDataGetDispenser');

@pragma('vm:prefer-inline')
WIN32_ERROR RegOpenKeyEx(
  int hKey,
  PCWSTR? lpSubKey,
  int? ulOptions,
  REG_SAM_FLAGS samDesired,
  Pointer<HKEY> phkResult,
) => WIN32_ERROR(
  _RegOpenKeyEx(
    hKey,
    lpSubKey ?? nullptr,
    ulOptions ?? NULL,
    samDesired,
    phkResult,
  ),
);

@Native<Uint32 Function(HKEY, PCWSTR, Uint32, Uint32, Pointer<HKEY>)>(
  symbol: 'RegOpenKeyExW',
)
external int _RegOpenKeyEx(
  int hKey,
  PCWSTR lpSubKey,
  int ulOptions,
  int samDesired,
  Pointer<HKEY> phkResult,
);

@pragma('vm:prefer-inline')
WIN32_ERROR RegCloseKey(int hKey) => WIN32_ERROR(_RegCloseKey(hKey));

@Native<Uint32 Function(HKEY)>(symbol: 'RegCloseKey')
external int _RegCloseKey(int hKey);

@pragma('vm:prefer-inline')
WIN32_ERROR RegQueryValueEx(
  int hKey,
  PCWSTR? lpValueName,
  Pointer<Uint32>? lpType,
  Pointer<Uint8>? lpData,
  Pointer<Uint32>? lpcbData,
) => WIN32_ERROR(
  _RegQueryValueEx(
    hKey,
    lpValueName ?? nullptr,
    nullptr,
    lpType ?? nullptr,
    lpData ?? nullptr,
    lpcbData ?? nullptr,
  ),
);

@Native<
  Uint32 Function(
    HKEY,
    PCWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>(symbol: 'RegQueryValueExW')
external int _RegQueryValueEx(
  int hKey,
  PCWSTR lpValueName,
  Pointer<Uint32> lpReserved,
  Pointer<Uint32> lpType,
  Pointer<Uint8> lpData,
  Pointer<Uint32> lpcbData,
);

PWSTR SHGetKnownFolderPath(
  Pointer<GUID> rfid,
  KNOWN_FOLDER_FLAG dwFlags,
  int? hToken,
) {
  final ppszPath = calloc<PWSTR>();
  final hr$ = HRESULT(
    _SHGetKnownFolderPath(rfid, dwFlags, hToken ?? NULL, ppszPath),
  );
  if (FAILED(hr$)) {
    free(ppszPath);
    throw WindowsException(hr$);
  }
  final result$ = ppszPath.value;
  free(ppszPath);
  return result$;
}

@Native<Int32 Function(Pointer<GUID>, Uint32, HANDLE, Pointer<PWSTR>)>(
  symbol: 'SHGetKnownFolderPath',
)
external int _SHGetKnownFolderPath(
  Pointer<GUID> rfid,
  int dwFlags,
  int hToken,
  Pointer<PWSTR> ppszPath,
);

@pragma('vm:prefer-inline')
void Sleep(int dwMilliseconds) => _Sleep(dwMilliseconds);

@Native<Void Function(Uint32)>(symbol: 'Sleep')
external void _Sleep(int dwMilliseconds);
