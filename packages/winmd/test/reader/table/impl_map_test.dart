import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataLookup metadata;

  setUpAll(() async {
    metadata = .new(await fixtures.loadWin32Metadata());
  });

  group('ImplMap', () {
    test('CreateWindowExW', () {
      final function = metadata.findFunction(
        'Windows.Win32.UI.WindowsAndMessaging',
        'CreateWindowExW',
      );
      final implMap = function.implMap;
      check(implMap).isNotNull();
      check(implMap!.token).equals(0x1C0042E2);
      check(implMap.flags).equals(
        PInvokeAttributes.noMangle |
            PInvokeAttributes.supportsLastError |
            PInvokeAttributes.callConvPlatformApi,
      );
      check(implMap.charSet).equals(CharSet.notSpecified);
      check(implMap.callConv).equals(CallConv.platformApi);
      check(implMap.memberForwarded.name).equals('CreateWindowExW');
      check(implMap.importName).equals('CreateWindowExW');
      check(implMap.importScope.name).equals('USER32.dll');
    });
  });
}
