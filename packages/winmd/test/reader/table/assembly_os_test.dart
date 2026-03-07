import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataIndex index;

  setUpAll(() async {
    index = await fixtures.loadWin32Metadata();
  });

  test('AssemblyOS', () {
    final assemblyOS = AssemblyOS(index, 0, 0);
    check(assemblyOS.token).equals(0x22000000);
    check(assemblyOS.osPlatformId).equals(0);
    check(assemblyOS.osMajorVersion).equals(0);
    check(assemblyOS.osMinorVersion).equals(0);
  });
}
