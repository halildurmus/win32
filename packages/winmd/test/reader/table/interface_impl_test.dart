import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataIndex index;

  setUpAll(() async {
    index = await fixtures.loadWin32Metadata();
  });

  group('InterfaceImpl', () {
    test('IFileDialog', () {
      final typeDef = index.findSingleType(
        'Windows.Win32.UI.Shell',
        'IFileDialog',
      );
      check(typeDef.interfaceImpls).isNotEmpty();
      final interfaceImpl = typeDef.interfaceImpls.first;
      check(interfaceImpl.token).equals(0x09001D29);
      check(interfaceImpl.class$.name).equals('IFileDialog');
      check(interfaceImpl.interface).equals(
        const NamedClassType(
          TypeName('Windows.Win32.UI.Shell', 'IModalWindow'),
        ),
      );
    });
  });
}
