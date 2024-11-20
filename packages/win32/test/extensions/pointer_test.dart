import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('PointerExtension', () {
    group('isNull', () {
      test('returns true for a NULL pointer', () {
        check(nullptr.isNull).isTrue();
      });

      test('returns false for a non-NULL pointer', () {
        final nonNullPointer = calloc<Uint8>();
        check(nonNullPointer.isNull).isFalse();
        calloc.free(nonNullPointer);
      });
    });

    group('isNotNull', () {
      test('returns false for a NULL pointer', () {
        check(nullptr.isNotNull).isFalse();
      });

      test('returns true for a non-NULL pointer', () {
        final nonNullPointer = calloc<Uint8>();
        check(nonNullPointer.isNotNull).isTrue();
        calloc.free(nonNullPointer);
      });
    });
  });
}
