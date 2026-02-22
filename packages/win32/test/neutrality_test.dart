import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

// This test has two purposes:
// 1. Make sure that the act of including package:win32 as a dependency does not
//    cause failures on other platforms.
// 2. Prevent CI from failing on other platforms (GitHub Actions fails unless at
//    least one test is run successfully.)
void main() {
  test('Dormant package does not cause failures on other platforms', () {
    final point = adaptiveCalloc<POINT>();
    point.ref
      ..x = 0x10
      ..y = 0x7F;
    check(point.ref.x + point.ref.y).equals(0x8F);
    free(point);
  });
}
