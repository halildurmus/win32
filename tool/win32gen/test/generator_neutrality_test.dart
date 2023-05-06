import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

// This test prevents CI from failing on other platforms (GitHub Actions fails
// unless at least one test is run successfully.)
void main() {
  test('Neutral test to give non-Windows platforms something to chew on', () {
    final point = calloc<POINT>()
      ..ref.x = 0x10
      ..ref.y = 0x7F;
    expect(point.ref.x + point.ref.y, equals(0x8F));
    free(point);
  });
}
