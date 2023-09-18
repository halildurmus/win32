@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope scope;

  setUpAll(() async {
    scope =
        await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  });

  test('BOOL types are projected to int', () {
    final typeDef =
        scope.findTypeDef('Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND')!;

    // BOOL fEnable;
    final fEnable = typeDef.fields[1];

    final fieldProjection = FieldProjection(fEnable);
    expect(fieldProjection.toString(), contains('@Int32()'));
    expect(fieldProjection.toString(), contains('external int'));
  });

  test('Structs are projected appropriately', () {
    final typeDef = scope
        .findTypeDef('Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT')!;

    // BOOL fEnable;
    final fEnable = typeDef.fields.first;

    final fieldProjection = FieldProjection(fEnable);
    expect(fieldProjection.toString(), contains('external WAVEFORMATEX'));
  });

  tearDownAll(MetadataStore.close);
}
