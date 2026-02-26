import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWin32Metadata(
    version: win32MetadataVersion,
  );

  test('AssemblyOS', () {
    final assemblyOS = AssemblyOS(index, 0, 0);
    check(assemblyOS.token).equals(0x22000000);
    check(assemblyOS.osPlatformId).equals(0);
    check(assemblyOS.osMajorVersion).equals(0);
    check(assemblyOS.osMinorVersion).equals(0);
  });
}
