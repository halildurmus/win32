// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class SDP_LARGE_INTEGER_16 extends Struct {
  @Uint64() external int LowPart;
  @Int64() external int HighPart;
}

class SDP_ULARGE_INTEGER_16 extends Struct {
  @Uint64() external int LowPart;
  @Uint64() external int HighPart;
}

class SdpAttributeRange extends Struct {
  @Uint16() external int minAttribute;
  @Uint16() external int maxAttribute;
}

class SdpQueryUuidUnion extends Struct {
  external GUID uuid128;
  @Uint32() external int uuid32;
  @Uint16() external int uuid16;
}

class SdpQueryUuid extends Struct {
  external SdpQueryUuidUnion u;
  @Uint16() external int uuidType;
}

class BTH_DEVICE_INFO extends Struct {
  @Uint32() external int flags;
  @Uint64() external int address;
  @Uint32() external int classOfDevice;
  external __byte__ name;
}

class BTH_RADIO_IN_RANGE extends Struct {
  external BTH_DEVICE_INFO deviceInfo;
  @Uint32() external int previousDeviceFlags;
}

class BTH_L2CAP_EVENT_INFO extends Struct {
  @Uint64() external int bthAddress;
  @Uint16() external int psm;
  @Uint8() external int connected;
  @Uint8() external int initiated;
}

class BTH_HCI_EVENT_INFO extends Struct {
  @Uint64() external int bthAddress;
  @Uint8() external int connectionType;
  @Uint8() external int connected;
}

class BLUETOOTH_ADDRESS extends Struct {
  @Uint32() external int Anonymous;
}

class BLUETOOTH_LOCAL_SERVICE_INFO extends Struct {
  @Int32() external int Enabled;
  external BLUETOOTH_ADDRESS btAddr;
  external __ushort__ szName;
  external __ushort__ szDeviceString;
}

class BLUETOOTH_FIND_RADIO_PARAMS extends Struct {
  @Uint32() external int dwSize;
}

class BLUETOOTH_RADIO_INFO extends Struct {
  @Uint32() external int dwSize;
  external BLUETOOTH_ADDRESS address;
  external __ushort__ szName;
  @Uint32() external int ulClassofDevice;
  @Uint16() external int lmpSubversion;
  @Uint16() external int manufacturer;
}

class BLUETOOTH_DEVICE_INFO extends Struct {
  @Uint32() external int dwSize;
  external BLUETOOTH_ADDRESS Address;
  @Uint32() external int ulClassofDevice;
  @Int32() external int fConnected;
  @Int32() external int fRemembered;
  @Int32() external int fAuthenticated;
  external SYSTEMTIME stLastSeen;
  external SYSTEMTIME stLastUsed;
  external __ushort__ szName;
}

class BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS extends Struct {
  external BLUETOOTH_DEVICE_INFO deviceInfo;
  @Uint32() external int authenticationMethod;
  @Uint32() external int ioCapability;
  @Uint32() external int authenticationRequirements;
  @Uint32() external int Anonymous;
}

class BLUETOOTH_DEVICE_SEARCH_PARAMS extends Struct {
  @Uint32() external int dwSize;
  @Int32() external int fReturnAuthenticated;
  @Int32() external int fReturnRemembered;
  @Int32() external int fReturnUnknown;
  @Int32() external int fReturnConnected;
  @Int32() external int fIssueInquiry;
  @Uint8() external int cTimeoutMultiplier;
  @IntPtr() external int hRadio;
}

class BLUETOOTH_COD_PAIRS extends Struct {
  @Uint32() external int ulCODMask;
  external Pointer<Utf16> pcszDescription;
}

class BLUETOOTH_SELECT_DEVICE_PARAMS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int cNumOfClasses;
  external Pointer<BLUETOOTH_COD_PAIRS> prgClassOfDevices;
  external Pointer<Utf16> pszInfo;
  @IntPtr() external int hwndParent;
  @Int32() external int fForceAuthentication;
  @Int32() external int fShowAuthenticated;
  @Int32() external int fShowRemembered;
  @Int32() external int fShowUnknown;
  @Int32() external int fAddNewDeviceWizard;
  @Int32() external int fSkipServicesPage;
  external PFN_DEVICE_CALLBACK pfnDeviceCallback;
  external Pointer pvParam;
  @Uint32() external int cNumDevices;
  external Pointer<BLUETOOTH_DEVICE_INFO> pDevices;
}

class BLUETOOTH_PIN_INFO extends Struct {
  external __ubyte__ pin;
  @Uint8() external int pinLength;
}

class BLUETOOTH_OOB_DATA_INFO extends Struct {
  external __ubyte__ C;
  external __ubyte__ R;
}

class BLUETOOTH_NUMERIC_COMPARISON_INFO extends Struct {
  @Uint32() external int NumericValue;
}

class BLUETOOTH_PASSKEY_INFO extends Struct {
  @Uint32() external int passkey;
}

class BLUETOOTH_AUTHENTICATE_RESPONSE extends Struct {
  external BLUETOOTH_ADDRESS bthAddressRemote;
  @Uint32() external int authMethod;
  @Uint32() external int Anonymous;
  @Uint8() external int negativeResponse;
}

class SDP_ELEMENT_DATA extends Struct {
  @Uint32() external int type;
  @Uint32() external int specificType;
  @Uint32() external int data;
}

class SDP_STRING_TYPE_DATA extends Struct {
  @Uint16() external int encoding;
  @Uint16() external int mibeNum;
  @Uint16() external int attributeId;
}

class SOCKADDR_BTH extends Struct {
  @Uint16() external int addressFamily;
  @Uint64() external int btAddr;
  external GUID serviceClassId;
  @Uint32() external int port;
}

class BTH_SET_SERVICE extends Struct {
  external Pointer<Uint32> pSdpVersion;
  external Pointer<IntPtr> pRecordHandle;
  @Uint32() external int fCodService;
  external __uint__ Reserved;
  @Uint32() external int ulRecordLength;
  external __ubyte__ pRecord;
}

class BTH_QUERY_DEVICE extends Struct {
  @Uint32() external int LAP;
  @Uint8() external int length;
}

class BTH_QUERY_SERVICE extends Struct {
  @Uint32() external int type;
  @Uint32() external int serviceHandle;
  external SdpQueryUuid uuids;
  @Uint32() external int numRange;
  external SdpAttributeRange pRange;
}

class RFCOMM_MSC_DATA extends Struct {
  @Uint8() external int Signals;
  @Uint8() external int Break;
}

class RFCOMM_RLS_DATA extends Struct {
  @Uint8() external int LineStatus;
}

class RFCOMM_RPN_DATA extends Struct {
  @Uint8() external int Baud;
  @Uint8() external int Data;
  @Uint8() external int FlowControl;
  @Uint8() external int XonChar;
  @Uint8() external int XoffChar;
  @Uint8() external int ParameterMask1;
  @Uint8() external int ParameterMask2;
}

class RFCOMM_COMMAND extends Struct {
  @Uint32() external int CmdType;
  @Uint32() external int Data;
}

class BTH_PING_REQ extends Struct {
  @Uint64() external int btAddr;
  @Uint8() external int dataLen;
  external __ubyte__ data;
}

class BTH_PING_RSP extends Struct {
  @Uint8() external int dataLen;
  external __ubyte__ data;
}

class BTH_INFO_REQ extends Struct {
  @Uint64() external int btAddr;
  @Uint16() external int infoType;
}

class BTH_INFO_RSP extends Struct {
  @Uint16() external int result;
  @Uint8() external int dataLen;
  @Uint32() external int Anonymous;
}

