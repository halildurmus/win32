import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;
import 'package:winmd/writer.dart';

void main() {
  group('GenericParamConstraint', () {
    test('IIterable<E extends Comparable>', () {
      final writer = MetadataWriter(name: 'MyMetadata');
      final typeDef1 = writer.writeTypeDef(
        namespace: 'Namespace',
        name: 'Comparable',
        flags:
            TypeAttributes.interface |
            TypeAttributes.abstract |
            TypeAttributes.windowsRuntime,
      );
      final typeDef2 = writer.writeTypeDef(
        namespace: 'Namespace',
        name: 'IIterable`1',
        flags:
            TypeAttributes.interface |
            TypeAttributes.abstract |
            TypeAttributes.windowsRuntime,
      );
      writer.writeGenericParam(
        number: 0,
        owner: TypeOrMethodDef.typeDef(typeDef2),
        name: 'E',
        constraint: TypeDefOrRef.typeDef(typeDef1),
      );
      final reader = winmd.MetadataReader.read(writer.toBytes());
      final index = winmd.MetadataIndex.fromReader(reader);
      final genericParamConstraint = index.genericParamConstraint.first;
      check(genericParamConstraint.owner.sequence).equals(0);
      check(genericParamConstraint.owner.name).equals('E');
      check(genericParamConstraint.constraint)
          .isA<winmd.TypeDefOrRefTypeDef>()
          .has((it) => it.name, 'name')
          .equals('Comparable');
    });
  });
}
