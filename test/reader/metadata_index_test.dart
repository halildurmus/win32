import 'dart:io';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../versions.dart';

void main() async {
  late Directory tempDir;
  late LocalStorageManager localStorageManager;
  late WindowsMetadataLoader metadataLoader;
  late MetadataIndex win32Index;
  late MetadataIndex winrtIndex;

  setUpAll(() async {
    tempDir = Directory.systemTemp.createTempSync('winmd_metadata_index_test');
    localStorageManager = LocalStorageManager(storagePath: tempDir.path);
    metadataLoader = WindowsMetadataLoader(
      localStorageManager: localStorageManager,
    );

    win32Index = await metadataLoader.loadWin32Metadata(
      version: win32MetadataVersion,
    );
    winrtIndex = await metadataLoader.loadWinrtMetadata(
      version: winrtMetadataVersion,
    );
  });

  tearDownAll(() {
    localStorageManager.clear();
    tempDir.deleteSync();
  });

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
              .fixedArgs[0]
              .value,
        ).equals(const Int32Value(4)); // Architecture.Arm64

        check(types[1].namespace).equals('Windows.Win32.System.Kernel');
        check(types[1].name).equals('SLIST_HEADER');
        check(
          types[1]
              .findAttribute('SupportedArchitectureAttribute')
              .fixedArgs[0]
              .value,
        ).equals(const Int32Value(2)); // Architecture.X64

        check(types[2].namespace).equals('Windows.Win32.System.Kernel');
        check(types[2].name).equals('SLIST_HEADER');
        check(
          types[2]
              .findAttribute('SupportedArchitectureAttribute')
              .fixedArgs[0]
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

    test('assembly', () {
      final assemblies = win32Index.assembly.toList();
      check(assemblies.length).equals(1);
      check(assemblies[0].name).equals('Windows.Win32.winmd');
      check(assemblies[0].version).equals('0.0.0.0');
    });

    test('assemblyOS', () {
      check(win32Index.assemblyOS).isEmpty();
    });

    test('assemblyProcessor', () {
      check(win32Index.assemblyProcessor).isEmpty();
    });

    test('assemblyRef', () {
      final assemblyRefs = win32Index.assemblyRef.toList();
      check(assemblyRefs.length).equals(5);
      check(assemblyRefs[0].name).equals('netstandard');
      check(assemblyRefs[0].version).equals('2.1.0.0');
      check(
        assemblyRefs.last.name,
      ).equals('Windows.Foundation.UniversalApiContract');
      check(assemblyRefs.last.version).equals('15.0.0.0');
    });

    test('assemblyRefOS', () {
      check(win32Index.assemblyRefOS).isEmpty();
    });

    test('assemblyRefProcessor', () {
      check(win32Index.assemblyRefProcessor).isEmpty();
    });

    test('classLayout', () {
      final classLayouts = win32Index.classLayout.toList();
      check(classLayouts.length).equals(1231);
      check(classLayouts[0].packingSize).equals(4);
      check(classLayouts.last.packingSize).equals(1);
    });

    test('constant', () {
      final constants = win32Index.constant.toList();
      check(constants.length).equals(151696);
      check(constants[0].value).isNotNull().equals(const Int32Value(0));
      check(constants.last.value).isNotNull().equals(const Int32Value(1));
    });

    test('customAttribute', () {
      final customAttributes = win32Index.customAttribute.toList();
      check(customAttributes.length).equals(150223);
      check(customAttributes[0].name).equals('SupportedOSPlatformAttribute');
      check(customAttributes.last.name).equals('FlexibleArrayAttribute');
    });

    test('declSecurity', () {
      check(win32Index.declSecurity).isEmpty();
    });

    test('event', () {
      check(win32Index.event).isEmpty();
      final events = winrtIndex.event.toList();
      check(events.length).equals(2833);
      check(events[0].name).equals('PackageInstalling');
      check(events.last.name).equals('ProcessExited');
    });

    test('eventMap', () {
      check(win32Index.eventMap).isEmpty();
      final eventMaps = winrtIndex.eventMap.toList();
      check(eventMaps.length).equals(1195);
      check(eventMaps[0].parent.name).equals('IPackageCatalog');
      check(eventMaps[0].events.length).equals(5);
      check(eventMaps.last.parent.name).equals('WebViewControlProcess');
      check(eventMaps.last.events.length).equals(1);
    });

    test('exportedType', () {
      check(win32Index.exportedType).isEmpty();
    });

    test('field', () {
      final fields = win32Index.field.toList();
      check(fields.length).equals(239888);
      check(fields[0].name).equals('MSIDBOPEN_READONLY');
      check(fields.last.name).equals('FallbackIndexMax');
    });

    test('fieldLayout', () {
      final fieldLayouts = win32Index.fieldLayout.toList();
      check(fieldLayouts.length).equals(4382);
      check(fieldLayouts[0].field.name).equals('Anonymous');
      check(fieldLayouts[0].offset).equals(0);
      check(fieldLayouts.last.field.name).equals('IfLuid');
      check(fieldLayouts.last.offset).equals(0);
    });

    test('fieldMarshal', () {
      check(win32Index.fieldMarshal).isEmpty();
    });

    test('fieldRVA', () {
      check(win32Index.fieldRVA).isEmpty();
    });

    test('file', () {
      check(win32Index.file).isEmpty();
    });

    test('genericParam', () {
      final genericParams = winrtIndex.genericParam.toList();
      check(genericParams.length).equals(33);
      check(genericParams[0].name).equals('TProgress');
      check(genericParams.last.name).equals('T');
    });

    test('genericParamConstraint', () {
      check(winrtIndex.genericParamConstraint).isEmpty();
    });

    test('implMap', () {
      final implMaps = win32Index.implMap.toList();
      check(implMaps.length).equals(18128);
      check(implMaps[0].importName).equals('MsiCloseHandle');
      check(implMaps.last.importName).equals('ReadThreadProfilingData');
    });

    test('interfaceImpl', () {
      final interfaceImpls = win32Index.interfaceImpl.toList();
      check(interfaceImpls.length).equals(7812);
      check(interfaceImpls[0].class$.name).equals('IVdsProviderPrivate');
      check(interfaceImpls.last.class$.name).equals('IMetaDataWinMDImport');
    });

    test('manifestResource', () {
      check(win32Index.manifestResource).isEmpty();
    });

    test('memberRef', () {
      final memberRefs = win32Index.memberRef.toList();
      check(memberRefs.length).equals(41);
      check(memberRefs[0].name).equals('.ctor');
      check(memberRefs.last.name).equals('.ctor');
    });

    test('methodDef', () {
      final methodDefs = win32Index.methodDef.toList();
      check(methodDefs.length).equals(69936);
      check(methodDefs[0].name).equals('MsiCloseHandle');
      check(methodDefs.last.name).equals('Invoke');
    });

    test('methodImpl', () {
      check(win32Index.methodImpl).isEmpty();
    });

    test('methodSemantics', () {
      check(win32Index.methodSemantics).isEmpty();
      final methodSemantics = winrtIndex.methodSemantics.toList();
      check(methodSemantics.length).equals(51205);
      check(methodSemantics[0].method.name).equals('add_PackageInstalling');
      check(methodSemantics.last.method.name).equals('put_EnterpriseId');
    });

    test('methodSpec', () {
      check(win32Index.methodSpec).isEmpty();
    });

    test('module', () {
      final modules = win32Index.module.toList();
      check(modules.length).equals(1);
      check(modules[0].name).equals('Windows.Win32.winmd');
      check(
        modules[0].mvid.toString(),
      ).equals('4a520299-e458-4675-befb-318972b60e6a');
    });

    test('moduleRef', () {
      final moduleRefs = win32Index.moduleRef.toList();
      check(moduleRefs.length).equals(370);
      check(moduleRefs[0].name).equals('msi.dll');
      check(moduleRefs.last.name).equals('XmlLite.dll');
    });

    test('nestedClasse', () {
      final nestedClasses = win32Index.nestedClass.toList();
      check(nestedClasses.length).equals(2075);
      check(nestedClasses[0].inner.name).equals('_Anonymous_e__Struct');
      check(nestedClasses[0].outer.name).equals('SLIST_HEADER');
      check(nestedClasses.last.inner.name).equals('_Anonymous_e__Union');
      check(nestedClasses.last.outer.name).equals('NPI_MODULEID');
    });

    test('param', () {
      final params = win32Index.param.toList();
      check(params.length).equals(216953);
      check(params[0].name).equals('hAny');
      check(params.last.name).equals('dwNumberOfEntries');
    });

    test('property', () {
      check(win32Index.property).isEmpty();
      final properties = winrtIndex.property.toList();
      check(properties.length).equals(35324);
      check(properties[0].name).equals('BitmapAlphaMode');
      check(properties.last.name).equals('EnterpriseId');
    });

    test('propertyMap', () {
      check(win32Index.propertyMap).isEmpty();
      final propertyMaps = winrtIndex.propertyMap.toList();
      check(propertyMaps.length).equals(8807);
      check(propertyMaps[0].parent.name).equals('IImageFeatureDescriptor');
      check(propertyMaps[0].properties.length).equals(4);
      check(
        propertyMaps.last.parent.name,
      ).equals('WebViewControlProcessOptions');
      check(propertyMaps.last.properties.length).equals(2);
    });

    test('standAloneSig', () {
      check(win32Index.standAloneSig).isEmpty();
    });

    test('typeDef', () {
      final typeDefs = win32Index.typeDef.toList();
      check(typeDefs.length).equals(36472);
      check(typeDefs[0].name).equals('<Module>');
      check(typeDefs.last.name).equals('FALLBACK_INDEX');
    });

    test('typeRef', () {
      final typeRefs = win32Index.typeRef.toList();
      check(typeRefs.length).equals(16166);
      check(typeRefs[0].name).equals('PWSTR');
      check(typeRefs.last.name).equals('FALLBACK_INDEX');
    });

    test('typeSpec', () {
      final typeSpecs = winrtIndex.typeSpec.toList();
      check(typeSpecs.length).equals(1126);
      check(typeSpecs[0].signature).equals(
        const NamedClassType(
          TypeName(
            'Windows.Foundation.Collections',
            'IMapView`2',
            generics: [StringType(), ObjectType()],
          ),
        ),
      );
      check(typeSpecs.last.signature).equals(
        const NamedClassType(
          TypeName(
            'Windows.Foundation',
            'TypedEventHandler`2',
            generics: [
              NamedClassType(
                TypeName('Windows.Web.UI.Interop', 'WebViewControl'),
              ),
              ObjectType(),
            ],
          ),
        ),
      );
    });
  });
}
