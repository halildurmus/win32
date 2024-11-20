// ignore_for_file: non_constant_identifier_names

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('Win32 handwritten functions tests', () {
    test('GetWindowCompositionAttribute can be instantiated', () {
      check(_GetWindowCompositionAttribute).isA<Function>();
    });

    test('SetWindowCompositionAttribute can be instantiated', () {
      check(_SetWindowCompositionAttribute).isA<Function>();
    });
  });
}

@Native<Int32 Function(HWND, Pointer<WINDOWCOMPOSITIONATTRIBDATA>)>(
  symbol: 'GetWindowCompositionAttribute',
  isLeaf: true,
)
external int _GetWindowCompositionAttribute(
  int hwnd,
  Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
);

@Native<Int32 Function(HWND, Pointer<WINDOWCOMPOSITIONATTRIBDATA>)>(
  symbol: 'SetWindowCompositionAttribute',
  isLeaf: true,
)
external int _SetWindowCompositionAttribute(
  int hwnd,
  Pointer<WINDOWCOMPOSITIONATTRIBDATA> pwcad,
);
