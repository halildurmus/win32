import 'dart:ffi';

import 'package:win32/win32.dart';

void main() {
  final hToken = loggingCalloc<HANDLE>();
  final elevation = loggingCalloc<TOKEN_ELEVATION>();
  final size = loggingCalloc<DWORD>();

  String message;

  if (OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, hToken)) {
    if (GetTokenInformation(
      hToken.value,
      TokenElevation,
      elevation.cast(),
      sizeOf<TOKEN_ELEVATION>(),
      size,
    )) {
      if (elevation.ref.TokenIsElevated != 0) {
        message = 'This process is running with elevated privileges.';
      } else {
        message = 'This process is running with standard user privileges.';
      }
    } else {
      message = 'Failed to retrieve token information.';
    }
  } else {
    message = 'Failed to open process token.';
  }

  free(hToken);
  free(elevation);
  free(size);

  final text = w(message);
  final caption = w('Win32 app manifest example');
  MessageBox(null, text.ptr, caption.ptr, MB_OK | MB_ICONINFORMATION);
}
