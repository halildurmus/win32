// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
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

class PNPXAssociation extends Struct {}

class PNPXPairingHandler extends Struct {}

class WSD_DATETIME extends Struct {
  @Int32()
  external int isPositive;
  @Uint32()
  external int year;
  @Uint8()
  external int month;
  @Uint8()
  external int day;
  @Uint8()
  external int hour;
  @Uint8()
  external int minute;
  @Uint8()
  external int second;
  @Uint32()
  external int millisecond;
  @Int32()
  external int TZIsLocal;
  @Int32()
  external int TZIsPositive;
  @Uint8()
  external int TZHour;
  @Uint8()
  external int TZMinute;
}

class WSD_DURATION extends Struct {
  @Int32()
  external int isPositive;
  @Uint32()
  external int year;
  @Uint32()
  external int month;
  @Uint32()
  external int day;
  @Uint32()
  external int hour;
  @Uint32()
  external int minute;
  @Uint32()
  external int second;
  @Uint32()
  external int millisecond;
}

class WSD_CONFIG_PARAM extends Struct {
  @Uint32()
  external int configParamType;
  external Pointer pConfigData;
  @Uint32()
  external int dwConfigDataSize;
}

class WSD_SECURITY_CERT_VALIDATION_V1 extends Struct {
  external Pointer<Pointer<CERT_CONTEXT>> certMatchArray;
  @Uint32()
  external int dwCertMatchArrayCount;
  external Pointer hCertMatchStore;
  external Pointer hCertIssuerStore;
  @Uint32()
  external int dwCertCheckOptions;
}

class WSD_SECURITY_CERT_VALIDATION extends Struct {
  external Pointer<Pointer<CERT_CONTEXT>> certMatchArray;
  @Uint32()
  external int dwCertMatchArrayCount;
  external Pointer hCertMatchStore;
  external Pointer hCertIssuerStore;
  @Uint32()
  external int dwCertCheckOptions;
  external Pointer<Utf16> pszCNGHashAlgId;
  external Pointer<Uint8> pbCertHash;
  @Uint32()
  external int dwCertHashSize;
}

class WSD_SECURITY_SIGNATURE_VALIDATION extends Struct {
  external Pointer<Pointer<CERT_CONTEXT>> signingCertArray;
  @Uint32()
  external int dwSigningCertArrayCount;
  external Pointer hSigningCertStore;
  @Uint32()
  external int dwFlags;
}

class WSD_CONFIG_ADDRESSES extends Struct {
  external Pointer<Pointer> addresses;
  @Uint32()
  external int dwAddressCount;
}

class WSDUdpRetransmitParams extends Struct {
  @Uint32()
  external int ulSendDelay;
  @Uint32()
  external int ulRepeat;
  @Uint32()
  external int ulRepeatMinDelay;
  @Uint32()
  external int ulRepeatMaxDelay;
  @Uint32()
  external int ulRepeatUpperDelay;
}

class WSD_OPERATION extends Struct {
  external Pointer<WSDXML_TYPE> RequestType;
  external Pointer<WSDXML_TYPE> ResponseType;
  external WSD_STUB_FUNCTION RequestStubFunction;
}

class WSD_HANDLER_CONTEXT extends Struct {
  external PWSD_SOAP_MESSAGE_HANDLER Handler;
  external Pointer PVoid;
  external Pointer Unknown;
}

class WSD_SYNCHRONOUS_RESPONSE_CONTEXT extends Struct {
  @Int32()
  external int hr;
  @IntPtr()
  external int eventHandle;
  external Pointer messageParameters;
  external Pointer results;
}

class WSD_PORT_TYPE extends Struct {
  @Uint32()
  external int EncodedName;
  @Uint32()
  external int OperationCount;
  external Pointer<WSD_OPERATION> Operations;
  @Uint32()
  external int ProtocolType;
}

