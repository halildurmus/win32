@TestOn('windows')

import 'dart:io';

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/projection/interface.dart';

void main() {
  // test('Windows Runtime golden', () {
  //   const type = 'Windows.Globalization.Calendar';
  //   final typeDef = MetadataStore.getMetadataForType(type)!;
  //   final dartClass = InterfaceProjection(typeDef).toString();

  //   File('test/tool/goldens/ICalendar.comparison').writeAsStringSync(dartClass);
  //   final golden =
  //       File('test/tool/goldens/ICalendar.golden').readAsStringSync();
  //   expect(dartClass, equalsIgnoringWhitespace(golden));
  // });

  test('COM golden', () {
    const typeToGenerate =
        'Windows.Win32.Networking.NetworkListManager.INetwork';
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef(typeToGenerate)!;

    final dartClass = InterfaceProjection(typeDef).toString();

    File('test/tool/goldens/INetwork.comparison').writeAsStringSync(dartClass);
    final golden = File('test/tool/goldens/INetwork.golden').readAsStringSync();

    expect(dartClass, equalsIgnoringWhitespace(golden));
  });
}
