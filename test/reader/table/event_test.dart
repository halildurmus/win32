import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWinrtMetadata(
    version: winrtMetadataVersion,
  );

  group('Event', () {
    test('StringMap.MapChanged', () {
      final stringMap = index.findSingleType(
        'Windows.Foundation.Collections',
        'StringMap',
      );
      final mapChanged = stringMap.findEvent('MapChanged');
      check(mapChanged.eventFlags).equals(const EventAttributes(0));
      check(mapChanged.name).equals('MapChanged');
      check(mapChanged.add.name).equals('add_MapChanged');
      check(mapChanged.add.signature()).equals(
        const MethodSignature(
          callingConvention: CallingConvention.HASTHIS,
          returnType: NamedValueType(
            TypeName('Windows.Foundation', 'EventRegistrationToken'),
          ),
          types: [
            NamedClassType(
              TypeName(
                'Windows.Foundation.Collections',
                'MapChangedEventHandler`2',
                generics: [StringType(), StringType()],
              ),
            ),
          ],
        ),
      );
      check(mapChanged.remove.name).equals('remove_MapChanged');
      check(mapChanged.remove.signature()).equals(
        const MethodSignature(
          callingConvention: CallingConvention.HASTHIS,
          types: [
            NamedValueType(
              TypeName('Windows.Foundation', 'EventRegistrationToken'),
            ),
          ],
        ),
      );
      check(mapChanged.raise).isNull();
      check(
        mapChanged.parent.namespace,
      ).equals('Windows.Foundation.Collections');
      check(mapChanged.parent.name).equals('StringMap');
    });
  });
}
