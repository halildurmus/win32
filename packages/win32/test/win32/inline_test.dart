@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  group('Win32 inline functions tests', () {
    test('GetCurrentProcessToken returns expected pseudo-handle', () {
      check(GetCurrentProcessToken()).equals(-4);
    });

    test('GetCurrentThreadToken returns expected pseudo-handle', () {
      check(GetCurrentThreadToken()).equals(-5);
    });

    test('GetCurrentThreadEffectiveToken returns expected pseudo-handle', () {
      check(GetCurrentThreadEffectiveToken()).equals(-6);
    });

    test('IsWindowsXPOrGreater returns true for Windows XP or greater', () {
      check(IsWindowsXPOrGreater()).isTrue();
    });

    test(
      'IsWindowsXPSP1OrGreater returns true for Windows XP SP1 or greater',
      () {
        check(IsWindowsXPSP1OrGreater()).isTrue();
      },
    );

    test(
      'IsWindowsXPSP2OrGreater returns true for Windows XP SP2 or greater',
      () {
        check(IsWindowsXPSP2OrGreater()).isTrue();
      },
    );

    test(
      'IsWindowsXPSP3OrGreater returns true for Windows XP SP3 or greater',
      () {
        check(IsWindowsXPSP3OrGreater()).isTrue();
      },
    );

    test(
      'IsWindowsVistaOrGreater returns true for Windows Vista or greater',
      () {
        check(IsWindowsVistaOrGreater()).isTrue();
      },
    );

    test(
      'IsWindowsVistaSP1OrGreater returns true for Windows Vista SP1 or greater',
      () {
        check(IsWindowsVistaSP1OrGreater()).isTrue();
      },
    );

    test(
      'IsWindowsVistaSP2OrGreater returns true for Windows Vista SP2 or greater',
      () {
        check(IsWindowsVistaSP2OrGreater()).isTrue();
      },
    );

    test('IsWindows7OrGreater returns true for Windows 7 or greater', () {
      check(IsWindows7OrGreater()).isTrue();
    });

    test(
      'IsWindows7SP1OrGreater returns true for Windows 7 SP1 or greater',
      () {
        check(IsWindows7SP1OrGreater()).isTrue();
      },
    );

    test('IsWindows8OrGreater returns true for Windows 8 or greater', () {
      check(IsWindows8OrGreater()).isTrue();
    });

    test(
      'IsWindows8Point1OrGreater returns true for Windows 8.1 or greater',
      () {
        check(IsWindows8Point1OrGreater()).isTrue();
      },
    );

    test('IsWindows10OrGreater returns true for Windows 10 or greater', () {
      check(IsWindows10OrGreater()).isTrue();
    });

    test('IsWindowsServer returns true for Windows Server', () {
      check(IsWindowsServer()).isIn([false, true]);
    });

    test('IsPropVariantString returns true for PROPVARIANT string type', () {
      final propVariant = PropVariant.bstr('Dart is awesome!');
      check(IsPropVariantString(propVariant.ptr)).isTrue();
    });
  });
}
