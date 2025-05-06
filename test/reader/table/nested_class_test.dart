import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWin32Metadata(
    version: win32MetadataVersion,
  );

  group('NestedClass', () {
    test('BLUETOOTH_ADDRESS', () {
      final typeDef = index.findSingleType(
        'Windows.Win32.Devices.Bluetooth',
        'BLUETOOTH_ADDRESS',
      );
      final nested = typeDef.nested;
      check(nested).isNotNull();
      check(nested!.inner.namespace).isEmpty();
      check(nested.inner.name).equals('_Anonymous_e__Union');
      check(nested.outer.namespace).equals('Windows.Win32.Devices.Bluetooth');
      check(nested.outer.name).equals('BLUETOOTH_ADDRESS');
    });

    test('VARIANT', () {
      final typeDef = index.findSingleType(
        'Windows.Win32.System.Variant',
        'VARIANT',
      );
      var nested = typeDef.nested;
      check(nested).isNotNull();
      check(nested!.inner.namespace).isEmpty();
      check(nested.inner.name).equals('_Anonymous_e__Union');
      check(nested.outer.namespace).equals('Windows.Win32.System.Variant');
      check(nested.outer.name).equals('VARIANT');

      nested = nested.inner.nested;
      check(nested).isNotNull();
      check(nested!.inner.namespace).isEmpty();
      check(nested.inner.name).equals('_Anonymous_e__Struct');
      check(nested.outer.namespace).isEmpty();
      check(nested.outer.name).equals('_Anonymous_e__Union');

      nested = nested.inner.nested;
      check(nested).isNotNull();
      check(nested!.inner.namespace).isEmpty();
      check(nested.inner.name).equals('_Anonymous_e__Union');
      check(nested.outer.namespace).isEmpty();
      check(nested.outer.name).equals('_Anonymous_e__Struct');

      nested = nested.inner.nested;
      check(nested).isNotNull();
      check(nested!.inner.namespace).isEmpty();
      check(nested.inner.name).equals('_Anonymous_e__Struct');
      check(nested.outer.namespace).isEmpty();
      check(nested.outer.name).equals('_Anonymous_e__Union');

      nested = nested.inner.nested;
      check(nested).isNull();
    });
  });
}
