import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWin32Metadata(
    version: win32MetadataVersion,
  );

  group('FieldLayout', () {
    test('WHV_PARTITION_PROPERTY.ProcessorCount', () {
      final typeDef = index.findSingleType(
        'Windows.Win32.System.Hypervisor',
        'WHV_PARTITION_PROPERTY',
      );
      final field = typeDef.findField('ProcessorCount');
      final layout = field.layout;
      check(layout).isNotNull();
      check(layout!.token).equals(0x100004E9);
      check(layout.offset).equals(0);
      check(layout.field.name).equals('ProcessorCount');
    });
  });
}
