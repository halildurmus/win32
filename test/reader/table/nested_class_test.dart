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
      final nestedClasses = index.nestedClass
          .where((nested) => nested.outer.index == typeDef.index)
          .toList();
      check(nestedClasses.length).equals(1);
      final nested = nestedClasses[0];
      check(nested.inner.namespace).isEmpty();
      check(nested.inner.name).equals('_Anonymous_e__Union');
      check(nested.outer.namespace).equals('Windows.Win32.Devices.Bluetooth');
      check(nested.outer.name).equals('BLUETOOTH_ADDRESS');
    });

    test('VARIANT', () {
      final typeDef = index.findSingleType(
        'Windows.Win32.System.Variant',
        'VARIANT',
      );
      var nestedClasses = index.nestedClass
          .where((e) => e.outer.index == typeDef.index)
          .toList();
      check(nestedClasses.length).equals(1);
      var nested = nestedClasses[0];
      check(nested.inner.namespace).isEmpty();
      check(nested.inner.name).equals('_Anonymous_e__Union');
      check(nested.outer.namespace).equals('Windows.Win32.System.Variant');
      check(nested.outer.name).equals('VARIANT');

      nestedClasses = index.nestedClass
          .where((e) => e.outer.index == nested.inner.index)
          .toList();
      check(nestedClasses.length).equals(1);
      nested = nestedClasses[0];
      check(nested.inner.namespace).isEmpty();
      check(nested.inner.name).equals('_Anonymous_e__Struct');
      check(nested.outer.namespace).isEmpty();
      check(nested.outer.name).equals('_Anonymous_e__Union');

      nestedClasses = index.nestedClass
          .where((e) => e.outer.index == nested.inner.index)
          .toList();
      check(nestedClasses.length).equals(1);
      nested = nestedClasses[0];
      check(nested.inner.namespace).isEmpty();
      check(nested.inner.name).equals('_Anonymous_e__Union');
      check(nested.outer.namespace).isEmpty();
      check(nested.outer.name).equals('_Anonymous_e__Struct');

      nestedClasses = index.nestedClass
          .where((e) => e.outer.index == nested.inner.index)
          .toList();
      check(nestedClasses.length).equals(1);
      nested = nestedClasses[0];
      check(nested.inner.namespace).isEmpty();
      check(nested.inner.name).equals('_Anonymous_e__Struct');
      check(nested.outer.namespace).isEmpty();
      check(nested.outer.name).equals('_Anonymous_e__Union');

      nestedClasses = index.nestedClass
          .where((e) => e.outer.index == nested.inner.index)
          .toList();
      check(nestedClasses).isEmpty();
    });
  });
}
