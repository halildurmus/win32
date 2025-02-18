@TestOn('windows')
library;

import 'package:test/test.dart';
import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope scope;

  setUpAll(() async {
    scope = await MetadataStore.loadWin32Metadata(
      version: win32MetadataVersion,
    );
  });

  test('Packed structs projected correctly 1', () {
    // DWM_BLURBEHIND contains a BOOL, which appears in Win32 metadata as a
    // struct, but that shouldn't stop it being packed.
    final typeDef = scope.findTypeDef(
      'Windows.Win32.Graphics.Dwm.DWM_BLURBEHIND',
    );

    final structProjection = StructProjection(typeDef!, 'DWM_BLURBEHIND');
    expect(structProjection.packingAlignment, equals(1));
    expect(structProjection.classPreamble, contains('@Packed(1)'));
  });

  test('Packed structs projected correctly 2', () {
    final typeDef = scope.findTypeDef(
      'Windows.Win32.Media.Multimedia.MCI_OPEN_PARMSW',
    );

    final structProjection = StructProjection(typeDef!, 'MCI_OPEN_PARMS');
    expect(structProjection.packingAlignment, equals(1));
    expect(structProjection.classPreamble, contains('@Packed(1)'));
  });

  test('Packed structs projected correctly 3', () {
    final typeDef = scope.findTypeDef(
      'Windows.Win32.Media.Multimedia.YAMAHA_ADPCMWAVEFORMAT',
    );

    final structProjection = StructProjection(
      typeDef!,
      'YAMAHA_ADPCMWAVEFORMAT',
    );
    expect(structProjection.packingAlignment, equals(1));
    expect(structProjection.classPreamble, contains('@Packed(1)'));
  });

  test('Packed structs projected correctly 4', () {
    final typeDef = scope.findTypeDef(
      'Windows.Win32.Devices.Bluetooth.SOCKADDR_BTH',
    );

    final structProjection = StructProjection(typeDef!, 'SOCKADDR_BTH');
    expect(structProjection.packingAlignment, equals(1));
    expect(structProjection.classPreamble, contains('@Packed(1)'));
  });

  tearDownAll(MetadataStore.close);
}
