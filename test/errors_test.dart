@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Error', () {
    expect(WindowsException(E_INVALIDARG).toString(),
        contains('The parameter is incorrect'));
  });
}
