import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../versions.dart';

void main() async {
  final metadataLoader = WindowsMetadataLoader();
  final win32Index = await metadataLoader.loadWin32Metadata(
    version: win32MetadataVersion,
  );
  final winrtIndex = await metadataLoader.loadWinrtMetadata(
    version: winrtMetadataVersion,
  );

  group('MetadataIndex', () {
    test('readers', () {
      check(win32Index.readers.length).equals(1);
      final reader = win32Index.readers[0];
      check(reader.moduleName).equals('Windows.Win32.winmd');
      check(
        reader.moduleMvid.toString(),
      ).equals('4a520299-e458-4675-befb-318972b60e6a');
    });

    test('allTypes', () {
      final allTypes = win32Index.allTypes.toList();
      check(allTypes.length).equals(34396);
      check(
        allTypes[0].namespace,
      ).equals('Windows.Win32.System.PasswordManagement');
      check(allTypes[0].name).equals('ENCRYPTED_LM_OWF_PASSWORD');
      check(allTypes.last.namespace).equals('Windows.Win32.UI.TabletPC');
      check(allTypes.last.name).equals('IInkRecognizer2');
    });

    test('namespaceTypeEntries', () {
      final namespaceTypeEntries = win32Index.namespaceTypeEntries.toList();
      check(namespaceTypeEntries.length).equals(34396);
      check(
        namespaceTypeEntries[0].$1,
      ).equals('Windows.Win32.System.PasswordManagement');
      check(namespaceTypeEntries[0].$2).equals('ENCRYPTED_LM_OWF_PASSWORD');
      check(
        namespaceTypeEntries[0].$3.name,
      ).equals('ENCRYPTED_LM_OWF_PASSWORD');
      check(namespaceTypeEntries.last.$1).equals('Windows.Win32.UI.TabletPC');
      check(namespaceTypeEntries.last.$2).equals('IInkRecognizer2');
      check(namespaceTypeEntries.last.$3.name).equals('IInkRecognizer2');
    });

    group('nestedTypes', () {
      test('returns empty iterable for non-nested types', () {
        final typeDef = win32Index.findSingleType(
          'Windows.Win32.System.Com',
          'IUnknown',
        );
        final nestedTypes = win32Index.nestedTypes(typeDef).toList();
        check(nestedTypes).isEmpty();
      });

      test('returns correct nested types', () {
        final typeDef = win32Index.findSingleType(
          'Windows.Win32.System.Variant',
          'VARIANT',
        );
        final nestedTypes = win32Index.nestedTypes(typeDef).toList();
        check(nestedTypes.length).equals(1);
        check(nestedTypes[0].namespace).isEmpty();
        check(nestedTypes[0].name).equals('_Anonymous_e__Union');
      });
    });

    group('findTypes', () {
      test('returns empty iterable for non-existing type', () {
        final types = win32Index.findTypes(
          'Windows.Win32.System.Com',
          'NonExistingType',
        );
        check(types).isEmpty();
      });

      test('returns correct types', () {
        final types = win32Index
            .findTypes('Windows.Win32.System.Kernel', 'SLIST_HEADER')
            .toList();
        check(types.length).equals(3);

        check(types[0].namespace).equals('Windows.Win32.System.Kernel');
        check(types[0].name).equals('SLIST_HEADER');
        check(
          types[0]
              .findAttribute('SupportedArchitectureAttribute')
              .parameters[0]
              .value,
        ).equals(const Int32Value(4)); // Architecture.Arm64

        check(types[1].namespace).equals('Windows.Win32.System.Kernel');
        check(types[1].name).equals('SLIST_HEADER');
        check(
          types[1]
              .findAttribute('SupportedArchitectureAttribute')
              .parameters[0]
              .value,
        ).equals(const Int32Value(2)); // Architecture.X64

        check(types[2].namespace).equals('Windows.Win32.System.Kernel');
        check(types[2].name).equals('SLIST_HEADER');
        check(
          types[2]
              .findAttribute('SupportedArchitectureAttribute')
              .parameters[0]
              .value,
        ).equals(const Int32Value(1)); // Architecture.X86
      });
    });

    group('findSingleType', () {
      test('throws for non-existing type', () {
        check(
              () => win32Index.findSingleType(
                'Windows.Win32.System.Com',
                'NonExistingType',
              ),
            )
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals('Type not found: Windows.Win32.System.Com.NonExistingType');
      });

      test('throws for non-unique type', () {
        check(
              () => win32Index.findSingleType(
                'Windows.Win32.System.Kernel',
                'SLIST_HEADER',
              ),
            )
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals(
              'More than one type found: '
              'Windows.Win32.System.Kernel.SLIST_HEADER',
            );
      });

      test('returns correct type', () {
        final type = win32Index.findSingleType(
          'Windows.Win32.System.Com',
          'IUnknown',
        );
        check(type.namespace).equals('Windows.Win32.System.Com');
        check(type.name).equals('IUnknown');
      });
    });

    group('tryFindSingleType', () {
      test('returns null for non-existing type', () {
        final type = win32Index.tryFindSingleType(
          'Windows.Win32.System.Com',
          'NonExistingType',
        );
        check(type).isNull();
      });

      test('returns correct type', () {
        final type = win32Index.tryFindSingleType(
          'Windows.Win32.System.Com',
          'IUnknown',
        );
        check(type).isNotNull();
        check(type!.namespace).equals('Windows.Win32.System.Com');
        check(type.name).equals('IUnknown');
      });
    });

    test('assemblyRefs', () {
      final assemblyRefs = win32Index.assemblyRefs.toList();
      check(assemblyRefs.length).equals(5);
      check(assemblyRefs[0].name).equals('netstandard');
      check(assemblyRefs[0].version).equals('2.1.0.0');
      check(
        assemblyRefs.last.name,
      ).equals('Windows.Foundation.UniversalApiContract');
      check(assemblyRefs.last.version).equals('15.0.0.0');
    });

    test('classLayouts', () {
      final classLayouts = win32Index.classLayouts.toList();
      check(classLayouts.length).equals(1231);
      check(classLayouts[0].packingSize).equals(4);
      check(classLayouts.last.packingSize).equals(1);
    });

    test('constants', () {
      final constants = win32Index.constants.toList();
      check(constants.length).equals(151696);
      check(constants[0].value).isNotNull().equals(const Int32Value(0));
      check(constants.last.value).isNotNull().equals(const Int32Value(1));
    });

    test('customAttributes', () {
      final customAttributes = win32Index.customAttributes.toList();
      check(customAttributes.length).equals(150223);
      check(customAttributes[0].name).equals('SupportedOSPlatformAttribute');
      check(customAttributes.last.name).equals('FlexibleArrayAttribute');
    });

    test('fields', () {
      final fields = win32Index.fields.toList();
      check(fields.length).equals(239888);
      check(fields[0].name).equals('MSIDBOPEN_READONLY');
      check(fields.last.name).equals('FallbackIndexMax');
    });

    test('fieldLayouts', () {
      final fieldLayouts = win32Index.fieldLayouts.toList();
      check(fieldLayouts.length).equals(4382);
      check(fieldLayouts[0].field.name).equals('Anonymous');
      check(fieldLayouts[0].offset).equals(0);
      check(fieldLayouts.last.field.name).equals('IfLuid');
      check(fieldLayouts.last.offset).equals(0);
    });

    test('genericParams', () {
      final genericParams = winrtIndex.genericParams.toList();
      check(genericParams.length).equals(33);
      check(genericParams[0].name).equals('K');
      check(genericParams.last.name).equals('TProgress');
    });

    test('genericParamConstraints', () {
      check(winrtIndex.genericParamConstraints).isEmpty();
    });

    test('implMaps', () {
      final implMaps = win32Index.implMaps.toList();
      check(implMaps.length).equals(18128);
      check(implMaps[0].importName).equals('MsiCloseHandle');
      check(implMaps.last.importName).equals('ReadThreadProfilingData');
    });

    test('interfaceImpls', () {
      final interfaceImpls = win32Index.interfaceImpls.toList();
      check(interfaceImpls.length).equals(7812);
      check(interfaceImpls[0].class$.name).equals('IVdsProviderPrivate');
      check(interfaceImpls.last.class$.name).equals('IMetaDataWinMDImport');
    });

    test('memberRefs', () {
      final memberRefs = win32Index.memberRefs.toList();
      check(memberRefs.length).equals(41);
      check(memberRefs[0].name).equals('.ctor');
      check(memberRefs.last.name).equals('.ctor');
    });

    test('methodDefs', () {
      final methodDefs = win32Index.methodDefs.toList();
      check(methodDefs.length).equals(69936);
      check(methodDefs[0].name).equals('MsiCloseHandle');
      check(methodDefs.last.name).equals('Invoke');
    });

    test('modules', () {
      final modules = win32Index.modules.toList();
      check(modules.length).equals(1);
      check(modules[0].name).equals('Windows.Win32.winmd');
      check(
        modules[0].mvid.toString(),
      ).equals('4a520299-e458-4675-befb-318972b60e6a');
    });

    test('moduleRefs', () {
      final moduleRefs = win32Index.moduleRefs.toList();
      check(moduleRefs.length).equals(370);
      check(moduleRefs[0].name).equals('msi.dll');
      check(moduleRefs.last.name).equals('XmlLite.dll');
    });

    test('nestedClasses', () {
      final nestedClasses = win32Index.nestedClasses.toList();
      check(nestedClasses.length).equals(2075);
      check(nestedClasses[0].inner.name).equals('_Anonymous_e__Struct');
      check(nestedClasses[0].outer.name).equals('SLIST_HEADER');
      check(nestedClasses.last.inner.name).equals('_Anonymous_e__Union');
      check(nestedClasses.last.outer.name).equals('NPI_MODULEID');
    });

    test('params', () {
      final params = win32Index.params.toList();
      check(params.length).equals(216953);
      check(params[0].name).equals('hAny');
      check(params.last.name).equals('dwNumberOfEntries');
    });

    test('typeDefs', () {
      final typeDefs = win32Index.typeDefs.toList();
      check(typeDefs.length).equals(36472);
      check(typeDefs[0].name).equals('<Module>');
      check(typeDefs.last.name).equals('FALLBACK_INDEX');
    });

    test('typeRefs', () {
      final typeRefs = win32Index.typeRefs.toList();
      check(typeRefs.length).equals(16166);
      check(typeRefs[0].name).equals('PWSTR');
      check(typeRefs.last.name).equals('FALLBACK_INDEX');
    });

    test('typeSpecs', () {
      final typeSpecs = winrtIndex.typeSpecs.toList();
      check(typeSpecs.length).equals(254);
      check(typeSpecs[0].type()).equals(
        const NamedType(
          TypeName(
            'Windows.Foundation.Collections',
            'IMapView`2',
            generics: [StringType(), ObjectType()],
          ),
        ),
      );
      check(typeSpecs.last.type()).equals(
        const NamedType(
          TypeName(
            'Windows.Foundation',
            'IAsyncOperation`1',
            generics: [
              NamedType(
                TypeName(
                  'Windows.Security.Authentication.OnlineId',
                  'UserIdentity',
                ),
              ),
            ],
          ),
        ),
      );
    });
  });
}
