import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('ModuleRef', () {
    test('safeName', () {
      final roActivateInstance = WindowsMetadata.findFunctionByName(
        'RoActivateInstance',
      );
      check(
        roActivateInstance.module!.safeName,
      ).equals('api_ms_win_core_winrt_l1_1_0');

      final bluetoothAuthenticateDeviceEx = WindowsMetadata.findFunctionByName(
        'BluetoothAuthenticateDeviceEx',
      );
      check(bluetoothAuthenticateDeviceEx.module!.safeName).equals('bthprops');

      final coCreateGuid = WindowsMetadata.findFunctionByName('CoCreateGuid');
      check(coCreateGuid.module!.safeName).equals('ole32');

      final addJob = WindowsMetadata.findFunctionByName('AddJobW');
      check(addJob.module!.safeName).equals('winspool');
    });
  });
}
