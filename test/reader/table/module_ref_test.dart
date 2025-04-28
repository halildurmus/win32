import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  final index = EntityIndex(await WindowsMetadataLoader.loadWin32Metadata());

  group('ModuleRef', () {
    test('kernel32.dll', () {
      final function = index.findFunction(
        'Windows.Win32.Foundation',
        'SetLastError',
      );
      final moduleRef = function.implMap?.importScope;
      check(moduleRef).isNotNull();
      check(moduleRef!.name).equals('KERNEL32.dll');
    });
  });
}
