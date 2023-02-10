@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Win32 scope contains appropriate assembly references', () {
    final scope = MetadataStore.getWin32Scope();
    // Should at least have a reference to a .NET assembly and the Win32 interop
    // assembly.
    check(scope.assemblyRefs.length).isGreaterThan(2);
  });

  test('Assembly name matches toString()', () {
    final scope = MetadataStore.getWin32Scope();

    final assemblyRef = scope.assemblyRefs.first;
    check(assemblyRef.name).equals(assemblyRef.toString());
  });

  test('Assembly version matches toString() 1', () {
    final scope = MetadataStore.getWin32Scope();

    final interopAssembly =
        scope.assemblyRefs.firstWhere((a) => a.name == 'Windows.Win32.Interop');

    // Current version at the time of writing this test is 23.0.0.18996. Version
    // numbers should only increase from here!
    check(int.parse(interopAssembly.version.split('.').first))
        .isGreaterOrEqual(23);
  });

  test('Assembly version matches toString() 2', () {
    final scope =
        MetadataStore.getScopeForType('Windows.Globalization.Calendar');

    final assembly =
        scope.assemblyRefs.firstWhere((a) => a.name == 'Windows.Foundation');

    // Windows Runtime versions seem to be permanently 255.255.255.255.
    check(assembly.version).equals('255.255.255.255');
  });
}
