import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final metadata = MetadataLookup(
    await WindowsMetadataLoader().loadAllMetadata(versions: metadataVersions),
  );

  group('Param', () {
    test('CoCreateGuid([out] GUID *pguid)', () {
      final method = metadata.findFunction(
        'Windows.Win32.System.Com',
        'CoCreateGuid',
      );
      final params = method.params;
      check(params.length).equals(2);
      check(params[0].flags).equals(const ParamAttributes(0));
      check(params[0].sequence).equals(0);
      check(params[0].name).isEmpty();
      check(params[0].constant).isNull();
      check(params[0].fieldMarshal).isNull();
      check(params[0].parent.name).equals('CoCreateGuid');
      check(params[1].flags).equals(ParamAttributes.out);
      check(params[1].sequence).equals(1);
      check(params[1].name).equals('pguid');
      check(params[1].constant).isNull();
      check(params[1].fieldMarshal).isNull();
      check(params[1].parent.name).equals('CoCreateGuid');
    });

    test('ICalendarFactory.CreateCalendar([in] IIterable<string> languages, '
        '[in] string calendar, [in] string clock)', () {
      final typeDef = metadata.findSingleType(
        'Windows.Globalization',
        'ICalendarFactory',
      );
      final method = typeDef.findMethod('CreateCalendar');
      final params = method.params;
      check(params.length).equals(4);
      check(params[0].flags).equals(const ParamAttributes(0));
      check(params[0].sequence).equals(0);
      check(params[0].name).equals('result');
      check(params[0].constant).isNull();
      check(params[0].fieldMarshal).isNull();
      check(params[0].parent.name).equals('CreateCalendar');
      check(params[1].flags).equals(ParamAttributes.in$);
      check(params[1].sequence).equals(1);
      check(params[1].name).equals('languages');
      check(params[1].constant).isNull();
      check(params[1].fieldMarshal).isNull();
      check(params[1].parent.name).equals('CreateCalendar');
      check(params[2].flags).equals(ParamAttributes.in$);
      check(params[2].sequence).equals(2);
      check(params[2].name).equals('calendar');
      check(params[2].constant).isNull();
      check(params[2].fieldMarshal).isNull();
      check(params[2].parent.name).equals('CreateCalendar');
      check(params[3].flags).equals(ParamAttributes.in$);
      check(params[3].sequence).equals(3);
      check(params[3].name).equals('clock');
      check(params[3].constant).isNull();
      check(params[3].fieldMarshal).isNull();
      check(params[3].parent.name).equals('CreateCalendar');
    });

    test('ITensorBooleanStatics.CreateFromArray([in] IIterablle<long> shape, '
        '[in] bool[] data)', () {
      final typeDef = metadata.findSingleType(
        'Windows.AI.MachineLearning',
        'ITensorBooleanStatics',
      );
      final method = typeDef.findMethod('CreateFromArray');
      final params = method.params;
      check(params.length).equals(3);
      check(params[0].flags).equals(const ParamAttributes(0));
      check(params[0].sequence).equals(0);
      check(params[0].name).equals('result');
      check(params[0].constant).isNull();
      check(params[0].fieldMarshal).isNull();
      check(params[0].parent.name).equals('CreateFromArray');
      check(params[1].flags).equals(ParamAttributes.in$);
      check(params[1].sequence).equals(1);
      check(params[1].name).equals('shape');
      check(params[1].constant).isNull();
      check(params[1].fieldMarshal).isNull();
      check(params[1].parent.name).equals('CreateFromArray');
      check(params[2].flags).equals(ParamAttributes.in$);
      check(params[2].sequence).equals(2);
      check(params[2].name).equals('data');
      check(params[2].constant).isNull();
      check(params[2].fieldMarshal).isNull();
      check(params[2].parent.name).equals('CreateFromArray');
    });
  });
}
