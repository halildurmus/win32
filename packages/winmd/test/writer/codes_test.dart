import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/writer.dart';

void main() {
  group('CodedIndex', () {
    group('CustomAttributeType', () {
      test('MethodDef', () {
        const codedIndex1 = CustomAttributeType.methodDef(.new(0));
        check(codedIndex1.encode()).equals(10);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = CustomAttributeType.methodDef(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = CustomAttributeType.methodDef(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('MemberRef', () {
        const codedIndex1 = CustomAttributeType.memberRef(.new(0));
        check(codedIndex1.encode()).equals(11);
        check(codedIndex1.toString()).equals('MemberRefIndex(0)');
        const codedIndex2 = CustomAttributeType.memberRef(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = CustomAttributeType.memberRef(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('HasConstant', () {
      test('Field', () {
        const codedIndex1 = HasConstant.field(.new(0));
        check(codedIndex1.encode()).equals(4);
        check(codedIndex1.toString()).equals('FieldIndex(0)');
        const codedIndex2 = HasConstant.field(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasConstant.field(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Param', () {
        const codedIndex1 = HasConstant.param(.new(0));
        check(codedIndex1.encode()).equals(5);
        check(codedIndex1.toString()).equals('ParamIndex(0)');
        const codedIndex2 = HasConstant.param(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasConstant.param(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Property', () {
        const codedIndex1 = HasConstant.property(.new(0));
        check(codedIndex1.encode()).equals(6);
        check(codedIndex1.toString()).equals('PropertyIndex(0)');
        const codedIndex2 = HasConstant.property(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasConstant.property(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('HasCustomAttribute', () {
      test('MethodDef', () {
        const codedIndex1 = HasCustomAttribute.methodDef(.new(0));
        check(codedIndex1.encode()).equals(32);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = HasCustomAttribute.methodDef(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.methodDef(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Field', () {
        const codedIndex1 = HasCustomAttribute.field(.new(0));
        check(codedIndex1.encode()).equals(33);
        check(codedIndex1.toString()).equals('FieldIndex(0)');
        const codedIndex2 = HasCustomAttribute.field(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.field(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('TypeRef', () {
        const codedIndex1 = HasCustomAttribute.typeRef(.new(0));
        check(codedIndex1.encode()).equals(34);
        check(codedIndex1.toString()).equals('TypeRefIndex(0)');
        const codedIndex2 = HasCustomAttribute.typeRef(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.typeRef(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('TypeDef', () {
        const codedIndex1 = HasCustomAttribute.typeDef(.new(0));
        check(codedIndex1.encode()).equals(35);
        check(codedIndex1.toString()).equals('TypeDefIndex(0)');
        const codedIndex2 = HasCustomAttribute.typeDef(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.typeDef(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Param', () {
        const codedIndex1 = HasCustomAttribute.param(.new(0));
        check(codedIndex1.encode()).equals(36);
        check(codedIndex1.toString()).equals('ParamIndex(0)');
        const codedIndex2 = HasCustomAttribute.param(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.param(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('InterfaceImpl', () {
        const codedIndex1 = HasCustomAttribute.interfaceImpl(.new(0));
        check(codedIndex1.encode()).equals(37);
        check(codedIndex1.toString()).equals('InterfaceImplIndex(0)');
        const codedIndex2 = HasCustomAttribute.interfaceImpl(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.interfaceImpl(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('MemberRef', () {
        const codedIndex1 = HasCustomAttribute.memberRef(.new(0));
        check(codedIndex1.encode()).equals(38);
        check(codedIndex1.toString()).equals('MemberRefIndex(0)');
        const codedIndex2 = HasCustomAttribute.memberRef(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.memberRef(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Module', () {
        const codedIndex1 = HasCustomAttribute.module(.new(0));
        check(codedIndex1.encode()).equals(39);
        check(codedIndex1.toString()).equals('ModuleIndex(0)');
        const codedIndex2 = HasCustomAttribute.module(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.module(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Property', () {
        const codedIndex1 = HasCustomAttribute.property(.new(0));
        check(codedIndex1.encode()).equals(41);
        check(codedIndex1.toString()).equals('PropertyIndex(0)');
        const codedIndex2 = HasCustomAttribute.property(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.property(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Event', () {
        const codedIndex1 = HasCustomAttribute.event(.new(0));
        check(codedIndex1.encode()).equals(42);
        check(codedIndex1.toString()).equals('EventIndex(0)');
        const codedIndex2 = HasCustomAttribute.event(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.event(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('StandAloneSig', () {
        const codedIndex1 = HasCustomAttribute.standAloneSig(.new(0));
        check(codedIndex1.encode()).equals(43);
        check(codedIndex1.toString()).equals('StandAloneSigIndex(0)');
        const codedIndex2 = HasCustomAttribute.standAloneSig(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.standAloneSig(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('ModuleRef', () {
        const codedIndex1 = HasCustomAttribute.moduleRef(.new(0));
        check(codedIndex1.encode()).equals(44);
        check(codedIndex1.toString()).equals('ModuleRefIndex(0)');
        const codedIndex2 = HasCustomAttribute.moduleRef(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.moduleRef(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('TypeSpec', () {
        const codedIndex1 = HasCustomAttribute.typeSpec(.new(0));
        check(codedIndex1.encode()).equals(45);
        check(codedIndex1.toString()).equals('TypeSpecIndex(0)');
        const codedIndex2 = HasCustomAttribute.typeSpec(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.typeSpec(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Assembly', () {
        const codedIndex1 = HasCustomAttribute.assembly(.new(0));
        check(codedIndex1.encode()).equals(46);
        check(codedIndex1.toString()).equals('AssemblyIndex(0)');
        const codedIndex2 = HasCustomAttribute.assembly(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.assembly(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('AssemblyRef', () {
        const codedIndex1 = HasCustomAttribute.assemblyRef(.new(0));
        check(codedIndex1.encode()).equals(47);
        check(codedIndex1.toString()).equals('AssemblyRefIndex(0)');
        const codedIndex2 = HasCustomAttribute.assemblyRef(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.assemblyRef(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('File', () {
        const codedIndex1 = HasCustomAttribute.file(.new(0));
        check(codedIndex1.encode()).equals(48);
        check(codedIndex1.toString()).equals('FileIndex(0)');
        const codedIndex2 = HasCustomAttribute.file(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.file(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('ExportedType', () {
        const codedIndex1 = HasCustomAttribute.exportedType(.new(0));
        check(codedIndex1.encode()).equals(49);
        check(codedIndex1.toString()).equals('ExportedTypeIndex(0)');
        const codedIndex2 = HasCustomAttribute.exportedType(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.exportedType(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('ManifestResource', () {
        const codedIndex1 = HasCustomAttribute.manifestResource(.new(0));
        check(codedIndex1.encode()).equals(50);
        check(codedIndex1.toString()).equals('ManifestResourceIndex(0)');
        const codedIndex2 = HasCustomAttribute.manifestResource(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.manifestResource(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('GenericParam', () {
        const codedIndex1 = HasCustomAttribute.genericParam(.new(0));
        check(codedIndex1.encode()).equals(51);
        check(codedIndex1.toString()).equals('GenericParamIndex(0)');
        const codedIndex2 = HasCustomAttribute.genericParam(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.genericParam(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('GenericParamConstraint', () {
        const codedIndex1 = HasCustomAttribute.genericParamConstraint(.new(0));
        check(codedIndex1.encode()).equals(52);
        check(codedIndex1.toString()).equals('GenericParamConstraintIndex(0)');
        const codedIndex2 = HasCustomAttribute.genericParamConstraint(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.genericParamConstraint(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('MethodSpec', () {
        const codedIndex1 = HasCustomAttribute.methodSpec(.new(0));
        check(codedIndex1.encode()).equals(53);
        check(codedIndex1.toString()).equals('MethodSpecIndex(0)');
        const codedIndex2 = HasCustomAttribute.methodSpec(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.methodSpec(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('HasDeclSecurity', () {
      test('TypeDef', () {
        const codedIndex1 = HasDeclSecurity.typeDef(.new(0));
        check(codedIndex1.encode()).equals(4);
        check(codedIndex1.toString()).equals('TypeDefIndex(0)');
        const codedIndex2 = HasDeclSecurity.typeDef(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasDeclSecurity.typeDef(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('MethodDef', () {
        const codedIndex1 = HasDeclSecurity.methodDef(.new(0));
        check(codedIndex1.encode()).equals(5);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = HasDeclSecurity.methodDef(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasDeclSecurity.methodDef(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Assemby', () {
        const codedIndex1 = HasDeclSecurity.assembly(.new(0));
        check(codedIndex1.encode()).equals(6);
        check(codedIndex1.toString()).equals('AssemblyIndex(0)');
        const codedIndex2 = HasDeclSecurity.assembly(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasDeclSecurity.assembly(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('HasFieldMarshal', () {
      test('Field', () {
        const codedIndex1 = HasFieldMarshal.field(.new(0));
        check(codedIndex1.encode()).equals(2);
        check(codedIndex1.toString()).equals('FieldIndex(0)');
        const codedIndex2 = HasFieldMarshal.field(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasFieldMarshal.field(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Param', () {
        const codedIndex1 = HasFieldMarshal.param(.new(0));
        check(codedIndex1.encode()).equals(3);
        check(codedIndex1.toString()).equals('ParamIndex(0)');
        const codedIndex2 = HasFieldMarshal.param(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasFieldMarshal.param(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('HasSemantics', () {
      test('Event', () {
        const codedIndex1 = HasSemantics.event(.new(0));
        check(codedIndex1.encode()).equals(2);
        check(codedIndex1.toString()).equals('EventIndex(0)');
        const codedIndex2 = HasSemantics.event(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasSemantics.event(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Property', () {
        const codedIndex1 = HasSemantics.property(.new(0));
        check(codedIndex1.encode()).equals(3);
        check(codedIndex1.toString()).equals('PropertyIndex(0)');
        const codedIndex2 = HasSemantics.property(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasSemantics.property(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('Implementation', () {
      test('File', () {
        const codedIndex1 = Implementation.file(.new(0));
        check(codedIndex1.encode()).equals(4);
        check(codedIndex1.toString()).equals('FileIndex(0)');
        const codedIndex2 = Implementation.file(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = Implementation.file(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('AssemblyRef', () {
        const codedIndex1 = Implementation.assemblyRef(.new(0));
        check(codedIndex1.encode()).equals(5);
        check(codedIndex1.toString()).equals('AssemblyRefIndex(0)');
        const codedIndex2 = Implementation.assemblyRef(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = Implementation.assemblyRef(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('ExportedType', () {
        const codedIndex1 = Implementation.exportedType(.new(0));
        check(codedIndex1.encode()).equals(6);
        check(codedIndex1.toString()).equals('ExportedTypeIndex(0)');
        const codedIndex2 = Implementation.exportedType(.new(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = Implementation.exportedType(.new(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('MemberForwarded', () {
      test('Field', () {
        const codedIndex1 = MemberForwarded.field(.new(0));
        check(codedIndex1.encode()).equals(2);
        check(codedIndex1.toString()).equals('FieldIndex(0)');
        const codedIndex2 = MemberForwarded.field(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberForwarded.field(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('MethodDef', () {
        const codedIndex1 = MemberForwarded.methodDef(.new(0));
        check(codedIndex1.encode()).equals(3);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = MemberForwarded.methodDef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberForwarded.methodDef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });

    group('MethodDefOrRef', () {
      test('MethodDef', () {
        const codedIndex1 = MethodDefOrRef.methodDef(.new(0));
        check(codedIndex1.encode()).equals(2);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = MethodDefOrRef.methodDef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MethodDefOrRef.methodDef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('MemberRef', () {
        const codedIndex1 = MethodDefOrRef.memberRef(.new(0));
        check(codedIndex1.encode()).equals(3);
        check(codedIndex1.toString()).equals('MemberRefIndex(0)');
        const codedIndex2 = MethodDefOrRef.memberRef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MethodDefOrRef.memberRef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });

    group('MemberRefParent', () {
      test('TypeDef', () {
        const codedIndex1 = MemberRefParent.typeDef(.new(0));
        check(codedIndex1.encode()).equals(8);
        check(codedIndex1.toString()).equals('TypeDefIndex(0)');
        const codedIndex2 = MemberRefParent.typeDef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberRefParent.typeDef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('TypeRef', () {
        const codedIndex1 = MemberRefParent.typeRef(.new(0));
        check(codedIndex1.encode()).equals(9);
        check(codedIndex1.toString()).equals('TypeRefIndex(0)');
        const codedIndex2 = MemberRefParent.typeRef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberRefParent.typeRef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('ModuleRef', () {
        const codedIndex1 = MemberRefParent.moduleRef(.new(0));
        check(codedIndex1.encode()).equals(10);
        check(codedIndex1.toString()).equals('ModuleRefIndex(0)');
        const codedIndex2 = MemberRefParent.moduleRef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberRefParent.moduleRef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('MethodDef', () {
        const codedIndex1 = MemberRefParent.methodDef(.new(0));
        check(codedIndex1.encode()).equals(11);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = MemberRefParent.methodDef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberRefParent.methodDef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('TypeSpec', () {
        const codedIndex1 = MemberRefParent.typeSpec(.new(0));
        check(codedIndex1.encode()).equals(12);
        check(codedIndex1.toString()).equals('TypeSpecIndex(0)');
        const codedIndex2 = MemberRefParent.typeSpec(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberRefParent.typeSpec(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });

    group('ResolutionScope', () {
      test('Module', () {
        const codedIndex1 = ResolutionScope.module(.new(0));
        check(codedIndex1.encode()).equals(4);
        check(codedIndex1.toString()).equals('ModuleIndex(0)');
        const codedIndex2 = ResolutionScope.module(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = ResolutionScope.module(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('ModuleRef', () {
        const codedIndex1 = ResolutionScope.moduleRef(.new(0));
        check(codedIndex1.encode()).equals(5);
        check(codedIndex1.toString()).equals('ModuleRefIndex(0)');
        const codedIndex2 = ResolutionScope.moduleRef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = ResolutionScope.moduleRef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('AssemblyRef', () {
        const codedIndex1 = ResolutionScope.assemblyRef(.new(0));
        check(codedIndex1.encode()).equals(6);
        check(codedIndex1.toString()).equals('AssemblyRefIndex(0)');
        const codedIndex2 = ResolutionScope.assemblyRef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = ResolutionScope.assemblyRef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('TypeRef', () {
        const codedIndex1 = ResolutionScope.typeRef(.new(0));
        check(codedIndex1.encode()).equals(7);
        check(codedIndex1.toString()).equals('TypeRefIndex(0)');
        const codedIndex2 = ResolutionScope.typeRef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = ResolutionScope.typeRef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });

    group('TypeDefOrRef', () {
      test('TypeDef', () {
        const codedIndex1 = TypeDefOrRef.typeDef(.new(0));
        check(codedIndex1.encode()).equals(4);
        check(codedIndex1.toString()).equals('TypeDefIndex(0)');
        const codedIndex2 = TypeDefOrRef.typeDef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = TypeDefOrRef.typeDef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('TypeRef', () {
        const codedIndex1 = TypeDefOrRef.typeRef(.new(0));
        check(codedIndex1.encode()).equals(5);
        check(codedIndex1.toString()).equals('TypeRefIndex(0)');
        const codedIndex2 = TypeDefOrRef.typeRef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = TypeDefOrRef.typeRef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('TypeSpec', () {
        const codedIndex1 = TypeDefOrRef.typeSpec(.new(0));
        check(codedIndex1.encode()).equals(6);
        check(codedIndex1.toString()).equals('TypeSpecIndex(0)');
        const codedIndex2 = TypeDefOrRef.typeSpec(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = TypeDefOrRef.typeSpec(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });

    group('TypeOrMethodDef', () {
      test('TypeDef', () {
        const codedIndex1 = TypeOrMethodDef.typeDef(.new(0));
        check(codedIndex1.encode()).equals(2);
        check(codedIndex1.toString()).equals('TypeDefIndex(0)');
        const codedIndex2 = TypeOrMethodDef.typeDef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = TypeOrMethodDef.typeDef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('MethodDef', () {
        const codedIndex1 = TypeOrMethodDef.methodDef(.new(0));
        check(codedIndex1.encode()).equals(3);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = TypeOrMethodDef.methodDef(.new(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = TypeOrMethodDef.methodDef(.new(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });
  });
}
