import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataIndex index;

  setUpAll(() async {
    index = await fixtures.loadWinrtMetadata();
  });

  group('Property', () {
    test('StringMap.Size', () {
      final stringMap = index.findSingleType(
        'Windows.Foundation.Collections',
        'StringMap',
      );
      final size = stringMap.findProperty('Size');
      check(size.token).equals(0x17002572);
      check(size.flags).equals(const PropertyAttributes(0));
      check(size.name).equals('Size');
      check(size.signature).equals(
        const PropertySig(
          callingConvention: CallingConvention.HASTHIS,
          returnType: Uint32Type(),
        ),
      );
      check(size.constant).isNull();
      check(size.methodSemantics.length).equals(1);
      final getter = size.getter;
      check(getter).isNotNull();
      check(getter!.name).equals('get_Size');
      check(getter.signature).equals(
        const MethodSignature(
          callingConvention: CallingConvention.HASTHIS,
          returnType: Uint32Type(),
        ),
      );
      check(size.setter).isNull();
      check(size.parent.namespace).equals('Windows.Foundation.Collections');
      check(size.parent.name).equals('StringMap');
    });
  });
}
