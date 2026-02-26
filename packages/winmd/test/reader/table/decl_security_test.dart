import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;
import 'package:winmd/writer.dart';

void main() {
  test('DeclSecurity', () {
    final writer = MetadataWriter(name: 'MyMetadata');
    final typeDef = writer.writeTypeDef(namespace: 'Namespace', name: 'Name');
    const attribute = 'System.Security.Permissions.SecurityAction';
    const enumName = 'System.Security.Permissions.SecurityPermissionFlag';
    const propertyName = 'Flags';
    final permissionSet = Uint8List.fromList([
      0x2E, // '.'
      1, // Number of attributes
      ...winmd.CompressedInteger.encode(attribute.length),
      ...attribute.codeUnits,
      1, // NumNamed
      winmd.ELEMENT_TYPE_PROPERTY,
      winmd.ELEMENT_TYPE_ENUM,
      ...winmd.CompressedInteger.encode(propertyName.length),
      ...propertyName.codeUnits,
      ...winmd.CompressedInteger.encode(enumName.length),
      ...enumName.codeUnits,
      0x8, 0, 0, 0, // enum value = Execution (0x8)
    ]);
    writer.writeDeclSecurity(
      action: SecurityAction.demand,
      parent: HasDeclSecurity.typeDef(typeDef),
      permissionSet: permissionSet,
    );
    final reader = winmd.MetadataReader.read(writer.toBytes());
    final index = winmd.MetadataIndex.fromReader(reader);
    final declSecurity = index.declSecurity.first;
    check(declSecurity.token).equals(0x0E000000);
    check(declSecurity.action).equals(winmd.SecurityAction.demand);
    check(declSecurity.parent)
        .isA<winmd.HasDeclSecurityTypeDef>()
        .has((it) => it.value.name, 'value.name')
        .equals('Name');
    check(declSecurity.permissionSet.slice).deepEquals(permissionSet);
  });
}
