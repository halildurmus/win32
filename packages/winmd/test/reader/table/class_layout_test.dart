import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWin32Metadata(
    version: win32MetadataVersion,
  );

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
