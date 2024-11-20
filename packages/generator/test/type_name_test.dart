import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/test.dart';

void main() {
  group('TypeName', () {
    test('parse correctly parses fully-qualified type names', () {
      final typeName = TypeName.parse('Windows.Win32.Foundation.HRESULT');
      check(typeName.namespace).equals('Windows.Win32.Foundation');
      check(typeName.name).equals('HRESULT');
      check(typeName.fullName).equals('Windows.Win32.Foundation.HRESULT');
    });

    test('parse throws ArgumentError for invalid type names', () {
      const invalidFullName = 'HRESULT';
      check(() => TypeName.parse(invalidFullName))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .isA<String>()
          .startsWith('Expected a fully-qualified type name');
    });

    test('static constants represent correct namespace and name', () {
      check(TypeName.GUID.namespace).equals('System');
      check(TypeName.GUID.name).equals('Guid');
      check(TypeName.GUID.fullName).equals('System.Guid');
      check(TypeName.HRESULT.namespace).equals('Windows.Win32.Foundation');
      check(TypeName.HRESULT.name).equals('HRESULT');
      check(
        TypeName.HRESULT.fullName,
      ).equals('Windows.Win32.Foundation.HRESULT');
    });

    test('fullName correctly combines namespace and name', () {
      const typeName = TypeName(('Windows.Win32.Foundation', 'BOOL'));
      check(typeName.fullName).equals('Windows.Win32.Foundation.BOOL');
    });
  });
}
