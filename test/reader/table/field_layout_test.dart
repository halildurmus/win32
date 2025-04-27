import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  final index = await WindowsMetadataLoader.loadWin32Metadata();

  group('FieldLayout', () {
    test('WHV_PARTITION_PROPERTY.ProcessorCount', () {
      final typeDef = index.getSingleType(
        'Windows.Win32.System.Hypervisor',
        'WHV_PARTITION_PROPERTY',
      );
      final field = typeDef.findField('ProcessorCount');
      check(field).isNotNull();
      final layout = field!.layout;
      check(layout).isNotNull();
      check(layout!.offset).equals(0);
      check(layout.field.name).equals('ProcessorCount');
    });
  });
}
