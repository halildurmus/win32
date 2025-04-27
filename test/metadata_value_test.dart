import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('MetadataValue', () {
    test('BoolValue', () {
      const value1 = BoolValue(true);
      const value2 = BoolValue(true);
      const value3 = BoolValue(false);
      check(value1.value).isTrue();
      check(value1.type).isA<BoolType>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('CharValue', () {
      const value1 = CharValue(0x0041);
      const value2 = CharValue(0x0041);
      const value3 = CharValue(0x0042);
      check(value1.value).equals(0x0041);
      check(value1.type).isA<CharType>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Int8Value', () {
      const value1 = Int8Value(0x7F);
      const value2 = Int8Value(0x7F);
      const value3 = Int8Value(-0x80);
      check(value1.value).equals(0x7F);
      check(value1.type).isA<Int8Type>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Uint8Value', () {
      const value1 = Uint8Value(0xFF);
      const value2 = Uint8Value(0xFF);
      const value3 = Uint8Value(0x00);
      check(value1.value).equals(0xFF);
      check(value1.type).isA<Uint8Type>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Int16Value', () {
      const value1 = Int16Value(0x7FFF);
      const value2 = Int16Value(0x7FFF);
      const value3 = Int16Value(-0x8000);
      check(value1.value).equals(0x7FFF);
      check(value1.type).isA<Int16Type>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Uint16Value', () {
      const value1 = Uint16Value(0xFFFF);
      const value2 = Uint16Value(0xFFFF);
      const value3 = Uint16Value(0x0000);
      check(value1.value).equals(0xFFFF);
      check(value1.type).isA<Uint16Type>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Int32Value', () {
      const value1 = Int32Value(0x7FFFFFFF);
      const value2 = Int32Value(0x7FFFFFFF);
      const value3 = Int32Value(-0x80000000);
      check(value1.value).equals(0x7FFFFFFF);
      check(value1.type).isA<Int32Type>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Uint32Value', () {
      const value1 = Uint32Value(0xFFFFFFFF);
      const value2 = Uint32Value(0xFFFFFFFF);
      const value3 = Uint32Value(0x00000000);
      check(value1.value).equals(0xFFFFFFFF);
      check(value1.type).isA<Uint32Type>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Int64Value', () {
      const value1 = Int64Value(0x7FFFFFFFFFFFFFFF);
      const value2 = Int64Value(0x7FFFFFFFFFFFFFFF);
      const value3 = Int64Value(-0x8000000000000000);
      check(value1.value).equals(0x7FFFFFFFFFFFFFFF);
      check(value1.type).isA<Int64Type>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Uint64Value', () {
      const value1 = Uint64Value(0xFFFFFFFFFFFFFFFF);
      const value2 = Uint64Value(0xFFFFFFFFFFFFFFFF);
      const value3 = Uint64Value(0x0000000000000000);
      check(value1.value).equals(0xFFFFFFFFFFFFFFFF);
      check(value1.type).isA<Uint64Type>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Float32Value', () {
      const value1 = Float32Value(3.14);
      const value2 = Float32Value(3.14);
      const value3 = Float32Value(0);
      check(value1.value).equals(3.14);
      check(value1.type).isA<Float32Type>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Float64Value', () {
      const value1 = Float64Value(3.141592653589793);
      const value2 = Float64Value(3.141592653589793);
      const value3 = Float64Value(0);
      check(value1.value).equals(3.141592653589793);
      check(value1.type).isA<Float64Type>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Utf8StringValue', () {
      const value1 = Utf8StringValue('Hello');
      const value2 = Utf8StringValue('Hello');
      const value3 = Utf8StringValue('World');
      check(value1.value).equals('Hello');
      check(value1.type).isA<StringType>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('Utf16StringValue', () {
      const value1 = Utf16StringValue('Hello');
      const value2 = Utf16StringValue('Hello');
      const value3 = Utf16StringValue('World');
      check(value1.value).equals('Hello');
      check(value1.type).isA<StringType>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });

    test('AttributeEnumValue', () {
      const value1 = AttributeEnumValue('name1', 0x0001);
      const value2 = AttributeEnumValue('name1', 0x0001);
      const value3 = AttributeEnumValue('name2', 0x0002);
      check(value1.name).equals('name1');
      check(value1.value).equals(0x0001);
      check(value1.type).isA<AttributeEnumType>();
      check(value1).equals(value2);
      check(value1).not((it) => it.equals(value3));
    });
  });
}
