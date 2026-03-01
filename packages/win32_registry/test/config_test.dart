import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32_registry/win32_registry.dart';

void main() {
  group('RegistryOpenConfig', () {
    test('uses correct default values', () {
      const config = RegistryOpenConfig();
      check(config.access).equals(.read);
      check(config.create).isFalse();
      check(config.options).equals(.nonVolatile);
      check(config.transaction).isNull();
    });

    test('copyWith updates only specified fields', () {
      const original = RegistryOpenConfig();
      final updated = original.copyWith(access: .write, create: true);
      check(updated.access).equals(.write);
      check(updated.create).isTrue();
      // unchanged fields
      check(updated.options).equals(original.options);
      check(updated.transaction).equals(original.transaction);
    });
  });
}
