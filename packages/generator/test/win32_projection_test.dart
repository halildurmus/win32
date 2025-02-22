@TestOn('windows')
library;

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope scope;

  setUpAll(() async {
    scope = await MetadataStore.loadWin32Scope(version: win32MetadataVersion);
  });

  test('Special types exist in metadata', () {
    for (final specialType in specialTypes.keys.where(
      (type) => type.startsWith('Windows.Win32'),
    )) {
      expect(
        scope.findTypeDef(specialType),
        isNotNull,
        reason: '$specialType missing',
      );
    }
  });

  test('Packing aligment correct for non-packed struct', () {
    final struct = scope.findTypeDef(
      'Windows.Win32.Graphics.Printing.JOB_INFO_1W',
    );
    expect(struct, isNotNull);

    final projection = StructProjection(struct!, 'JOB_INFO_1');
    expect(projection.toString(), isNot(contains('@Packed')));
  });

  test('Packing aligment correct for packed but non-nested struct', () {
    final struct = scope.findTypeDef(
      'Windows.Win32.UI.WindowsAndMessaging.DLGTEMPLATE',
    );
    expect(struct, isNotNull);

    final projection = StructProjection(struct!, 'DLGTEMPLATE');
    expect(projection.toString(), contains('@Packed(2)'));
  });

  test('Packing aligment does not overflow for structs with enums', () {
    final struct = scope.findTypeDef(
      'Windows.Win32.Devices.Bluetooth.BLUETOOTH_AUTHENTICATION_METHOD',
    );
    expect(struct, isNotNull);

    final projection = StructProjection(
      struct!,
      'BLUETOOTH_AUTHENTICATION_METHOD',
    );
    expect(projection.toString(), isNot(contains('@Packed')));
  });

  tearDownAll(MetadataStore.close);
}
