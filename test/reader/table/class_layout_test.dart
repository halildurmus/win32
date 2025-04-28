import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';

void main() async {
  final index = await WindowsMetadataLoader.loadWin32Metadata();

  group('ClassLayout', () {
    test('BITMAPFILEHEADER', () {
      final typeDef = index.findSingleType(
        'Windows.Win32.Graphics.Gdi',
        'BITMAPFILEHEADER',
      );
      final classLayout = typeDef.classLayout;
      check(classLayout).isNotNull();
      check(classLayout!.packingSize).equals(2);
      check(classLayout.classSize).equals(0);
      check(classLayout.parent.name).equals('BITMAPFILEHEADER');
    });
  });
}
