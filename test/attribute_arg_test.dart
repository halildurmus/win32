import 'package:checks/checks.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('FixedArg', () {
    test('equality', () {
      const arg1 = FixedArg(Int8Value(42));
      const arg2 = FixedArg(Int8Value(42));
      const arg3 = FixedArg(Int32Value(100));
      check(arg1).equals(arg2);
      check(arg1).not((it) => it.equals(arg3));
    });
  });

  group('NamedArg', () {
    test('equality', () {
      const arg1 = NamedArg(name: 'enabled', value: BoolValue(true));
      const arg2 = NamedArg(name: 'enabled', value: BoolValue(true));
      const arg3 = NamedArg(name: 'visible', value: BoolValue(false));
      check(arg1).equals(arg2);
      check(arg1).not((it) => it.equals(arg3));
    });
  });

  group('AttributeArgExtension', () {
    group('valueAsBool', () {
      test('returns correct value', () {
        const arg = AttributeArg.fixed(BoolValue(true));
        check(arg.valueAsBool).equals(true);
      });
      test('returns null for non-bool types', () {
        const arg = AttributeArg.fixed(Int32Value(42));
        check(arg.valueAsBool).isNull();
      });
    });

    group('valueAsDouble', () {
      test('returns correct value', () {
        const arg1 = AttributeArg.fixed(Float32Value(3.14));
        const arg2 = AttributeArg.fixed(Float64Value(2.718));
        check(arg1.valueAsDouble).equals(3.14);
        check(arg2.valueAsDouble).equals(2.718);
      });

      test('returns null for non-double types', () {
        const arg = AttributeArg.fixed(Int32Value(42));
        check(arg.valueAsDouble).isNull();
      });
    });

    group('valueAsInt', () {
      test('returns correct value', () {
        const arg1 = AttributeArg.fixed(Int8Value(1));
        const arg2 = AttributeArg.fixed(Uint8Value(2));
        const arg3 = AttributeArg.fixed(Int16Value(3));
        const arg4 = AttributeArg.fixed(Uint16Value(4));
        const arg5 = AttributeArg.fixed(Int32Value(5));
        const arg6 = AttributeArg.fixed(Uint32Value(6));
        const arg7 = AttributeArg.fixed(Int64Value(7));
        const arg8 = AttributeArg.fixed(Uint64Value(8));
        check(arg1.valueAsInt).equals(1);
        check(arg2.valueAsInt).equals(2);
        check(arg3.valueAsInt).equals(3);
        check(arg4.valueAsInt).equals(4);
        check(arg5.valueAsInt).equals(5);
        check(arg6.valueAsInt).equals(6);
        check(arg7.valueAsInt).equals(7);
        check(arg8.valueAsInt).equals(8);
      });

      test('returns null for non-int types', () {
        const arg = AttributeArg.fixed(Float32Value(3.14));
        check(arg.valueAsInt).isNull();
      });
    });

    group('valueAsString', () {
      test('returns correct value', () {
        const arg1 = AttributeArg.fixed(Utf8StringValue('hello'));
        const arg2 = AttributeArg.fixed(Utf16StringValue('world'));
        check(arg1.valueAsString).equals('hello');
        check(arg2.valueAsString).equals('world');
      });

      test('returns null for non-string types', () {
        const arg = AttributeArg.fixed(Int32Value(42));
        check(arg.valueAsString).isNull();
      });
    });
  });
}
