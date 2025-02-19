import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  group('RegistryValueType', () {
    test('none', () {
      const none = RegistryValueType.none;
      check(none.value).equals(REG_NONE);
      check(none.toString()).equals('REG_NONE');
    });

    test('string', () {
      const string = RegistryValueType.string;
      check(string.value).equals(REG_SZ);
      check(string.toString()).equals('REG_SZ');
    });

    test('unexpandedString', () {
      const unexpandedString = RegistryValueType.unexpandedString;
      check(unexpandedString.value).equals(REG_EXPAND_SZ);
      check(unexpandedString.toString()).equals('REG_EXPAND_SZ');
    });

    test('binary', () {
      const binary = RegistryValueType.binary;
      check(binary.value).equals(REG_BINARY);
      check(binary.toString()).equals('REG_BINARY');
    });

    test('int32', () {
      const int32 = RegistryValueType.int32;
      check(int32.value).equals(REG_DWORD);
      check(int32.toString()).equals('REG_DWORD');
    });

    test('link', () {
      const link = RegistryValueType.link;
      check(link.value).equals(REG_LINK);
      check(link.toString()).equals('REG_LINK');
    });

    test('stringArray', () {
      const stringArray = RegistryValueType.stringArray;
      check(stringArray.value).equals(REG_MULTI_SZ);
      check(stringArray.toString()).equals('REG_MULTI_SZ');
    });

    test('int64', () {
      const int64 = RegistryValueType.int64;
      check(int64.value).equals(REG_QWORD);
      check(int64.toString()).equals('REG_QWORD');
    });

    test('fromWin32', () {
      check(
        RegistryValueType.fromWin32(REG_NONE),
      ).equals(RegistryValueType.none);
      check(
        RegistryValueType.fromWin32(REG_SZ),
      ).equals(RegistryValueType.string);
      check(
        RegistryValueType.fromWin32(REG_EXPAND_SZ),
      ).equals(RegistryValueType.unexpandedString);
      check(
        RegistryValueType.fromWin32(REG_BINARY),
      ).equals(RegistryValueType.binary);
      check(
        RegistryValueType.fromWin32(REG_DWORD),
      ).equals(RegistryValueType.int32);
      check(
        RegistryValueType.fromWin32(REG_LINK),
      ).equals(RegistryValueType.link);
      check(
        RegistryValueType.fromWin32(REG_MULTI_SZ),
      ).equals(RegistryValueType.stringArray);
      check(
        RegistryValueType.fromWin32(REG_QWORD),
      ).equals(RegistryValueType.int64);
      check(() => RegistryValueType.fromWin32(-1))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Unknown registry value type: -1');
    });
  });
}
