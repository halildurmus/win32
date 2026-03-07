import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataIndex index;

  setUpAll(() async {
    index = await fixtures.loadWin32Metadata();
  });

  group('ClassLayout', () {
    test('BITMAPFILEHEADER', () {
      final typeDef = index.findSingleType(
        'Windows.Win32.Graphics.Gdi',
        'BITMAPFILEHEADER',
      );
      final classLayout = typeDef.classLayout;
      check(classLayout).isNotNull();
      check(classLayout!.token).equals(0x0F0000B6);
      check(classLayout.packingSize).equals(2);
      check(classLayout.classSize).equals(0);
      check(classLayout.parent.name).equals('BITMAPFILEHEADER');
    });
  });
}
