import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWin32Metadata(
    version: win32MetadataVersion,
  );

  group('Module', () {
    test('Windows.Win32.winmd', () {
      check(index.modules.length).equals(1);
      final module = index.modules.first;
      check(module.name).equals('Windows.Win32.winmd');
      check(
        module.mvid.toString(),
      ).equals('4a520299-e458-4675-befb-318972b60e6a');
    });
  });
}
