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
import '../../foundation/structs.g.dart';
import '../../devices/webservicesondevices/IWSDXMLContext.dart';
import '../../devices/webservicesondevices/IWSDDeviceHost.dart';
import '../../devices/webservicesondevices/structs.g.dart';
import '../../devices/webservicesondevices/IWSDAddress.dart';
import '../../devices/webservicesondevices/IWSDDeviceProxy.dart';
import '../../devices/webservicesondevices/IWSDiscoveryProvider.dart';
import '../../devices/webservicesondevices/IWSDiscoveryPublisher.dart';
import '../../devices/webservicesondevices/IWSDHttpAddress.dart';
import '../../devices/webservicesondevices/IWSDHttpMessageParameters.dart';
import '../../devices/webservicesondevices/IWSDOutboundAttachment.dart';
import '../../devices/webservicesondevices/IWSDUdpAddress.dart';
import '../../devices/webservicesondevices/IWSDUdpMessageParameters.dart'; // -----------------------------------------------------------------------

// wsdapi.dll
// -----------------------------------------------------------------------
final _wsdapi = DynamicLibrary.open('wsdapi.dll');

Pointer WSDAllocateLinkedMemory(
  Pointer pParent,
  int cbSize,
) =>
    _WSDAllocateLinkedMemory(
      pParent,
      cbSize,
    );

late final _WSDAllocateLinkedMemory = _wsdapi.lookupFunction<
    Pointer Function(
  Pointer pParent,
  IntPtr cbSize,
),
    Pointer Function(
  Pointer pParent,
  int cbSize,
)>('WSDAllocateLinkedMemory');

void WSDAttachLinkedMemory(
  Pointer pParent,
  Pointer pChild,
) =>
    _WSDAttachLinkedMemory(
      pParent,
      pChild,
    );

late final _WSDAttachLinkedMemory = _wsdapi.lookupFunction<
    Void Function(
  Pointer pParent,
  Pointer pChild,
),
    void Function(
  Pointer pParent,
  Pointer pChild,
)>('WSDAttachLinkedMemory');

int WSDCreateDeviceHost(
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppDeviceHost,
) =>
    _WSDCreateDeviceHost(
      pszLocalId,
      pContext,
      ppDeviceHost,
    );

late final _WSDCreateDeviceHost = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppDeviceHost,
),
    int Function(
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppDeviceHost,
)>('WSDCreateDeviceHost');

int WSDCreateDeviceHost2(
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  int dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppDeviceHost,
) =>
    _WSDCreateDeviceHost2(
      pszLocalId,
      pContext,
      pConfigParams,
      dwConfigParamCount,
      ppDeviceHost,
    );

late final _WSDCreateDeviceHost2 = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  Uint32 dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppDeviceHost,
),
    int Function(
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  int dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppDeviceHost,
)>('WSDCreateDeviceHost2');

int WSDCreateDeviceHostAdvanced(
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppHostAddresses,
  int dwHostAddressCount,
  Pointer<Pointer<COMObject>> ppDeviceHost,
) =>
    _WSDCreateDeviceHostAdvanced(
      pszLocalId,
      pContext,
      ppHostAddresses,
      dwHostAddressCount,
      ppDeviceHost,
    );

late final _WSDCreateDeviceHostAdvanced = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppHostAddresses,
  Uint32 dwHostAddressCount,
  Pointer<Pointer<COMObject>> ppDeviceHost,
),
    int Function(
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppHostAddresses,
  int dwHostAddressCount,
  Pointer<Pointer<COMObject>> ppDeviceHost,
)>('WSDCreateDeviceHostAdvanced');

int WSDCreateDeviceProxy(
  Pointer<Utf16> pszDeviceId,
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppDeviceProxy,
) =>
    _WSDCreateDeviceProxy(
      pszDeviceId,
      pszLocalId,
      pContext,
      ppDeviceProxy,
    );

late final _WSDCreateDeviceProxy = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszDeviceId,
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppDeviceProxy,
),
    int Function(
  Pointer<Utf16> pszDeviceId,
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppDeviceProxy,
)>('WSDCreateDeviceProxy');

int WSDCreateDeviceProxy2(
  Pointer<Utf16> pszDeviceId,
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  int dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppDeviceProxy,
) =>
    _WSDCreateDeviceProxy2(
      pszDeviceId,
      pszLocalId,
      pContext,
      pConfigParams,
      dwConfigParamCount,
      ppDeviceProxy,
    );

late final _WSDCreateDeviceProxy2 = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszDeviceId,
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  Uint32 dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppDeviceProxy,
),
    int Function(
  Pointer<Utf16> pszDeviceId,
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  int dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppDeviceProxy,
)>('WSDCreateDeviceProxy2');

