// Demonstrates how to use GetProcAddress to retrieve a raw function pointer and
// call it.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

typedef GetNativeSystemInfoNative =
    Void Function(Pointer<SYSTEM_INFO> lpSystemInfo);
typedef GetNativeSystemInfoDart =
    void Function(Pointer<SYSTEM_INFO> lpSystemInfo);

void main() {
  using((arena) {
    final systemInfo = arena<SYSTEM_INFO>();
    final moduleName = arena.pcwstr('kernel32.dll');
    final hModule = GetModuleHandle(moduleName).value;
    if (hModule.isNull) throw StateError('Could not load kernel32.dll');

    final procName = arena.pcstr('GetNativeSystemInfo');
    final pGetNativeSystemInfo = GetProcAddress(hModule, procName).value;

    if (pGetNativeSystemInfo != nullptr) {
      print('GetNativeSystemInfo() is available on this system.');
      final funcGetNativeSystemInfo = pGetNativeSystemInfo
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
  });
}
