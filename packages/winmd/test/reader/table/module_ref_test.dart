import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataLookup metadata;

  setUpAll(() async {
    metadata = .new(await fixtures.loadWin32Metadata());
  });

  group('ModuleRef', () {
    test('kernel32.dll', () {
      final function = metadata.findFunction(
        'Windows.Win32.Foundation',
        'SetLastError',
      );
      final moduleRef = function.implMap?.importScope;
      check(moduleRef).isNotNull();
      check(moduleRef!.token).equals(0x1A000005);
      check(moduleRef.name).equals('KERNEL32.dll');
    });
  });
}
