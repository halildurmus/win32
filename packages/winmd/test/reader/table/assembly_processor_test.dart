import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataIndex index;

  setUpAll(() async {
    index = await fixtures.loadWin32Metadata();
  });

  test('AssemblyProcessor', () {
    final assemblyProcessor = AssemblyProcessor(index, 0, 0);
    check(assemblyProcessor.token).equals(0x21000000);
    check(assemblyProcessor.processor).equals(0);
  });
}
