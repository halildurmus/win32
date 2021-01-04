import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  test('Dormant package does not cause failures on other platforms', () {
    final point = POINT.allocate();
    point.x = 0x10;
    point.y = 0x7F;
    expect(point.x + point.y, equals(0x8F));
  });
}
