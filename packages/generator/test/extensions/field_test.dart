import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;

void main() {
  setUpAll(WindowsMetadata.load);

  group('Field', () {
    test('bitFields', () {
      final menuBarInfo = WindowsMetadata.findTypeDefByName('MENUBARINFO');
      check(menuBarInfo.findField('hwndMenu').bitFields).isEmpty();
      final bitFields = menuBarInfo.findField('_bitfield').bitFields;
      check(bitFields)
        ..length.equals(3)
        ..deepEquals([
          const NativeBitFieldAttribute('fBarFocused', 0, 1),
          const NativeBitFieldAttribute('fFocused', 1, 1),
          const NativeBitFieldAttribute('fUnused', 2, 30),
        ]);
    });

    test('instanceName', () {
      final charInfo = WindowsMetadata.findTypeDefByName('CHAR_INFO');
      final char = charInfo.findField('Char');
      check(char.instanceName).equals('Char');
      check(char.type).isA<TypeDefType>();
      final typeDef = (char.type as TypeDefType).typeDef;
      final [unicodeChar, asciiChar] = typeDef.fields;
      check(unicodeChar.instanceName).equals('Char.UnicodeChar');
      check(asciiChar.instanceName).equals('Char.AsciiChar');
      final attributes = charInfo.findField('Attributes');
      check(attributes.instanceName).equals('Attributes');
    });

    test('isArray', () {
      final queryService = WindowsMetadata.findTypeDefByName(
        'BTH_QUERY_SERVICE',
      );
      final uuids = queryService.findField('uuids');
      check(uuids.isArray).isTrue();
      final numRange = queryService.findField('numRange');
      check(numRange.isArray).isFalse();
    });

    test('isCharArray', () {
      final deviceInfo = WindowsMetadata.findTypeDefByName(
        'BLUETOOTH_DEVICE_INFO',
      );
      final szName = deviceInfo.findField('szName');
      check(szName.isCharArray).isTrue();

      final queryService = WindowsMetadata.findTypeDefByName(
        'BTH_QUERY_SERVICE',
      );
      final uuids = queryService.findField('uuids');
      check(uuids.isCharArray).isFalse();
    });

    test('isFlexibleArray', () {
      final detailData = WindowsMetadata.findTypeDefByName(
        'SP_DEVICE_INTERFACE_DETAIL_DATA_W',
      );
      final devicePath = detailData.findField('DevicePath');
      check(devicePath.isFlexibleArray).isTrue();

      final designVector = WindowsMetadata.findTypeDefByName('DESIGNVECTOR');
      final dvValues = designVector.findField('dvValues');
      check(dvValues.isFlexibleArray).isFalse();
    });

    test('isObsoleteOrReserved', () {
      final variant = WindowsMetadata.findTypeDefByName('VARIANT');
      final obsoleteVariantBool = variant
          .nestedTypes[0]
          .nestedTypes[0]
          .nestedTypes[0]
          .findField('__OBSOLETE__VARIANT_BOOL');
      check(obsoleteVariantBool.isObsoleteOrReserved).isTrue();

      final peerRecord = WindowsMetadata.findTypeDefByName('PEER_RECORD');
      check(peerRecord.findField('type').isObsoleteOrReserved).isFalse();
      check(peerRecord.findField('securityData').isObsoleteOrReserved).isTrue();
      check(peerRecord.findField('data').isObsoleteOrReserved).isTrue();

      final rawKeyboard = WindowsMetadata.findTypeDefByName('RAWKEYBOARD');
      check(rawKeyboard.findField('Reserved').isObsoleteOrReserved).isTrue();
    });

    test('isPointer', () {
      final dhcpAllOptions = WindowsMetadata.findTypeDefByName(
        'DHCP_ALL_OPTIONS',
      );
      final vendorOptions = dhcpAllOptions.findField('VendorOptions');
      check(vendorOptions.isPointer).isTrue();
    });

    test('isStructSize', () {
      final wndClassEx = WindowsMetadata.findTypeDefByName('WNDCLASSEXW');
      final cbSize = wndClassEx.findField('cbSize');
      check(cbSize.isStructSize).isTrue();
      final style = wndClassEx.findField('style');
      check(style.isStructSize).isFalse();
    });
  });
}
