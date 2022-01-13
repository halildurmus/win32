// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../devices/bluetooth/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../devices/bluetooth/callbacks.g.dart';

/// {@category Struct}
class BLUETOOTH_ADDRESS extends Struct {
  external _BLUETOOTH_ADDRESS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _BLUETOOTH_ADDRESS__Anonymous_e__Union extends Union {
  @Uint64()
  external int ullLong;

  @Array(6)
  external Array<Uint8> rgBytes;
}

extension BLUETOOTH_ADDRESS_Extension on BLUETOOTH_ADDRESS {
  int get ullLong => this.Anonymous.ullLong;
  set ullLong(int value) => this.Anonymous.ullLong = value;

  Array<Uint8> get rgBytes => this.Anonymous.rgBytes;
  set rgBytes(Array<Uint8> value) => this.Anonymous.rgBytes = value;
}

/// {@category Struct}
class BLUETOOTH_AUTHENTICATE_RESPONSE extends Struct {
  external BLUETOOTH_ADDRESS bthAddressRemote;

  @Int32()
  external int authMethod;

  external _BLUETOOTH_AUTHENTICATE_RESPONSE__Anonymous_e__Union Anonymous;

  @Uint8()
  external int negativeResponse;
}

/// {@category Struct}
class _BLUETOOTH_AUTHENTICATE_RESPONSE__Anonymous_e__Union extends Union {
  external BLUETOOTH_PIN_INFO pinInfo;

  external BLUETOOTH_OOB_DATA_INFO oobInfo;

  external BLUETOOTH_NUMERIC_COMPARISON_INFO numericCompInfo;

  external BLUETOOTH_PASSKEY_INFO passkeyInfo;
}

extension BLUETOOTH_AUTHENTICATE_RESPONSE_Extension
    on BLUETOOTH_AUTHENTICATE_RESPONSE {
  BLUETOOTH_PIN_INFO get pinInfo => this.Anonymous.pinInfo;
  set pinInfo(BLUETOOTH_PIN_INFO value) => this.Anonymous.pinInfo = value;

  BLUETOOTH_OOB_DATA_INFO get oobInfo => this.Anonymous.oobInfo;
  set oobInfo(BLUETOOTH_OOB_DATA_INFO value) => this.Anonymous.oobInfo = value;

  BLUETOOTH_NUMERIC_COMPARISON_INFO get numericCompInfo =>
      this.Anonymous.numericCompInfo;
  set numericCompInfo(BLUETOOTH_NUMERIC_COMPARISON_INFO value) =>
      this.Anonymous.numericCompInfo = value;

  BLUETOOTH_PASSKEY_INFO get passkeyInfo => this.Anonymous.passkeyInfo;
  set passkeyInfo(BLUETOOTH_PASSKEY_INFO value) =>
      this.Anonymous.passkeyInfo = value;
}

/// {@category Struct}
class BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS extends Struct {
  external BLUETOOTH_DEVICE_INFO deviceInfo;

  @Int32()
  external int authenticationMethod;

  @Int32()
  external int ioCapability;

  @Int32()
  external int authenticationRequirements;

  external _BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int Numeric_Value;

  @Uint32()
  external int Passkey;
}

extension BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS_Extension
    on BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS {
  int get Numeric_Value => this.Anonymous.Numeric_Value;
  set Numeric_Value(int value) => this.Anonymous.Numeric_Value = value;

  int get Passkey => this.Anonymous.Passkey;
  set Passkey(int value) => this.Anonymous.Passkey = value;
}

/// {@category Struct}
class BLUETOOTH_COD_PAIRS extends Struct {
  @Uint32()
  external int ulCODMask;

  external Pointer<Utf16> pcszDescription;
}

/// {@category Struct}
class BLUETOOTH_DEVICE_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external BLUETOOTH_ADDRESS Address;

  @Uint32()
  external int ulClassofDevice;

  @Int32()
  external int fConnected;

  @Int32()
  external int fRemembered;

  @Int32()
  external int fAuthenticated;

  external SYSTEMTIME stLastSeen;

  external SYSTEMTIME stLastUsed;

  @Array(248)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 248; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(248, '\x00');
    for (var i = 0; i < 248; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class BLUETOOTH_DEVICE_SEARCH_PARAMS extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int fReturnAuthenticated;

  @Int32()
  external int fReturnRemembered;

  @Int32()
  external int fReturnUnknown;

  @Int32()
  external int fReturnConnected;

  @Int32()
  external int fIssueInquiry;

  @Uint8()
  external int cTimeoutMultiplier;

  @IntPtr()
  external int hRadio;
}

/// {@category Struct}
class BLUETOOTH_FIND_RADIO_PARAMS extends Struct {
  @Uint32()
  external int dwSize;
}

/// {@category Struct}
class BLUETOOTH_LOCAL_SERVICE_INFO extends Struct {
  @Int32()
  external int Enabled;

