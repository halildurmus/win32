@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/projection/type.dart';

void main() {
  test('BOOL types are projected to int', () {
    final scope = MetadataStore.getWin32Scope();

    final typeDef =
        scope.findTypeDef('Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND')!;

    // BOOL fEnable;
    final fEnable = typeDef.fields[1].typeIdentifier;

    final typeProjection = TypeProjection(fEnable);
    expect(typeProjection.dartType, equals('int'));
    expect(typeProjection.isDartPrimitive, isTrue);
  });

  test('Structs are projected to classes', () {
    final scope = MetadataStore.getWin32Scope();

    final typeDef = scope
        .findTypeDef('Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT')!;

    // WAVEFORMATEX wfx;
    final wfx = typeDef.fields.first.typeIdentifier;

    final typeProjection = TypeProjection(wfx);
    expect(typeProjection.dartType, equals('WAVEFORMATEX'));
    expect(typeProjection.isDartPrimitive, isFalse);
  });
}
