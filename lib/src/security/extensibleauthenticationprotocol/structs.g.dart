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
import '../../security/extensibleauthenticationprotocol/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class EAPHOST_AUTH_INFO extends Struct {
  @Int32()
  external int status;

  @Uint32()
  external int dwErrorCode;

  @Uint32()
  external int dwReasonCode;
}

/// {@category Struct}
class EAPHOST_IDENTITY_UI_PARAMS extends Struct {
  external EAP_METHOD_TYPE eapMethodType;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwSizeofConnectionData;

  external Pointer<Uint8> pConnectionData;

  @Uint32()
  external int dwSizeofUserData;

  external Pointer<Uint8> pUserData;

  @Uint32()
  external int dwSizeofUserDataOut;

  external Pointer<Uint8> pUserDataOut;

  external Pointer<Utf16> pwszIdentity;

  @Uint32()
  external int dwError;

  external Pointer<EAP_ERROR> pEapError;
}

/// {@category Struct}
class EAPHOST_INTERACTIVE_UI_PARAMS extends Struct {
  @Uint32()
  external int dwSizeofContextData;

  external Pointer<Uint8> pContextData;

  @Uint32()
  external int dwSizeofInteractiveUIData;

  external Pointer<Uint8> pInteractiveUIData;

  @Uint32()
  external int dwError;

  external Pointer<EAP_ERROR> pEapError;
}

/// {@category Struct}
class EAP_ATTRIBUTE extends Struct {
  @Int32()
  external int eaType;

  @Uint32()
  external int dwLength;

  external Pointer<Uint8> pValue;
}

/// {@category Struct}
class EAP_ATTRIBUTES extends Struct {
  @Uint32()
  external int dwNumberOfAttributes;

  external Pointer<EAP_ATTRIBUTE> pAttribs;
}

/// {@category Struct}
class EAP_AUTHENTICATOR_METHOD_ROUTINES extends Struct {
  @Uint32()
  external int dwSizeInBytes;

  external Pointer<EAP_METHOD_TYPE> pEapType;

  @IntPtr()
  external int EapMethodAuthenticatorInitialize;

  @IntPtr()
  external int EapMethodAuthenticatorBeginSession;

  @IntPtr()
  external int EapMethodAuthenticatorUpdateInnerMethodParams;

  @IntPtr()
  external int EapMethodAuthenticatorReceivePacket;

  @IntPtr()
  external int EapMethodAuthenticatorSendPacket;

  @IntPtr()
  external int EapMethodAuthenticatorGetAttributes;

  @IntPtr()
  external int EapMethodAuthenticatorSetAttributes;

  @IntPtr()
  external int EapMethodAuthenticatorGetResult;

  @IntPtr()
  external int EapMethodAuthenticatorEndSession;

  @IntPtr()
  external int EapMethodAuthenticatorShutdown;
}

/// {@category Struct}
class EAP_CONFIG_INPUT_FIELD_ARRAY extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwNumberOfFields;

  external Pointer<EAP_CONFIG_INPUT_FIELD_DATA> pFields;
}

/// {@category Struct}
class EAP_CONFIG_INPUT_FIELD_DATA extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int Type;

  @Uint32()
  external int dwFlagProps;

  external Pointer<Utf16> pwszLabel;

  external Pointer<Utf16> pwszData;

  @Uint32()
  external int dwMinDataLength;

  @Uint32()
  external int dwMaxDataLength;
}

/// {@category Struct}
class EAP_CRED_EXPIRY_REQ extends Struct {
  external EAP_CONFIG_INPUT_FIELD_ARRAY curCreds;

  external EAP_CONFIG_INPUT_FIELD_ARRAY newCreds;
}

/// {@category Struct}
class EAP_ERROR extends Struct {
  @Uint32()
  external int dwWinError;

  external EAP_METHOD_TYPE type;

  @Uint32()
  external int dwReasonCode;

  external GUID rootCauseGuid;

  external GUID repairGuid;

  external GUID helpLinkGuid;

  external Pointer<Utf16> pRootCauseString;

