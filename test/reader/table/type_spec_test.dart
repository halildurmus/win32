import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWinrtMetadata(
    version: winrtMetadataVersion,
  );

  group('TypeSpec', () {
    test('IMap<string, string>', () {
      final stringMap = index.findSingleType(
        'Windows.Foundation.Collections',
        'StringMap',
      );
      final iMap = stringMap.interfaceImpls.first;
      final interface = iMap.decode<TypeDefOrRef>(1);
      check(interface).isA<TypeDefOrRefTypeSpec>();
      final typeSpec = (interface as TypeDefOrRefTypeSpec).value;
      check(typeSpec.attributes).isEmpty();
      check(typeSpec.type()).equals(
        const NamedClassType(
          TypeName(
            'Windows.Foundation.Collections',
            'IMap`2',
            generics: [StringType(), StringType()],
          ),
        ),
      );
    });
  });
}
