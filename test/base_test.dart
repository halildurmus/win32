@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });
}
