@TestOn('windows')

import 'package:test/test.dart';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  test('Successful GetModuleHandle', () {
    final hModule = GetModuleHandle(TEXT('kernel32.dll'));
    expect(hModule, isNot(NULL));
  });

  test('Failed GetModuleHandle', () {
    final hModule = GetModuleHandle(TEXT('kernel33_fake_not_a_real.dll'));
    expect(hModule, equals(NULL));
  });

  test('Successful GetProcAddress', () {
    final hModule = GetModuleHandle(TEXT('kernel32.dll'));

    final ansi = convertToANSIString('Beep');
    final pGetNativeSystemInfo = GetProcAddress(hModule, ansi);
    expect(pGetNativeSystemInfo, isNonZero);
    free(ansi);
  });

  test('Basic library function load', () {
    final beepFunction = Beep;
    expect(beepFunction.toString, equals('Beep'));
  });
}
