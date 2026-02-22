import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('ComInterfaceProjection', () {
    testInterface('IEnumNetworkConnections', (projection) {
      check(projection.name).equals('IEnumNetworkConnections');
      check(projection.originalName).equals('IEnumNetworkConnections');
      check(
        projection.inheritsFrom,
      ).isNotNull().has((it) => it.symbol!, 'symbol').equals('IDispatch');
      check(projection.methodProjections.length).equals(5);
      check(
        projection.methodProjections.map((it) => it.name),
      ).deepEquals(['newEnum', 'next', 'skip', 'reset', 'clone']);
    });

    testInterface('IInspectable', (projection) {
      check(projection.name).equals('IInspectable');
      check(projection.originalName).equals('IInspectable');
      check(
        projection.inheritsFrom,
      ).isNotNull().has((it) => it.symbol!, 'symbol').equals('IUnknown');
      check(projection.methodProjections.length).equals(3);
      check(
        projection.methodProjections.map((it) => it.name),
      ).deepEquals(['getIids', 'getRuntimeClassName', 'getTrustLevel']);
    });

    testInterface('IUnknown', (projection) {
      check(projection.name).equals('IUnknown');
      check(projection.originalName).equals('IUnknown');
      check(projection.inheritsFrom).isNull();
      check(projection.methodProjections.length).equals(3);
      check(
        projection.methodProjections.map((it) => it.name),
      ).deepEquals(['queryInterface', 'addRef', 'release']);
    });
  });
}

@isTest
void testInterface(
  String interfaceName,
  void Function(ComInterfaceProjection) projection,
) {
  test(interfaceName, () {
    final typeDef = WindowsMetadata.findTypeDefByName(interfaceName);
    projection(ComInterfaceProjection(typeDef));
  });
}
