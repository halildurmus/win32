@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Test interface output', () {
    final scope = MetadataStore.getWin32Scope();
    final iEnumNetworkConnections = scope.findTypeDef(
        'Windows.Win32.Networking.NetworkListManager.IEnumNetworkConnections')!;
    final interfaceProjection = ComInterfaceProjection(iEnumNetworkConnections);
    final testInterfaceProjection =
        TestInterfaceProjection(iEnumNetworkConnections, interfaceProjection);
    final projectionOutput = testInterfaceProjection.toString();
    expect(projectionOutput, contains('NewEnum'));
  }, skip: 'Have not yet implemented COM property tests.');
}
