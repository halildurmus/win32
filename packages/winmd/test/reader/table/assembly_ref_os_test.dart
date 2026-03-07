import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataIndex index;

  setUpAll(() async {
    index = await fixtures.loadWin32Metadata();
  });

  test('AssemblyRefOS', () {
    final assemblyRefOS = AssemblyRefOS(index, 0, 0);
    check(assemblyRefOS.token).equals(0x25000000);
    check(assemblyRefOS.osPlatformId).equals(0);
    check(assemblyRefOS.osMajorVersion).equals(0);
    check(assemblyRefOS.osMinorVersion).equals(0);
    check(assemblyRefOS.assemblyRef).isNull();
  });
}
