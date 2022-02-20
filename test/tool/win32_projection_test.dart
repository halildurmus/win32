@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/projection/type.dart';

void main() {
  test('Special types exist in metadata', () {
    final scope = MetadataStore.getWin32Scope();
    for (final specialType in specialTypes.keys
        .where((type) => type.startsWith('Windows.Win32'))) {
      expect(scope.findTypeDef(specialType), isNotNull,
          reason: '$specialType missing');
    }
  });
}
