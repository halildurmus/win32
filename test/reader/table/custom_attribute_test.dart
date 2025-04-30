import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final metadata = MetadataLookup(
    await WindowsMetadataLoader().loadWin32Metadata(
      version: win32MetadataVersion,
    ),
  );

  group('CustomAttribute', () {
    test('GuidAttribute', () {
      final field = metadata.findConstant(
        'Windows.Win32.UI.Shell',
        'FOLDERID_AccountPictures',
      );
      final attribute = field.findAttribute('GuidAttribute');
      check(attribute.parent).isA<HasCustomAttributeField>();
      final parent = attribute.parent as HasCustomAttributeField;
      check(parent.value.name).equals('FOLDERID_AccountPictures');
      check(attribute.type).isA<CustomAttributeTypeMemberRef>();
      final type = attribute.type as CustomAttributeTypeMemberRef;
      check(type.value.name).equals('.ctor');
      check(attribute.parameters.length).equals(11);
      check(attribute.parameters[0]).isA<PositionalCustomAttributeParameter>();
      check(attribute.parameters[0].value).equals(const Uint32Value(9216177));
      check(attribute.parameters[1]).isA<PositionalCustomAttributeParameter>();
      check(attribute.parameters[1].value).equals(const Uint16Value(21940));
      check(attribute.parameters[2]).isA<PositionalCustomAttributeParameter>();
      check(attribute.parameters[2].value).equals(const Uint16Value(19542));
      check(attribute.parameters[3]).isA<PositionalCustomAttributeParameter>();
      check(attribute.parameters[3].value).equals(const Uint8Value(184));
      check(attribute.parameters[4]).isA<PositionalCustomAttributeParameter>();
      check(attribute.parameters[4].value).equals(const Uint8Value(168));
      check(attribute.parameters[5]).isA<PositionalCustomAttributeParameter>();
      check(attribute.parameters[5].value).equals(const Uint8Value(77));
      check(attribute.parameters[6]).isA<PositionalCustomAttributeParameter>();
      check(attribute.parameters[6].value).equals(const Uint8Value(228));
      check(attribute.parameters[7]).isA<PositionalCustomAttributeParameter>();
      check(attribute.parameters[7].value).equals(const Uint8Value(178));
      check(attribute.parameters[8]).isA<PositionalCustomAttributeParameter>();
      check(attribute.parameters[8].value).equals(const Uint8Value(153));
      check(attribute.parameters[9]).isA<PositionalCustomAttributeParameter>();
      check(attribute.parameters[9].value).equals(const Uint8Value(211));
      check(attribute.parameters[10]).isA<PositionalCustomAttributeParameter>();
      check(attribute.parameters[10].value).equals(const Uint8Value(190));
      check(attribute.name).equals('GuidAttribute');
    });

    test('NativeArrayInfoAttribute', () {
      final typeDef = metadata.findSingleType(
        'Windows.Win32.Graphics.Direct3D12',
        'D3D12_STREAM_OUTPUT_DESC',
      );
      final field = typeDef.fields.first;
      final attribute = field.findAttribute('NativeArrayInfoAttribute');
      check(attribute.parent).isA<HasCustomAttributeField>();
      final parent = attribute.parent as HasCustomAttributeField;
      check(parent.value.name).equals('pSODeclaration');
      check(attribute.type).isA<CustomAttributeTypeMemberRef>();
      final type = attribute.type as CustomAttributeTypeMemberRef;
      check(type.value.name).equals('.ctor');
      check(attribute.parameters.length).equals(1);
      final parameter = attribute.parameters[0];
      check(parameter).isA<NamedCustomAttributeParameter>();
      check(
        (parameter as NamedCustomAttributeParameter).name,
      ).equals('CountFieldName');
      check(parameter.value).equals(const Utf8StringValue('NumEntries'));
      check(attribute.name).equals('NativeArrayInfoAttribute');
    });
  });
}
