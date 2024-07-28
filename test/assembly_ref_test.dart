@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope win32Scope;

  setUpAll(() async {
    win32Scope = await MetadataStore.loadWin32Metadata();
  });

  test('Win32 scope contains appropriate assembly references', () {
    // Should at least have a reference to a .NET assembly and the
    // Windows.Foundation assemblies
    check(win32Scope.assemblyRefs.length).isGreaterThan(3);
  });

  test('Assembly name matches toString()', () {
    final assemblyRef = win32Scope.assemblyRefs.first;
    check(assemblyRef.name).equals(assemblyRef.toString());
  });

  tearDownAll(MetadataStore.close);
}
