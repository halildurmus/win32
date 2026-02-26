import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  group('RegistryValueType', () {
    test('none', () {
      const none = RegistryValueType.none;
      check(none.raw).equals(REG_NONE);
      check(none.toString()).equals('RegistryValueType(REG_NONE)');
    });

    test('string', () {
      const string = RegistryValueType.string;
      check(string.raw).equals(REG_SZ);
      check(string.toString()).equals('RegistryValueType(REG_SZ)');
    });

    test('unexpandedString', () {
      const unexpandedString = RegistryValueType.unexpandedString;
      check(unexpandedString.raw).equals(REG_EXPAND_SZ);
      check(
        unexpandedString.toString(),
      ).equals('RegistryValueType(REG_EXPAND_SZ)');
    });

    test('binary', () {
      const binary = RegistryValueType.binary;
      check(binary.raw).equals(REG_BINARY);
      check(binary.toString()).equals('RegistryValueType(REG_BINARY)');
    });

    test('dword', () {
      const dword = RegistryValueType.dword;
      check(dword.raw).equals(REG_DWORD);
      check(dword.toString()).equals('RegistryValueType(REG_DWORD)');
    });

    test('link', () {
      const link = RegistryValueType.link;
      check(link.raw).equals(REG_LINK);
      check(link.toString()).equals('RegistryValueType(REG_LINK)');
    });

    test('multiString', () {
      const multiString = RegistryValueType.multiString;
      check(multiString.raw).equals(REG_MULTI_SZ);
      check(multiString.toString()).equals('RegistryValueType(REG_MULTI_SZ)');
    });

    test('qword', () {
      const qword = RegistryValueType.qword;
      check(qword.raw).equals(REG_QWORD);
      check(qword.toString()).equals('RegistryValueType(REG_QWORD)');
    });

    test('fromRaw', () {
      check(RegistryValueType.fromRaw(REG_NONE)).equals(.none);
      check(RegistryValueType.fromRaw(REG_SZ)).equals(.string);
      check(RegistryValueType.fromRaw(REG_EXPAND_SZ)).equals(.unexpandedString);
      check(RegistryValueType.fromRaw(REG_BINARY)).equals(.binary);
      check(RegistryValueType.fromRaw(REG_DWORD)).equals(.dword);
      check(RegistryValueType.fromRaw(REG_LINK)).equals(.link);
      check(RegistryValueType.fromRaw(REG_MULTI_SZ)).equals(.multiString);
      check(RegistryValueType.fromRaw(REG_QWORD)).equals(.qword);
      const unknownType = REG_VALUE_TYPE(0xFFFFFFFF);
      final type = RegistryValueType.fromRaw(unknownType);
      check(type.raw).equals(unknownType);
      check(type.toString()).equals('RegistryValueType(0xFFFFFFFF)');
    });
  });
}
