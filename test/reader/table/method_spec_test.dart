import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart'
    show MetadataIndex, MetadataReader, MethodSignature;
import 'package:winmd/writer.dart';

void main() {
  group('MethodSpec', () {
    test('IMap<K,V>.Insert(K key, V value)', () {
      final writer = MetadataWriter(name: 'MyMetadata');
      final typeDef = writer.writeTypeDef(
        namespace: 'Namespace',
        name: 'IMap`2',
        flags:
            TypeAttributes.interface |
            TypeAttributes.abstract |
            TypeAttributes.windowsRuntime,
      );
      writer
        ..writeGenericParam(
          number: 0,
          owner: TypeOrMethodDef.typeDef(typeDef),
          name: 'K',
        )
        ..writeGenericParam(
          number: 1,
          owner: TypeOrMethodDef.typeDef(typeDef),
          name: 'V',
        );
      final method = writer.writeMethodDef(
        name: 'Insert',
        flags:
            MethodAttributes.public |
            MethodAttributes.virtual |
            MethodAttributes.hideBySig |
            MethodAttributes.newSlot |
            MethodAttributes.abstract,
        implFlags: MethodImplAttributes.runtime,
        signature: const MethodSignature(
          returnType: BoolType(),
          types: [GenericParameterType(0), GenericParameterType(1)],
        ),
      );
      writer
        ..writeParam(sequence: 1, name: 'key', flags: ParamAttributes.in$)
        ..writeParam(sequence: 2, name: 'value', flags: ParamAttributes.in$)
        ..writeMethodSpec(
          method: MethodDefOrRef.methodDef(method),
          generics: [const StringType(), const Int32Type()],
        );
      final reader = MetadataReader.read(writer.toBytes());
      final index = MetadataIndex.fromReader(reader);
      final methodSpec = index.methodSpec.first;
      check(methodSpec.method.name).equals('Insert');
      check(
        methodSpec.instantiation,
      ).deepEquals([const StringType(), const Int32Type()]);
    });
  });
}
