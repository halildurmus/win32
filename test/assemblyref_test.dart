@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Win32 scope contains appropriate assembly references', () {
    final scope = MetadataStore.getWin32Scope();
    // Should at least have a reference to a .NET assembly and the Win32 interop
    // assembly.
    expect(scope.assemblyRefs.length, greaterThan(2));
  });

  test('Assembly name matches toString()', () {
    final scope = MetadataStore.getWin32Scope();

    final assemblyRef = scope.assemblyRefs.first;
    expect(assemblyRef.name, equals(assemblyRef.toString()));
  });
}