  external Pointer<Utf16> pRepairString;
}

/// {@category Struct}
class EAP_INTERACTIVE_UI_DATA extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwSize;

  @Int32()
  external int dwDataType;

  @Uint32()
  external int cbUiData;

  external EAP_UI_DATA_FORMAT pbUiData;
}

/// {@category Struct}
class EAP_METHOD_AUTHENTICATOR_RESULT extends Struct {
  @Int32()
  external int fIsSuccess;

  @Uint32()
  external int dwFailureReason;

  external Pointer<EAP_ATTRIBUTES> pAuthAttribs;
}

/// {@category Struct}
class EAP_METHOD_INFO extends Struct {
  external EAP_METHOD_TYPE eaptype;

  external Pointer<Utf16> pwszAuthorName;

  external Pointer<Utf16> pwszFriendlyName;

  @Uint32()
  external int eapProperties;

  external Pointer<EAP_METHOD_INFO> pInnerMethodInfo;
}

/// {@category Struct}
class EAP_METHOD_INFO_ARRAY extends Struct {
  @Uint32()
  external int dwNumberOfMethods;

  external Pointer<EAP_METHOD_INFO> pEapMethods;
}

/// {@category Struct}
class EAP_METHOD_INFO_ARRAY_EX extends Struct {
  @Uint32()
  external int dwNumberOfMethods;

  external Pointer<EAP_METHOD_INFO_EX> pEapMethods;
}

/// {@category Struct}
class EAP_METHOD_INFO_EX extends Struct {
  external EAP_METHOD_TYPE eaptype;

  external Pointer<Utf16> pwszAuthorName;

  external Pointer<Utf16> pwszFriendlyName;

  @Uint32()
  external int eapProperties;

  external Pointer<EAP_METHOD_INFO_ARRAY_EX> pInnerMethodInfoArray;
}

/// {@category Struct}
class EAP_METHOD_PROPERTY extends Struct {
  @Int32()
  external int eapMethodPropertyType;

  @Int32()
  external int eapMethodPropertyValueType;

  external EAP_METHOD_PROPERTY_VALUE eapMethodPropertyValue;
}

/// {@category Struct}
class EAP_METHOD_PROPERTY_ARRAY extends Struct {
  @Uint32()
  external int dwNumberOfProperties;

  external Pointer<EAP_METHOD_PROPERTY> pMethodProperty;
}

/// {@category Struct}
class EAP_METHOD_PROPERTY_VALUE extends Union {
  external EAP_METHOD_PROPERTY_VALUE_BOOL empvBool;

  external EAP_METHOD_PROPERTY_VALUE_DWORD empvDword;

  external EAP_METHOD_PROPERTY_VALUE_STRING empvString;
}

/// {@category Struct}
class EAP_METHOD_PROPERTY_VALUE_BOOL extends Struct {
  @Uint32()
  external int length;

  @Int32()
  external int value;
}

/// {@category Struct}
class EAP_METHOD_PROPERTY_VALUE_DWORD extends Struct {
  @Uint32()
  external int length;

  @Uint32()
  external int value;
}

/// {@category Struct}
class EAP_METHOD_PROPERTY_VALUE_STRING extends Struct {
  @Uint32()
  external int length;

  external Pointer<Uint8> value;
}

/// {@category Struct}
class EAP_METHOD_TYPE extends Struct {
  external EAP_TYPE eapType;

  @Uint32()
  external int dwAuthorId;
}

/// {@category Struct}
class EAP_PEER_METHOD_ROUTINES extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<EAP_TYPE> pEapType;

  @IntPtr()
  external int EapPeerInitialize;

  @IntPtr()
  external int EapPeerGetIdentity;

  @IntPtr()
  external int EapPeerBeginSession;

  @IntPtr()
  external int EapPeerSetCredentials;

  @IntPtr()
  external int EapPeerProcessRequestPacket;

  @IntPtr()
  external int EapPeerGetResponsePacket;

  @IntPtr()
  external int EapPeerGetResult;

  @IntPtr()
  external int EapPeerGetUIContext;

  @IntPtr()
  external int EapPeerSetUIContext;

  @IntPtr()
  external int EapPeerGetResponseAttributes;

  @IntPtr()
  external int EapPeerSetResponseAttributes;

  @IntPtr()
  external int EapPeerEndSession;

  @IntPtr()
  external int EapPeerShutdown;
}

