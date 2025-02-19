import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  group('RegistryValue', () {
    test('BinaryValue', () {
      final value1 = BinaryValue(
        'Test',
        Uint8List.fromList([0xFF, 0x33, 0x77, 0xAA]),
      );
      check(value1.name).equals('Test');
      check(value1.type).equals(RegistryValueType.binary);
      check(
        value1.value,
      ).deepEquals(Uint8List.fromList([0xFF, 0x33, 0x77, 0xAA]));
      check(value1.toString()).equals('BinaryValue(Test, [255, 51, 119, 170])');
      final value2 = BinaryValue(
        'Test',
        Uint8List.fromList([0xFF, 0x33, 0x77, 0xAA]),
      );
      check(value1).equals(value2);
      final value3 = BinaryValue(
        'Test',
        Uint8List.fromList([0xFF, 0x33, 0x77, 0xAB]),
      );
      check(value1).not((it) => it.equals(value3));
    });

    test('Int32Value', () {
      const value1 = Int32Value('Test', 1234);
      check(value1.name).equals('Test');
      check(value1.type).equals(RegistryValueType.int32);
      check(value1.value).equals(1234);
      check(value1.toString()).equals('Int32Value(Test, 1234)');
      const value2 = Int32Value('Test', 1234);
      check(value1).equals(value2);
      const value3 = Int32Value('Test', 1235);
      check(value1).not((it) => it.equals(value3));
    });

    test('Int64Value', () {
      const value1 = Int64Value('Test', 0xFEEDFACECAFEBEEF);
      check(value1.name).equals('Test');
      check(value1.type).equals(RegistryValueType.int64);
      check(value1.value).equals(0xFEEDFACECAFEBEEF);
      check(value1.toString()).equals('Int64Value(Test, -77129852519530769)');
      const value2 = Int64Value('Test', 0xFEEDFACECAFEBEEF);
      check(value1).equals(value2);
      const value3 = Int64Value('Test', 0xFEEDFACECAFEBEEE);
      check(value1).not((it) => it.equals(value3));
    });

    test('Link', () {
      const value1 = LinkValue('Test', r'C:\Windows\System32');
      check(value1.name).equals('Test');
      check(value1.type).equals(RegistryValueType.link);
      check(value1.value).equals(r'C:\Windows\System32');
      check(value1.toString()).equals(r'LinkValue(Test, C:\Windows\System32)');
      const value2 = LinkValue('Test', r'C:\Windows\System32');
      check(value1).equals(value2);
      const value3 = LinkValue('Test', r'C:\Windows\System31');
      check(value1).not((it) => it.equals(value3));
    });

    test('NoneValue', () {
      const value1 = NoneValue('Test');
      check(value1.name).equals('Test');
      check(value1.type).equals(RegistryValueType.none);
      check(value1.toString()).equals('NoneValue(Test)');
      const value2 = NoneValue('Test');
      check(value1).equals(value2);
      const value3 = NoneValue('Test2');
      check(value1).not((it) => it.equals(value3));
    });

    test('StringValue', () {
      const value1 = StringValue('Test', 'Hello, world!');
      check(value1.name).equals('Test');
      check(value1.type).equals(RegistryValueType.string);
      check(value1.value).equals('Hello, world!');
      check(value1.toString()).equals('StringValue(Test, Hello, world!)');
      const value2 = StringValue('Test', 'Hello, world!');
      check(value1).equals(value2);
      const value3 = StringValue('Test', 'Hello, world?');
      check(value1).not((it) => it.equals(value3));
    });

    test('StringArrayValue', () {
      const value1 = StringArrayValue('Test', ['Hello', 'world']);
      check(value1.name).equals('Test');
      check(value1.type).equals(RegistryValueType.stringArray);
      check(value1.value).deepEquals(['Hello', 'world']);
      check(value1.toString()).equals('StringArrayValue(Test, [Hello, world])');
      const value2 = StringArrayValue('Test', ['Hello', 'world']);
      check(value1).equals(value2);
      const value3 = StringArrayValue('Test', ['Hello', 'world?']);
      check(value1).not((it) => it.equals(value3));
    });

    test('UnexpandedStringValue', () {
      const value1 = UnexpandedStringValue('Test', r'%SystemRoot%\System32');
      check(value1.name).equals('Test');
      check(value1.type).equals(RegistryValueType.unexpandedString);
      check(value1.value).equals(r'%SystemRoot%\System32');
      check(
        value1.toString(),
      ).equals(r'UnexpandedStringValue(Test, %SystemRoot%\System32)');
      const value2 = UnexpandedStringValue('Test', r'%SystemRoot%\System32');
      check(value1).equals(value2);
      const value3 = UnexpandedStringValue('Test', r'%SystemRoot%\System31');
      check(value1).not((it) => it.equals(value3));
    });
  });
}
