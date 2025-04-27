import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('TypeName', () {
    test('constructs with no generics by default', () {
      const type = TypeName('System', 'Guid');
      check(type.namespace).equals('System');
      check(type.name).equals('Guid');
      check(type.generics).isEmpty();
    });

    test('returns unmodifiable generics list', () {
      const type = TypeName(
        'Windows.Foundation.Collections',
        'IIterable`1',
        generics: [Int32Type()],
      );
      check(
        () => type.generics.add(const Int16Type()),
      ).throws<UnsupportedError>();
    });

    test('equality: equal for same namespace, name, and generics', () {
      const type1 = TypeName(
        'Windows.Foundation.Collections',
        'IIterable`1',
        generics: [Int32Type()],
      );
      const type2 = TypeName(
        'Windows.Foundation.Collections',
        'IIterable`1',
        generics: [Int32Type()],
      );
      check(type1).equals(type2);
    });

    test('equality: not equal if generics differ', () {
      const type1 = TypeName(
        'Windows.Foundation.Collections',
        'IIterable`1',
        generics: [Int16Type()],
      );
      const type2 = TypeName(
        'Windows.Foundation.Collections',
        'IIterable`1',
        generics: [Int32Type()],
      );
      check(type1).not((it) => it.equals(type2));
    });

    test('equality: not equal if name or namespace differs', () {
      const typeName = TypeName('System', 'Guid');
      check(
        typeName,
      ).not((it) => it.equals(const TypeName('System', 'Object')));
      check(
        typeName,
      ).not((it) => it.equals(const TypeName('Windows.Foundation', 'Point')));
    });
  });
}
