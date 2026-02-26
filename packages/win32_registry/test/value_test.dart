import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  group('RegistryValue', () {
    test('BinaryValue', () {
      final value1 = BinaryValue(.fromList([0xFF, 0x33, 0x77, 0xAA]));
      check(value1.type).equals(.binary);
      check(
        value1.value,
      ).deepEquals(Uint8List.fromList([0xFF, 0x33, 0x77, 0xAA]));
      check(value1.toString()).equals('BinaryValue([255, 51, 119, 170])');
      final value2 = BinaryValue(.fromList([0xFF, 0x33, 0x77, 0xAA]));
      check(value1).equals(value2);
      final value3 = BinaryValue(.fromList([0xFF, 0x33, 0x77, 0xAB]));
      check(value1).not((it) => it.equals(value3));
    });

    test('DwordValue', () {
      const value1 = DwordValue(1234);
      check(value1.type).equals(.dword);
      check(value1.value).equals(1234);
      check(value1.toString()).equals('DwordValue(1234)');
      const value2 = DwordValue(1234);
      check(value1).equals(value2);
      const value3 = DwordValue(1235);
      check(value1).not((it) => it.equals(value3));
    });

    test('QwordValue', () {
      const value1 = QwordValue(0xFEEDFACECAFEBEEF);
      check(value1.type).equals(.qword);
      check(value1.value).equals(0xFEEDFACECAFEBEEF);
      check(value1.toString()).equals('QwordValue(-77129852519530769)');
      const value2 = QwordValue(0xFEEDFACECAFEBEEF);
      check(value1).equals(value2);
      const value3 = QwordValue(0xFEEDFACECAFEBEEE);
      check(value1).not((it) => it.equals(value3));
    });

    test('Link', () {
      const value1 = LinkValue(r'C:\Windows\System32');
      check(value1.type).equals(.link);
      check(value1.value).equals(r'C:\Windows\System32');
      check(value1.toString()).equals(r'LinkValue(C:\Windows\System32)');
      const value2 = LinkValue(r'C:\Windows\System32');
      check(value1).equals(value2);
      const value3 = LinkValue(r'C:\Windows\System31');
      check(value1).not((it) => it.equals(value3));
    });

    test('NoneValue', () {
      const value1 = NoneValue();
      check(value1.type).equals(.none);
      check(value1.toString()).equals('NoneValue()');
      const value2 = NoneValue();
      check(value1).equals(value2);
    });

    test('StringValue', () {
      const value1 = StringValue('Hello, world!');
      check(value1.type).equals(.string);
      check(value1.value).equals('Hello, world!');
      check(value1.toString()).equals('StringValue(Hello, world!)');
      const value2 = StringValue('Hello, world!');
      check(value1).equals(value2);
      const value3 = StringValue('Hello, world?');
      check(value1).not((it) => it.equals(value3));
    });

    test('MultiStringValue', () {
      const value1 = MultiStringValue(['Hello', 'world']);
      check(value1.type).equals(.multiString);
      check(value1.value).deepEquals(['Hello', 'world']);
      check(value1.toString()).equals('MultiStringValue([Hello, world])');
      const value2 = MultiStringValue(['Hello', 'world']);
      check(value1).equals(value2);
      const value3 = MultiStringValue(['Hello', 'world?']);
      check(value1).not((it) => it.equals(value3));
    });

    test('UnexpandedStringValue', () {
      const value1 = UnexpandedStringValue(r'%SystemRoot%\System32');
      check(value1.type).equals(.unexpandedString);
      check(value1.value).equals(r'%SystemRoot%\System32');
      check(
        value1.toString(),
      ).equals(r'UnexpandedStringValue(%SystemRoot%\System32)');
      const value2 = UnexpandedStringValue(r'%SystemRoot%\System32');
      check(value1).equals(value2);
      const value3 = UnexpandedStringValue(r'%SystemRoot%\System31');
      check(value1).not((it) => it.equals(value3));
    });
  });
}