class WSD_RELATIONSHIP_METADATA extends Struct {
  external Pointer<Utf16> Type;
  external Pointer<WSD_HOST_METADATA> Data;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_SERVICE_METADATA_LIST extends Struct {
  external Pointer<WSD_SERVICE_METADATA_LIST> Next;
  external Pointer<WSD_SERVICE_METADATA> Element;
}

class WSD_HOST_METADATA extends Struct {
  external Pointer<WSD_SERVICE_METADATA> Host;
  external Pointer<WSD_SERVICE_METADATA_LIST> Hosted;
}

class WSD_ENDPOINT_REFERENCE_LIST extends Struct {
  external Pointer<WSD_ENDPOINT_REFERENCE_LIST> Next;
  external Pointer<WSD_ENDPOINT_REFERENCE> Element;
}

class WSD_SERVICE_METADATA extends Struct {
  external Pointer<WSD_ENDPOINT_REFERENCE_LIST> EndpointReference;
  external Pointer<WSD_NAME_LIST> Types;
  external Pointer<Utf16> ServiceId;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_THIS_DEVICE_METADATA extends Struct {
  external Pointer<WSD_LOCALIZED_STRING_LIST> FriendlyName;
  external Pointer<Utf16> FirmwareVersion;
  external Pointer<Utf16> SerialNumber;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_THIS_MODEL_METADATA extends Struct {
  external Pointer<WSD_LOCALIZED_STRING_LIST> Manufacturer;
  external Pointer<Utf16> ManufacturerUrl;
  external Pointer<WSD_LOCALIZED_STRING_LIST> ModelName;
  external Pointer<Utf16> ModelNumber;
  external Pointer<Utf16> ModelUrl;
  external Pointer<Utf16> PresentationUrl;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_LOCALIZED_STRING_LIST extends Struct {
  external Pointer<WSD_LOCALIZED_STRING_LIST> Next;
  external Pointer<WSD_LOCALIZED_STRING> Element;
}

class WSD_SOAP_FAULT_REASON extends Struct {
  external Pointer<WSD_LOCALIZED_STRING_LIST> Text;
}

class WSD_SOAP_FAULT_SUBCODE extends Struct {
  external Pointer<WSDXML_NAME> Value;
  external Pointer<WSD_SOAP_FAULT_SUBCODE> Subcode;
}

class WSD_SOAP_FAULT_CODE extends Struct {
  external Pointer<WSDXML_NAME> Value;
  external Pointer<WSD_SOAP_FAULT_SUBCODE> Subcode;
}

class WSD_SOAP_FAULT extends Struct {
  external Pointer<WSD_SOAP_FAULT_CODE> Code;
  external Pointer<WSD_SOAP_FAULT_REASON> Reason;
  external Pointer<Utf16> Node;
  external Pointer<Utf16> Role;
  external Pointer<WSDXML_ELEMENT> Detail;
}

class WSD_APP_SEQUENCE extends Struct {
  @Uint64()
  external int InstanceId;
  external Pointer<Utf16> SequenceId;
  @Uint64()
  external int MessageNumber;
}

class WSD_HEADER_RELATESTO extends Struct {
  external Pointer<WSDXML_NAME> RelationshipType;
  external Pointer<Utf16> MessageID;
}

class WSD_SOAP_HEADER extends Struct {
  external Pointer<Utf16> To;
  external Pointer<Utf16> Action;
  external Pointer<Utf16> MessageID;
  external WSD_HEADER_RELATESTO RelatesTo;
  external Pointer<WSD_ENDPOINT_REFERENCE> ReplyTo;
  external Pointer<WSD_ENDPOINT_REFERENCE> From;
  external Pointer<WSD_ENDPOINT_REFERENCE> FaultTo;
  external Pointer<WSD_APP_SEQUENCE> AppSequence;
  external Pointer<WSDXML_ELEMENT> AnyHeaders;
}

class WSD_SOAP_MESSAGE extends Struct {
  external WSD_SOAP_HEADER Header;
  external Pointer Body;
  external Pointer<WSDXML_TYPE> BodyType;
}

class WSD_RESOLVE_MATCHES extends Struct {
  external Pointer<WSD_RESOLVE_MATCH> ResolveMatch;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_RESOLVE_MATCH extends Struct {
  external Pointer<WSD_ENDPOINT_REFERENCE> EndpointReference;
  external Pointer<WSD_NAME_LIST> Types;
  external Pointer<WSD_SCOPES> Scopes;
  external Pointer<WSD_URI_LIST> XAddrs;
  @Uint64()
  external int MetadataVersion;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_RESOLVE extends Struct {
  external Pointer<WSD_ENDPOINT_REFERENCE> EndpointReference;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_PROBE_MATCH extends Struct {
  external Pointer<WSD_ENDPOINT_REFERENCE> EndpointReference;
  external Pointer<WSD_NAME_LIST> Types;
  external Pointer<WSD_SCOPES> Scopes;
  external Pointer<WSD_URI_LIST> XAddrs;
  @Uint64()
  external int MetadataVersion;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_PROBE_MATCH_LIST extends Struct {
  external Pointer<WSD_PROBE_MATCH_LIST> Next;
  external Pointer<WSD_PROBE_MATCH> Element;
}

class WSD_PROBE_MATCHES extends Struct {
  external Pointer<WSD_PROBE_MATCH_LIST> ProbeMatch;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_PROBE extends Struct {
  external Pointer<WSD_NAME_LIST> Types;
  external Pointer<WSD_SCOPES> Scopes;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_BYE extends Struct {
  external Pointer<WSD_ENDPOINT_REFERENCE> EndpointReference;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_SCOPES extends Struct {
  external Pointer<Utf16> MatchBy;
  external Pointer<WSD_URI_LIST> Scopes;
}

class WSD_NAME_LIST extends Struct {
  external Pointer<WSD_NAME_LIST> Next;
  external Pointer<WSDXML_NAME> Element;
}

class WSD_HELLO extends Struct {
  external Pointer<WSD_ENDPOINT_REFERENCE> EndpointReference;
  external Pointer<WSD_NAME_LIST> Types;
  external Pointer<WSD_SCOPES> Scopes;
  external Pointer<WSD_URI_LIST> XAddrs;
  @Uint64()
  external int MetadataVersion;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_REFERENCE_PARAMETERS extends Struct {
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_REFERENCE_PROPERTIES extends Struct {
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_ENDPOINT_REFERENCE extends Struct {
  external Pointer<Utf16> Address;
  external WSD_REFERENCE_PROPERTIES ReferenceProperties;
  external WSD_REFERENCE_PARAMETERS ReferenceParameters;
  external Pointer<WSDXML_NAME> PortType;
  external Pointer<WSDXML_NAME> ServiceName;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_METADATA_SECTION extends Struct {
  external Pointer<Utf16> Dialect;
  external Pointer<Utf16> Identifier;
  external Pointer Data;
  external Pointer<WSD_ENDPOINT_REFERENCE> MetadataReference;
  external Pointer<Utf16> Location;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_METADATA_SECTION_LIST extends Struct {
  external Pointer<WSD_METADATA_SECTION_LIST> Next;
  external Pointer<WSD_METADATA_SECTION> Element;
}

class WSD_URI_LIST extends Struct {
  external Pointer<WSD_URI_LIST> Next;
  external Pointer<Utf16> Element;
}

class WSD_EVENTING_FILTER_ACTION extends Struct {
  external Pointer<WSD_URI_LIST> Actions;
}

class WSD_EVENTING_FILTER extends Struct {
  external Pointer<Utf16> Dialect;
  external Pointer<WSD_EVENTING_FILTER_ACTION> FilterAction;
  external Pointer Data;
}

class WSD_EVENTING_EXPIRES extends Struct {
  external Pointer<WSD_DURATION> Duration;
  external Pointer<WSD_DATETIME> DateTime;
}

class WSD_EVENTING_DELIVERY_MODE_PUSH extends Struct {
  external Pointer<WSD_ENDPOINT_REFERENCE> NotifyTo;
}

class WSD_EVENTING_DELIVERY_MODE extends Struct {
  external Pointer<Utf16> Mode;
  external Pointer<WSD_EVENTING_DELIVERY_MODE_PUSH> Push;
  external Pointer Data;
}

class WSD_LOCALIZED_STRING extends Struct {
  external Pointer<Utf16> lang;
  external Pointer<Utf16> String;
}

class RESPONSEBODY_GetMetadata extends Struct {
  external Pointer<WSD_METADATA_SECTION_LIST> Metadata;
}

class REQUESTBODY_Subscribe extends Struct {
  external Pointer<WSD_ENDPOINT_REFERENCE> EndTo;
  external Pointer<WSD_EVENTING_DELIVERY_MODE> Delivery;
  external Pointer<WSD_EVENTING_EXPIRES> Expires;
  external Pointer<WSD_EVENTING_FILTER> Filter;
  external Pointer<WSDXML_ELEMENT> Any;
}

class RESPONSEBODY_Subscribe extends Struct {
  external Pointer<WSD_ENDPOINT_REFERENCE> SubscriptionManager;
  external Pointer<WSD_EVENTING_EXPIRES> expires;
  external Pointer<WSDXML_ELEMENT> any;
}

class REQUESTBODY_Renew extends Struct {
  external Pointer<WSD_EVENTING_EXPIRES> Expires;
  external Pointer<WSDXML_ELEMENT> Any;
}

class RESPONSEBODY_Renew extends Struct {
  external Pointer<WSD_EVENTING_EXPIRES> expires;
  external Pointer<WSDXML_ELEMENT> any;
}

class REQUESTBODY_GetStatus extends Struct {
  external Pointer<WSDXML_ELEMENT> Any;
}

class RESPONSEBODY_GetStatus extends Struct {
  external Pointer<WSD_EVENTING_EXPIRES> expires;
  external Pointer<WSDXML_ELEMENT> any;
}

class REQUESTBODY_Unsubscribe extends Struct {
  external Pointer<WSDXML_ELEMENT> any;
}

class RESPONSEBODY_SubscriptionEnd extends Struct {
  external Pointer<WSD_ENDPOINT_REFERENCE> SubscriptionManager;
  external Pointer<Utf16> Status;
  external Pointer<WSD_LOCALIZED_STRING> Reason;
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_UNKNOWN_LOOKUP extends Struct {
  external Pointer<WSDXML_ELEMENT> Any;
}

class WSD_EVENT extends Struct {
  @Int32()
  external int Hr;
  @Uint32()
  external int EventType;
  external Pointer<Utf16> DispatchTag;
  external WSD_HANDLER_CONTEXT HandlerContext;
  external Pointer<WSD_SOAP_MESSAGE> Soap;
  external Pointer<WSD_OPERATION> Operation;
  external Pointer MessageParameters;
}

class WSDXML_NAMESPACE extends Struct {
  external Pointer<Utf16> Uri;
  external Pointer<Utf16> PreferredPrefix;
  external Pointer<WSDXML_NAME> Names;
  @Uint16()
  external int NamesCount;
  @Uint16()
  external int Encoding;
}

class WSDXML_NAME extends Struct {
  external Pointer<WSDXML_NAMESPACE> Space;
  external Pointer<Utf16> LocalName;
}

class WSDXML_TYPE extends Struct {
  external Pointer<Utf16> Uri;
  external Pointer<Uint8> Table;
}

class WSDXML_PREFIX_MAPPING extends Struct {
  @Uint32()
  external int Refs;
  external Pointer<WSDXML_PREFIX_MAPPING> Next;
  external Pointer<WSDXML_NAMESPACE> Space;
  external Pointer<Utf16> Prefix;
}

class WSDXML_ATTRIBUTE extends Struct {
  external Pointer<WSDXML_ELEMENT> Element;
  external Pointer<WSDXML_ATTRIBUTE> Next;
  external Pointer<WSDXML_NAME> Name;
  external Pointer<Utf16> Value;
}

class WSDXML_NODE extends Struct {
  @Int32()
  external int Type;
  external Pointer<WSDXML_ELEMENT> Parent;
  external Pointer<WSDXML_NODE> Next;
  @Int32()
  external int ElementType;
  @Int32()
  external int TextType;
}

class WSDXML_ELEMENT extends Struct {
  external WSDXML_NODE Node;
  external Pointer<WSDXML_NAME> Name;
  external Pointer<WSDXML_ATTRIBUTE> FirstAttribute;
  external Pointer<WSDXML_NODE> FirstChild;
  external Pointer<WSDXML_PREFIX_MAPPING> PrefixMappings;
}

class WSDXML_TEXT extends Struct {
  external WSDXML_NODE Node;
  external Pointer<Utf16> Text;
}

class WSDXML_ELEMENT_LIST extends Struct {
  external Pointer<WSDXML_ELEMENT_LIST> Next;
  external Pointer<WSDXML_ELEMENT> Element;
}
