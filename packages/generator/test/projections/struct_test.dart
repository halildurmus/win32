import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;

import '../helpers.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('StructProjection', () {
    testStruct('DRIVER_EXTENSION', (projection) {
      check(projection.name).equals('DRIVER_EXTENSION');
      check(projection.originalName).equals('DRIVER_EXTENSION');
      check(projection.baseType.symbol).equals('Struct');
      check(projection.packingAlignment).isZero();
      check(projection.fieldProjections.length).equals(4);
      check(
        projection.fieldProjections.map((it) => it.name),
      ).deepEquals(['DriverObject', 'AddDevice', 'Count', 'ServiceKeyName']);
      check(projection.needsPropertyAccessors).isFalse();
      check(projection.nestedTypeProjections).isEmpty();
    });

    testStruct('BLUETOOTH_ADDRESS', (projection) {
      check(projection.name).equals('BLUETOOTH_ADDRESS');
      check(projection.originalName).equals('BLUETOOTH_ADDRESS');
      check(projection.baseType.symbol).equals('Struct');
      check(projection.packingAlignment).isZero();
      check(projection.fieldProjections.length).equals(1);
      final [anonymous] = projection.fieldProjections;
      check(anonymous.name).equals('Anonymous');
      check(projection.needsPropertyAccessors).isFalse();
      check(projection.nestedTypeProjections.length).equals(1);
      final [bluetoothAddress0] = projection.nestedTypeProjections;
      check(bluetoothAddress0.name).equals('BLUETOOTH_ADDRESS_0');
      check(bluetoothAddress0.baseType.symbol).equals('Union');
      check(bluetoothAddress0.packingAlignment).isZero();
      check(bluetoothAddress0.fieldProjections.length).equals(2);
      check(
        bluetoothAddress0.fieldProjections.map((it) => it.name),
      ).deepEquals(['ullLong', 'rgBytes']);
      check(bluetoothAddress0.needsPropertyAccessors).isTrue();
    });

    testStruct('BITMAPFILEHEADER', (projection) {
      check(projection.name).equals('BITMAPFILEHEADER');
      check(projection.baseType.symbol).equals('Struct');
      check(projection.packingAlignment).equals(2);
      check(projection.fieldProjections.length).equals(5);
      check(projection.fieldProjections.map((it) => it.name)).deepEquals([
        'bfType',
        'bfSize',
        '_bfReserved1',
        '_bfReserved2',
        'bfOffBits',
      ]);
      check(projection.needsPropertyAccessors).isFalse();
      check(projection.nestedTypeProjections).isEmpty();
    });

    testStruct('DHCP_ALL_OPTIONS', (projection) {
      check(projection.name).equals('DHCP_ALL_OPTIONS');
      check(projection.originalName).equals('DHCP_ALL_OPTIONS');
      check(projection.baseType.symbol).equals('Struct');
      check(projection.packingAlignment).isZero();
      check(projection.fieldProjections.length).equals(4);
      check(projection.fieldProjections.map((it) => it.name)).deepEquals([
        'Flags',
        'NonVendorOptions',
        'NumVendorOptions',
        'VendorOptions',
      ]);
      check(projection.needsPropertyAccessors).isFalse();
      check(projection.nestedTypeProjections.length).equals(1);
      final [dhcpAllOptions0] = projection.nestedTypeProjections;
      check(dhcpAllOptions0.name).equals('DHCP_ALL_OPTIONS_0');
      check(dhcpAllOptions0.baseType.symbol).equals('Struct');
      check(dhcpAllOptions0.packingAlignment).isZero();
      check(dhcpAllOptions0.fieldProjections.length).equals(3);
      check(
        dhcpAllOptions0.fieldProjections.map((it) => it.name),
      ).deepEquals(['Option', 'VendorName', 'ClassName']);
      check(dhcpAllOptions0.needsPropertyAccessors).isFalse();
    });

    testStruct('WLAN_RAW_DATA_LIST', (projection) {
      check(projection.name).equals('WLAN_RAW_DATA_LIST');
      check(projection.originalName).equals('WLAN_RAW_DATA_LIST');
      check(projection.baseType.symbol).equals('Struct');
      check(projection.packingAlignment).isZero();
      check(projection.fieldProjections.length).equals(3);
      check(
        projection.fieldProjections.map((it) => it.name),
      ).deepEquals(['dwTotalSize', 'dwNumberOfItems', 'DataList']);
      check(projection.needsPropertyAccessors).isFalse();
      check(projection.nestedTypeProjections.length).equals(1);
      final [wlanRawDataList0] = projection.nestedTypeProjections;
      check(wlanRawDataList0.name).equals('WLAN_RAW_DATA_LIST_0');
      check(wlanRawDataList0.baseType.symbol).equals('Struct');
      check(wlanRawDataList0.packingAlignment).isZero();
      check(wlanRawDataList0.fieldProjections.length).equals(2);
      final [dwDataOffset, dwDataSize] = wlanRawDataList0.fieldProjections;
      check(dwDataOffset.name).equals('dwDataOffset');
      check(dwDataSize.name).equals('dwDataSize');
      check(wlanRawDataList0.needsPropertyAccessors).isFalse();
    });
  });

  group('StructFieldProjection', () {
    testStructField('DEVICE_OBJECT', 'Queue', (projection) {
      check(projection.name).equals('Queue');
      check(projection.originalName).equals('Queue');
      check(projection.type).equals('DEVICE_OBJECT_0');
      check(projection.originalType).equals('DEVICE_OBJECT_0');
      check(projection.attribute).isNull();
    });

    testStructField('BLUETOOTH_OOB_DATA_INFO', 'C', (projection) {
      check(projection.name).equals('C');
      check(projection.originalName).equals('C');
      check(projection.type).equals('Array<Uint8>');
      check(projection.originalType).equals('Array<Uint8>');
      check(
        projection.attribute!.accept(DartEmitter()).toString(),
      ).equals('Array(16)');
    });

    testStructField('BLUETOOTH_ADDRESS', 'Anonymous', (projection) {
      check(projection.name).equals('Anonymous');
      check(projection.originalName).equals('Anonymous');
      check(projection.type).equals('BLUETOOTH_ADDRESS_0');
      check(projection.originalType).equals('BLUETOOTH_ADDRESS_0');
      check(projection.attribute).isNull();
    });

    testStructField('BLUETOOTH_DEVICE_SEARCH_PARAMS', 'hRadio', (projection) {
      check(projection.name).equals('hRadio');
      check(projection.originalName).equals('hRadio');
      check(projection.type).equals('int');
      check(projection.originalType).equals('int');
      check(
        projection.attribute!.accept(DartEmitter()).toString(),
      ).equals('IntPtr()');
    });

    testStructField('BLUETOOTH_SELECT_DEVICE_PARAMS', 'pszInfo', (projection) {
      check(projection.name).equals('pszInfo');
      check(projection.originalName).equals('pszInfo');
      check(projection.type).equals('PWSTR');
      check(projection.originalType).equals('PWSTR');
      check(projection.attribute).isNull();
    });

    testStructField('BTH_QUERY_SERVICE', 'uuids', (projection) {
      check(projection.name).equals('uuids');
      check(projection.originalName).equals('uuids');
      check(projection.type).equals('Array<SdpQueryUuid>');
      check(projection.originalType).equals('Array<SdpQueryUuid>');
      check(
        projection.attribute!.accept(DartEmitter()).toString(),
      ).equals('Array(12)');
    });

    testStructField('DWM_BLURBEHIND', 'fEnable', (projection) {
      check(projection.name).equals('fEnable');
      check(projection.originalName).equals('fEnable');
      check(projection.isBool).isTrue();
      check(projection.type).equals('bool');
      check(projection.originalType).equals('int');
      check(
        projection.attribute!.accept(DartEmitter()).toString(),
      ).equals('Int32()');
    });

    testStructField('BITMAPFILEHEADER', 'bfReserved1', (projection) {
      check(projection.name).equals('_bfReserved1');
      check(projection.originalName).equals('bfReserved1');
      check(projection.type).equals('int');
      check(projection.originalType).equals('int');
      check(
        projection.attribute!.accept(DartEmitter()).toString(),
      ).equals('Uint16()');
    });

    testStructField('DEVMODEW', 'dmDeviceName', (projection) {
      check(projection.name).equals('dmDeviceName');
      check(projection.originalName).equals('dmDeviceName');
      check(projection.isCharArray).isTrue();
      check(projection.type).equals('String');
      check(projection.originalType).equals('Array<Uint16>');
      check(
        projection.attribute!.accept(DartEmitter()).toString(),
      ).equals('Array(32)');
    });

    testStructField('AudioClientProperties', 'Options', (projection) {
      check(projection.name).equals('Options');
      check(projection.originalName).equals('Options');
      check(projection.isEnum).isTrue();
      check(projection.type).equals('AUDCLNT_STREAMOPTIONS');
      check(projection.originalType).equals('int');
      check(
        projection.attribute!.accept(DartEmitter()).toString(),
      ).equals('Int32()');
    });

    testStructField('YAMAHA_ADPCMWAVEFORMAT', 'wfx', (projection) {
      check(projection.name).equals('wfx');
      check(projection.originalName).equals('wfx');
      check(projection.type).equals('WAVEFORMATEX');
      check(projection.originalType).equals('WAVEFORMATEX');
      check(projection.attribute).isNull();
    });

    testStructField('CERT_EXTENSION', 'pszObjId', (projection) {
      check(projection.name).equals('pszObjId');
      check(projection.originalName).equals('pszObjId');
      check(projection.type).equals('PSTR');
      check(projection.originalType).equals('PSTR');
      check(projection.attribute).isNull();
    });

    testStructField('CALPSTR', 'pElems', (projection) {
      check(projection.name).equals('pElems');
      check(projection.originalName).equals('pElems');
      check(projection.type).equals('Pointer<PSTR>');
      check(projection.originalType).equals('Pointer<PSTR>');
      check(projection.attribute).isNull();
    });

    testStructField('CALPWSTR', 'pElems', (projection) {
      check(projection.name).equals('pElems');
      check(projection.originalName).equals('pElems');
      check(projection.type).equals('Pointer<PWSTR>');
      check(projection.originalType).equals('Pointer<PWSTR>');
      check(projection.attribute).isNull();
    });

    testStructField('VERSIONEDSTREAM', 'pStream', (projection) {
      check(projection.name).equals('pStream');
      check(projection.originalName).equals('pStream');
      check(projection.isInterface).isTrue();
      check(projection.type).equals('IStream?');
      check(projection.originalType).equals('VTablePointer');
      check(projection.attribute).isNull();
    });

    testStructField('CONFIGURATION_ENTRY', 'bstrKey', (projection) {
      check(projection.name).equals('bstrKey');
      check(projection.originalName).equals('bstrKey');
      check(projection.type).equals('BSTR');
      check(projection.originalType).equals('BSTR');
      check(projection.attribute).isNull();
    });

    testStructField('ARRAYDESC', 'rgbounds', (projection) {
      check(projection.name).equals('rgbounds');
      check(projection.originalName).equals('rgbounds');
      check(projection.isFlexibleArray).isTrue();
      check(projection.type).equals('Array<SAFEARRAYBOUND>');
      check(projection.originalType).equals('Array<SAFEARRAYBOUND>');
      check(
        projection.attribute!.accept(DartEmitter()).toString(),
      ).equals('Array.variableWithVariableDimension(1)');
    });

    testStructField('RMTPACK', 'rgBSTR', (projection) {
      check(projection.name).equals('rgBSTR');
      check(projection.originalName).equals('rgBSTR');
      check(projection.type).equals('Pointer<BSTR>');
      check(projection.originalType).equals('Pointer<BSTR>');
      check(projection.attribute).isNull();
    });

    testStructField('CHOOSECOLORW', 'Flags', (projection) {
      check(projection.name).equals('Flags');
      check(projection.originalName).equals('Flags');
      check(projection.isEnum).isTrue();
      check(projection.type).equals('CHOOSECOLOR_FLAGS');
      check(projection.originalType).equals('int');
      check(
        projection.attribute!.accept(DartEmitter()).toString(),
      ).equals('Uint32()');
    });

    testStructField('MENUBARINFO', '_bitfield', (projection) {
      check(projection.name).equals('bitfield');
      check(projection.originalName).equals('_bitfield');
      check(projection.isBitField).isTrue();
      check(projection.type).equals('int');
      check(projection.originalType).equals('int');
      check(
        projection.attribute!.accept(DartEmitter()).toString(),
      ).equals('Int32()');
    });

    testStructField('KNOWNFOLDER_DEFINITION', 'fidParent', (projection) {
      check(projection.name).equals('fidParent');
      check(projection.originalName).equals('fidParent');
      check(projection.type).equals('GUID');
      check(projection.originalType).equals('GUID');
      check(projection.attribute).isNull();
    });

    testStructField('MENUITEMTEMPLATE', 'mtString', (projection) {
      check(projection.name).equals('mtString');
      check(projection.originalName).equals('mtString');
      check(projection.isFlexibleArray).isTrue();
      check(projection.type).equals('String');
      check(projection.originalType).equals('Array<Uint16>');
      check(
        projection.attribute!.accept(DartEmitter()).toString(),
      ).equals('Array.variableWithVariableDimension(1)');
    });

    testStructField('WNDCLASSW', 'lpfnWndProc', (projection) {
      check(projection.name).equals('lpfnWndProc');
      check(projection.originalName).equals('lpfnWndProc');
      check(projection.type).equals('Pointer<NativeFunction<WNDPROC>>');
      check(projection.originalType).equals('Pointer<NativeFunction<WNDPROC>>');
      check(projection.attribute).isNull();
    });
  });
}

@isTest
void testStruct(String structName, void Function(StructProjection) projection) {
  test(structName, () {
    final typeDef = WindowsMetadata.findTypeDefByName(structName);
    projection(StructProjection(typeDef));
  });
}

@isTest
void testStructField(
  String structName,
  String fieldName,
  void Function(StructFieldProjection) projection,
) {
  test('$structName.$fieldName', () {
    final typeDef = WindowsMetadata.findTypeDefByName(structName);
    final field = typeDef.findField(fieldName);
    projection(StructFieldProjection(field));
  });
}
