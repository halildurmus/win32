// IWSDiscoveryPublisher.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../devices/webservicesondevices/IWSDiscoveryPublisherNotify.dart';
import '../../devices/webservicesondevices/structs.g.dart';
import '../../devices/webservicesondevices/IWSDMessageParameters.dart';
import '../../devices/webservicesondevices/IWSDScopeMatchingRule.dart';
import '../../devices/webservicesondevices/IWSDXMLContext.dart';

/// @nodoc
const IID_IWSDiscoveryPublisher = '{AE01E1A8-3FF9-4148-8116-057CC616FE13}';

/// {@category Interface}
/// {@category com}
class IWSDiscoveryPublisher extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IWSDiscoveryPublisher(Pointer<COMObject> ptr) : super(ptr);

  int SetAddressFamily(
    int dwAddressFamily,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAddressFamily,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAddressFamily,
          )>()(
        ptr.ref.lpVtbl,
        dwAddressFamily,
      );

  int RegisterNotificationSink(
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        pSink,
      );

  int UnRegisterNotificationSink(
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        pSink,
      );

  int Publish(
    Pointer<Utf16> pszId,
    int ullMetadataVersion,
    int ullInstanceId,
    int ullMessageNumber,
    Pointer<Utf16> pszSessionId,
    Pointer<WSD_NAME_LIST> pTypesList,
    Pointer<WSD_URI_LIST> pScopesList,
    Pointer<WSD_URI_LIST> pXAddrsList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszId,
            Uint64 ullMetadataVersion,
            Uint64 ullInstanceId,
            Uint64 ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszId,
            int ullMetadataVersion,
            int ullInstanceId,
            int ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
          )>()(
        ptr.ref.lpVtbl,
        pszId,
        ullMetadataVersion,
        ullInstanceId,
        ullMessageNumber,
        pszSessionId,
        pTypesList,
        pScopesList,
        pXAddrsList,
      );

  int UnPublish(
    Pointer<Utf16> pszId,
    int ullInstanceId,
    int ullMessageNumber,
    Pointer<Utf16> pszSessionId,
    Pointer<WSDXML_ELEMENT> pAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszId,
            Uint64 ullInstanceId,
            Uint64 ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSDXML_ELEMENT> pAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszId,
            int ullInstanceId,
            int ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSDXML_ELEMENT> pAny,
          )>()(
        ptr.ref.lpVtbl,
        pszId,
        ullInstanceId,
        ullMessageNumber,
        pszSessionId,
        pAny,
      );

  int MatchProbe(
    Pointer<WSD_SOAP_MESSAGE> pProbeMessage,
    Pointer<COMObject> pMessageParameters,
    Pointer<Utf16> pszId,
    int ullMetadataVersion,
    int ullInstanceId,
    int ullMessageNumber,
    Pointer<Utf16> pszSessionId,
    Pointer<WSD_NAME_LIST> pTypesList,
    Pointer<WSD_URI_LIST> pScopesList,
    Pointer<WSD_URI_LIST> pXAddrsList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pProbeMessage,
            Pointer<COMObject> pMessageParameters,
            Pointer<Utf16> pszId,
            Uint64 ullMetadataVersion,
            Uint64 ullInstanceId,
            Uint64 ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pProbeMessage,
            Pointer<COMObject> pMessageParameters,
            Pointer<Utf16> pszId,
            int ullMetadataVersion,
            int ullInstanceId,
            int ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
          )>()(
        ptr.ref.lpVtbl,
        pProbeMessage,
        pMessageParameters,
        pszId,
        ullMetadataVersion,
        ullInstanceId,
        ullMessageNumber,
        pszSessionId,
        pTypesList,
        pScopesList,
        pXAddrsList,
      );

  int MatchResolve(
    Pointer<WSD_SOAP_MESSAGE> pResolveMessage,
    Pointer<COMObject> pMessageParameters,
    Pointer<Utf16> pszId,
    int ullMetadataVersion,
    int ullInstanceId,
    int ullMessageNumber,
    Pointer<Utf16> pszSessionId,
    Pointer<WSD_NAME_LIST> pTypesList,
    Pointer<WSD_URI_LIST> pScopesList,
    Pointer<WSD_URI_LIST> pXAddrsList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pResolveMessage,
            Pointer<COMObject> pMessageParameters,
            Pointer<Utf16> pszId,
            Uint64 ullMetadataVersion,
            Uint64 ullInstanceId,
            Uint64 ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pResolveMessage,
            Pointer<COMObject> pMessageParameters,
            Pointer<Utf16> pszId,
            int ullMetadataVersion,
            int ullInstanceId,
            int ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
          )>()(
        ptr.ref.lpVtbl,
        pResolveMessage,
        pMessageParameters,
        pszId,
        ullMetadataVersion,
        ullInstanceId,
        ullMessageNumber,
        pszSessionId,
        pTypesList,
        pScopesList,
        pXAddrsList,
      );

  int PublishEx(
    Pointer<Utf16> pszId,
    int ullMetadataVersion,
    int ullInstanceId,
    int ullMessageNumber,
    Pointer<Utf16> pszSessionId,
    Pointer<WSD_NAME_LIST> pTypesList,
    Pointer<WSD_URI_LIST> pScopesList,
    Pointer<WSD_URI_LIST> pXAddrsList,
    Pointer<WSDXML_ELEMENT> pHeaderAny,
    Pointer<WSDXML_ELEMENT> pReferenceParameterAny,
    Pointer<WSDXML_ELEMENT> pPolicyAny,
    Pointer<WSDXML_ELEMENT> pEndpointReferenceAny,
    Pointer<WSDXML_ELEMENT> pAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszId,
            Uint64 ullMetadataVersion,
            Uint64 ullInstanceId,
            Uint64 ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
            Pointer<WSDXML_ELEMENT> pHeaderAny,
            Pointer<WSDXML_ELEMENT> pReferenceParameterAny,
            Pointer<WSDXML_ELEMENT> pPolicyAny,
            Pointer<WSDXML_ELEMENT> pEndpointReferenceAny,
            Pointer<WSDXML_ELEMENT> pAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszId,
            int ullMetadataVersion,
            int ullInstanceId,
            int ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
            Pointer<WSDXML_ELEMENT> pHeaderAny,
            Pointer<WSDXML_ELEMENT> pReferenceParameterAny,
            Pointer<WSDXML_ELEMENT> pPolicyAny,
            Pointer<WSDXML_ELEMENT> pEndpointReferenceAny,
            Pointer<WSDXML_ELEMENT> pAny,
          )>()(
        ptr.ref.lpVtbl,
        pszId,
        ullMetadataVersion,
        ullInstanceId,
        ullMessageNumber,
        pszSessionId,
        pTypesList,
        pScopesList,
        pXAddrsList,
        pHeaderAny,
        pReferenceParameterAny,
        pPolicyAny,
        pEndpointReferenceAny,
        pAny,
      );

  int MatchProbeEx(
    Pointer<WSD_SOAP_MESSAGE> pProbeMessage,
    Pointer<COMObject> pMessageParameters,
    Pointer<Utf16> pszId,
    int ullMetadataVersion,
    int ullInstanceId,
    int ullMessageNumber,
    Pointer<Utf16> pszSessionId,
    Pointer<WSD_NAME_LIST> pTypesList,
    Pointer<WSD_URI_LIST> pScopesList,
    Pointer<WSD_URI_LIST> pXAddrsList,
    Pointer<WSDXML_ELEMENT> pHeaderAny,
    Pointer<WSDXML_ELEMENT> pReferenceParameterAny,
    Pointer<WSDXML_ELEMENT> pPolicyAny,
    Pointer<WSDXML_ELEMENT> pEndpointReferenceAny,
    Pointer<WSDXML_ELEMENT> pAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pProbeMessage,
            Pointer<COMObject> pMessageParameters,
            Pointer<Utf16> pszId,
            Uint64 ullMetadataVersion,
            Uint64 ullInstanceId,
            Uint64 ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
            Pointer<WSDXML_ELEMENT> pHeaderAny,
            Pointer<WSDXML_ELEMENT> pReferenceParameterAny,
            Pointer<WSDXML_ELEMENT> pPolicyAny,
            Pointer<WSDXML_ELEMENT> pEndpointReferenceAny,
            Pointer<WSDXML_ELEMENT> pAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pProbeMessage,
            Pointer<COMObject> pMessageParameters,
            Pointer<Utf16> pszId,
            int ullMetadataVersion,
            int ullInstanceId,
            int ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
            Pointer<WSDXML_ELEMENT> pHeaderAny,
            Pointer<WSDXML_ELEMENT> pReferenceParameterAny,
            Pointer<WSDXML_ELEMENT> pPolicyAny,
            Pointer<WSDXML_ELEMENT> pEndpointReferenceAny,
            Pointer<WSDXML_ELEMENT> pAny,
          )>()(
        ptr.ref.lpVtbl,
        pProbeMessage,
        pMessageParameters,
        pszId,
        ullMetadataVersion,
        ullInstanceId,
        ullMessageNumber,
        pszSessionId,
        pTypesList,
        pScopesList,
        pXAddrsList,
        pHeaderAny,
        pReferenceParameterAny,
        pPolicyAny,
        pEndpointReferenceAny,
        pAny,
      );

  int MatchResolveEx(
    Pointer<WSD_SOAP_MESSAGE> pResolveMessage,
    Pointer<COMObject> pMessageParameters,
    Pointer<Utf16> pszId,
    int ullMetadataVersion,
    int ullInstanceId,
    int ullMessageNumber,
    Pointer<Utf16> pszSessionId,
    Pointer<WSD_NAME_LIST> pTypesList,
    Pointer<WSD_URI_LIST> pScopesList,
    Pointer<WSD_URI_LIST> pXAddrsList,
    Pointer<WSDXML_ELEMENT> pHeaderAny,
    Pointer<WSDXML_ELEMENT> pReferenceParameterAny,
    Pointer<WSDXML_ELEMENT> pPolicyAny,
    Pointer<WSDXML_ELEMENT> pEndpointReferenceAny,
    Pointer<WSDXML_ELEMENT> pAny,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pResolveMessage,
            Pointer<COMObject> pMessageParameters,
            Pointer<Utf16> pszId,
            Uint64 ullMetadataVersion,
            Uint64 ullInstanceId,
            Uint64 ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
            Pointer<WSDXML_ELEMENT> pHeaderAny,
            Pointer<WSDXML_ELEMENT> pReferenceParameterAny,
            Pointer<WSDXML_ELEMENT> pPolicyAny,
            Pointer<WSDXML_ELEMENT> pEndpointReferenceAny,
            Pointer<WSDXML_ELEMENT> pAny,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_SOAP_MESSAGE> pResolveMessage,
            Pointer<COMObject> pMessageParameters,
            Pointer<Utf16> pszId,
            int ullMetadataVersion,
            int ullInstanceId,
            int ullMessageNumber,
            Pointer<Utf16> pszSessionId,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<WSD_URI_LIST> pXAddrsList,
            Pointer<WSDXML_ELEMENT> pHeaderAny,
            Pointer<WSDXML_ELEMENT> pReferenceParameterAny,
            Pointer<WSDXML_ELEMENT> pPolicyAny,
            Pointer<WSDXML_ELEMENT> pEndpointReferenceAny,
            Pointer<WSDXML_ELEMENT> pAny,
          )>()(
        ptr.ref.lpVtbl,
        pResolveMessage,
        pMessageParameters,
        pszId,
        ullMetadataVersion,
        ullInstanceId,
        ullMessageNumber,
        pszSessionId,
        pTypesList,
        pScopesList,
        pXAddrsList,
        pHeaderAny,
        pReferenceParameterAny,
        pPolicyAny,
        pEndpointReferenceAny,
        pAny,
      );

  int RegisterScopeMatchingRule(
    Pointer<COMObject> pScopeMatchingRule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pScopeMatchingRule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pScopeMatchingRule,
          )>()(
        ptr.ref.lpVtbl,
        pScopeMatchingRule,
      );

  int UnRegisterScopeMatchingRule(
    Pointer<COMObject> pScopeMatchingRule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pScopeMatchingRule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pScopeMatchingRule,
          )>()(
        ptr.ref.lpVtbl,
        pScopeMatchingRule,
      );

  int GetXMLContext(
    Pointer<Pointer<COMObject>> ppContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>()(
        ptr.ref.lpVtbl,
        ppContext,
      );
}
