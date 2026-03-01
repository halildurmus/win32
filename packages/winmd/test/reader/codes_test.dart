import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadMultipleMetadata(
    packages: [.win32, .winrt],
    versions: const .new(
      win32: win32MetadataVersion,
      winrt: winrtMetadataVersion,
    ),
  );

  group('CodedIndex', () {
    group('CustomAttributeType', () {
      test('MethodDef', () {
        final codedIndex = CustomAttributeType.methodDef(.new(index, 0, 0));
        check(codedIndex.encode()).equals(10);
        check(codedIndex.toString()).equals(
          'MethodDef(name: MsiCloseHandle, '
          'params: [Param(sequence: 1, name: hAny)])',
        );
        final decoded = CustomAttributeType.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(10);
        check(decoded.parent).isA<MemberRefParentTypeDef>();
        check(decoded.name).equals('MsiCloseHandle');
      });

      test('MemberRef', () {
        final codedIndex = CustomAttributeType.memberRef(.new(index, 0, 0));
        check(codedIndex.encode()).equals(11);
        check(codedIndex.toString()).equals('MemberRef(name: .ctor)');
        final decoded = CustomAttributeType.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(11);
        check(decoded.parent).isA<MemberRefParentTypeRef>();
        check(decoded.name).equals('.ctor');
      });

      test('decode throws on invalid code', () {
        check(() => CustomAttributeType.decode(index, 0, 12))
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals('Unknown kind: 4');
      });
    });

    group('HasConstant', () {
      test('Field', () {
        final codedIndex = HasConstant.field(.new(index, 0, 0));
        check(codedIndex.encode()).equals(4);
        check(codedIndex.toString()).equals(
          'Field(name: MSIDBOPEN_READONLY, signature: '
          'NamedValueType(TypeName(Windows.Win32.Foundation.PWSTR)), '
          'constant: Constant(value: Int32Value(0)))',
        );
        final decoded = HasConstant.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(4);
        check(decoded.name).equals('MSIDBOPEN_READONLY');
      });

      test('Param', () {
        final codedIndex = HasConstant.param(.new(index, 0, 0));
        check(codedIndex.encode()).equals(5);
        check(codedIndex.toString()).equals('Param(sequence: 1, name: hAny)');
        final decoded = HasConstant.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(5);
        check(decoded.name).equals('hAny');
      });

      test('Property', () {
        final codedIndex = HasConstant.property(.new(index, 1, 0));
        check(codedIndex.encode()).equals(6);
        check(codedIndex.toString()).equals('Property(name: BitmapAlphaMode)');
        final decoded = HasConstant.decode(index, 1, codedIndex.encode());
        check(decoded.encode()).equals(6);
        check(decoded.name).equals('BitmapAlphaMode');
      });

      test('decode throws on invalid code', () {
        check(() => HasConstant.decode(index, 0, 7))
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals('Unknown kind: 3');
      });
    });

    group('HasCustomAttribute', () {
      test('MethodDef', () {
        final codedIndex = HasCustomAttribute.methodDef(.new(index, 0, 0));
        check(codedIndex.encode()).equals(32);
        check(codedIndex.toString()).equals(
          'MethodDef(name: MsiCloseHandle, '
          'params: [Param(sequence: 1, name: hAny)])',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(32);
        check(
          () => HasCustomAttribute(MethodDef(index, 0, 1)),
        ).returnsNormally();
      });

      test('Field', () {
        final codedIndex = HasCustomAttribute.field(Field(index, 0, 0));
        check(codedIndex.encode()).equals(33);
        check(codedIndex.toString()).equals(
          'Field(name: MSIDBOPEN_READONLY, signature: '
          'NamedValueType(TypeName(Windows.Win32.Foundation.PWSTR)), '
          'constant: Constant(value: Int32Value(0)))',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(33);
        check(() => HasCustomAttribute(Field(index, 0, 1))).returnsNormally();
      });

      test('TypeRef', () {
        final codedIndex = HasCustomAttribute.typeRef(TypeRef(index, 0, 0));
        check(codedIndex.encode()).equals(34);
        check(
          codedIndex.toString(),
        ).equals('TypeRef(Windows.Win32.Foundation.PWSTR)');
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(34);
        check(() => HasCustomAttribute(TypeRef(index, 0, 1))).returnsNormally();
      });

      test('TypeDef', () {
        final codedIndex = HasCustomAttribute.typeDef(TypeDef(index, 0, 0));
        check(codedIndex.encode()).equals(35);
        check(codedIndex.toString()).equals('TypeDef(<Module>)');
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(35);
        check(() => HasCustomAttribute(TypeDef(index, 0, 1))).returnsNormally();
      });

      test('Param', () {
        final codedIndex = HasCustomAttribute.param(Param(index, 0, 0));
        check(codedIndex.encode()).equals(36);
        check(codedIndex.toString()).equals('Param(sequence: 1, name: hAny)');
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(36);
        check(() => HasCustomAttribute(Param(index, 0, 1))).returnsNormally();
      });

      test('InterfaceImpl', () {
        final codedIndex = HasCustomAttribute.interfaceImpl(
          InterfaceImpl(index, 0, 0),
        );
        check(codedIndex.encode()).equals(37);
        check(codedIndex.toString()).equals(
          r'InterfaceImpl(class$: '
          'TypeDef(Windows.Win32.Storage.VirtualDiskService.IVdsProviderPrivate))',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(37);
        check(
          () => HasCustomAttribute(InterfaceImpl(index, 0, 1)),
        ).returnsNormally();
      });

      test('MemberRef', () {
        final codedIndex = HasCustomAttribute.memberRef(MemberRef(index, 0, 0));
        check(codedIndex.encode()).equals(38);
        check(codedIndex.toString()).equals('MemberRef(name: .ctor)');
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(38);
        check(
          () => HasCustomAttribute(MemberRef(index, 0, 1)),
        ).returnsNormally();
      });

      test('Module', () {
        final codedIndex = HasCustomAttribute.module(Module(index, 0, 0));
        check(codedIndex.encode()).equals(39);
        check(codedIndex.toString()).equals(
          'Module(name: Windows.Win32.winmd, '
          'mvid: 4a520299-e458-4675-befb-318972b60e6a)',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(39);
        check(() => HasCustomAttribute(Module(index, 0, 1))).returnsNormally();
      });

      test('Property', () {
        final codedIndex = HasCustomAttribute.property(Property(index, 1, 0));
        check(codedIndex.encode()).equals(41);
        check(codedIndex.toString()).equals('Property(name: BitmapAlphaMode)');
        final decoded = HasCustomAttribute.decode(
          index,
          1,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(41);
        check(
          () => HasCustomAttribute(Property(index, 1, 1)),
        ).returnsNormally();
      });

      test('Event', () {
        final codedIndex = HasCustomAttribute.event(Event(index, 1, 0));
        check(codedIndex.encode()).equals(42);
        check(codedIndex.toString()).equals('Event(name: PackageInstalling)');
        final decoded = HasCustomAttribute.decode(
          index,
          1,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(42);
        check(() => HasCustomAttribute(Event(index, 1, 1))).returnsNormally();
      });

      test('StandAloneSig', () {
        final codedIndex = HasCustomAttribute.standAloneSig(
          StandAloneSig(index, 0, 0),
        );
        check(codedIndex.encode()).equals(43);
        check(codedIndex.toString()).equals(
          'StandAloneSig(readerIndex: 0, index: 0, '
          'table: MetadataTable.standAloneSig, '
          'token: 0x11000000, '
          'metadataIndex: MetadataIndex(readers: 2, namespaces: 671))',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(43);
        check(
          () => HasCustomAttribute(StandAloneSig(index, 0, 1)),
        ).returnsNormally();
      });

      test('ModuleRef', () {
        final codedIndex = HasCustomAttribute.moduleRef(ModuleRef(index, 0, 0));
        check(codedIndex.encode()).equals(44);
        check(codedIndex.toString()).equals('ModuleRef(name: msi.dll)');
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(44);
        check(
          () => HasCustomAttribute(ModuleRef(index, 0, 1)),
        ).returnsNormally();
      });

      test('TypeSpec', () {
        final codedIndex = HasCustomAttribute.typeSpec(TypeSpec(index, 0, 0));
        check(codedIndex.encode()).equals(45);
        check(codedIndex.toString()).equals(
          'TypeSpec(readerIndex: 0, index: 0, '
          'table: MetadataTable.typeSpec, '
          'token: 0x1b000000, '
          'metadataIndex: MetadataIndex(readers: 2, '
          'namespaces: 671))',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(45);
        check(
          () => HasCustomAttribute(TypeSpec(index, 0, 1)),
        ).returnsNormally();
      });

      test('Assembly', () {
        final codedIndex = HasCustomAttribute(Assembly(index, 0, 0));
        check(codedIndex.encode()).equals(46);
        check(codedIndex.toString()).equals(
          'Assembly(name: Windows.Win32.winmd, version: 0.0.0.0, hashAlgId: 0)',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(46);
        check(
          () => HasCustomAttribute.assembly(Assembly(index, 0, 1)),
        ).returnsNormally();
      });

      test('AssemblyRef', () {
        final codedIndex = HasCustomAttribute.assemblyRef(
          AssemblyRef(index, 0, 0),
        );
        check(codedIndex.encode()).equals(47);
        check(
          codedIndex.toString(),
        ).equals('AssemblyRef(name: netstandard, version: 2.1.0.0)');
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(47);
        check(
          () => HasCustomAttribute(AssemblyRef(index, 0, 1)),
        ).returnsNormally();
      });

      test('File', () {
        final codedIndex = HasCustomAttribute.file(File(index, 0, 0));
        check(codedIndex.encode()).equals(48);
        check(codedIndex.toString()).equals(
          'File(readerIndex: 0, index: 0, table: MetadataTable.file, '
          'token: 0x26000000, '
          'metadataIndex: MetadataIndex(readers: 2, namespaces: 671))',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(48);
        check(() => HasCustomAttribute(File(index, 0, 1))).returnsNormally();
      });

      test('ExportedType', () {
        final codedIndex = HasCustomAttribute.exportedType(
          ExportedType(index, 0, 0),
        );
        check(codedIndex.encode()).equals(49);
        check(codedIndex.toString()).equals(
          'ExportedType(readerIndex: 0, index: 0, '
          'table: MetadataTable.exportedType, '
          'token: 0x27000000, '
          'metadataIndex: MetadataIndex(readers: 2, namespaces: 671))',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(49);
        check(
          () => HasCustomAttribute(ExportedType(index, 0, 1)),
        ).returnsNormally();
      });

      test('ManifestResource', () {
        final codedIndex = HasCustomAttribute.manifestResource(
          ManifestResource(index, 0, 0),
        );
        check(codedIndex.encode()).equals(50);
        check(codedIndex.toString()).equals(
          'ManifestResource(readerIndex: 0, index: 0, '
          'table: MetadataTable.manifestResource, '
          'token: 0x28000000, '
          'metadataIndex: MetadataIndex(readers: 2, namespaces: 671))',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(50);
        check(
          () => HasCustomAttribute(ManifestResource(index, 0, 1)),
        ).returnsNormally();
      });

      test('GenericParam', () {
        final codedIndex = HasCustomAttribute.genericParam(
          GenericParam(index, 1, 0),
        );
        check(codedIndex.encode()).equals(51);
        check(codedIndex.toString()).equals('GenericParam(name: TProgress)');
        final decoded = HasCustomAttribute.decode(
          index,
          1,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(51);
        check(
          () => HasCustomAttribute(GenericParam(index, 1, 1)),
        ).returnsNormally();
      });

      test('GenericParamConstraint', () {
        final codedIndex = HasCustomAttribute.genericParamConstraint(
          GenericParamConstraint(index, 0, 0),
        );
        check(codedIndex.encode()).equals(52);
        check(codedIndex.toString()).equals(
          'GenericParamConstraint(readerIndex: 0, index: 0, '
          'table: MetadataTable.genericParamConstraint, '
          'token: 0x2c000000, '
          'metadataIndex: MetadataIndex(readers: 2, namespaces: 671))',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(52);
        check(
          () => HasCustomAttribute(GenericParamConstraint(index, 0, 1)),
        ).returnsNormally();
      });

      test('MethodSpec', () {
        final codedIndex = HasCustomAttribute.methodSpec(
          MethodSpec(index, 0, 0),
        );
        check(codedIndex.encode()).equals(53);
        check(codedIndex.toString()).equals(
          'MethodSpec(readerIndex: 0, index: 0, '
          'table: MetadataTable.methodSpec, '
          'token: 0x2b000000, '
          'metadataIndex: MetadataIndex(readers: 2, namespaces: 671))',
        );
        final decoded = HasCustomAttribute.decode(
          index,
          0,
          codedIndex.encode(),
        );
        check(decoded.encode()).equals(53);
        check(
          () => HasCustomAttribute(MethodSpec(index, 0, 1)),
        ).returnsNormally();
      });
    });

    group('HasDeclSecurity', () {
      test('TypeDef', () {
        final codedIndex = HasDeclSecurity.typeDef(TypeDef(index, 0, 0));
        check(codedIndex.encode()).equals(4);
        check(codedIndex.toString()).equals('TypeDef(<Module>)');
        final decoded = HasDeclSecurity.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(4);
      });

      test('MethodDef', () {
        final codedIndex = HasDeclSecurity.methodDef(MethodDef(index, 0, 0));
        check(codedIndex.encode()).equals(5);
        check(codedIndex.toString()).equals(
          'MethodDef(name: MsiCloseHandle, '
          'params: [Param(sequence: 1, name: hAny)])',
        );
        final decoded = HasDeclSecurity.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(5);
      });

      test('Assemby', () {
        final codedIndex = HasDeclSecurity.assembly(Assembly(index, 0, 0));
        check(codedIndex.encode()).equals(6);
        check(codedIndex.toString()).equals(
          'Assembly(name: Windows.Win32.winmd, version: 0.0.0.0, hashAlgId: 0)',
        );
        final decoded = HasDeclSecurity.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(6);
      });

      test('decode throws on invalid code', () {
        check(() => HasDeclSecurity.decode(index, 0, 7))
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals('Unknown kind: 3');
      });
    });

    group('HasFieldMarshal', () {
      test('Field', () {
        final codedIndex = HasFieldMarshal.field(Field(index, 0, 0));
        check(codedIndex.encode()).equals(2);
        check(codedIndex.toString()).equals(
          'Field(name: MSIDBOPEN_READONLY, signature: '
          'NamedValueType(TypeName(Windows.Win32.Foundation.PWSTR)), '
          'constant: Constant(value: Int32Value(0)))',
        );
        final decoded = HasFieldMarshal.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(2);
      });

      test('Param', () {
        final codedIndex = HasFieldMarshal.param(Param(index, 0, 0));
        check(codedIndex.encode()).equals(3);
        check(codedIndex.toString()).equals('Param(sequence: 1, name: hAny)');
        final decoded = HasFieldMarshal.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(3);
      });
    });

    group('HasSemantics', () {
      test('Event', () {
        final codedIndex = HasSemantics.event(Event(index, 1, 0));
        check(codedIndex.encode()).equals(2);
        check(codedIndex.toString()).equals('Event(name: PackageInstalling)');
        final decoded = HasSemantics.decode(index, 1, codedIndex.encode());
        check(decoded.encode()).equals(2);
      });

      test('Property', () {
        final codedIndex = HasSemantics.property(Property(index, 1, 0));
        check(codedIndex.encode()).equals(3);
        check(codedIndex.toString()).equals('Property(name: BitmapAlphaMode)');
        final decoded = HasSemantics.decode(index, 1, codedIndex.encode());
        check(decoded.encode()).equals(3);
      });
    });

    group('Implementation', () {
      test('File', () {
        final codedIndex = Implementation.file(File(index, 0, 0));
        check(codedIndex.encode()).equals(4);
        check(codedIndex.toString()).equals(
          'File(readerIndex: 0, index: 0, table: MetadataTable.file, '
          'token: 0x26000000, '
          'metadataIndex: MetadataIndex(readers: 2, namespaces: 671))',
        );
        final decoded = Implementation.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(4);
      });

      test('AssemblyRef', () {
        final codedIndex = Implementation.assemblyRef(AssemblyRef(index, 0, 0));
        check(codedIndex.encode()).equals(5);
        check(
          codedIndex.toString(),
        ).equals('AssemblyRef(name: netstandard, version: 2.1.0.0)');
        final decoded = Implementation.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(5);
      });

      test('ExportedType', () {
        final codedIndex = Implementation.exportedType(
          ExportedType(index, 0, 0),
        );
        check(codedIndex.encode()).equals(6);
        check(codedIndex.toString()).equals(
          'ExportedType(readerIndex: 0, index: 0, '
          'table: MetadataTable.exportedType, '
          'token: 0x27000000, '
          'metadataIndex: MetadataIndex(readers: 2, namespaces: 671))',
        );
        final decoded = Implementation.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(6);
      });

      test('decode throws on invalid code', () {
        check(() => Implementation.decode(index, 0, 7))
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals('Unknown kind: 3');
      });
    });

    group('MemberForwarded', () {
      test('Field', () {
        final codedIndex = MemberForwarded.field(Field(index, 0, 0));
        check(codedIndex.encode()).equals(2);
        check(codedIndex.toString()).equals(
          'Field(name: MSIDBOPEN_READONLY, signature: '
          'NamedValueType(TypeName(Windows.Win32.Foundation.PWSTR)), '
          'constant: Constant(value: Int32Value(0)))',
        );
        final decoded = MemberForwarded.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(2);
        check(decoded.name).equals('MSIDBOPEN_READONLY');
      });

      test('MethodDef', () {
        final codedIndex = MemberForwarded.methodDef(MethodDef(index, 0, 0));
        check(codedIndex.encode()).equals(3);
        check(codedIndex.toString()).equals(
          'MethodDef(name: MsiCloseHandle, '
          'params: [Param(sequence: 1, name: hAny)])',
        );
        final decoded = MemberForwarded.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(3);
        check(decoded.name).equals('MsiCloseHandle');
      });
    });

    group('MemberRefParent', () {
      test('TypeDef', () {
        final codedIndex = MemberRefParent.typeDef(TypeDef(index, 0, 0));
        check(codedIndex.encode()).equals(8);
        check(codedIndex.toString()).equals('TypeDef(<Module>)');
        final decoded = MemberRefParent.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(8);
      });

      test('TypeRef', () {
        final codedIndex = MemberRefParent.typeRef(TypeRef(index, 0, 0));
        check(codedIndex.encode()).equals(9);
        check(
          codedIndex.toString(),
        ).equals('TypeRef(Windows.Win32.Foundation.PWSTR)');
        final decoded = MemberRefParent.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(9);
      });

      test('ModuleRef', () {
        final codedIndex = MemberRefParent.moduleRef(ModuleRef(index, 0, 0));
        check(codedIndex.encode()).equals(10);
        check(codedIndex.toString()).equals('ModuleRef(name: msi.dll)');
        final decoded = MemberRefParent.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(10);
      });

      test('MethodDef', () {
        final codedIndex = MemberRefParent.methodDef(MethodDef(index, 0, 0));
        check(codedIndex.encode()).equals(11);
        check(codedIndex.toString()).equals(
          'MethodDef(name: MsiCloseHandle, '
          'params: [Param(sequence: 1, name: hAny)])',
        );
        final decoded = MemberRefParent.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(11);
      });

      test('TypeSpec', () {
        final codedIndex = MemberRefParent.typeSpec(TypeSpec(index, 0, 0));
        check(codedIndex.encode()).equals(12);
        check(codedIndex.toString()).equals(
          'TypeSpec(readerIndex: 0, index: 0, table: MetadataTable.typeSpec, '
          'token: 0x1b000000, '
          'metadataIndex: MetadataIndex(readers: 2, namespaces: 671))',
        );
        final decoded = MemberRefParent.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(12);
      });

      test('decode throws on invalid code', () {
        check(() => MemberRefParent.decode(index, 0, 13))
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals('Unknown kind: 5');
      });
    });

    group('MethodDefOrRef', () {
      test('MethodDef', () {
        final codedIndex = MethodDefOrRef.methodDef(MethodDef(index, 0, 0));
        check(codedIndex.encode()).equals(2);
        check(codedIndex.toString()).equals(
          'MethodDef(name: MsiCloseHandle, '
          'params: [Param(sequence: 1, name: hAny)])',
        );
        final decoded = MethodDefOrRef.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(2);
      });

      test('MemberRef', () {
        final codedIndex = MethodDefOrRef.memberRef(MemberRef(index, 0, 0));
        check(codedIndex.encode()).equals(3);
        check(codedIndex.toString()).equals('MemberRef(name: .ctor)');
        final decoded = MethodDefOrRef.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(3);
      });
    });

    group('ResolutionScope', () {
      test('Module', () {
        final codedIndex = ResolutionScope.module(Module(index, 0, 0));
        check(codedIndex.encode()).equals(4);
        check(codedIndex.toString()).equals(
          'Module(name: Windows.Win32.winmd, '
          'mvid: 4a520299-e458-4675-befb-318972b60e6a)',
        );
        final decoded = ResolutionScope.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(4);
      });

      test('ModuleRef', () {
        final codedIndex = ResolutionScope.moduleRef(ModuleRef(index, 0, 0));
        check(codedIndex.encode()).equals(5);
        check(codedIndex.toString()).equals('ModuleRef(name: msi.dll)');
        final decoded = ResolutionScope.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(5);
      });

      test('AssemblyRef', () {
        final codedIndex = ResolutionScope.assemblyRef(
          AssemblyRef(index, 0, 0),
        );
        check(codedIndex.encode()).equals(6);
        check(
          codedIndex.toString(),
        ).equals('AssemblyRef(name: netstandard, version: 2.1.0.0)');
        final decoded = ResolutionScope.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(6);
      });

      test('TypeRef', () {
        final codedIndex = ResolutionScope.typeRef(TypeRef(index, 0, 0));
        check(codedIndex.encode()).equals(7);
        check(
          codedIndex.toString(),
        ).equals('TypeRef(Windows.Win32.Foundation.PWSTR)');
        final decoded = ResolutionScope.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(7);
      });
    });

    group('TypeDefOrRef', () {
      test('TypeDef', () {
        final codedIndex = TypeDefOrRef.typeDef(TypeDef(index, 0, 0));
        check(codedIndex.encode()).equals(4);
        check(codedIndex.toString()).equals('TypeDef(<Module>)');
        final decoded = TypeDefOrRef.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(4);
        check(decoded.namespace).isEmpty();
        check(decoded.name).equals('<Module>');
      });

      test('TypeRef', () {
        final codedIndex = TypeDefOrRef.typeRef(TypeRef(index, 0, 0));
        check(codedIndex.encode()).equals(5);
        check(
          codedIndex.toString(),
        ).equals('TypeRef(Windows.Win32.Foundation.PWSTR)');
        final decoded = TypeDefOrRef.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(5);
        check(decoded.namespace).equals('Windows.Win32.Foundation');
        check(decoded.name).equals('PWSTR');
      });

      test('TypeSpec', () {
        final codedIndex = TypeDefOrRef.typeSpec(TypeSpec(index, 0, 0));
        check(codedIndex.encode()).equals(6);
        check(codedIndex.toString()).equals(
          'TypeSpec(readerIndex: 0, index: 0, table: MetadataTable.typeSpec, '
          'token: 0x1b000000, '
          'metadataIndex: MetadataIndex(readers: 2, namespaces: 671))',
        );
        final decoded = TypeDefOrRef.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(6);
        check(() => decoded.namespace)
            .throws<UnsupportedError>()
            .has((it) => it.message, 'message')
            .equals('TypeSpec does not have a namespace.');
        check(() => decoded.name)
            .throws<UnsupportedError>()
            .has((it) => it.message, 'message')
            .equals('TypeSpec does not have a name.');
      });

      test('decode throws on invalid code', () {
        check(() => TypeDefOrRef.decode(index, 0, 7))
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals('Unknown kind: 3');
      });
    });

    group('TypeOrMethodDef', () {
      test('TypeDef', () {
        final codedIndex = TypeOrMethodDef.typeDef(TypeDef(index, 0, 0));
        check(codedIndex.encode()).equals(2);
        check(codedIndex.toString()).equals('TypeDef(<Module>)');
        final decoded = TypeOrMethodDef.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(2);
        check(decoded.name).equals('<Module>');
      });

      test('MethodDef', () {
        final codedIndex = TypeOrMethodDef.methodDef(MethodDef(index, 0, 0));
        check(codedIndex.encode()).equals(3);
        check(codedIndex.toString()).equals(
          'MethodDef(name: MsiCloseHandle, '
          'params: [Param(sequence: 1, name: hAny)])',
        );
        final decoded = TypeOrMethodDef.decode(index, 0, codedIndex.encode());
        check(decoded.encode()).equals(3);
        check(decoded.name).equals('MsiCloseHandle');
      });
    });
  });
}
