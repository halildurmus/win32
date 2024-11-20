// Demonstrates how to use GetProcAddress to retrieve a raw function pointer and
// call it.

import 'dart:ffi';

import 'package:win32/win32.dart';

typedef GetNativeSystemInfoNative =
    Void Function(Pointer<SYSTEM_INFO> lpSystemInfo);
typedef GetNativeSystemInfoDart =
    void Function(Pointer<SYSTEM_INFO> lpSystemInfo);

void main() {
  final systemInfo = loggingCalloc<SYSTEM_INFO>();

  final hModule = GetModuleHandle(w('kernel32.dll').ptr);
  if (hModule == NULL) throw StateError('Could not load kernel32.dll');

  final pGetNativeSystemInfo = GetProcAddress(
    hModule,
    s('GetNativeSystemInfo').ptr,
  );

  if (pGetNativeSystemInfo != nullptr) {
    print('GetNativeSystemInfo() is available on this system.');
    final funcGetNativeSystemInfo =
        pGetNativeSystemInfo
            .cast<NativeFunction<GetNativeSystemInfoNative>>()
            .asFunction<GetNativeSystemInfoDart>();

    funcGetNativeSystemInfo(systemInfo);
  } else {
    print(
      'GetNativeSystemInfo() is not available on this system. '
      'Falling back to GetSystemInfo().',
    );

    GetSystemInfo(systemInfo);
  }

  print('This system has ${systemInfo.ref.dwNumberOfProcessors} processors.');

  free(systemInfo);
}
