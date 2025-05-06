import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWin32Metadata(
    version: win32MetadataVersion,
  );

  group('InterfaceImpl', () {
    test('IFileDialog', () {
      final typeDef = index.findSingleType(
        'Windows.Win32.UI.Shell',
        'IFileDialog',
      );
      check(typeDef.interfaceImpls).isNotEmpty();
      final interfaceImpl = typeDef.interfaceImpls.first;
      check(interfaceImpl.class$.name).equals('IFileDialog');
      check(interfaceImpl.interface()).equals(
        const NamedClassType(
          TypeName('Windows.Win32.UI.Shell', 'IModalWindow'),
        ),
      );
    });
  });
}
