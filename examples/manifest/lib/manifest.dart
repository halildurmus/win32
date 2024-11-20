import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Determines whether the current process token is elevated.
///
/// Returns `true` if the process is elevated, `false` otherwise.
///
/// Throws [WindowsException] if a Win32 call fails unexpectedly.
bool isProcessElevated() => using((arena) {
  final token = arena<Pointer>();

  var result = OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, token);
  if (!result.value) throw WindowsException(result.error.toHRESULT());

  final elevation = arena<TOKEN_ELEVATION>();
  final returnedLength = arena<DWORD>();
  result = GetTokenInformation(
    HANDLE(token.value),
    TokenElevation,
    elevation.cast(),
    sizeOf<TOKEN_ELEVATION>(),
    returnedLength,
  );
  if (!result.value) throw WindowsException(result.error.toHRESULT());

  return elevation.ref.TokenIsElevated != 0;
});

/// Displays a simple informational message box.
void showMessage(String message) => using((arena) {
  MessageBox(
    null,
    arena.pcwstr(message),
    arena.pcwstr('Process Elevation Status'),
    MB_ICONINFORMATION | MB_OK,
  );
});