/// {@category Struct}
class EAP_TYPE extends Struct {
  @Uint8()
  external int type;

  @Uint32()
  external int dwVendorId;

  @Uint32()
  external int dwVendorType;
}

/// {@category Struct}
class EAP_UI_DATA_FORMAT extends Union {
  external Pointer<EAP_CONFIG_INPUT_FIELD_ARRAY> credData;

  external Pointer<EAP_CRED_EXPIRY_REQ> credExpiryData;

  external Pointer<EAP_CONFIG_INPUT_FIELD_ARRAY> credLogonData;
}

/// {@category Struct}
class EapCertificateCredential extends Struct {
  @Array(20)
  external Array<Uint8> certHash;

  external Pointer<Utf16> password;
}

/// {@category Struct}
class EapCredential extends Struct {
  @Int32()
  external int credType;

  external EapCredentialTypeData credData;
}

/// {@category Struct}
class EapCredentialTypeData extends Union {
  external EapUsernamePasswordCredential username_password;

  external EapCertificateCredential certificate;

  external EapSimCredential sim;
}

/// {@category Struct}
class EapHostPeerMethodResult extends Struct {
  @Int32()
  external int fIsSuccess;

  @Uint32()
  external int dwFailureReasonCode;

  @Int32()
  external int fSaveConnectionData;

  @Uint32()
  external int dwSizeofConnectionData;

  external Pointer<Uint8> pConnectionData;

  @Int32()
  external int fSaveUserData;

  @Uint32()
  external int dwSizeofUserData;

  external Pointer<Uint8> pUserData;

  external Pointer<EAP_ATTRIBUTES> pAttribArray;

  @Int32()
  external int isolationState;

  external Pointer<EAP_METHOD_INFO> pEapMethodInfo;

  external Pointer<EAP_ERROR> pEapError;
}

/// {@category Struct}
class EapPacket extends Struct {
  @Uint8()
  external int Code;

  @Uint8()
  external int Id;

  @Array(2)
  external Array<Uint8> Length;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class EapPeerMethodOutput extends Struct {
  @Int32()
  external int action;

  @Int32()
  external int fAllowNotifications;
}

/// {@category Struct}
class EapPeerMethodResult extends Struct {
  @Int32()
  external int fIsSuccess;

  @Uint32()
  external int dwFailureReasonCode;

  @Int32()
  external int fSaveConnectionData;

  @Uint32()
  external int dwSizeofConnectionData;

  external Pointer<Uint8> pConnectionData;

  @Int32()
  external int fSaveUserData;

  @Uint32()
  external int dwSizeofUserData;

  external Pointer<Uint8> pUserData;

  external Pointer<EAP_ATTRIBUTES> pAttribArray;

  external Pointer<EAP_ERROR> pEapError;

  external Pointer<NgcTicketContext> pNgcKerbTicket;

  @Int32()
  external int fSaveToCredMan;
}

/// {@category Struct}
class EapSimCredential extends Struct {
  external Pointer<Utf16> iccID;
}

/// {@category Struct}
class EapUsernamePasswordCredential extends Struct {
  external Pointer<Utf16> username;

  external Pointer<Utf16> password;
}

/// {@category Struct}
class LEGACY_IDENTITY_UI_PARAMS extends Struct {
  @Uint32()
  external int eapType;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwSizeofConnectionData;

  external Pointer<Uint8> pConnectionData;

  @Uint32()
  external int dwSizeofUserData;

  external Pointer<Uint8> pUserData;

  @Uint32()
  external int dwSizeofUserDataOut;

  external Pointer<Uint8> pUserDataOut;

  external Pointer<Utf16> pwszIdentity;

