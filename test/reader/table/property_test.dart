import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWinrtMetadata(
    version: winrtMetadataVersion,
  );

  group('Property', () {
    test('StringMap.Size', () {
      final stringMap = index.findSingleType(
        'Windows.Foundation.Collections',
        'StringMap',
      );
      final size = stringMap.findProperty('Size');
      check(size.flags).equals(const PropertyAttributes(0));
      check(size.name).equals('Size');
      check(
        size.signature(),
      ).equals(const MethodSignature(returnType: Uint32Type()));
      check(size.constant).isNull();
      check(size.methodSemantics.length).equals(1);
      final getter = size.getter;
      check(getter).isNotNull();
      check(getter!.name).equals('get_Size');
      check(
        getter.signature(),
      ).equals(const MethodSignature(returnType: Uint32Type()));
      check(size.setter).isNull();
      check(size.parent.namespace).equals('Windows.Foundation.Collections');
      check(size.parent.name).equals('StringMap');
    });
  });
}
