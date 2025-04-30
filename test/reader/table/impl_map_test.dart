import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final metadata = MetadataLookup(
    await WindowsMetadataLoader().loadWin32Metadata(
      version: win32MetadataVersion,
    ),
  );

  group('ImplMap', () {
    test('CreateWindowExW', () {
      final function = metadata.findFunction(
        'Windows.Win32.UI.WindowsAndMessaging',
        'CreateWindowExW',
      );
      final implMap = function.implMap;
      check(implMap).isNotNull();
      check(implMap!.flags).equals(
        PInvokeAttributes.noMangle |
            PInvokeAttributes.supportsLastError |
            PInvokeAttributes.callConvPlatformApi,
      );
      check(implMap.charSet).equals(CharSet.notSpecified);
      check(implMap.callingConvention).equals(CallingConvention.platformApi);
      check(implMap.memberForwarded.name).equals('CreateWindowExW');
      check(implMap.importName).equals('CreateWindowExW');
      check(implMap.importScope.name).equals('USER32.dll');
    });
  });
}
