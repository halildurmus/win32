@TestOn('windows')
library;

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Successful GetModuleHandle', () {
    final lpModuleName = 'kernel32.dll'.toNativeUtf16();
    try {
      final hModule = GetModuleHandle(lpModuleName);
      expect(hModule, isNot(NULL));
    } finally {
      free(lpModuleName);
    }
  });

  test('Failed GetModuleHandle', () {
    final lpFakeModuleName = 'kernel33_fake_not_a_real.dll'.toNativeUtf16();
    try {
      final hModule = GetModuleHandle(lpFakeModuleName);
      expect(hModule, equals(NULL));
    } finally {
      free(lpFakeModuleName);
    }
  });

  test('Successful GetProcAddress', () {
    final lpKernelModuleName = 'kernel32.dll'.toNativeUtf16();
    final lpBeepProcName = 'Beep'.toNativeUtf8(); // ANSI, not UTF-16

    try {
      final hModule = GetModuleHandle(lpKernelModuleName);

      final pGetNativeSystemInfo = GetProcAddress(hModule, lpBeepProcName);
      expect(pGetNativeSystemInfo.address, isNonZero);
    } finally {
      free(lpKernelModuleName);
      free(lpBeepProcName);
    }
  });

  test('Successful GetCurrentProcess', () {
    // In all current versions of Windows, this returns -1. In theory, a future
    // version of Windows could change this value. This is a pseudo-handle, and
    // so CloseHandle is not required.
    final hProcess = GetCurrentProcess();

    expect(hProcess, equals(-1));
  });
}
