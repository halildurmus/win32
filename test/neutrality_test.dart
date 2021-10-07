import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

// This test has two purposes:
// 1. Make sure that the act of including win32 as a dependency does not cause
//    failures on other platforms.
// 2. Prevent CI from failing on other platforms (GitHub Actions fails unless at
//    least one test is run successfully.)
void main() {
  test('Dormant package does not cause failures on other platforms', () {
    final point = calloc<POINT>().ref;
    point.x = 0x10;
    point.y = 0x7F;
    expect(point.x + point.y, equals(0x8F));
  });
}