  @Uint32()
  external int dwError;
}

/// {@category Struct}
class LEGACY_INTERACTIVE_UI_PARAMS extends Struct {
  @Uint32()
  external int eapType;

  @Uint32()
  external int dwSizeofContextData;

  external Pointer<Uint8> pContextData;

  @Uint32()
  external int dwSizeofInteractiveUIData;

  external Pointer<Uint8> pInteractiveUIData;

  @Uint32()
  external int dwError;
}

/// {@category Struct}
class NgcTicketContext extends Struct {
  @Array(45)
  external Array<Uint16> _wszTicket;

  String get wszTicket {
    final charCodes = <int>[];
    for (var i = 0; i < 45; i++) {
      charCodes.add(_wszTicket[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszTicket(String value) {
    final stringToStore = value.padRight(45, '\x00');
    for (var i = 0; i < 45; i++) {
      _wszTicket[i] = stringToStore.codeUnitAt(i);
    }
  }

  @IntPtr()
  external int hKey;

  @IntPtr()
  external int hImpersonateToken;
}

/// {@category Struct}
class PPP_EAP_INFO extends Struct {
  @Uint32()
  external int dwSizeInBytes;

  @Uint32()
  external int dwEapTypeId;

  @IntPtr()
  external int RasEapInitialize;

  @IntPtr()
  external int RasEapBegin;

  @IntPtr()
  external int RasEapEnd;

  @IntPtr()
  external int RasEapMakeMessage;
}

/// {@category Struct}
class PPP_EAP_INPUT extends Struct {
  @Uint32()
  external int dwSizeInBytes;

  @Uint32()
  external int fFlags;

  @Int32()
  external int fAuthenticator;

  external Pointer<Utf16> pwszIdentity;

  external Pointer<Utf16> pwszPassword;

  @Uint8()
  external int bInitialId;

  external Pointer<RAS_AUTH_ATTRIBUTE> pUserAttributes;

  @Int32()
  external int fAuthenticationComplete;

  @Uint32()
  external int dwAuthResultCode;

  @IntPtr()
  external int hTokenImpersonateUser;

  @Int32()
  external int fSuccessPacketReceived;

  @Int32()
  external int fDataReceivedFromInteractiveUI;

  external Pointer<Uint8> pDataFromInteractiveUI;

  @Uint32()
  external int dwSizeOfDataFromInteractiveUI;

  external Pointer<Uint8> pConnectionData;

  @Uint32()
  external int dwSizeOfConnectionData;

  external Pointer<Uint8> pUserData;

  @Uint32()
  external int dwSizeOfUserData;

  @IntPtr()
  external int hReserved;

  external GUID guidConnectionId;

  @Int32()
  external int isVpn;
}

/// {@category Struct}
class PPP_EAP_OUTPUT extends Struct {
  @Uint32()
  external int dwSizeInBytes;

  @Int32()
  external int Action;

  @Uint32()
  external int dwAuthResultCode;

  external Pointer<RAS_AUTH_ATTRIBUTE> pUserAttributes;

  @Int32()
  external int fInvokeInteractiveUI;

  external Pointer<Uint8> pUIContextData;

  @Uint32()
  external int dwSizeOfUIContextData;

  @Int32()
  external int fSaveConnectionData;

  external Pointer<Uint8> pConnectionData;

  @Uint32()
  external int dwSizeOfConnectionData;

  @Int32()
  external int fSaveUserData;

  external Pointer<Uint8> pUserData;

  @Uint32()
  external int dwSizeOfUserData;

  external Pointer<NgcTicketContext> pNgcKerbTicket;

  @Int32()
  external int fSaveToCredMan;
}

/// {@category Struct}
class PPP_EAP_PACKET extends Struct {
  @Uint8()
  external int Code;

  @Uint8()
  external int Id;

  @Array(2)
  external Array<Uint8> Length;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class RAS_AUTH_ATTRIBUTE extends Struct {
  @Int32()
  external int raaType;

  @Uint32()
  external int dwLength;

  external Pointer Value;
}
