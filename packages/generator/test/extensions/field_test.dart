@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('Field', () {
    test('bitFields', () {
      final menuBarInfo = WindowsMetadata.typeDef('MENUBARINFO');
      check(menuBarInfo.field('hwndMenu').bitFields).isEmpty();
      final bitFields = menuBarInfo.field('_bitfield').bitFields;
      check(bitFields)
        ..length.equals(3)
        ..deepEquals([
          const NativeBitFieldAttribute('fBarFocused', 0, 1),
          const NativeBitFieldAttribute('fFocused', 1, 1),
          const NativeBitFieldAttribute('fUnused', 2, 30),
        ]);
    });

    test('instanceName', () {
      final charInfo = WindowsMetadata.typeDef('CHAR_INFO');
      final char = charInfo.field('Char');
      check(char.instanceName).equals('Char');
      final [unicodeChar, asciiChar] = char.typeIdentifier.type!.fields;
      check(unicodeChar.instanceName).equals('Char.UnicodeChar');
      check(asciiChar.instanceName).equals('Char.AsciiChar');
      final attributes = charInfo.field('Attributes');
      check(attributes.instanceName).equals('Attributes');
    });

    test('isArray', () {
      final queryService = WindowsMetadata.typeDef('BTH_QUERY_SERVICE');
      final uuids = queryService.field('uuids');
      check(uuids.isArray).isTrue();
      final numRange = queryService.field('numRange');
      check(numRange.isArray).isFalse();
    });

    test('isCharArray', () {
      final deviceInfo = WindowsMetadata.typeDef('BLUETOOTH_DEVICE_INFO');
      final szName = deviceInfo.field('szName');
      check(szName.isCharArray).isTrue();

      final queryService = WindowsMetadata.typeDef('BTH_QUERY_SERVICE');
      final uuids = queryService.field('uuids');
      check(uuids.isCharArray).isFalse();
    });

    test('isFlexibleArray', () {
      final detailData = WindowsMetadata.typeDef(
        'SP_DEVICE_INTERFACE_DETAIL_DATA_W',
      );
      final devicePath = detailData.field('DevicePath');
      check(devicePath.isFlexibleArray).isTrue();

      final designVector = WindowsMetadata.typeDef('DESIGNVECTOR');
      final dvValues = designVector.field('dvValues');
      check(dvValues.isFlexibleArray).isFalse();
    });

    test('isNested', () {
      final bluetoothAddress = WindowsMetadata.typeDef('BLUETOOTH_ADDRESS');
      final anonymous = bluetoothAddress.field('Anonymous');
      check(anonymous.isNested).isTrue();
    });

    test('isNestedArray', () {
      final wlanRawDataList = WindowsMetadata.typeDef('WLAN_RAW_DATA_LIST');
      final dataList = wlanRawDataList.field('DataList');
      check(dataList.isNestedArray).isTrue();
    });

    test('isNestedPointer', () {
      final dhcpAllOptions = WindowsMetadata.typeDef('DHCP_ALL_OPTIONS');
      final vendorOptions = dhcpAllOptions.field('VendorOptions');
      check(vendorOptions.isNestedPointer).isTrue();
    });

    test('isObsoleteOrReserved', () {
      final variant = WindowsMetadata.typeDef('VARIANT');
      final obsoleteVariantBool = variant
          .fields[0]
          .typeIdentifier
          .type!
          .fields[0]
          .typeIdentifier
          .type!
          .fields
          .last
          .typeIdentifier
          .type!
          .field('__OBSOLETE__VARIANT_BOOL');
      check(obsoleteVariantBool.isObsoleteOrReserved).isTrue();

      final peerRecord = WindowsMetadata.typeDef('PEER_RECORD');
      check(peerRecord.field('type').isObsoleteOrReserved).isFalse();
      check(peerRecord.field('securityData').isObsoleteOrReserved).isTrue();
      check(peerRecord.field('data').isObsoleteOrReserved).isTrue();

      final rawKeyboard = WindowsMetadata.typeDef('RAWKEYBOARD');
      check(rawKeyboard.field('Reserved').isObsoleteOrReserved).isTrue();
    });

    test('isPointer', () {
      final dhcpAllOptions = WindowsMetadata.typeDef('DHCP_ALL_OPTIONS');
      final vendorOptions = dhcpAllOptions.field('VendorOptions');
      check(vendorOptions.isPointer).isTrue();
    });

    test('isStructSize', () {
      final wndClassEx = WindowsMetadata.typeDef('WNDCLASSEXW');
      final cbSize = wndClassEx.field('cbSize');
      check(cbSize.isStructSize).isTrue();
      final style = wndClassEx.field('style');
      check(style.isStructSize).isFalse();
    });
  });

  tearDownAll(WindowsMetadata.close);
}
