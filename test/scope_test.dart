@TestOn('windows')
import 'package:test/test.dart';
import 'package:winmd/src/metadatastore.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('MetadataStore explicit initialization', () {
    MetadataStore.initialize();
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    expect(scope.typeDefs.length, isPositive);
    MetadataStore.close();
  });

  test('MetadataStore implicit initialization', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    expect(scope.typeDefs.length, isPositive);
    MetadataStore.close();
  });

  test('MetadataStore reinitialization', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    expect(scope.typeDefs.length, isPositive);
    MetadataStore.close();

    MetadataStore.initialize();
    final scope2 = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    expect(scope2.typeDefs.length, isPositive);
    MetadataStore.close();
  });

  test('MetadataStore scopes are successfully cached', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final scope2 = MetadataStore.getScopeForType('Windows.Win32.Shell.Apis');
    expect(scope, equals(scope2));
  });
}
