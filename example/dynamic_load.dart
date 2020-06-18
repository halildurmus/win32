// dynamic_load.dart

// Demonstrates how to use GetProcAddress to retrieve a raw function pointer and
// call it.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

typedef getNativeSystemInfoNative = Void Function(
    Pointer<SYSTEM_INFO> lpSystemInfo);
typedef getNativeSystemInfoDart = void Function(
    Pointer<SYSTEM_INFO> lpSystemInfo);

void main() {
  final systemInfo = SYSTEM_INFO.allocate();

  final hModule = GetModuleHandle(TEXT('kernel32.dll'));
  if (hModule == NULL) throw Exception('Could not load kernel32.dll');

  final ansi = convertToANSIString('GetNativeSystemInfo');
  final pGetNativeSystemInfo = GetProcAddress(hModule, ansi);
  free(ansi);

  if (pGetNativeSystemInfo != NULL) {
    print('GetNativeSystemInfo() is available on this system.');
    final funcGetNativeSystemInfo =
        Pointer<NativeFunction<getNativeSystemInfoNative>>.fromAddress(
                pGetNativeSystemInfo)
            .asFunction<getNativeSystemInfoDart>();

    funcGetNativeSystemInfo(systemInfo.addressOf);
  } else {
    print(
        'GetNativeSystemInfo() not available on this system. Falling back to GetSystemInfo().');

    GetSystemInfo(systemInfo.addressOf);
  }

  print('This system has ${systemInfo.dwNumberOfProcessors} processors.');
}
