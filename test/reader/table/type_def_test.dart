import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  final index = ItemIndex(await WindowsMetadataLoader.loadAllMetadata());

  group('TypeDef', () {
    test('Windows.Globalization.Calendar', () {
      final typeDef = index.getSingleType('Windows.Globalization', 'Calendar');
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
      final methods = typeDef.methods.toList();
      check(methods.length).equals(106);
      check(methods[0].name).equals('.ctor');
      check(methods[4].name).equals('Clone');
      check(methods[50].name).equals('get_Day');
      check(methods[51].name).equals('put_Day');
      check(methods[105].name).equals('TimeZoneAsString');
      check(typeDef.generics).isEmpty();
      final interfaceImpls = typeDef.interfaceImpls.toList();
      check(interfaceImpls.length).equals(2);
      final [iCalendar, iTimeZoneOnCalendar] = interfaceImpls;
      check(iCalendar.class$.name).equals('Calendar');
      check(
        iCalendar.interface(),
      ).equals(const NamedType(TypeName('Windows.Globalization', 'ICalendar')));
      check(iTimeZoneOnCalendar.class$.name).equals('Calendar');
      check(iTimeZoneOnCalendar.interface()).equals(
        const NamedType(
          TypeName('Windows.Globalization', 'ITimeZoneOnCalendar'),
        ),
      );
      check(typeDef.classLayout).isNull();
      check(typeDef.nested).isNull();
      check(typeDef.category).equals(TypeCategory.class$);
    });

    test('Windows.Win32.Foundation.SYSTEMTIME', () {
      final typeDef = index.getSingleType(
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
      final fields = typeDef.fields.toList();
      check(fields.length).equals(8);
      check(fields[0].name).equals('wYear');
      check(fields[7].name).equals('wMilliseconds');
      check(typeDef.methods).isEmpty();
      check(typeDef.generics).isEmpty();
      check(typeDef.interfaceImpls).isEmpty();
      check(typeDef.classLayout).isNull();
      check(typeDef.nested).isNull();
      check(typeDef.category).equals(TypeCategory.struct);
    });

    test('Windows.Win32.Foundation.Metadata.GuidAttribute', () {
      final typeDef = index.getSingleType(
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
      final methods = typeDef.methods.toList();
      check(methods.length).equals(1);
      check(methods[0].name).equals('.ctor');
      check(methods[0].params.length).equals(11);
      check(typeDef.generics).isEmpty();
      check(typeDef.interfaceImpls).isEmpty();
      check(typeDef.classLayout).isNull();
      check(typeDef.nested).isNull();
      check(typeDef.category).equals(TypeCategory.attribute);
    });

    test('Windows.Win32.System.WinRT.IInspectable', () {
      final typeDef = index.getSingleType(
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
      final methods = typeDef.methods.toList();
      check(methods.length).equals(3);
      check(methods[0].name).equals('GetIids');
      check(methods[1].name).equals('GetRuntimeClassName');
      check(methods[2].name).equals('GetTrustLevel');
      check(typeDef.generics).isEmpty();
      final interfaceImpls = typeDef.interfaceImpls.toList();
      check(interfaceImpls.length).equals(1);
      final [iUnknown] = interfaceImpls;
      check(iUnknown.class$.name).equals('IInspectable');
      check(iUnknown.interface()).equals(
        const NamedType(TypeName('Windows.Win32.System.Com', 'IUnknown')),
      );
      check(typeDef.classLayout).isNull();
      check(typeDef.nested).isNull();
      check(typeDef.category).equals(TypeCategory.interface);
    });

    test('Windows.Win32.System.WinRT.RO_INIT_TYPE', () {
      final typeDef = index.index.getSingleType(
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
      final fields = typeDef.fields.toList();
      check(fields.length).equals(3);
      check(fields[0].name).equals('value__');
      check(fields[0].type).equals(const Int32Type());
      check(fields[1].name).equals('RO_INIT_SINGLETHREADED');
      check(
        fields[1].constant,
      ).isNotNull().has((it) => it.value, 'value').equals(const Int32Value(0));
      check(fields[2].name).equals('RO_INIT_MULTITHREADED');
      check(
        fields[2].constant,
      ).isNotNull().has((it) => it.value, 'value').equals(const Int32Value(1));
      check(typeDef.methods).isEmpty();
      check(typeDef.generics).isEmpty();
      check(typeDef.interfaceImpls).isEmpty();
      check(typeDef.classLayout).isNull();
      check(typeDef.nested).isNull();
      check(typeDef.category).equals(TypeCategory.enum$);
    });

    test('Windows.Win32.UI.WindowsAndMessaging.WNDPROC', () {
      final typeDef = index.getSingleType(
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
      final methods = typeDef.methods.toList();
      check(methods.length).equals(2);
      check(methods[0].name).equals('.ctor');
      check(methods[0].params.length).equals(2);
      check(methods[1].name).equals('Invoke');
      check(methods[1].params.length).equals(5);
      check(typeDef.generics).isEmpty();
      check(typeDef.interfaceImpls).isEmpty();
      check(typeDef.classLayout).isNull();
      check(typeDef.nested).isNull();
      check(typeDef.category).equals(TypeCategory.delegate);
    });
  });
}
