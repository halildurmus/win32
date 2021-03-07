@TestOn('windows')

import 'dart:io';

import 'package:test/test.dart';
import 'package:winmd/src/metadatastore.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Windows Runtime golden', () {
    const type = 'Windows.Foundation.IAsyncInfo';
    final typeDef = MetadataStore.getMetadataForType(type)!;
    final dartClass = TypePrinter.printType(typeDef);

    final golden = File('test/goldens/IAsyncInfo.golden').readAsStringSync();
    expect(dartClass, equalsIgnoringWhitespace(golden));
  });

  test('COM golden', () {
    const typeToGenerate = 'Windows.Win32.NetworkListManager.INetwork';
    final scope =
        MetadataStore.getScopeForFile(File('bin/Windows.Win32.winmd'));
    final typedef = scope.findTypeDef(typeToGenerate)!;

    final dartClass = TypePrinter.printType(typedef);

    final golden = File('test/goldens/INetwork.golden').readAsStringSync();
    expect(dartClass, equalsIgnoringWhitespace(golden));
  });
}
