@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('ModuleRef', () {
    test('safeName', () {
      final roActivateInstance = WindowsMetadata.function('RoActivateInstance');
      check(
        roActivateInstance.module.safeName,
      ).equals('api_ms_win_core_winrt_l1_1_0');

      final bluetoothAuthenticateDeviceEx = WindowsMetadata.function(
        'BluetoothAuthenticateDeviceEx',
      );
      check(bluetoothAuthenticateDeviceEx.module.safeName).equals('bthprops');

      final coCreateGuid = WindowsMetadata.function('CoCreateGuid');
      check(coCreateGuid.module.safeName).equals('ole32');

      final addJob = WindowsMetadata.function('AddJobW');
      check(addJob.module.safeName).equals('winspool');
    });
  });

  tearDownAll(WindowsMetadata.close);
}
