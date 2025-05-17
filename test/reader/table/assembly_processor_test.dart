import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWin32Metadata(
    version: win32MetadataVersion,
  );

  test('AssemblyProcessor', () {
    final assemblyProcessor = AssemblyProcessor(index, 0, 0);
    check(assemblyProcessor.token).equals(0x21000000);
    check(assemblyProcessor.processor).equals(0);
  });
}
