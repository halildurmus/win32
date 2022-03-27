@TestOn('windows')

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/projection/com_interface.dart';
import '../../tool/projection/winrt_interface.dart';

void main() {
  test('Windows Runtime golden', () {
    const type = 'Windows.Globalization.ICalendar';
    final typeDef = MetadataStore.getMetadataForType(type)!;
    final dartClass = WinRTInterfaceProjection(typeDef).toString();
    final formattedDartClass = DartFormatter().format(dartClass);

    File('test/tool/goldens/ICalendar.comparison')
        .writeAsStringSync(formattedDartClass);
    final golden =
        File('test/tool/goldens/ICalendar.golden').readAsStringSync();

    // Ignore whitespace to avoid \r\n vs. \n conflicts.
    expect(formattedDartClass, equalsIgnoringWhitespace(golden));
  });

  test('COM golden', () {
    const typeToGenerate =
        'Windows.Win32.Networking.NetworkListManager.INetwork';
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef(typeToGenerate)!;

    final dartClass = ComInterfaceProjection(typeDef).toString();
    final formattedDartClass = DartFormatter().format(dartClass);

    File('test/tool/goldens/INetwork.comparison')
        .writeAsStringSync(formattedDartClass);
    final golden = File('test/tool/goldens/INetwork.golden').readAsStringSync();

    // Ignore whitespace to avoid \r\n vs. \n conflicts.
    expect(formattedDartClass, equalsIgnoringWhitespace(golden));
  });
}