  external BLUETOOTH_ADDRESS btAddr;

  @Array(256)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _szDeviceString;

  String get szDeviceString {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szDeviceString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDeviceString(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szDeviceString[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class BLUETOOTH_NUMERIC_COMPARISON_INFO extends Struct {
  @Uint32()
  external int NumericValue;
}

/// {@category Struct}
class BLUETOOTH_OOB_DATA_INFO extends Struct {
  @Array(16)
  external Array<Uint8> C;

  @Array(16)
  external Array<Uint8> R;
}

/// {@category Struct}
class BLUETOOTH_PASSKEY_INFO extends Struct {
  @Uint32()
  external int passkey;
}

/// {@category Struct}
class BLUETOOTH_PIN_INFO extends Struct {
  @Array(16)
  external Array<Uint8> pin;

  @Uint8()
  external int pinLength;
}

/// {@category Struct}
class BLUETOOTH_RADIO_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external BLUETOOTH_ADDRESS address;

  @Array(248)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 248; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(248, '\x00');
    for (var i = 0; i < 248; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int ulClassofDevice;

  @Uint16()
  external int lmpSubversion;

  @Uint16()
  external int manufacturer;
}

/// {@category Struct}
class BLUETOOTH_SELECT_DEVICE_PARAMS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int cNumOfClasses;

  external Pointer<BLUETOOTH_COD_PAIRS> prgClassOfDevices;

  external Pointer<Utf16> pszInfo;

  @IntPtr()
  external int hwndParent;

  @Int32()
  external int fForceAuthentication;

  @Int32()
  external int fShowAuthenticated;

  @Int32()
  external int fShowRemembered;

  @Int32()
  external int fShowUnknown;

  @Int32()
  external int fAddNewDeviceWizard;

  @Int32()
  external int fSkipServicesPage;

  external Pointer<NativeFunction<PFN_DEVICE_CALLBACK>> pfnDeviceCallback;

  external Pointer pvParam;

  @Uint32()
  external int cNumDevices;

  external Pointer<BLUETOOTH_DEVICE_INFO> pDevices;
}

/// {@category Struct}
class BTH_DEVICE_INFO extends Struct {
  @Uint32()
  external int flags;

  @Uint64()
  external int address;

  @Uint32()
  external int classOfDevice;

  @Array(248)
  external Array<Uint8> name;
}

/// {@category Struct}
class BTH_HCI_EVENT_INFO extends Struct {
  @Uint64()
  external int bthAddress;

  @Uint8()
  external int connectionType;

  @Uint8()
  external int connected;
}

/// {@category Struct}
@Packed(1)
class BTH_INFO_REQ extends Struct {
  @Uint64()
  external int btAddr;

  @Uint16()
  external int infoType;
}

/// {@category Struct}
@Packed(1)
class BTH_INFO_RSP extends Struct {
  @Uint16()
  external int result;

  @Uint8()
  external int dataLen;

  external _BTH_INFO_RSP__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
@Packed(1)
class _BTH_INFO_RSP__Anonymous_e__Union extends Union {
  @Uint16()
  external int connectionlessMTU;

  @Array(44)
  external Array<Uint8> data;
}

extension BTH_INFO_RSP_Extension on BTH_INFO_RSP {
  int get connectionlessMTU => this.Anonymous.connectionlessMTU;
  set connectionlessMTU(int value) => this.Anonymous.connectionlessMTU = value;

  Array<Uint8> get data => this.Anonymous.data;
  set data(Array<Uint8> value) => this.Anonymous.data = value;
}

/// {@category Struct}
class BTH_L2CAP_EVENT_INFO extends Struct {
  @Uint64()
  external int bthAddress;

  @Uint16()
  external int psm;

  @Uint8()
  external int connected;

  @Uint8()
  external int initiated;
}

/// {@category Struct}
@Packed(1)
class BTH_PING_REQ extends Struct {
  @Uint64()
  external int btAddr;

  @Uint8()
  external int dataLen;

  @Array(44)
  external Array<Uint8> data;
}

/// {@category Struct}
class BTH_PING_RSP extends Struct {
  @Uint8()
  external int dataLen;

  @Array(44)
  external Array<Uint8> data;
}

/// {@category Struct}
@Packed(1)
class BTH_QUERY_DEVICE extends Struct {
  @Uint32()
  external int LAP;

  @Uint8()
  external int length;
}

/// {@category Struct}
class BTH_QUERY_SERVICE extends Struct {
  @Uint32()
  external int type;

  @Uint32()
  external int serviceHandle;

  @Array(12)
  external Array<SdpQueryUuid> uuids;

  @Uint32()
  external int numRange;

  @Array(1)
  external Array<SdpAttributeRange> pRange;
}

/// {@category Struct}
class BTH_RADIO_IN_RANGE extends Struct {
  external BTH_DEVICE_INFO deviceInfo;

  @Uint32()
  external int previousDeviceFlags;
}

/// {@category Struct}
@Packed(1)
class BTH_SET_SERVICE extends Struct {
  external Pointer<Uint32> pSdpVersion;

  external Pointer<IntPtr> pRecordHandle;

  @Uint32()
  external int fCodService;

  @Array(5)
  external Array<Uint32> Reserved;

  @Uint32()
  external int ulRecordLength;

  @Array(1)
  external Array<Uint8> pRecord;
}

/// {@category Struct}
class RFCOMM_COMMAND extends Struct {
  @Uint32()
  external int CmdType;

  external _RFCOMM_COMMAND__Data_e__Union Data;
}

/// {@category Struct}
class _RFCOMM_COMMAND__Data_e__Union extends Union {
  external RFCOMM_MSC_DATA MSC;

  external RFCOMM_RLS_DATA RLS;

  external RFCOMM_RPN_DATA RPN;
}

extension RFCOMM_COMMAND_Extension on RFCOMM_COMMAND {
  RFCOMM_MSC_DATA get MSC => this.Data.MSC;
  set MSC(RFCOMM_MSC_DATA value) => this.Data.MSC = value;

  RFCOMM_RLS_DATA get RLS => this.Data.RLS;
  set RLS(RFCOMM_RLS_DATA value) => this.Data.RLS = value;

  RFCOMM_RPN_DATA get RPN => this.Data.RPN;
  set RPN(RFCOMM_RPN_DATA value) => this.Data.RPN = value;
}

/// {@category Struct}
class RFCOMM_MSC_DATA extends Struct {
  @Uint8()
  external int Signals;

  @Uint8()
  external int Break;
}

/// {@category Struct}
class RFCOMM_RLS_DATA extends Struct {
  @Uint8()
  external int LineStatus;
}

/// {@category Struct}
class RFCOMM_RPN_DATA extends Struct {
  @Uint8()
  external int Baud;

  @Uint8()
  external int Data;

  @Uint8()
  external int FlowControl;

  @Uint8()
  external int XonChar;

  @Uint8()
  external int XoffChar;

  @Uint8()
  external int ParameterMask1;

  @Uint8()
  external int ParameterMask2;
}

/// {@category Struct}
class SDP_ELEMENT_DATA extends Struct {
  @Int32()
  external int type;

  @Int32()
  external int specificType;

  external _SDP_ELEMENT_DATA__data_e__Union data;
}

/// {@category Struct}
class _SDP_ELEMENT_DATA__data_e__Union extends Union {
  external SDP_LARGE_INTEGER_16 int128;

  @Int64()
  external int int64;

  @Int32()
  external int int32;

  @Int16()
  external int int16;

  @Uint8()
  external int int8;

  external SDP_ULARGE_INTEGER_16 uint128;

  @Uint64()
  external int uint64;

  @Uint32()
  external int uint32;

  @Uint16()
  external int uint16;

  @Uint8()
  external int uint8;

  @Uint8()
  external int booleanVal;

  external GUID uuid128;

  @Uint32()
  external int uuid32;

  @Uint16()
  external int uuid16;

  external _SDP_ELEMENT_DATA__data_e__Union__string_e__Struct string;

  external _SDP_ELEMENT_DATA__data_e__Union__url_e__Struct url;

  external _SDP_ELEMENT_DATA__data_e__Union__sequence_e__Struct sequence;

  external _SDP_ELEMENT_DATA__data_e__Union__alternative_e__Struct alternative;
}

/// {@category Struct}
class _SDP_ELEMENT_DATA__data_e__Union__string_e__Struct extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA__data_e__Union_Extension on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.string.value;
  set value(Pointer<Uint8> value) => this.data.string.value = value;

  int get length => this.data.string.length;
  set length(int value) => this.data.string.length = value;
}

/// {@category Struct}
class _SDP_ELEMENT_DATA__data_e__Union__url_e__Struct extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA__data_e__Union_Extension_1 on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.url.value;
  set value(Pointer<Uint8> value) => this.data.url.value = value;

  int get length => this.data.url.length;
  set length(int value) => this.data.url.length = value;
}

/// {@category Struct}
class _SDP_ELEMENT_DATA__data_e__Union__sequence_e__Struct extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA__data_e__Union_Extension_2 on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.sequence.value;
  set value(Pointer<Uint8> value) => this.data.sequence.value = value;

  int get length => this.data.sequence.length;
  set length(int value) => this.data.sequence.length = value;
}

/// {@category Struct}
class _SDP_ELEMENT_DATA__data_e__Union__alternative_e__Struct extends Struct {
  external Pointer<Uint8> value;

