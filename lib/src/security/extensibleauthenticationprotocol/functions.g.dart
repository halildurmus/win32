// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../security/extensibleauthenticationprotocol/structs.g.dart';
import '../../data/xml/msxml/IXMLDOMDocument2.dart';
import '../../data/xml/msxml/IXMLDOMNode.dart';
import '../../foundation/structs.g.dart';
import '../../security/extensibleauthenticationprotocol/callbacks.g.dart'; // -----------------------------------------------------------------------

// eappcfg.dll
// -----------------------------------------------------------------------
final _eappcfg = DynamicLibrary.open('eappcfg.dll');

int EapHostPeerConfigBlob2Xml(
  int dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  int dwSizeOfConfigIn,
  Pointer<Uint8> pConfigIn,
  Pointer<Pointer<COMObject>> ppConfigDoc,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerConfigBlob2Xml(
      dwFlags,
      eapMethodType,
      dwSizeOfConfigIn,
      pConfigIn,
      ppConfigDoc,
      ppEapError,
    );

late final _EapHostPeerConfigBlob2Xml = _eappcfg.lookupFunction<
    Uint32 Function(
  Uint32 dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  Uint32 dwSizeOfConfigIn,
  Pointer<Uint8> pConfigIn,
  Pointer<Pointer<COMObject>> ppConfigDoc,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  int dwSizeOfConfigIn,
  Pointer<Uint8> pConfigIn,
  Pointer<Pointer<COMObject>> ppConfigDoc,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerConfigBlob2Xml');

int EapHostPeerConfigXml2Blob(
  int dwFlags,
  Pointer<COMObject> pConfigDoc,
  Pointer<Uint32> pdwSizeOfConfigOut,
  Pointer<Pointer<Uint8>> ppConfigOut,
  Pointer<EAP_METHOD_TYPE> pEapMethodType,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerConfigXml2Blob(
      dwFlags,
      pConfigDoc,
      pdwSizeOfConfigOut,
      ppConfigOut,
      pEapMethodType,
      ppEapError,
    );

late final _EapHostPeerConfigXml2Blob = _eappcfg.lookupFunction<
    Uint32 Function(
  Uint32 dwFlags,
  Pointer<COMObject> pConfigDoc,
  Pointer<Uint32> pdwSizeOfConfigOut,
  Pointer<Pointer<Uint8>> ppConfigOut,
  Pointer<EAP_METHOD_TYPE> pEapMethodType,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int dwFlags,
  Pointer<COMObject> pConfigDoc,
  Pointer<Uint32> pdwSizeOfConfigOut,
  Pointer<Pointer<Uint8>> ppConfigOut,
  Pointer<EAP_METHOD_TYPE> pEapMethodType,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerConfigXml2Blob');

int EapHostPeerCredentialsXml2Blob(
  int dwFlags,
  Pointer<COMObject> pCredentialsDoc,
  int dwSizeOfConfigIn,
  Pointer<Uint8> pConfigIn,
  Pointer<Uint32> pdwSizeOfCredentialsOut,
  Pointer<Pointer<Uint8>> ppCredentialsOut,
  Pointer<EAP_METHOD_TYPE> pEapMethodType,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerCredentialsXml2Blob(
      dwFlags,
      pCredentialsDoc,
      dwSizeOfConfigIn,
      pConfigIn,
      pdwSizeOfCredentialsOut,
      ppCredentialsOut,
      pEapMethodType,
      ppEapError,
    );

late final _EapHostPeerCredentialsXml2Blob = _eappcfg.lookupFunction<
    Uint32 Function(
  Uint32 dwFlags,
  Pointer<COMObject> pCredentialsDoc,
  Uint32 dwSizeOfConfigIn,
  Pointer<Uint8> pConfigIn,
  Pointer<Uint32> pdwSizeOfCredentialsOut,
  Pointer<Pointer<Uint8>> ppCredentialsOut,
  Pointer<EAP_METHOD_TYPE> pEapMethodType,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int dwFlags,
  Pointer<COMObject> pCredentialsDoc,
  int dwSizeOfConfigIn,
  Pointer<Uint8> pConfigIn,
  Pointer<Uint32> pdwSizeOfCredentialsOut,
  Pointer<Pointer<Uint8>> ppCredentialsOut,
  Pointer<EAP_METHOD_TYPE> pEapMethodType,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerCredentialsXml2Blob');

void EapHostPeerFreeErrorMemory(
  Pointer<EAP_ERROR> pEapError,
) =>
    _EapHostPeerFreeErrorMemory(
      pEapError,
    );

late final _EapHostPeerFreeErrorMemory = _eappcfg.lookupFunction<
    Void Function(
  Pointer<EAP_ERROR> pEapError,
),
    void Function(
  Pointer<EAP_ERROR> pEapError,
)>('EapHostPeerFreeErrorMemory');

void EapHostPeerFreeMemory(
  Pointer<Uint8> pData,
) =>
    _EapHostPeerFreeMemory(
      pData,
    );

late final _EapHostPeerFreeMemory = _eappcfg.lookupFunction<
    Void Function(
  Pointer<Uint8> pData,
),
    void Function(
  Pointer<Uint8> pData,
)>('EapHostPeerFreeMemory');

int EapHostPeerGetMethodProperties(
  int dwVersion,
  int dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  int hUserImpersonationToken,
  int dwEapConnDataSize,
  Pointer<Uint8> pbEapConnData,
  int dwUserDataSize,
  Pointer<Uint8> pbUserData,
  Pointer<EAP_METHOD_PROPERTY_ARRAY> pMethodPropertyArray,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerGetMethodProperties(
      dwVersion,
      dwFlags,
      eapMethodType,
      hUserImpersonationToken,
      dwEapConnDataSize,
      pbEapConnData,
      dwUserDataSize,
      pbUserData,
      pMethodPropertyArray,
      ppEapError,
    );

late final _EapHostPeerGetMethodProperties = _eappcfg.lookupFunction<
    Uint32 Function(
  Uint32 dwVersion,
  Uint32 dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  IntPtr hUserImpersonationToken,
  Uint32 dwEapConnDataSize,
  Pointer<Uint8> pbEapConnData,
  Uint32 dwUserDataSize,
  Pointer<Uint8> pbUserData,
  Pointer<EAP_METHOD_PROPERTY_ARRAY> pMethodPropertyArray,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int dwVersion,
  int dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  int hUserImpersonationToken,
  int dwEapConnDataSize,
  Pointer<Uint8> pbEapConnData,
  int dwUserDataSize,
  Pointer<Uint8> pbUserData,
  Pointer<EAP_METHOD_PROPERTY_ARRAY> pMethodPropertyArray,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerGetMethodProperties');

int EapHostPeerGetMethods(
  Pointer<EAP_METHOD_INFO_ARRAY> pEapMethodInfoArray,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerGetMethods(
      pEapMethodInfoArray,
      ppEapError,
    );

late final _EapHostPeerGetMethods = _eappcfg.lookupFunction<
    Uint32 Function(
  Pointer<EAP_METHOD_INFO_ARRAY> pEapMethodInfoArray,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  Pointer<EAP_METHOD_INFO_ARRAY> pEapMethodInfoArray,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerGetMethods');

int EapHostPeerInvokeConfigUI(
  int hwndParent,
  int dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  int dwSizeOfConfigIn,
  Pointer<Uint8> pConfigIn,
  Pointer<Uint32> pdwSizeOfConfigOut,
  Pointer<Pointer<Uint8>> ppConfigOut,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerInvokeConfigUI(
      hwndParent,
      dwFlags,
      eapMethodType,
      dwSizeOfConfigIn,
      pConfigIn,
      pdwSizeOfConfigOut,
      ppConfigOut,
      ppEapError,
    );

late final _EapHostPeerInvokeConfigUI = _eappcfg.lookupFunction<
    Uint32 Function(
  IntPtr hwndParent,
  Uint32 dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  Uint32 dwSizeOfConfigIn,
  Pointer<Uint8> pConfigIn,
  Pointer<Uint32> pdwSizeOfConfigOut,
  Pointer<Pointer<Uint8>> ppConfigOut,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int hwndParent,
  int dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  int dwSizeOfConfigIn,
  Pointer<Uint8> pConfigIn,
  Pointer<Uint32> pdwSizeOfConfigOut,
  Pointer<Pointer<Uint8>> ppConfigOut,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerInvokeConfigUI');

int EapHostPeerInvokeIdentityUI(
  int dwVersion,
  EAP_METHOD_TYPE eapMethodType,
  int dwFlags,
  int hwndParent,
  int dwSizeofConnectionData,
  Pointer<Uint8> pConnectionData,
  int dwSizeofUserData,
  Pointer<Uint8> pUserData,
  Pointer<Uint32> pdwSizeOfUserDataOut,
  Pointer<Pointer<Uint8>> ppUserDataOut,
  Pointer<Pointer<Utf16>> ppwszIdentity,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer> ppvReserved,
) =>
    _EapHostPeerInvokeIdentityUI(
      dwVersion,
      eapMethodType,
      dwFlags,
      hwndParent,
      dwSizeofConnectionData,
      pConnectionData,
      dwSizeofUserData,
      pUserData,
      pdwSizeOfUserDataOut,
      ppUserDataOut,
      ppwszIdentity,
      ppEapError,
      ppvReserved,
    );

late final _EapHostPeerInvokeIdentityUI = _eappcfg.lookupFunction<
    Uint32 Function(
  Uint32 dwVersion,
  EAP_METHOD_TYPE eapMethodType,
  Uint32 dwFlags,
  IntPtr hwndParent,
  Uint32 dwSizeofConnectionData,
  Pointer<Uint8> pConnectionData,
  Uint32 dwSizeofUserData,
  Pointer<Uint8> pUserData,
  Pointer<Uint32> pdwSizeOfUserDataOut,
  Pointer<Pointer<Uint8>> ppUserDataOut,
  Pointer<Pointer<Utf16>> ppwszIdentity,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer> ppvReserved,
),
    int Function(
  int dwVersion,
  EAP_METHOD_TYPE eapMethodType,
  int dwFlags,
  int hwndParent,
  int dwSizeofConnectionData,
  Pointer<Uint8> pConnectionData,
  int dwSizeofUserData,
  Pointer<Uint8> pUserData,
  Pointer<Uint32> pdwSizeOfUserDataOut,
  Pointer<Pointer<Uint8>> ppUserDataOut,
  Pointer<Pointer<Utf16>> ppwszIdentity,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer> ppvReserved,
)>('EapHostPeerInvokeIdentityUI');

int EapHostPeerInvokeInteractiveUI(
  int hwndParent,
  int dwSizeofUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<Uint32> pdwSizeOfDataFromInteractiveUI,
  Pointer<Pointer<Uint8>> ppDataFromInteractiveUI,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerInvokeInteractiveUI(
      hwndParent,
      dwSizeofUIContextData,
      pUIContextData,
      pdwSizeOfDataFromInteractiveUI,
      ppDataFromInteractiveUI,
      ppEapError,
    );

late final _EapHostPeerInvokeInteractiveUI = _eappcfg.lookupFunction<
    Uint32 Function(
  IntPtr hwndParent,
  Uint32 dwSizeofUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<Uint32> pdwSizeOfDataFromInteractiveUI,
  Pointer<Pointer<Uint8>> ppDataFromInteractiveUI,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int hwndParent,
  int dwSizeofUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<Uint32> pdwSizeOfDataFromInteractiveUI,
  Pointer<Pointer<Uint8>> ppDataFromInteractiveUI,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerInvokeInteractiveUI');

int EapHostPeerQueryCredentialInputFields(
  int hUserImpersonationToken,
  EAP_METHOD_TYPE eapMethodType,
  int dwFlags,
  int dwEapConnDataSize,
  Pointer<Uint8> pbEapConnData,
  Pointer<EAP_CONFIG_INPUT_FIELD_ARRAY> pEapConfigInputFieldArray,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerQueryCredentialInputFields(
      hUserImpersonationToken,
      eapMethodType,
      dwFlags,
      dwEapConnDataSize,
      pbEapConnData,
      pEapConfigInputFieldArray,
      ppEapError,
    );

late final _EapHostPeerQueryCredentialInputFields = _eappcfg.lookupFunction<
    Uint32 Function(
  IntPtr hUserImpersonationToken,
  EAP_METHOD_TYPE eapMethodType,
  Uint32 dwFlags,
  Uint32 dwEapConnDataSize,
  Pointer<Uint8> pbEapConnData,
  Pointer<EAP_CONFIG_INPUT_FIELD_ARRAY> pEapConfigInputFieldArray,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int hUserImpersonationToken,
  EAP_METHOD_TYPE eapMethodType,
  int dwFlags,
  int dwEapConnDataSize,
  Pointer<Uint8> pbEapConnData,
  Pointer<EAP_CONFIG_INPUT_FIELD_ARRAY> pEapConfigInputFieldArray,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerQueryCredentialInputFields');

int EapHostPeerQueryInteractiveUIInputFields(
  int dwVersion,
  int dwFlags,
  int dwSizeofUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<EAP_INTERACTIVE_UI_DATA> pEapInteractiveUIData,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer> ppvReserved,
) =>
    _EapHostPeerQueryInteractiveUIInputFields(
      dwVersion,
      dwFlags,
      dwSizeofUIContextData,
      pUIContextData,
      pEapInteractiveUIData,
      ppEapError,
      ppvReserved,
    );

late final _EapHostPeerQueryInteractiveUIInputFields = _eappcfg.lookupFunction<
    Uint32 Function(
  Uint32 dwVersion,
  Uint32 dwFlags,
  Uint32 dwSizeofUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<EAP_INTERACTIVE_UI_DATA> pEapInteractiveUIData,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer> ppvReserved,
),
    int Function(
  int dwVersion,
  int dwFlags,
  int dwSizeofUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<EAP_INTERACTIVE_UI_DATA> pEapInteractiveUIData,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer> ppvReserved,
)>('EapHostPeerQueryInteractiveUIInputFields');

int EapHostPeerQueryUIBlobFromInteractiveUIInputFields(
  int dwVersion,
  int dwFlags,
  int dwSizeofUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<EAP_INTERACTIVE_UI_DATA> pEapInteractiveUIData,
  Pointer<Uint32> pdwSizeOfDataFromInteractiveUI,
  Pointer<Pointer<Uint8>> ppDataFromInteractiveUI,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer> ppvReserved,
) =>
    _EapHostPeerQueryUIBlobFromInteractiveUIInputFields(
      dwVersion,
      dwFlags,
      dwSizeofUIContextData,
      pUIContextData,
      pEapInteractiveUIData,
      pdwSizeOfDataFromInteractiveUI,
      ppDataFromInteractiveUI,
      ppEapError,
      ppvReserved,
    );

late final _EapHostPeerQueryUIBlobFromInteractiveUIInputFields =
    _eappcfg.lookupFunction<
        Uint32 Function(
  Uint32 dwVersion,
  Uint32 dwFlags,
  Uint32 dwSizeofUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<EAP_INTERACTIVE_UI_DATA> pEapInteractiveUIData,
  Pointer<Uint32> pdwSizeOfDataFromInteractiveUI,
  Pointer<Pointer<Uint8>> ppDataFromInteractiveUI,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer> ppvReserved,
),
        int Function(
  int dwVersion,
  int dwFlags,
  int dwSizeofUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<EAP_INTERACTIVE_UI_DATA> pEapInteractiveUIData,
  Pointer<Uint32> pdwSizeOfDataFromInteractiveUI,
  Pointer<Pointer<Uint8>> ppDataFromInteractiveUI,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer> ppvReserved,
)>('EapHostPeerQueryUIBlobFromInteractiveUIInputFields');

int EapHostPeerQueryUserBlobFromCredentialInputFields(
  int hUserImpersonationToken,
  EAP_METHOD_TYPE eapMethodType,
  int dwFlags,
  int dwEapConnDataSize,
  Pointer<Uint8> pbEapConnData,
  Pointer<EAP_CONFIG_INPUT_FIELD_ARRAY> pEapConfigInputFieldArray,
  Pointer<Uint32> pdwUserBlobSize,
  Pointer<Pointer<Uint8>> ppbUserBlob,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerQueryUserBlobFromCredentialInputFields(
      hUserImpersonationToken,
      eapMethodType,
      dwFlags,
      dwEapConnDataSize,
      pbEapConnData,
      pEapConfigInputFieldArray,
      pdwUserBlobSize,
      ppbUserBlob,
      ppEapError,
    );

late final _EapHostPeerQueryUserBlobFromCredentialInputFields =
    _eappcfg.lookupFunction<
        Uint32 Function(
  IntPtr hUserImpersonationToken,
  EAP_METHOD_TYPE eapMethodType,
  Uint32 dwFlags,
  Uint32 dwEapConnDataSize,
  Pointer<Uint8> pbEapConnData,
  Pointer<EAP_CONFIG_INPUT_FIELD_ARRAY> pEapConfigInputFieldArray,
  Pointer<Uint32> pdwUserBlobSize,
  Pointer<Pointer<Uint8>> ppbUserBlob,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
        int Function(
  int hUserImpersonationToken,
  EAP_METHOD_TYPE eapMethodType,
  int dwFlags,
  int dwEapConnDataSize,
  Pointer<Uint8> pbEapConnData,
  Pointer<EAP_CONFIG_INPUT_FIELD_ARRAY> pEapConfigInputFieldArray,
  Pointer<Uint32> pdwUserBlobSize,
  Pointer<Pointer<Uint8>> ppbUserBlob,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerQueryUserBlobFromCredentialInputFields');

// -----------------------------------------------------------------------
// eappprxy.dll
// -----------------------------------------------------------------------
final _eappprxy = DynamicLibrary.open('eappprxy.dll');

int EapHostPeerBeginSession(
  int dwFlags,
  EAP_METHOD_TYPE eapType,
  Pointer<EAP_ATTRIBUTES> pAttributeArray,
  int hTokenImpersonateUser,
  int dwSizeofConnectionData,
  Pointer<Uint8> pConnectionData,
  int dwSizeofUserData,
  Pointer<Uint8> pUserData,
  int dwMaxSendPacketSize,
  Pointer<GUID> pConnectionId,
  Pointer<NativeFunction<NotificationHandler>> func,
  Pointer pContextData,
  Pointer<Uint32> pSessionId,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerBeginSession(
      dwFlags,
      eapType,
      pAttributeArray,
      hTokenImpersonateUser,
      dwSizeofConnectionData,
      pConnectionData,
      dwSizeofUserData,
      pUserData,
      dwMaxSendPacketSize,
      pConnectionId,
      func,
      pContextData,
      pSessionId,
      ppEapError,
    );

late final _EapHostPeerBeginSession = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 dwFlags,
  EAP_METHOD_TYPE eapType,
  Pointer<EAP_ATTRIBUTES> pAttributeArray,
  IntPtr hTokenImpersonateUser,
  Uint32 dwSizeofConnectionData,
  Pointer<Uint8> pConnectionData,
  Uint32 dwSizeofUserData,
  Pointer<Uint8> pUserData,
  Uint32 dwMaxSendPacketSize,
  Pointer<GUID> pConnectionId,
  Pointer<NativeFunction<NotificationHandler>> func,
  Pointer pContextData,
  Pointer<Uint32> pSessionId,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int dwFlags,
  EAP_METHOD_TYPE eapType,
  Pointer<EAP_ATTRIBUTES> pAttributeArray,
  int hTokenImpersonateUser,
  int dwSizeofConnectionData,
  Pointer<Uint8> pConnectionData,
  int dwSizeofUserData,
  Pointer<Uint8> pUserData,
  int dwMaxSendPacketSize,
  Pointer<GUID> pConnectionId,
  Pointer<NativeFunction<NotificationHandler>> func,
  Pointer pContextData,
  Pointer<Uint32> pSessionId,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerBeginSession');

int EapHostPeerClearConnection(
  Pointer<GUID> pConnectionId,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerClearConnection(
      pConnectionId,
      ppEapError,
    );

late final _EapHostPeerClearConnection = _eappprxy.lookupFunction<
    Uint32 Function(
  Pointer<GUID> pConnectionId,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  Pointer<GUID> pConnectionId,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerClearConnection');

int EapHostPeerEndSession(
  int sessionHandle,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerEndSession(
      sessionHandle,
      ppEapError,
    );

late final _EapHostPeerEndSession = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 sessionHandle,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int sessionHandle,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerEndSession');

void EapHostPeerFreeEapError(
  Pointer<EAP_ERROR> pEapError,
) =>
    _EapHostPeerFreeEapError(
      pEapError,
    );

late final _EapHostPeerFreeEapError = _eappprxy.lookupFunction<
    Void Function(
  Pointer<EAP_ERROR> pEapError,
),
    void Function(
  Pointer<EAP_ERROR> pEapError,
)>('EapHostPeerFreeEapError');

void EapHostPeerFreeRuntimeMemory(
  Pointer<Uint8> pData,
) =>
    _EapHostPeerFreeRuntimeMemory(
      pData,
    );

late final _EapHostPeerFreeRuntimeMemory = _eappprxy.lookupFunction<
    Void Function(
  Pointer<Uint8> pData,
),
    void Function(
  Pointer<Uint8> pData,
)>('EapHostPeerFreeRuntimeMemory');

int EapHostPeerGetAuthStatus(
  int sessionHandle,
  int authParam,
  Pointer<Uint32> pcbAuthData,
  Pointer<Pointer<Uint8>> ppAuthData,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerGetAuthStatus(
      sessionHandle,
      authParam,
      pcbAuthData,
      ppAuthData,
      ppEapError,
    );

late final _EapHostPeerGetAuthStatus = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 sessionHandle,
  Int32 authParam,
  Pointer<Uint32> pcbAuthData,
  Pointer<Pointer<Uint8>> ppAuthData,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int sessionHandle,
  int authParam,
  Pointer<Uint32> pcbAuthData,
  Pointer<Pointer<Uint8>> ppAuthData,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerGetAuthStatus');

int EapHostPeerGetDataToUnplumbCredentials(
  Pointer<GUID> pConnectionIdThatLastSavedCreds,
  Pointer<IntPtr> phCredentialImpersonationToken,
  int sessionHandle,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Int32> fSaveToCredMan,
) =>
    _EapHostPeerGetDataToUnplumbCredentials(
      pConnectionIdThatLastSavedCreds,
      phCredentialImpersonationToken,
      sessionHandle,
      ppEapError,
      fSaveToCredMan,
    );

late final _EapHostPeerGetDataToUnplumbCredentials = _eappprxy.lookupFunction<
    Uint32 Function(
  Pointer<GUID> pConnectionIdThatLastSavedCreds,
  Pointer<IntPtr> phCredentialImpersonationToken,
  Uint32 sessionHandle,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Int32> fSaveToCredMan,
),
    int Function(
  Pointer<GUID> pConnectionIdThatLastSavedCreds,
  Pointer<IntPtr> phCredentialImpersonationToken,
  int sessionHandle,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Int32> fSaveToCredMan,
)>('EapHostPeerGetDataToUnplumbCredentials');

int EapHostPeerGetEncryptedPassword(
  int dwSizeofPassword,
  Pointer<Utf16> szPassword,
  Pointer<Pointer<Utf16>> ppszEncPassword,
) =>
    _EapHostPeerGetEncryptedPassword(
      dwSizeofPassword,
      szPassword,
      ppszEncPassword,
    );

late final _EapHostPeerGetEncryptedPassword = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 dwSizeofPassword,
  Pointer<Utf16> szPassword,
  Pointer<Pointer<Utf16>> ppszEncPassword,
),
    int Function(
  int dwSizeofPassword,
  Pointer<Utf16> szPassword,
  Pointer<Pointer<Utf16>> ppszEncPassword,
)>('EapHostPeerGetEncryptedPassword');

int EapHostPeerGetIdentity(
  int dwVersion,
  int dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  int dwSizeofConnectionData,
  Pointer<Uint8> pConnectionData,
  int dwSizeofUserData,
  Pointer<Uint8> pUserData,
  int hTokenImpersonateUser,
  Pointer<Int32> pfInvokeUI,
  Pointer<Uint32> pdwSizeOfUserDataOut,
  Pointer<Pointer<Uint8>> ppUserDataOut,
  Pointer<Pointer<Utf16>> ppwszIdentity,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer<Uint8>> ppvReserved,
) =>
    _EapHostPeerGetIdentity(
      dwVersion,
      dwFlags,
      eapMethodType,
      dwSizeofConnectionData,
      pConnectionData,
      dwSizeofUserData,
      pUserData,
      hTokenImpersonateUser,
      pfInvokeUI,
      pdwSizeOfUserDataOut,
      ppUserDataOut,
      ppwszIdentity,
      ppEapError,
      ppvReserved,
    );

late final _EapHostPeerGetIdentity = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 dwVersion,
  Uint32 dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  Uint32 dwSizeofConnectionData,
  Pointer<Uint8> pConnectionData,
  Uint32 dwSizeofUserData,
  Pointer<Uint8> pUserData,
  IntPtr hTokenImpersonateUser,
  Pointer<Int32> pfInvokeUI,
  Pointer<Uint32> pdwSizeOfUserDataOut,
  Pointer<Pointer<Uint8>> ppUserDataOut,
  Pointer<Pointer<Utf16>> ppwszIdentity,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer<Uint8>> ppvReserved,
),
    int Function(
  int dwVersion,
  int dwFlags,
  EAP_METHOD_TYPE eapMethodType,
  int dwSizeofConnectionData,
  Pointer<Uint8> pConnectionData,
  int dwSizeofUserData,
  Pointer<Uint8> pUserData,
  int hTokenImpersonateUser,
  Pointer<Int32> pfInvokeUI,
  Pointer<Uint32> pdwSizeOfUserDataOut,
  Pointer<Pointer<Uint8>> ppUserDataOut,
  Pointer<Pointer<Utf16>> ppwszIdentity,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
  Pointer<Pointer<Uint8>> ppvReserved,
)>('EapHostPeerGetIdentity');

int EapHostPeerGetResponseAttributes(
  int sessionHandle,
  Pointer<EAP_ATTRIBUTES> pAttribs,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerGetResponseAttributes(
      sessionHandle,
      pAttribs,
      ppEapError,
    );

late final _EapHostPeerGetResponseAttributes = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 sessionHandle,
  Pointer<EAP_ATTRIBUTES> pAttribs,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int sessionHandle,
  Pointer<EAP_ATTRIBUTES> pAttribs,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerGetResponseAttributes');

int EapHostPeerGetResult(
  int sessionHandle,
  int reason,
  Pointer<EapHostPeerMethodResult> ppResult,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerGetResult(
      sessionHandle,
      reason,
      ppResult,
      ppEapError,
    );

late final _EapHostPeerGetResult = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 sessionHandle,
  Int32 reason,
  Pointer<EapHostPeerMethodResult> ppResult,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int sessionHandle,
  int reason,
  Pointer<EapHostPeerMethodResult> ppResult,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerGetResult');

int EapHostPeerGetSendPacket(
  int sessionHandle,
  Pointer<Uint32> pcbSendPacket,
  Pointer<Pointer<Uint8>> ppSendPacket,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerGetSendPacket(
      sessionHandle,
      pcbSendPacket,
      ppSendPacket,
      ppEapError,
    );

late final _EapHostPeerGetSendPacket = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 sessionHandle,
  Pointer<Uint32> pcbSendPacket,
  Pointer<Pointer<Uint8>> ppSendPacket,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int sessionHandle,
  Pointer<Uint32> pcbSendPacket,
  Pointer<Pointer<Uint8>> ppSendPacket,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerGetSendPacket');

int EapHostPeerGetUIContext(
  int sessionHandle,
  Pointer<Uint32> pdwSizeOfUIContextData,
  Pointer<Pointer<Uint8>> ppUIContextData,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerGetUIContext(
      sessionHandle,
      pdwSizeOfUIContextData,
      ppUIContextData,
      ppEapError,
    );

late final _EapHostPeerGetUIContext = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 sessionHandle,
  Pointer<Uint32> pdwSizeOfUIContextData,
  Pointer<Pointer<Uint8>> ppUIContextData,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int sessionHandle,
  Pointer<Uint32> pdwSizeOfUIContextData,
  Pointer<Pointer<Uint8>> ppUIContextData,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerGetUIContext');

int EapHostPeerInitialize() => _EapHostPeerInitialize();

late final _EapHostPeerInitialize = _eappprxy
    .lookupFunction<Uint32 Function(), int Function()>('EapHostPeerInitialize');

int EapHostPeerProcessReceivedPacket(
  int sessionHandle,
  int cbReceivePacket,
  Pointer<Uint8> pReceivePacket,
  Pointer<Int32> pEapOutput,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerProcessReceivedPacket(
      sessionHandle,
      cbReceivePacket,
      pReceivePacket,
      pEapOutput,
      ppEapError,
    );

late final _EapHostPeerProcessReceivedPacket = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 sessionHandle,
  Uint32 cbReceivePacket,
  Pointer<Uint8> pReceivePacket,
  Pointer<Int32> pEapOutput,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int sessionHandle,
  int cbReceivePacket,
  Pointer<Uint8> pReceivePacket,
  Pointer<Int32> pEapOutput,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerProcessReceivedPacket');

int EapHostPeerSetResponseAttributes(
  int sessionHandle,
  Pointer<EAP_ATTRIBUTES> pAttribs,
  Pointer<Int32> pEapOutput,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerSetResponseAttributes(
      sessionHandle,
      pAttribs,
      pEapOutput,
      ppEapError,
    );

late final _EapHostPeerSetResponseAttributes = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 sessionHandle,
  Pointer<EAP_ATTRIBUTES> pAttribs,
  Pointer<Int32> pEapOutput,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int sessionHandle,
  Pointer<EAP_ATTRIBUTES> pAttribs,
  Pointer<Int32> pEapOutput,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerSetResponseAttributes');

int EapHostPeerSetUIContext(
  int sessionHandle,
  int dwSizeOfUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<Int32> pEapOutput,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
) =>
    _EapHostPeerSetUIContext(
      sessionHandle,
      dwSizeOfUIContextData,
      pUIContextData,
      pEapOutput,
      ppEapError,
    );

late final _EapHostPeerSetUIContext = _eappprxy.lookupFunction<
    Uint32 Function(
  Uint32 sessionHandle,
  Uint32 dwSizeOfUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<Int32> pEapOutput,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
),
    int Function(
  int sessionHandle,
  int dwSizeOfUIContextData,
  Pointer<Uint8> pUIContextData,
  Pointer<Int32> pEapOutput,
  Pointer<Pointer<EAP_ERROR>> ppEapError,
)>('EapHostPeerSetUIContext');

void EapHostPeerUninitialize() => _EapHostPeerUninitialize();

late final _EapHostPeerUninitialize =
    _eappprxy.lookupFunction<Void Function(), void Function()>(
        'EapHostPeerUninitialize');