int WSDCreateDeviceProxyAdvanced(
  Pointer<Utf16> pszDeviceId,
  Pointer<COMObject> pDeviceAddress,
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppDeviceProxy,
) =>
    _WSDCreateDeviceProxyAdvanced(
      pszDeviceId,
      pDeviceAddress,
      pszLocalId,
      pContext,
      ppDeviceProxy,
    );

late final _WSDCreateDeviceProxyAdvanced = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszDeviceId,
  Pointer<COMObject> pDeviceAddress,
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppDeviceProxy,
),
    int Function(
  Pointer<Utf16> pszDeviceId,
  Pointer<COMObject> pDeviceAddress,
  Pointer<Utf16> pszLocalId,
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppDeviceProxy,
)>('WSDCreateDeviceProxyAdvanced');

int WSDCreateDiscoveryProvider(
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppProvider,
) =>
    _WSDCreateDiscoveryProvider(
      pContext,
      ppProvider,
    );

late final _WSDCreateDiscoveryProvider = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppProvider,
),
    int Function(
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppProvider,
)>('WSDCreateDiscoveryProvider');

int WSDCreateDiscoveryProvider2(
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  int dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppProvider,
) =>
    _WSDCreateDiscoveryProvider2(
      pContext,
      pConfigParams,
      dwConfigParamCount,
      ppProvider,
    );

late final _WSDCreateDiscoveryProvider2 = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  Uint32 dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppProvider,
),
    int Function(
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  int dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppProvider,
)>('WSDCreateDiscoveryProvider2');

int WSDCreateDiscoveryPublisher(
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppPublisher,
) =>
    _WSDCreateDiscoveryPublisher(
      pContext,
      ppPublisher,
    );

late final _WSDCreateDiscoveryPublisher = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppPublisher,
),
    int Function(
  Pointer<COMObject> pContext,
  Pointer<Pointer<COMObject>> ppPublisher,
)>('WSDCreateDiscoveryPublisher');

int WSDCreateDiscoveryPublisher2(
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  int dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppPublisher,
) =>
    _WSDCreateDiscoveryPublisher2(
      pContext,
      pConfigParams,
      dwConfigParamCount,
      ppPublisher,
    );

late final _WSDCreateDiscoveryPublisher2 = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  Uint32 dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppPublisher,
),
    int Function(
  Pointer<COMObject> pContext,
  Pointer<WSD_CONFIG_PARAM> pConfigParams,
  int dwConfigParamCount,
  Pointer<Pointer<COMObject>> ppPublisher,
)>('WSDCreateDiscoveryPublisher2');

int WSDCreateHttpAddress(
  Pointer<Pointer<COMObject>> ppAddress,
) =>
    _WSDCreateHttpAddress(
      ppAddress,
    );

late final _WSDCreateHttpAddress = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppAddress,
),
    int Function(
  Pointer<Pointer<COMObject>> ppAddress,
)>('WSDCreateHttpAddress');

int WSDCreateHttpMessageParameters(
  Pointer<Pointer<COMObject>> ppTxParams,
) =>
    _WSDCreateHttpMessageParameters(
      ppTxParams,
    );

late final _WSDCreateHttpMessageParameters = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppTxParams,
),
    int Function(
  Pointer<Pointer<COMObject>> ppTxParams,
)>('WSDCreateHttpMessageParameters');

int WSDCreateOutboundAttachment(
  Pointer<Pointer<COMObject>> ppAttachment,
) =>
    _WSDCreateOutboundAttachment(
      ppAttachment,
    );

late final _WSDCreateOutboundAttachment = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppAttachment,
),
    int Function(
  Pointer<Pointer<COMObject>> ppAttachment,
)>('WSDCreateOutboundAttachment');

int WSDCreateUdpAddress(
  Pointer<Pointer<COMObject>> ppAddress,
) =>
    _WSDCreateUdpAddress(
      ppAddress,
    );

late final _WSDCreateUdpAddress = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppAddress,
),
    int Function(
  Pointer<Pointer<COMObject>> ppAddress,
)>('WSDCreateUdpAddress');

int WSDCreateUdpMessageParameters(
  Pointer<Pointer<COMObject>> ppTxParams,
) =>
    _WSDCreateUdpMessageParameters(
      ppTxParams,
    );

late final _WSDCreateUdpMessageParameters = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppTxParams,
),
    int Function(
  Pointer<Pointer<COMObject>> ppTxParams,
)>('WSDCreateUdpMessageParameters');

void WSDDetachLinkedMemory(
  Pointer pVoid,
) =>
    _WSDDetachLinkedMemory(
      pVoid,
    );

late final _WSDDetachLinkedMemory = _wsdapi.lookupFunction<
    Void Function(
  Pointer pVoid,
),
    void Function(
  Pointer pVoid,
)>('WSDDetachLinkedMemory');

