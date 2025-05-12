import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWin32Metadata(
    version: win32MetadataVersion,
  );

  test('AssemblyRefProcessor', () {
    final assemblyRefProcessor = AssemblyRefProcessor(index, 0, 0);
    check(assemblyRefProcessor.processor).equals(0);
    check(assemblyRefProcessor.assemblyRef).isNull();
  });
}
