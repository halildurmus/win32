import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final metadata = MetadataLookup(
    await WindowsMetadataLoader().loadWin32Metadata(
      version: win32MetadataVersion,
    ),
  );

  group('ModuleRef', () {
    test('kernel32.dll', () {
      final function = metadata.findFunction(
        'Windows.Win32.Foundation',
        'SetLastError',
      );
      final moduleRef = function.implMap?.importScope;
      check(moduleRef).isNotNull();
      check(moduleRef!.name).equals('KERNEL32.dll');
    });
  });
}