  @Uint32()
  external int length;
}

extension SDP_ELEMENT_DATA__data_e__Union_Extension_3 on SDP_ELEMENT_DATA {
  Pointer<Uint8> get value => this.data.alternative.value;
  set value(Pointer<Uint8> value) => this.data.alternative.value = value;

  int get length => this.data.alternative.length;
  set length(int value) => this.data.alternative.length = value;
}

extension SDP_ELEMENT_DATA_Extension on SDP_ELEMENT_DATA {
  SDP_LARGE_INTEGER_16 get int128 => this.data.int128;
  set int128(SDP_LARGE_INTEGER_16 value) => this.data.int128 = value;

  int get int64 => this.data.int64;
  set int64(int value) => this.data.int64 = value;

  int get int32 => this.data.int32;
  set int32(int value) => this.data.int32 = value;

  int get int16 => this.data.int16;
  set int16(int value) => this.data.int16 = value;

  int get int8 => this.data.int8;
  set int8(int value) => this.data.int8 = value;

  SDP_ULARGE_INTEGER_16 get uint128 => this.data.uint128;
  set uint128(SDP_ULARGE_INTEGER_16 value) => this.data.uint128 = value;

  int get uint64 => this.data.uint64;
  set uint64(int value) => this.data.uint64 = value;

