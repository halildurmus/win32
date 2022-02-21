@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/projection/interface.dart';
import '../../tool/projection/test_interface.dart';

void main() {
  test('Test interface output', () {
    final scope = MetadataStore.getWin32Scope();
    final iEnumNetworkConnections = scope.findTypeDef(
        'Windows.Win32.Networking.NetworkListManager.IEnumNetworkConnections')!;
    final interfaceProjection = InterfaceProjection(iEnumNetworkConnections);
    final testInterfaceProjection =
        TestInterfaceProjection(iEnumNetworkConnections, interfaceProjection);
    final projectionOutput = testInterfaceProjection.toString();
    expect(projectionOutput, contains('NewEnum'));
  }, skip: 'Have not yet implemented COM property tests.');
}
