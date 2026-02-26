import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWinrtMetadata(
    version: winrtMetadataVersion,
  );

  group('MethodSemantics', () {
    test('StringMap.MapChanged Event', () {
      final stringMap = index.findSingleType(
        'Windows.Foundation.Collections',
        'StringMap',
      );
      final mapChanged = stringMap.findEvent('MapChanged');
      final methodSemantics = mapChanged.methodSemantics;
      check(methodSemantics.length).equals(2);
      final [add, remove] = methodSemantics;
      check(add.token).equals(0x180007DD);
      check(add.association).isA<HasSemanticsEvent>();
      check(add.method.name).equals('add_MapChanged');
      check(add.semantics).equals(MethodSemanticsAttributes.addOn);
      check(remove.association).isA<HasSemanticsEvent>();
      check(remove.method.name).equals('remove_MapChanged');
      check(remove.semantics).equals(MethodSemanticsAttributes.removeOn);
    });

    test('StringMap.Size Property', () {
      final stringMap = index.findSingleType(
        'Windows.Foundation.Collections',
        'StringMap',
      );
      final size = stringMap.findProperty('Size');
      final methodSemantics = size.methodSemantics;
      check(methodSemantics.length).equals(1);
      final [get] = methodSemantics;
      check(get.association).isA<HasSemanticsProperty>();
      check(get.method.name).equals('get_Size');
      check(get.semantics).equals(MethodSemanticsAttributes.getter);
    });
  });
}
