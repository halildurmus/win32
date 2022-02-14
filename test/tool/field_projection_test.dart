@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/projection/field.dart';

void main() {
  test('BOOL types are projected to int', () {
    final scope = MetadataStore.getWin32Scope();

    final typeDef =
        scope.findTypeDef('Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND')!;

    // BOOL fEnable;
    final fEnable = typeDef.fields[1];

    final fieldProjection = FieldProjection(fEnable);
    expect(fieldProjection.toString(), contains('@Int32()'));
    expect(fieldProjection.toString(), contains('external int'));
  });

  test('Structs are projected appropriately', () {
    final scope = MetadataStore.getWin32Scope();

    final typeDef = scope
        .findTypeDef('Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT')!;

    // BOOL fEnable;
    final fEnable = typeDef.fields.first;

    final fieldProjection = FieldProjection(fEnable);
    expect(fieldProjection.toString(), contains('external WAVEFORMATEX'));
  });
}
