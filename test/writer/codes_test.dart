import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/writer.dart';

void main() {
  group('CodedIndex', () {
    group('CustomAttributeType', () {
      test('MethodDef', () {
        const codedIndex1 = CustomAttributeType.methodDef(MethodDefIndex(0));
        check(codedIndex1.encode()).equals(10);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = CustomAttributeType.methodDef(MethodDefIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = CustomAttributeType.methodDef(MethodDefIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('MemberRef', () {
        const codedIndex1 = CustomAttributeType.memberRef(MemberRefIndex(0));
        check(codedIndex1.encode()).equals(11);
        check(codedIndex1.toString()).equals('MemberRefIndex(0)');
        const codedIndex2 = CustomAttributeType.memberRef(MemberRefIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = CustomAttributeType.memberRef(MemberRefIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('HasConstant', () {
      test('Field', () {
        const codedIndex1 = HasConstant.field(FieldIndex(0));
        check(codedIndex1.encode()).equals(4);
        check(codedIndex1.toString()).equals('FieldIndex(0)');
        const codedIndex2 = HasConstant.field(FieldIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasConstant.field(FieldIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Param', () {
        const codedIndex1 = HasConstant.param(ParamIndex(0));
        check(codedIndex1.encode()).equals(5);
        check(codedIndex1.toString()).equals('ParamIndex(0)');
        const codedIndex2 = HasConstant.param(ParamIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasConstant.param(ParamIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Property', () {
        const codedIndex1 = HasConstant.property(PropertyIndex(0));
        check(codedIndex1.encode()).equals(6);
        check(codedIndex1.toString()).equals('PropertyIndex(0)');
        const codedIndex2 = HasConstant.property(PropertyIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasConstant.property(PropertyIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('HasCustomAttribute', () {
      test('MethodDef', () {
        const codedIndex1 = HasCustomAttribute.methodDef(MethodDefIndex(0));
        check(codedIndex1.encode()).equals(32);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = HasCustomAttribute.methodDef(MethodDefIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.methodDef(MethodDefIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Field', () {
        const codedIndex1 = HasCustomAttribute.field(FieldIndex(0));
        check(codedIndex1.encode()).equals(33);
        check(codedIndex1.toString()).equals('FieldIndex(0)');
        const codedIndex2 = HasCustomAttribute.field(FieldIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.field(FieldIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('TypeRef', () {
        const codedIndex1 = HasCustomAttribute.typeRef(TypeRefIndex(0));
        check(codedIndex1.encode()).equals(34);
        check(codedIndex1.toString()).equals('TypeRefIndex(0)');
        const codedIndex2 = HasCustomAttribute.typeRef(TypeRefIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.typeRef(TypeRefIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('TypeDef', () {
        const codedIndex1 = HasCustomAttribute.typeDef(TypeDefIndex(0));
        check(codedIndex1.encode()).equals(35);
        check(codedIndex1.toString()).equals('TypeDefIndex(0)');
        const codedIndex2 = HasCustomAttribute.typeDef(TypeDefIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.typeDef(TypeDefIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Param', () {
        const codedIndex1 = HasCustomAttribute.param(ParamIndex(0));
        check(codedIndex1.encode()).equals(36);
        check(codedIndex1.toString()).equals('ParamIndex(0)');
        const codedIndex2 = HasCustomAttribute.param(ParamIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.param(ParamIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('InterfaceImpl', () {
        const codedIndex1 = HasCustomAttribute.interfaceImpl(
          InterfaceImplIndex(0),
        );
        check(codedIndex1.encode()).equals(37);
        check(codedIndex1.toString()).equals('InterfaceImplIndex(0)');
        const codedIndex2 = HasCustomAttribute.interfaceImpl(
          InterfaceImplIndex(0),
        );
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.interfaceImpl(
          InterfaceImplIndex(1),
        );
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('MemberRef', () {
        const codedIndex1 = HasCustomAttribute.memberRef(MemberRefIndex(0));
        check(codedIndex1.encode()).equals(38);
        check(codedIndex1.toString()).equals('MemberRefIndex(0)');
        const codedIndex2 = HasCustomAttribute.memberRef(MemberRefIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.memberRef(MemberRefIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Module', () {
        const codedIndex1 = HasCustomAttribute.module(ModuleIndex(0));
        check(codedIndex1.encode()).equals(39);
        check(codedIndex1.toString()).equals('ModuleIndex(0)');
        const codedIndex2 = HasCustomAttribute.module(ModuleIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.module(ModuleIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Property', () {
        const codedIndex1 = HasCustomAttribute.property(PropertyIndex(0));
        check(codedIndex1.encode()).equals(41);
        check(codedIndex1.toString()).equals('PropertyIndex(0)');
        const codedIndex2 = HasCustomAttribute.property(PropertyIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.property(PropertyIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Event', () {
        const codedIndex1 = HasCustomAttribute.event(EventIndex(0));
        check(codedIndex1.encode()).equals(42);
        check(codedIndex1.toString()).equals('EventIndex(0)');
        const codedIndex2 = HasCustomAttribute.event(EventIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.event(EventIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('StandAloneSig', () {
        const codedIndex1 = HasCustomAttribute.standAloneSig(
          StandAloneSigIndex(0),
        );
        check(codedIndex1.encode()).equals(43);
        check(codedIndex1.toString()).equals('StandAloneSigIndex(0)');
        const codedIndex2 = HasCustomAttribute.standAloneSig(
          StandAloneSigIndex(0),
        );
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.standAloneSig(
          StandAloneSigIndex(1),
        );
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('ModuleRef', () {
        const codedIndex1 = HasCustomAttribute.moduleRef(ModuleRefIndex(0));
        check(codedIndex1.encode()).equals(44);
        check(codedIndex1.toString()).equals('ModuleRefIndex(0)');
        const codedIndex2 = HasCustomAttribute.moduleRef(ModuleRefIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.moduleRef(ModuleRefIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('TypeSpec', () {
        const codedIndex1 = HasCustomAttribute.typeSpec(TypeSpecIndex(0));
        check(codedIndex1.encode()).equals(45);
        check(codedIndex1.toString()).equals('TypeSpecIndex(0)');
        const codedIndex2 = HasCustomAttribute.typeSpec(TypeSpecIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.typeSpec(TypeSpecIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Assembly', () {
        const codedIndex1 = HasCustomAttribute.assembly(AssemblyIndex(0));
        check(codedIndex1.encode()).equals(46);
        check(codedIndex1.toString()).equals('AssemblyIndex(0)');
        const codedIndex2 = HasCustomAttribute.assembly(AssemblyIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.assembly(AssemblyIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('AssemblyRef', () {
        const codedIndex1 = HasCustomAttribute.assemblyRef(AssemblyRefIndex(0));
        check(codedIndex1.encode()).equals(47);
        check(codedIndex1.toString()).equals('AssemblyRefIndex(0)');
        const codedIndex2 = HasCustomAttribute.assemblyRef(AssemblyRefIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.assemblyRef(AssemblyRefIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('File', () {
        const codedIndex1 = HasCustomAttribute.file(FileIndex(0));
        check(codedIndex1.encode()).equals(48);
        check(codedIndex1.toString()).equals('FileIndex(0)');
        const codedIndex2 = HasCustomAttribute.file(FileIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.file(FileIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('ExportedType', () {
        const codedIndex1 = HasCustomAttribute.exportedType(
          ExportedTypeIndex(0),
        );
        check(codedIndex1.encode()).equals(49);
        check(codedIndex1.toString()).equals('ExportedTypeIndex(0)');
        const codedIndex2 = HasCustomAttribute.exportedType(
          ExportedTypeIndex(0),
        );
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.exportedType(
          ExportedTypeIndex(1),
        );
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('ManifestResource', () {
        const codedIndex1 = HasCustomAttribute.manifestResource(
          ManifestResourceIndex(0),
        );
        check(codedIndex1.encode()).equals(50);
        check(codedIndex1.toString()).equals('ManifestResourceIndex(0)');
        const codedIndex2 = HasCustomAttribute.manifestResource(
          ManifestResourceIndex(0),
        );
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.manifestResource(
          ManifestResourceIndex(1),
        );
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('GenericParam', () {
        const codedIndex1 = HasCustomAttribute.genericParam(
          GenericParamIndex(0),
        );
        check(codedIndex1.encode()).equals(51);
        check(codedIndex1.toString()).equals('GenericParamIndex(0)');
        const codedIndex2 = HasCustomAttribute.genericParam(
          GenericParamIndex(0),
        );
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.genericParam(
          GenericParamIndex(1),
        );
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('GenericParamConstraint', () {
        const codedIndex1 = HasCustomAttribute.genericParamConstraint(
          GenericParamConstraintIndex(0),
        );
        check(codedIndex1.encode()).equals(52);
        check(codedIndex1.toString()).equals('GenericParamConstraintIndex(0)');
        const codedIndex2 = HasCustomAttribute.genericParamConstraint(
          GenericParamConstraintIndex(0),
        );
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.genericParamConstraint(
          GenericParamConstraintIndex(1),
        );
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('MethodSpec', () {
        const codedIndex1 = HasCustomAttribute.methodSpec(MethodSpecIndex(0));
        check(codedIndex1.encode()).equals(53);
        check(codedIndex1.toString()).equals('MethodSpecIndex(0)');
        const codedIndex2 = HasCustomAttribute.methodSpec(MethodSpecIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasCustomAttribute.methodSpec(MethodSpecIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('HasDeclSecurity', () {
      test('TypeDef', () {
        const codedIndex1 = HasDeclSecurity.typeDef(TypeDefIndex(0));
        check(codedIndex1.encode()).equals(4);
        check(codedIndex1.toString()).equals('TypeDefIndex(0)');
        const codedIndex2 = HasDeclSecurity.typeDef(TypeDefIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasDeclSecurity.typeDef(TypeDefIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('MethodDef', () {
        const codedIndex1 = HasDeclSecurity.methodDef(MethodDefIndex(0));
        check(codedIndex1.encode()).equals(5);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = HasDeclSecurity.methodDef(MethodDefIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasDeclSecurity.methodDef(MethodDefIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Assemby', () {
        const codedIndex1 = HasDeclSecurity.assembly(AssemblyIndex(0));
        check(codedIndex1.encode()).equals(6);
        check(codedIndex1.toString()).equals('AssemblyIndex(0)');
        const codedIndex2 = HasDeclSecurity.assembly(AssemblyIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasDeclSecurity.assembly(AssemblyIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('HasFieldMarshal', () {
      test('Field', () {
        const codedIndex1 = HasFieldMarshal.field(FieldIndex(0));
        check(codedIndex1.encode()).equals(2);
        check(codedIndex1.toString()).equals('FieldIndex(0)');
        const codedIndex2 = HasFieldMarshal.field(FieldIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasFieldMarshal.field(FieldIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Param', () {
        const codedIndex1 = HasFieldMarshal.param(ParamIndex(0));
        check(codedIndex1.encode()).equals(3);
        check(codedIndex1.toString()).equals('ParamIndex(0)');
        const codedIndex2 = HasFieldMarshal.param(ParamIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasFieldMarshal.param(ParamIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('HasSemantics', () {
      test('Event', () {
        const codedIndex1 = HasSemantics.event(EventIndex(0));
        check(codedIndex1.encode()).equals(2);
        check(codedIndex1.toString()).equals('EventIndex(0)');
        const codedIndex2 = HasSemantics.event(EventIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasSemantics.event(EventIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('Property', () {
        const codedIndex1 = HasSemantics.property(PropertyIndex(0));
        check(codedIndex1.encode()).equals(3);
        check(codedIndex1.toString()).equals('PropertyIndex(0)');
        const codedIndex2 = HasSemantics.property(PropertyIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = HasSemantics.property(PropertyIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('Implementation', () {
      test('File', () {
        const codedIndex1 = Implementation.file(FileIndex(0));
        check(codedIndex1.encode()).equals(4);
        check(codedIndex1.toString()).equals('FileIndex(0)');
        const codedIndex2 = Implementation.file(FileIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = Implementation.file(FileIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('AssemblyRef', () {
        const codedIndex1 = Implementation.assemblyRef(AssemblyRefIndex(0));
        check(codedIndex1.encode()).equals(5);
        check(codedIndex1.toString()).equals('AssemblyRefIndex(0)');
        const codedIndex2 = Implementation.assemblyRef(AssemblyRefIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = Implementation.assemblyRef(AssemblyRefIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });

      test('ExportedType', () {
        const codedIndex1 = Implementation.exportedType(ExportedTypeIndex(0));
        check(codedIndex1.encode()).equals(6);
        check(codedIndex1.toString()).equals('ExportedTypeIndex(0)');
        const codedIndex2 = Implementation.exportedType(ExportedTypeIndex(0));
        check(codedIndex2).equals(codedIndex1);
        const codedIndex3 = Implementation.exportedType(ExportedTypeIndex(1));
        check(codedIndex3).not((it) => it.equals(codedIndex1));
      });
    });

    group('MemberForwarded', () {
      test('Field', () {
        const codedIndex1 = MemberForwarded.field(FieldIndex(0));
        check(codedIndex1.encode()).equals(2);
        check(codedIndex1.toString()).equals('FieldIndex(0)');
        const codedIndex2 = MemberForwarded.field(FieldIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberForwarded.field(FieldIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('MethodDef', () {
        const codedIndex1 = MemberForwarded.methodDef(MethodDefIndex(0));
        check(codedIndex1.encode()).equals(3);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = MemberForwarded.methodDef(MethodDefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberForwarded.methodDef(MethodDefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });

    group('MethodDefOrRef', () {
      test('MethodDef', () {
        const codedIndex1 = MethodDefOrRef.methodDef(MethodDefIndex(0));
        check(codedIndex1.encode()).equals(2);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = MethodDefOrRef.methodDef(MethodDefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MethodDefOrRef.methodDef(MethodDefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('MemberRef', () {
        const codedIndex1 = MethodDefOrRef.memberRef(MemberRefIndex(0));
        check(codedIndex1.encode()).equals(3);
        check(codedIndex1.toString()).equals('MemberRefIndex(0)');
        const codedIndex2 = MethodDefOrRef.memberRef(MemberRefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MethodDefOrRef.memberRef(MemberRefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });

    group('MemberRefParent', () {
      test('TypeDef', () {
        const codedIndex1 = MemberRefParent.typeDef(TypeDefIndex(0));
        check(codedIndex1.encode()).equals(8);
        check(codedIndex1.toString()).equals('TypeDefIndex(0)');
        const codedIndex2 = MemberRefParent.typeDef(TypeDefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberRefParent.typeDef(TypeDefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('TypeRef', () {
        const codedIndex1 = MemberRefParent.typeRef(TypeRefIndex(0));
        check(codedIndex1.encode()).equals(9);
        check(codedIndex1.toString()).equals('TypeRefIndex(0)');
        const codedIndex2 = MemberRefParent.typeRef(TypeRefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberRefParent.typeRef(TypeRefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('ModuleRef', () {
        const codedIndex1 = MemberRefParent.moduleRef(ModuleRefIndex(0));
        check(codedIndex1.encode()).equals(10);
        check(codedIndex1.toString()).equals('ModuleRefIndex(0)');
        const codedIndex2 = MemberRefParent.moduleRef(ModuleRefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberRefParent.moduleRef(ModuleRefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('MethodDef', () {
        const codedIndex1 = MemberRefParent.methodDef(MethodDefIndex(0));
        check(codedIndex1.encode()).equals(11);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = MemberRefParent.methodDef(MethodDefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberRefParent.methodDef(MethodDefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('TypeSpec', () {
        const codedIndex1 = MemberRefParent.typeSpec(TypeSpecIndex(0));
        check(codedIndex1.encode()).equals(12);
        check(codedIndex1.toString()).equals('TypeSpecIndex(0)');
        const codedIndex2 = MemberRefParent.typeSpec(TypeSpecIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = MemberRefParent.typeSpec(TypeSpecIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });

    group('ResolutionScope', () {
      test('Module', () {
        const codedIndex1 = ResolutionScope.module(ModuleIndex(0));
        check(codedIndex1.encode()).equals(4);
        check(codedIndex1.toString()).equals('ModuleIndex(0)');
        const codedIndex2 = ResolutionScope.module(ModuleIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = ResolutionScope.module(ModuleIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('ModuleRef', () {
        const codedIndex1 = ResolutionScope.moduleRef(ModuleRefIndex(0));
        check(codedIndex1.encode()).equals(5);
        check(codedIndex1.toString()).equals('ModuleRefIndex(0)');
        const codedIndex2 = ResolutionScope.moduleRef(ModuleRefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = ResolutionScope.moduleRef(ModuleRefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('AssemblyRef', () {
        const codedIndex1 = ResolutionScope.assemblyRef(AssemblyRefIndex(0));
        check(codedIndex1.encode()).equals(6);
        check(codedIndex1.toString()).equals('AssemblyRefIndex(0)');
        const codedIndex2 = ResolutionScope.assemblyRef(AssemblyRefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = ResolutionScope.assemblyRef(AssemblyRefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('TypeRef', () {
        const codedIndex1 = ResolutionScope.typeRef(TypeRefIndex(0));
        check(codedIndex1.encode()).equals(7);
        check(codedIndex1.toString()).equals('TypeRefIndex(0)');
        const codedIndex2 = ResolutionScope.typeRef(TypeRefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = ResolutionScope.typeRef(TypeRefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });

    group('TypeDefOrRef', () {
      test('TypeDef', () {
        const codedIndex1 = TypeDefOrRef.typeDef(TypeDefIndex(0));
        check(codedIndex1.encode()).equals(4);
        check(codedIndex1.toString()).equals('TypeDefIndex(0)');
        const codedIndex2 = TypeDefOrRef.typeDef(TypeDefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = TypeDefOrRef.typeDef(TypeDefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('TypeRef', () {
        const codedIndex1 = TypeDefOrRef.typeRef(TypeRefIndex(0));
        check(codedIndex1.encode()).equals(5);
        check(codedIndex1.toString()).equals('TypeRefIndex(0)');
        const codedIndex2 = TypeDefOrRef.typeRef(TypeRefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = TypeDefOrRef.typeRef(TypeRefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('TypeSpec', () {
        const codedIndex1 = TypeDefOrRef.typeSpec(TypeSpecIndex(0));
        check(codedIndex1.encode()).equals(6);
        check(codedIndex1.toString()).equals('TypeSpecIndex(0)');
        const codedIndex2 = TypeDefOrRef.typeSpec(TypeSpecIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = TypeDefOrRef.typeSpec(TypeSpecIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });

    group('TypeOrMethodDef', () {
      test('TypeDef', () {
        const codedIndex1 = TypeOrMethodDef.typeDef(TypeDefIndex(0));
        check(codedIndex1.encode()).equals(2);
        check(codedIndex1.toString()).equals('TypeDefIndex(0)');
        const codedIndex2 = TypeOrMethodDef.typeDef(TypeDefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = TypeOrMethodDef.typeDef(TypeDefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });

      test('MethodDef', () {
        const codedIndex1 = TypeOrMethodDef.methodDef(MethodDefIndex(0));
        check(codedIndex1.encode()).equals(3);
        check(codedIndex1.toString()).equals('MethodDefIndex(0)');
        const codedIndex2 = TypeOrMethodDef.methodDef(MethodDefIndex(0));
        check(codedIndex1).equals(codedIndex2);
        const codedIndex3 = TypeOrMethodDef.methodDef(MethodDefIndex(1));
        check(codedIndex1).not((it) => it.equals(codedIndex3));
      });
    });
  });
}
