import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataIndex index;

  setUpAll(() async {
    index = await fixtures.loadWin32Metadata();
  });

  group('Module', () {
    test('Windows.Win32.winmd', () {
      check(index.module.length).equals(1);
      final module = index.module.first;
      check(module.token).equals(0x00000000);
      check(module.name).equals('Windows.Win32.winmd');
      check(
        module.mvid.toString(),
      ).equals('4a520299-e458-4675-befb-318972b60e6a');
    });
  });
}
