@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('All functions in JSON file map to methods in Win32 metadata', () {
    final functionsToGenerate = loadFunctionsFromJson();

    final scope = MetadataStore.getWin32Scope();
    final apis = scope.typeDefs
      ..where((typeDef) => typeDef.name.endsWith('Apis'));

    final methods = <Method>[];

    // Create a flat list for every method in the Win32 metadata, and a set
    // containing all the modules (DLLs) referenced.
    for (final api in apis) {
      methods.addAll(api.methods);
    }

    // Gather metadata for all the functions in the JSON file
    for (final function in functionsToGenerate.values) {
      final method = methods.where((m) => m.name == function.functionSymbol);
      if (method.length != 1) {
        fail('${function.functionSymbol} did not match a unique item in '
            'the metadata. There were ${method.length} matching items.');
      }
    }
  }, skip: 'Waiting for Windows 11 on GitHub Actions hosted runners');
}
