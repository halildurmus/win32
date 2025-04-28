import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  final index = EntityIndex(await WindowsMetadataLoader.loadAllMetadata());

  group('Param', () {
    test('CoCreateGuid([out] GUID *pguid)', () {
      final method = index.findFunction(
        'Windows.Win32.System.Com',
        'CoCreateGuid',
      );
      final params = method.params.toList();
      check(params.length).equals(2);
      check(params[0].flags).equals(const ParamAttributes(0));
      check(params[0].sequence).equals(0);
      check(params[0].name).isEmpty();
      check(params[0].constant).isNull();
      check(params[1].flags).equals(ParamAttributes.out);
      check(params[1].sequence).equals(1);
      check(params[1].name).equals('pguid');
      check(params[1].constant).isNull();
    });

    test('ICalendarFactory.CreateCalendar([in] IIterable<string> languages, '
        '[in] string calendar, [in] string clock)', () {
      final typeDef = index.findSingleType(
        'Windows.Globalization',
        'ICalendarFactory',
      );
      final method = typeDef.findMethod('CreateCalendar');
      check(method).isNotNull();
      final params = method!.params.toList();
      check(params.length).equals(4);
      check(params[0].flags).equals(const ParamAttributes(0));
      check(params[0].sequence).equals(0);
      check(params[0].name).equals('result');
      check(params[0].constant).isNull();
      check(params[1].flags).equals(ParamAttributes.in$);
      check(params[1].sequence).equals(1);
      check(params[1].name).equals('languages');
      check(params[1].constant).isNull();
      check(params[2].flags).equals(ParamAttributes.in$);
      check(params[2].sequence).equals(2);
      check(params[2].name).equals('calendar');
      check(params[2].constant).isNull();
      check(params[3].flags).equals(ParamAttributes.in$);
      check(params[3].sequence).equals(3);
      check(params[3].name).equals('clock');
      check(params[3].constant).isNull();
    });

    test('ITensorBooleanStatics.CreateFromArray([in] IIterablle<long> shape, '
        '[in] bool[] data)', () {
      final typeDef = index.findSingleType(
        'Windows.AI.MachineLearning',
        'ITensorBooleanStatics',
      );
      final method = typeDef.findMethod('CreateFromArray');
      check(method).isNotNull();
      final params = method!.params.toList();
      check(params.length).equals(3);
      check(params[0].flags).equals(const ParamAttributes(0));
      check(params[0].sequence).equals(0);
      check(params[0].name).equals('result');
      check(params[0].constant).isNull();
      check(params[1].flags).equals(ParamAttributes.in$);
      check(params[1].sequence).equals(1);
      check(params[1].name).equals('shape');
      check(params[1].constant).isNull();
      check(params[2].flags).equals(ParamAttributes.in$);
      check(params[2].sequence).equals(2);
      check(params[2].name).equals('data');
      check(params[2].constant).isNull();
    });
  });
}
