@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

import '../../tool/projection/struct.dart';

void main() {
  test('Packed structs projected correctly 1', () {
    // DWM_BLURBEHIND contains a BOOL, which appears in Win32 metadata as a
    // struct, but that shouldn't stop it being packed.
    final scope = MetadataStore.getWin32Scope();

    final typeDef =
        scope.findTypeDef('Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND');

    final structProjection = StructProjection(typeDef!, 'DWM_BLURBEHIND');
    expect(structProjection.packingAlignment, equals(1));
    expect(structProjection.classPreamble, contains('@Packed(1)'));
  });

  test('Packed structs projected correctly 2', () {
    final scope = MetadataStore.getWin32Scope();

    final typeDef =
        scope.findTypeDef('Windows.Win32.Media.Multimedia.MCI_OPEN_PARMSW');

    final structProjection = StructProjection(typeDef!, 'MCI_OPEN_PARMS');
    expect(structProjection.packingAlignment, equals(1));
    expect(structProjection.classPreamble, contains('@Packed(1)'));
  });

  test('Packed structs projected correctly 3', () {
    final scope = MetadataStore.getWin32Scope();

    final typeDef = scope
        .findTypeDef('Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT');

    final structProjection =
        StructProjection(typeDef!, 'YAMAHA_ADPCMWAVEFORMAT');
    expect(structProjection.packingAlignment, equals(1));
    expect(structProjection.classPreamble, contains('@Packed(1)'));
  });
}
