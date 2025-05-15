import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final metadata = MetadataLookup(
    await WindowsMetadataLoader().loadAllMetadata(versions: metadataVersions),
  );

  group('TypeDef', () {
    test('Windows.Foundation.Collections.StringMap', () {
      final typeDef = metadata.findSingleType(
        'Windows.Foundation.Collections',
        'StringMap',
      );
      check(typeDef.flags).equals(
        TypeAttributes.public |
            TypeAttributes.autoLayout |
            TypeAttributes.ansiClass |
            TypeAttributes.sealed |
            TypeAttributes.windowsRuntime,
      );
      check(typeDef.typeVisibility).equals(TypeVisibility.public);
      check(typeDef.typeLayout).equals(TypeLayout.auto);
      check(typeDef.typeSemantics).equals(TypeSemantics.class$);
      check(typeDef.stringFormat).equals(StringFormat.ansi);
      check(typeDef.name).equals('StringMap');
      check(typeDef.namespace).equals('Windows.Foundation.Collections');
      final extends$ = typeDef.extends$;
      check(extends$).isNotNull();
      check(extends$!.namespace).equals('System');
      check(extends$.name).equals('Object');
      check(typeDef.fields).isEmpty();
      final methods = typeDef.methods;
      check(methods.length).equals(11);
      check(methods[0].name).equals('.ctor');
      check(methods[4].name).equals('GetView');
      check(methods[9].name).equals('add_MapChanged');
      check(methods[10].name).equals('remove_MapChanged');
      check(typeDef.category).equals(TypeCategory.class$);
      check(typeDef.generics).isEmpty();
      final interfaceImpls = typeDef.interfaceImpls;
      check(interfaceImpls.length).equals(3);
      final [iMap, iIterable, iObservableMap] = interfaceImpls;
      check(iMap.class$.name).equals('StringMap');
      check(iMap.interface()).equals(
        const NamedClassType(
          TypeName(
            'Windows.Foundation.Collections',
            'IMap`2',
            generics: [StringType(), StringType()],
          ),
        ),
      );
      check(iIterable.class$.name).equals('StringMap');
      check(iIterable.interface()).equals(
        const NamedClassType(
          TypeName(
            'Windows.Foundation.Collections',
            'IIterable`1',
            generics: [
              NamedClassType(
                TypeName(
                  'Windows.Foundation.Collections',
                  'IKeyValuePair`2',
                  generics: [StringType(), StringType()],
                ),
              ),
            ],
          ),
        ),
      );
      check(iObservableMap.class$.name).equals('StringMap');
      check(iObservableMap.interface()).equals(
        const NamedClassType(
          TypeName(
            'Windows.Foundation.Collections',
            'IObservableMap`2',
            generics: [StringType(), StringType()],
          ),
        ),
      );
      check(typeDef.classLayout).isNull();
      final events = typeDef.events;
      check(events.length).equals(1);
      check(events[0].name).equals('MapChanged');
      final methodImpls = typeDef.methodImpls;
      check(methodImpls.length).equals(10);
      check(methodImpls[0].class$.name).equals('StringMap');
      check(typeDef.nested).isNull();
      final properties = typeDef.properties;
      check(properties.length).equals(1);
      check(properties[0].name).equals('Size');
    });

    test('Windows.Globalization.Calendar', () {
      final typeDef = metadata.findSingleType(
        'Windows.Globalization',
        'Calendar',
      );
      check(typeDef.flags).equals(
        TypeAttributes.public |
            TypeAttributes.autoLayout |
            TypeAttributes.ansiClass |
            TypeAttributes.sealed |
            TypeAttributes.windowsRuntime,
      );
      check(typeDef.typeVisibility).equals(TypeVisibility.public);
      check(typeDef.typeLayout).equals(TypeLayout.auto);
      check(typeDef.typeSemantics).equals(TypeSemantics.class$);
      check(typeDef.stringFormat).equals(StringFormat.ansi);
      check(typeDef.name).equals('Calendar');
      check(typeDef.namespace).equals('Windows.Globalization');
      final extends$ = typeDef.extends$;
      check(extends$).isNotNull();
      check(extends$!.namespace).equals('System');
      check(extends$.name).equals('Object');
      check(typeDef.fields).isEmpty();
      final methods = typeDef.methods;
      check(methods.length).equals(106);
      check(methods[0].name).equals('.ctor');
      check(methods[4].name).equals('Clone');
      check(methods[50].name).equals('get_Day');
      check(methods[51].name).equals('put_Day');
      check(methods[105].name).equals('TimeZoneAsString');
      check(typeDef.category).equals(TypeCategory.class$);
      check(typeDef.generics).isEmpty();
      final interfaceImpls = typeDef.interfaceImpls;
      check(interfaceImpls.length).equals(2);
      final [iCalendar, iTimeZoneOnCalendar] = interfaceImpls;
      check(iCalendar.class$.name).equals('Calendar');
      check(iCalendar.interface()).equals(
        const NamedClassType(TypeName('Windows.Globalization', 'ICalendar')),
      );
      check(iTimeZoneOnCalendar.class$.name).equals('Calendar');
      check(iTimeZoneOnCalendar.interface()).equals(
        const NamedClassType(
          TypeName('Windows.Globalization', 'ITimeZoneOnCalendar'),
        ),
      );
      check(typeDef.classLayout).isNull();
      check(typeDef.events).isEmpty();
      final methodImpls = typeDef.methodImpls;
      check(methodImpls.length).equals(102);
      check(methodImpls[0].class$.name).equals('Calendar');
      check(typeDef.nested).isNull();
      final properties = typeDef.properties;
      check(properties.length).equals(38);
      check(properties[0].name).equals('Year');
      check(properties[37].name).equals('FirstPeriodInThisDay');
    });

    test('Windows.Win32.Foundation.SYSTEMTIME', () {
      final typeDef = metadata.findSingleType(
        'Windows.Win32.Foundation',
        'SYSTEMTIME',
      );
      check(typeDef.flags).equals(
        TypeAttributes.public |
            TypeAttributes.sequentialLayout |
            TypeAttributes.ansiClass |
            TypeAttributes.sealed |
            TypeAttributes.beforeFieldInit,
      );
      check(typeDef.typeVisibility).equals(TypeVisibility.public);
      check(typeDef.typeLayout).equals(TypeLayout.sequential);
      check(typeDef.typeSemantics).equals(TypeSemantics.class$);
      check(typeDef.stringFormat).equals(StringFormat.ansi);
      check(typeDef.name).equals('SYSTEMTIME');
      check(typeDef.namespace).equals('Windows.Win32.Foundation');
      final extends$ = typeDef.extends$;
      check(extends$).isNotNull();
      check(extends$!.namespace).equals('System');
      check(extends$.name).equals('ValueType');
      final fields = typeDef.fields;
      check(fields.length).equals(8);
      check(fields[0].name).equals('wYear');
      check(fields[7].name).equals('wMilliseconds');
      check(typeDef.methods).isEmpty();
      check(typeDef.category).equals(TypeCategory.struct);
      check(typeDef.generics).isEmpty();
      check(typeDef.interfaceImpls).isEmpty();
      check(typeDef.classLayout).isNull();
      check(typeDef.events).isEmpty();
      check(typeDef.methodImpls).isEmpty();
      check(typeDef.nested).isNull();
      check(typeDef.properties).isEmpty();
    });

    test('Windows.Win32.Foundation.Metadata.GuidAttribute', () {
      final typeDef = metadata.findSingleType(
        'Windows.Win32.Foundation.Metadata',
        'GuidAttribute',
      );
      check(typeDef.flags).equals(
        TypeAttributes.public |
            TypeAttributes.autoLayout |
            TypeAttributes.autoClass |
            TypeAttributes.sealed |
            TypeAttributes.beforeFieldInit,
      );
      check(typeDef.typeVisibility).equals(TypeVisibility.public);
      check(typeDef.typeLayout).equals(TypeLayout.auto);
      check(typeDef.typeSemantics).equals(TypeSemantics.class$);
      check(typeDef.stringFormat).equals(StringFormat.auto);
      check(typeDef.name).equals('GuidAttribute');
      check(typeDef.namespace).equals('Windows.Win32.Foundation.Metadata');
      final extends$ = typeDef.extends$;
      check(extends$).isNotNull();
      check(extends$!.namespace).equals('System');
      check(extends$.name).equals('Attribute');
      check(typeDef.fields).isEmpty();
      final methods = typeDef.methods;
      check(methods.length).equals(1);
      check(methods[0].name).equals('.ctor');
      check(methods[0].params.length).equals(11);
      check(typeDef.category).equals(TypeCategory.attribute);
      check(typeDef.generics).isEmpty();
      check(typeDef.interfaceImpls).isEmpty();
      check(typeDef.classLayout).isNull();
      check(typeDef.events).isEmpty();
      check(typeDef.methodImpls).isEmpty();
      check(typeDef.nested).isNull();
      check(typeDef.properties).isEmpty();
    });

    test('Windows.Win32.System.WinRT.IInspectable', () {
      final typeDef = metadata.findSingleType(
        'Windows.Win32.System.WinRT',
        'IInspectable',
      );
      check(typeDef.flags).equals(
        TypeAttributes.public |
            TypeAttributes.autoLayout |
            TypeAttributes.ansiClass |
            TypeAttributes.interface |
            TypeAttributes.abstract,
      );
      check(typeDef.typeVisibility).equals(TypeVisibility.public);
      check(typeDef.typeLayout).equals(TypeLayout.auto);
      check(typeDef.typeSemantics).equals(TypeSemantics.interface);
      check(typeDef.stringFormat).equals(StringFormat.ansi);
      check(typeDef.name).equals('IInspectable');
      check(typeDef.namespace).equals('Windows.Win32.System.WinRT');
      check(typeDef.extends$).isNull();
      check(typeDef.fields).isEmpty();
      final methods = typeDef.methods;
      check(methods.length).equals(3);
      check(methods[0].name).equals('GetIids');
      check(methods[1].name).equals('GetRuntimeClassName');
      check(methods[2].name).equals('GetTrustLevel');
      check(typeDef.category).equals(TypeCategory.interface);
      check(typeDef.generics).isEmpty();
      final interfaceImpls = typeDef.interfaceImpls;
      check(interfaceImpls.length).equals(1);
      final [iUnknown] = interfaceImpls;
      check(iUnknown.class$.name).equals('IInspectable');
      check(iUnknown.interface()).equals(
        const NamedClassType(TypeName('Windows.Win32.System.Com', 'IUnknown')),
      );
      check(typeDef.classLayout).isNull();
      check(typeDef.events).isEmpty();
      check(typeDef.methodImpls).isEmpty();
      check(typeDef.nested).isNull();
      check(typeDef.properties).isEmpty();
    });

    test('Windows.Win32.System.WinRT.RO_INIT_TYPE', () {
      final typeDef = metadata.index.findSingleType(
        'Windows.Win32.System.WinRT',
        'RO_INIT_TYPE',
      );
      check(typeDef.flags).equals(
        TypeAttributes.public |
            TypeAttributes.autoLayout |
            TypeAttributes.ansiClass |
            TypeAttributes.sealed,
      );
      check(typeDef.typeVisibility).equals(TypeVisibility.public);
      check(typeDef.typeLayout).equals(TypeLayout.auto);
      check(typeDef.typeSemantics).equals(TypeSemantics.class$);
      check(typeDef.stringFormat).equals(StringFormat.ansi);
      check(typeDef.name).equals('RO_INIT_TYPE');
      check(typeDef.namespace).equals('Windows.Win32.System.WinRT');
      final extends$ = typeDef.extends$;
      check(extends$).isNotNull();
      check(extends$!.namespace).equals('System');
      check(extends$.name).equals('Enum');
      final fields = typeDef.fields;
      check(fields.length).equals(3);
      check(fields[0].name).equals('value__');
      check(fields[0].signature).equals(const FieldSig(Int32Type()));
      check(fields[1].name).equals('RO_INIT_SINGLETHREADED');
      check(
        fields[1].constant,
      ).isNotNull().has((it) => it.value, 'value').equals(const Int32Value(0));
      check(fields[2].name).equals('RO_INIT_MULTITHREADED');
      check(
        fields[2].constant,
      ).isNotNull().has((it) => it.value, 'value').equals(const Int32Value(1));
      check(typeDef.methods).isEmpty();
      check(typeDef.category).equals(TypeCategory.enum$);
      check(typeDef.generics).isEmpty();
      check(typeDef.interfaceImpls).isEmpty();
      check(typeDef.classLayout).isNull();
      check(typeDef.events).isEmpty();
      check(typeDef.methodImpls).isEmpty();
      check(typeDef.nested).isNull();
      check(typeDef.properties).isEmpty();
    });

    test('Windows.Win32.UI.WindowsAndMessaging.WNDPROC', () {
      final typeDef = metadata.findSingleType(
        'Windows.Win32.UI.WindowsAndMessaging',
        'WNDPROC',
      );
      check(typeDef.flags).equals(
        TypeAttributes.public |
            TypeAttributes.autoLayout |
            TypeAttributes.autoClass |
            TypeAttributes.sealed |
            TypeAttributes.beforeFieldInit,
      );
      check(typeDef.typeVisibility).equals(TypeVisibility.public);
      check(typeDef.typeLayout).equals(TypeLayout.auto);
      check(typeDef.typeSemantics).equals(TypeSemantics.class$);
      check(typeDef.stringFormat).equals(StringFormat.auto);
      check(typeDef.name).equals('WNDPROC');
      check(typeDef.namespace).equals('Windows.Win32.UI.WindowsAndMessaging');
      final extends$ = typeDef.extends$;
      check(extends$).isNotNull();
      check(extends$!.namespace).equals('System');
      check(extends$.name).equals('MulticastDelegate');
      check(typeDef.fields).isEmpty();
      final methods = typeDef.methods;
      check(methods.length).equals(2);
      check(methods[0].name).equals('.ctor');
      check(methods[0].params.length).equals(2);
      check(methods[1].name).equals('Invoke');
      check(methods[1].params.length).equals(5);
      check(typeDef.category).equals(TypeCategory.delegate);
      check(typeDef.generics).isEmpty();
      check(typeDef.interfaceImpls).isEmpty();
      check(typeDef.classLayout).isNull();
      check(typeDef.events).isEmpty();
      check(typeDef.methodImpls).isEmpty();
      check(typeDef.nested).isNull();
      check(typeDef.properties).isEmpty();
    });
  });

  group('TypeDefExtension', () {
    group('findEvent', () {
      final typeDef = metadata.findSingleType(
        'Windows.Foundation.Collections',
        'StringMap',
      );

      test('returns matching event if found', () {
        final event = typeDef.findEvent('MapChanged');
        check(event.name).equals('MapChanged');
      });

      test('throws if event not found', () {
        check(
          () => typeDef.findEvent('NonexistentEvent'),
        ).throws<WinmdException>();
      });
    });

    group('tryFindEvent', () {
      final typeDef = metadata.findSingleType(
        'Windows.Foundation.Collections',
        'StringMap',
      );

      test('returns matching event if found', () {
        final event = typeDef.tryFindEvent('MapChanged');
        check(event).isNotNull();
        check(event!.name).equals('MapChanged');
      });

      test('returns null if event not found', () {
        final event = typeDef.tryFindEvent('DoesNotExist');
        check(event).isNull();
      });
    });

    group('findField', () {
      final typeDef = metadata.index.findSingleType(
        'Windows.Win32.System.WinRT',
        'RO_INIT_TYPE',
      );

      test('returns matching field if found', () {
        final field = typeDef.findField('RO_INIT_MULTITHREADED');
        check(field.name).equals('RO_INIT_MULTITHREADED');
      });

      test('throws if field not found', () {
        check(() => typeDef.findField('NonexistentField'))
            .throws<WinmdException>()
            .has((it) => it.message, 'message')
            .equals(
              'Field "NonexistentField" not found in TypeDef(Windows.Win32.System.WinRT.RO_INIT_TYPE)',
            );
      });
    });

    group('tryFindField', () {
      final typeDef = metadata.index.findSingleType(
        'Windows.Win32.System.WinRT',
        'RO_INIT_TYPE',
      );

      test('returns matching field if found', () {
        final field = typeDef.tryFindField('RO_INIT_SINGLETHREADED');
        check(field).isNotNull();
        check(field!.name).equals('RO_INIT_SINGLETHREADED');
      });

      test('returns null if field not found', () {
        final field = typeDef.tryFindField('DoesNotExist');
        check(field).isNull();
      });
    });

    group('findMethod', () {
      final typeDef = metadata.findSingleType(
        'Windows.Win32.System.WinRT',
        'IInspectable',
      );

      test('returns matching method if found', () {
        final method = typeDef.findMethod('GetIids');
        check(method.name).equals('GetIids');
      });

      test('throws if method not found', () {
        check(
          () => typeDef.findMethod('MissingMethod'),
        ).throws<WinmdException>();
      });
    });

    group('tryFindMethod', () {
      final typeDef = metadata.findSingleType(
        'Windows.Win32.System.WinRT',
        'IInspectable',
      );

      test('returns matching method if found', () {
        final method = typeDef.tryFindMethod('GetTrustLevel');
        check(method).isNotNull();
        check(method!.name).equals('GetTrustLevel');
      });

      test('returns null if method not found', () {
        final method = typeDef.tryFindMethod('NoSuchMethod');
        check(method).isNull();
      });
    });

    group('findProperty', () {
      final typeDef = metadata.findSingleType(
        'Windows.Foundation.Collections',
        'StringMap',
      );

      test('returns matching property if found', () {
        final property = typeDef.findProperty('Size');
        check(property.name).equals('Size');
      });

      test('throws if property not found', () {
        check(
          () => typeDef.findProperty('NonexistentProperty'),
        ).throws<WinmdException>();
      });
    });

    group('tryFindProperty', () {
      final typeDef = metadata.findSingleType(
        'Windows.Foundation.Collections',
        'StringMap',
      );

      test('returns matching property if found', () {
        final property = typeDef.tryFindProperty('Size');
        check(property).isNotNull();
        check(property!.name).equals('Size');
      });

      test('returns null if property not found', () {
        final property = typeDef.tryFindProperty('DoesNotExist');
        check(property).isNull();
      });
    });
  });
}