void WSDFreeLinkedMemory(
  Pointer pVoid,
) =>
    _WSDFreeLinkedMemory(
      pVoid,
    );

late final _WSDFreeLinkedMemory = _wsdapi.lookupFunction<
    Void Function(
  Pointer pVoid,
),
    void Function(
  Pointer pVoid,
)>('WSDFreeLinkedMemory');

int WSDGenerateFault(
  Pointer<Utf16> pszCode,
  Pointer<Utf16> pszSubCode,
  Pointer<Utf16> pszReason,
  Pointer<Utf16> pszDetail,
  Pointer<COMObject> pContext,
  Pointer<Pointer<WSD_SOAP_FAULT>> ppFault,
) =>
    _WSDGenerateFault(
      pszCode,
      pszSubCode,
      pszReason,
      pszDetail,
      pContext,
      ppFault,
    );

late final _WSDGenerateFault = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszCode,
  Pointer<Utf16> pszSubCode,
  Pointer<Utf16> pszReason,
  Pointer<Utf16> pszDetail,
  Pointer<COMObject> pContext,
  Pointer<Pointer<WSD_SOAP_FAULT>> ppFault,
),
    int Function(
  Pointer<Utf16> pszCode,
  Pointer<Utf16> pszSubCode,
  Pointer<Utf16> pszReason,
  Pointer<Utf16> pszDetail,
  Pointer<COMObject> pContext,
  Pointer<Pointer<WSD_SOAP_FAULT>> ppFault,
)>('WSDGenerateFault');

int WSDGenerateFaultEx(
  Pointer<WSDXML_NAME> pCode,
  Pointer<WSDXML_NAME> pSubCode,
  Pointer<WSD_LOCALIZED_STRING_LIST> pReasons,
  Pointer<Utf16> pszDetail,
  Pointer<Pointer<WSD_SOAP_FAULT>> ppFault,
) =>
    _WSDGenerateFaultEx(
      pCode,
      pSubCode,
      pReasons,
      pszDetail,
      ppFault,
    );

late final _WSDGenerateFaultEx = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<WSDXML_NAME> pCode,
  Pointer<WSDXML_NAME> pSubCode,
  Pointer<WSD_LOCALIZED_STRING_LIST> pReasons,
  Pointer<Utf16> pszDetail,
  Pointer<Pointer<WSD_SOAP_FAULT>> ppFault,
),
    int Function(
  Pointer<WSDXML_NAME> pCode,
  Pointer<WSDXML_NAME> pSubCode,
  Pointer<WSD_LOCALIZED_STRING_LIST> pReasons,
  Pointer<Utf16> pszDetail,
  Pointer<Pointer<WSD_SOAP_FAULT>> ppFault,
)>('WSDGenerateFaultEx');

int WSDGetConfigurationOption(
  int dwOption,
  Pointer pVoid,
  int cbOutBuffer,
) =>
    _WSDGetConfigurationOption(
      dwOption,
      pVoid,
      cbOutBuffer,
    );

late final _WSDGetConfigurationOption = _wsdapi.lookupFunction<
    Int32 Function(
  Uint32 dwOption,
  Pointer pVoid,
  Uint32 cbOutBuffer,
),
    int Function(
  int dwOption,
  Pointer pVoid,
  int cbOutBuffer,
)>('WSDGetConfigurationOption');

int WSDSetConfigurationOption(
  int dwOption,
  Pointer pVoid,
  int cbInBuffer,
) =>
    _WSDSetConfigurationOption(
      dwOption,
      pVoid,
      cbInBuffer,
    );

late final _WSDSetConfigurationOption = _wsdapi.lookupFunction<
    Int32 Function(
  Uint32 dwOption,
  Pointer pVoid,
  Uint32 cbInBuffer,
),
    int Function(
  int dwOption,
  Pointer pVoid,
  int cbInBuffer,
)>('WSDSetConfigurationOption');

int WSDUriDecode(
  Pointer<Utf16> source,
  int cchSource,
  Pointer<Pointer<Utf16>> destOut,
  Pointer<Uint32> cchDestOut,
) =>
    _WSDUriDecode(
      source,
      cchSource,
      destOut,
      cchDestOut,
    );

late final _WSDUriDecode = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> source,
  Uint32 cchSource,
  Pointer<Pointer<Utf16>> destOut,
  Pointer<Uint32> cchDestOut,
),
    int Function(
  Pointer<Utf16> source,
  int cchSource,
  Pointer<Pointer<Utf16>> destOut,
  Pointer<Uint32> cchDestOut,
)>('WSDUriDecode');

