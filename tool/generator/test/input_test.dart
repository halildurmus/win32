@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';

void main() {
  test('No missing DLL categories', () {
    final functionsToGenerate = loadFunctionsFromJson();
    final librariesToGenerate = dllLibraries;
    final librariesInJson =
        functionsToGenerate.values.map((e) => e.dllLibrary).toSet();

    for (final library in librariesInJson) {
      expect(librariesToGenerate, contains(library));
    }
  });
}