  int get uint32 => this.data.uint32;
  set uint32(int value) => this.data.uint32 = value;

  int get uint16 => this.data.uint16;
  set uint16(int value) => this.data.uint16 = value;

  int get uint8 => this.data.uint8;
  set uint8(int value) => this.data.uint8 = value;

  int get booleanVal => this.data.booleanVal;
  set booleanVal(int value) => this.data.booleanVal = value;

  GUID get uuid128 => this.data.uuid128;
  set uuid128(GUID value) => this.data.uuid128 = value;

  int get uuid32 => this.data.uuid32;
  set uuid32(int value) => this.data.uuid32 = value;

  int get uuid16 => this.data.uuid16;
  set uuid16(int value) => this.data.uuid16 = value;

  _SDP_ELEMENT_DATA__data_e__Union__string_e__Struct get string =>
      this.data.string;
  set string(_SDP_ELEMENT_DATA__data_e__Union__string_e__Struct value) =>
      this.data.string = value;

  _SDP_ELEMENT_DATA__data_e__Union__url_e__Struct get url => this.data.url;
  set url(_SDP_ELEMENT_DATA__data_e__Union__url_e__Struct value) =>
      this.data.url = value;

  _SDP_ELEMENT_DATA__data_e__Union__sequence_e__Struct get sequence =>
      this.data.sequence;
  set sequence(_SDP_ELEMENT_DATA__data_e__Union__sequence_e__Struct value) =>
      this.data.sequence = value;

  _SDP_ELEMENT_DATA__data_e__Union__alternative_e__Struct get alternative =>
      this.data.alternative;
  set alternative(
          _SDP_ELEMENT_DATA__data_e__Union__alternative_e__Struct value) =>
      this.data.alternative = value;
}

/// {@category Struct}
class SDP_LARGE_INTEGER_16 extends Struct {
  @Uint64()
  external int LowPart;

  @Int64()
  external int HighPart;
}

/// {@category Struct}
class SDP_STRING_TYPE_DATA extends Struct {
  @Uint16()
  external int encoding;

  @Uint16()
  external int mibeNum;

  @Uint16()
  external int attributeId;
}

/// {@category Struct}
class SDP_ULARGE_INTEGER_16 extends Struct {
  @Uint64()
  external int LowPart;

  @Uint64()
  external int HighPart;
}

/// {@category Struct}
class SOCKADDR_BTH extends Struct {
  @Uint16()
  external int addressFamily;

  @Uint64()
  external int btAddr;

  external GUID serviceClassId;

  @Uint32()
  external int port;
}

/// {@category Struct}
class SdpAttributeRange extends Struct {
  @Uint16()
  external int minAttribute;

  @Uint16()
  external int maxAttribute;
}

/// {@category Struct}
class SdpQueryUuid extends Struct {
  external SdpQueryUuidUnion u;

  @Uint16()
  external int uuidType;
}

/// {@category Struct}
class SdpQueryUuidUnion extends Union {
  external GUID uuid128;

  @Uint32()
  external int uuid32;

  @Uint16()
  external int uuid16;
}
