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

  test('Assembly version matches toString()', () {
    final scope =
        MetadataStore.getScopeForType('Windows.Globalization.Calendar');

    final assembly =
        scope.assemblyRefs.firstWhere((a) => a.name == 'Windows.Foundation');

    // Windows Runtime versions seem to be permanently 255.255.255.255.
    check(assembly.version).equals('255.255.255.255');
  });
}
