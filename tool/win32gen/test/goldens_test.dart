@TestOn('windows')

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:test/test.dart';
import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('Golden testing', () {
    setUpAll(() async {
      await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
    });

    test('IFileOpenDialog', () {
      const type = 'Windows.Win32.UI.Shell.IFileOpenDialog';
      final typeDef = MetadataStore.getMetadataForType(type)!;
      final comTypesToGenerate = loadMap('com_types.json');
      final projection = ComClassProjection.fromInterface(typeDef,
          interfaceComment: comTypesToGenerate[type] ?? '');
      compareGolden('ifileopendialog', projection.toString().format());
    });

    test('INetwork', () async {
      const type = 'Windows.Win32.Networking.NetworkListManager.INetwork';
      final typeDef = MetadataStore.getMetadataForType(type)!;
      final comTypesToGenerate = loadMap('com_types.json');
      final projection =
          ComInterfaceProjection(typeDef, comTypesToGenerate[type] ?? '');
      compareGolden('inetwork', projection.toString().format());
    });

    tearDownAll(MetadataStore.close);
  });
}

/// Compares the contents of a [content] with a golden file specified by the
/// [fileName].
void compareGolden(String fileName, String content) {
  File('test/goldens/$fileName.comparison').writeAsStringSync(content);
  final golden = File('test/goldens/$fileName.golden').readAsStringSync();
  expect(content, equals(golden.convertLineEndingsToLF()));
}

extension on String {
  String convertLineEndingsToLF() => replaceAll('\r\n', '\n');

  /// Formats this string.
  String format() => DartFormatter().format(this);
}
