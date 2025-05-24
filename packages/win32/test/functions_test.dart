// ignore_for_file: non_constant_identifier_names

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  group('Test undocumented functions', () {
    final user32 = DynamicLibrary.open('user32.dll');

    test('Can instantiate GetWindowCompositionAttribute', () {
      final GetWindowCompositionAttribute = user32
          .lookupFunction<
            Int32 Function(
              IntPtr hwnd,
              Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
            ),
            int Function(int hwnd, Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad)
          >('GetWindowCompositionAttribute');
      expect(GetWindowCompositionAttribute, isA<Function>());
    });

    test('Can instantiate SetWindowCompositionAttribute', () {
      final SetWindowCompositionAttribute = user32
          .lookupFunction<
            Int32 Function(
              IntPtr hwnd,
              Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
            ),
            int Function(int hwnd, Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad)
          >('SetWindowCompositionAttribute');
      expect(SetWindowCompositionAttribute, isA<Function>());
    });
  });
}
