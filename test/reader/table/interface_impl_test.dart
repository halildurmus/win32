import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  final index = await WindowsMetadataLoader.loadWin32Metadata();

  group('InterfaceImpl', () {
    test('IFileDialog', () {
      final typeDef = index.getSingleType(
        'Windows.Win32.UI.Shell',
        'IFileDialog',
      );
      check(typeDef.interfaceImpls).isNotEmpty();
      final interfaceImpl = typeDef.interfaceImpls.first;
      check(interfaceImpl.class$.name).equals('IFileDialog');
      check(interfaceImpl.interface()).equals(
        const NamedType(TypeName('Windows.Win32.UI.Shell', 'IModalWindow')),
      );
    });
  });
}
