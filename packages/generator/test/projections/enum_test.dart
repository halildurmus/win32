import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('EnumProjection', () {
    testEnum('APTTYPE', (projection) {
      check(projection.name).equals('APTTYPE');
      check(projection.originalName).equals('APTTYPE');
      check(projection.isBitwiseEnum).isFalse();
      check(projection.fields).length.equals(5);
      check(
        projection.fields.map(
          (f) => (f.name, f.assignment!.accept(DartEmitter()).toString()),
        ),
      ).deepEquals([
        ('APTTYPE_CURRENT', 'APTTYPE(-1)'),
        ('APTTYPE_STA', 'APTTYPE(0)'),
        ('APTTYPE_MTA', 'APTTYPE(1)'),
        ('APTTYPE_NA', 'APTTYPE(2)'),
        ('APTTYPE_MAINSTA', 'APTTYPE(3)'),
      ]);
      check(projection.methods).isEmpty();
    });

    testEnum('XINPUT_CAPABILITIES_FLAGS', (projection) {
      check(projection.name).equals('XINPUT_CAPABILITIES_FLAGS');
      check(projection.originalName).equals('XINPUT_CAPABILITIES_FLAGS');
      check(projection.isBitwiseEnum).isTrue();
      check(projection.fields).length.equals(5);
      check(
        projection.fields.map(
          (f) => (f.name, f.assignment!.accept(DartEmitter()).toString()),
        ),
      ).deepEquals([
        ('XINPUT_CAPS_VOICE_SUPPORTED', 'XINPUT_CAPABILITIES_FLAGS(4)'),
        ('XINPUT_CAPS_FFB_SUPPORTED', 'XINPUT_CAPABILITIES_FLAGS(1)'),
        ('XINPUT_CAPS_WIRELESS', 'XINPUT_CAPABILITIES_FLAGS(2)'),
        ('XINPUT_CAPS_PMD_SUPPORTED', 'XINPUT_CAPABILITIES_FLAGS(8)'),
        ('XINPUT_CAPS_NO_NAVIGATION', 'XINPUT_CAPABILITIES_FLAGS(16)'),
      ]);
      check(projection.methods).length.equals(3);
      check(
        projection.methods.map((m) => m.name),
      ).deepEquals(['has', 'operator &', 'operator |']);
    });
  });
}

@isTest
void testEnum(String enumName, void Function(EnumProjection) projection) {
  test(enumName, () {
    final typeDef = WindowsMetadata.findTypeDefByName(enumName);
    projection(EnumProjection(typeDef));
  });
}
