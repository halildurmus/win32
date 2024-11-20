import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('PointerExtension', () {
    group('isNull', () {
      test('returns true for a NULL pointer', () {
        check(nullptr.isNull).isTrue();
      });

      test('returns false for a non-NULL pointer', () {
        final nonNullPointer = loggingCalloc<Uint8>();
        check(nonNullPointer.isNull).isFalse();
        free(nonNullPointer);
      });
    });
  });
}
