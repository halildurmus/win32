@TestOn('windows')

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Windows Runtime golden', () {
    const type = 'Windows.Globalization.ICalendar';
    final typeDef = MetadataStore.getMetadataForType(type)!;
    final dartClass = WinRTInterfaceProjection(typeDef).toString();
    final formattedDartClass = DartFormatter().format(dartClass);

    File('test/goldens/icalendar.comparison')
        .writeAsStringSync(formattedDartClass);
    final golden = File('test/goldens/icalendar.golden').readAsStringSync();

    // Ignore whitespace to avoid \r\n vs. \n conflicts.
    expect(formattedDartClass, equalsIgnoringWhitespace(golden));
  });

  test('COM golden', () {
    const typeToGenerate =
        'Windows.Win32.Networking.NetworkListManager.INetwork';
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef(typeToGenerate)!;

    final comTypesToGenerate = loadMap('com_types.json');
    final dartClass = ComInterfaceProjection(
            typeDef, comTypesToGenerate[typeToGenerate] ?? '')
        .toString();
    final formattedDartClass = DartFormatter().format(dartClass);

    File('test/goldens/inetwork.comparison')
        .writeAsStringSync(formattedDartClass);
    final golden = File('test/goldens/inetwork.golden').readAsStringSync();

    // Ignore whitespace to avoid \r\n vs. \n conflicts.
    expect(formattedDartClass, equalsIgnoringWhitespace(golden));
  });
}
