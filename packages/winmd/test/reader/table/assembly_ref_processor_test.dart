import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataIndex index;

  setUpAll(() async {
    index = await fixtures.loadWin32Metadata();
  });

  test('AssemblyRefProcessor', () {
    final assemblyRefProcessor = AssemblyRefProcessor(index, 0, 0);
    check(assemblyRefProcessor.token).equals(0x24000000);
    check(assemblyRefProcessor.processor).equals(0);
    check(assemblyRefProcessor.assemblyRef).isNull();
  });
}
