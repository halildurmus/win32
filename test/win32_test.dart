@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:win32/win32.dart';

void main() {
  if (isWindowsRuntimeAvailable()) {
    test('Can load a Win32 metadata file', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      expect(scope.typeDefs.length, isNonZero);
    });

    test('Can find the GDI API', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis'];
      expect(typedef, isNotNull);
      expect(typedef!.methods.length, isNonZero);
    });

    test('Searching for a non-existent typedef returns null', () {
      const fakeTypeDef = 'Windows.Flutter.Apis'; // for now :)
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope[fakeTypeDef];
      expect(typedef, isNull);
    });

    test('Can find the AddFontResourceW API', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis'];

      final api = typedef!.findMethod('AddFontResourceW');
      expect(api, isNotNull);
      expect(api!.parameters.length, isNonZero);
    });

    test('Searching for a non-existent API call returns null', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis']!;

      final api = typedef.findMethod('AddFlutterWidget');
      expect(api, isNull);
    });
  }
}