int WSDUriEncode(
  Pointer<Utf16> source,
  int cchSource,
  Pointer<Pointer<Utf16>> destOut,
  Pointer<Uint32> cchDestOut,
) =>
    _WSDUriEncode(
      source,
      cchSource,
      destOut,
      cchDestOut,
    );

late final _WSDUriEncode = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> source,
  Uint32 cchSource,
  Pointer<Pointer<Utf16>> destOut,
  Pointer<Uint32> cchDestOut,
),
    int Function(
  Pointer<Utf16> source,
  int cchSource,
  Pointer<Pointer<Utf16>> destOut,
  Pointer<Uint32> cchDestOut,
)>('WSDUriEncode');

int WSDXMLAddChild(
  Pointer<WSDXML_ELEMENT> pParent,
  Pointer<WSDXML_ELEMENT> pChild,
) =>
    _WSDXMLAddChild(
      pParent,
      pChild,
    );

late final _WSDXMLAddChild = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<WSDXML_ELEMENT> pParent,
  Pointer<WSDXML_ELEMENT> pChild,
),
    int Function(
  Pointer<WSDXML_ELEMENT> pParent,
  Pointer<WSDXML_ELEMENT> pChild,
)>('WSDXMLAddChild');

int WSDXMLAddSibling(
  Pointer<WSDXML_ELEMENT> pFirst,
  Pointer<WSDXML_ELEMENT> pSecond,
) =>
    _WSDXMLAddSibling(
      pFirst,
      pSecond,
    );

late final _WSDXMLAddSibling = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<WSDXML_ELEMENT> pFirst,
  Pointer<WSDXML_ELEMENT> pSecond,
),
    int Function(
  Pointer<WSDXML_ELEMENT> pFirst,
  Pointer<WSDXML_ELEMENT> pSecond,
)>('WSDXMLAddSibling');

int WSDXMLBuildAnyForSingleElement(
  Pointer<WSDXML_NAME> pElementName,
  Pointer<Utf16> pszText,
  Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
) =>
    _WSDXMLBuildAnyForSingleElement(
      pElementName,
      pszText,
      ppAny,
    );

late final _WSDXMLBuildAnyForSingleElement = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<WSDXML_NAME> pElementName,
  Pointer<Utf16> pszText,
  Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
),
    int Function(
  Pointer<WSDXML_NAME> pElementName,
  Pointer<Utf16> pszText,
  Pointer<Pointer<WSDXML_ELEMENT>> ppAny,
)>('WSDXMLBuildAnyForSingleElement');

int WSDXMLCleanupElement(
  Pointer<WSDXML_ELEMENT> pAny,
) =>
    _WSDXMLCleanupElement(
      pAny,
    );

late final _WSDXMLCleanupElement = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<WSDXML_ELEMENT> pAny,
),
    int Function(
  Pointer<WSDXML_ELEMENT> pAny,
)>('WSDXMLCleanupElement');

int WSDXMLCreateContext(
  Pointer<Pointer<COMObject>> ppContext,
) =>
    _WSDXMLCreateContext(
      ppContext,
    );

late final _WSDXMLCreateContext = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppContext,
),
    int Function(
  Pointer<Pointer<COMObject>> ppContext,
)>('WSDXMLCreateContext');

int WSDXMLGetNameFromBuiltinNamespace(
  Pointer<Utf16> pszNamespace,
  Pointer<Utf16> pszName,
  Pointer<Pointer<WSDXML_NAME>> ppName,
) =>
    _WSDXMLGetNameFromBuiltinNamespace(
      pszNamespace,
      pszName,
      ppName,
    );

late final _WSDXMLGetNameFromBuiltinNamespace = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszNamespace,
  Pointer<Utf16> pszName,
  Pointer<Pointer<WSDXML_NAME>> ppName,
),
    int Function(
  Pointer<Utf16> pszNamespace,
  Pointer<Utf16> pszName,
  Pointer<Pointer<WSDXML_NAME>> ppName,
)>('WSDXMLGetNameFromBuiltinNamespace');

int WSDXMLGetValueFromAny(
  Pointer<Utf16> pszNamespace,
  Pointer<Utf16> pszName,
  Pointer<WSDXML_ELEMENT> pAny,
  Pointer<Pointer<Utf16>> ppszValue,
) =>
    _WSDXMLGetValueFromAny(
      pszNamespace,
      pszName,
      pAny,
      ppszValue,
    );

late final _WSDXMLGetValueFromAny = _wsdapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszNamespace,
  Pointer<Utf16> pszName,
  Pointer<WSDXML_ELEMENT> pAny,
  Pointer<Pointer<Utf16>> ppszValue,
),
    int Function(
  Pointer<Utf16> pszNamespace,
  Pointer<Utf16> pszName,
  Pointer<WSDXML_ELEMENT> pAny,
  Pointer<Pointer<Utf16>> ppszValue,
)>('WSDXMLGetValueFromAny');
