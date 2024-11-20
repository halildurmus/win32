import 'dart:ffi';

import 'package:checks/context.dart';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Returns the Windows build number.
final int windowsBuildNumber = int.parse(
  getRegistryValue(
        HKEY_LOCAL_MACHINE,
        r'SOFTWARE\Microsoft\Windows NT\CurrentVersion\',
        'CurrentBuildNumber',
      )
      as String,
);

/// Returns the Registry value for the given key, subkey, and value name.
Object getRegistryValue(HKEY key, String subKey, String valueName) => using((
  arena,
) {
  late Object dataValue;

  final openKeyPtr = arena<Pointer>();
  final dataType = arena<DWORD>();

  // 256 bytes is more than enough, and Windows will throw ERROR_MORE_DATA if
  // not, so there won't be an overrun.
  final data = arena<BYTE>(256);
  final dataSize = arena<DWORD>()..value = 256;

  final lpSubKey = arena.pcwstr(subKey);
  final lpValueName = arena.pcwstr(valueName);

  var result = RegOpenKeyEx(key, lpSubKey, 0, KEY_READ, openKeyPtr);
  while (result != ERROR_SUCCESS) {
    Sleep(1000);
    result = RegOpenKeyEx(key, lpSubKey, 0, KEY_READ, openKeyPtr);
  }

  final hkey = HKEY(openKeyPtr.value);

  if (result == ERROR_SUCCESS) {
    result = RegQueryValueEx(hkey, lpValueName, dataType, data, dataSize);
    hkey.close();

    if (result == ERROR_SUCCESS) {
      if (dataType.value == REG_DWORD) {
        dataValue = data.value;
      } else if (dataType.value == REG_SZ) {
        dataValue = data.cast<Utf16>().toDartString();
      } else {
        // other data types are available, but this is a sample
      }
    } else {
      throw WindowsException(result.toHRESULT());
    }
  } else {
    throw WindowsException(result.toHRESULT());
  }

  return dataValue;
});

void initializeCom() {
  final hr = CoInitializeEx(COINIT_MULTITHREADED);
  if (hr.isError) throw WindowsException(hr);
}

extension IsInCheck<T> on Subject<T> {
  /// Expects that the value is in the given list of [values].
  void isIn(Iterable<T> values) {
    context.expect(
      () => ['is in $values'],
      (actual) => values.contains(actual)
          ? null // force coverage
          : Rejection(which: ['is not in $values']),
    );
  }
}

extension IntZeroChecks on Subject<int> {
  /// Expects that the value is zero.
  void isZero() {
    context.expect(
      () => ['is zero'],
      (actual) => actual == 0
          ? null // force coverage
          : Rejection(which: ['is non zero']),
    );
  }

  /// Expects that the value is non-zero.
  void isNonZero() {
    context.expect(
      () => ['is non zero'],
      (actual) => actual != 0
          ? null // force coverage
          : Rejection(which: ['is zero']),
    );
  }
}
