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
import '../../networking/windowswebservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networking/windowswebservices/callbacks.g.dart';
import '../../security/cryptography/structs.g.dart';
import '../../specialTypes.dart';

/// {@category Struct}
class WEBAUTHN_ASSERTION extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cbAuthenticatorData;

  external Pointer<Uint8> pbAuthenticatorData;

  @Uint32()
  external int cbSignature;

  external Pointer<Uint8> pbSignature;

  external WEBAUTHN_CREDENTIAL Credential;

  @Uint32()
  external int cbUserId;

  external Pointer<Uint8> pbUserId;

  external WEBAUTHN_EXTENSIONS Extensions;

  @Uint32()
  external int cbCredLargeBlob;

  external Pointer<Uint8> pbCredLargeBlob;

  @Uint32()
  external int dwCredLargeBlobStatus;
}

/// {@category Struct}
class WEBAUTHN_AUTHENTICATOR_GET_ASSERTION_OPTIONS extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwTimeoutMilliseconds;

  external WEBAUTHN_CREDENTIALS CredentialList;

  external WEBAUTHN_EXTENSIONS Extensions;

  @Uint32()
  external int dwAuthenticatorAttachment;

  @Uint32()
  external int dwUserVerificationRequirement;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pwszU2fAppId;

  external Pointer<Int32> pbU2fAppId;

  external Pointer<GUID> pCancellationId;

  external Pointer<WEBAUTHN_CREDENTIAL_LIST> pAllowCredentialList;

  @Uint32()
  external int dwCredLargeBlobOperation;

  @Uint32()
  external int cbCredLargeBlob;

  external Pointer<Uint8> pbCredLargeBlob;
}

/// {@category Struct}
class WEBAUTHN_AUTHENTICATOR_MAKE_CREDENTIAL_OPTIONS extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwTimeoutMilliseconds;

  external WEBAUTHN_CREDENTIALS CredentialList;

  external WEBAUTHN_EXTENSIONS Extensions;

  @Uint32()
  external int dwAuthenticatorAttachment;

  @Int32()
  external int bRequireResidentKey;

  @Uint32()
  external int dwUserVerificationRequirement;

  @Uint32()
  external int dwAttestationConveyancePreference;

  @Uint32()
  external int dwFlags;

  external Pointer<GUID> pCancellationId;

  external Pointer<WEBAUTHN_CREDENTIAL_LIST> pExcludeCredentialList;

  @Uint32()
  external int dwEnterpriseAttestation;

  @Uint32()
  external int dwLargeBlobSupport;

  @Int32()
  external int bPreferResidentKey;
}

/// {@category Struct}
class WEBAUTHN_CLIENT_DATA extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cbClientDataJSON;

  external Pointer<Uint8> pbClientDataJSON;

  external Pointer<Utf16> pwszHashAlgId;
}

/// {@category Struct}
class WEBAUTHN_COMMON_ATTESTATION extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<Utf16> pwszAlg;

  @Int32()
  external int lAlg;

  @Uint32()
  external int cbSignature;

  external Pointer<Uint8> pbSignature;

  @Uint32()
  external int cX5c;

  external Pointer<WEBAUTHN_X5C> pX5c;

  external Pointer<Utf16> pwszVer;

  @Uint32()
  external int cbCertInfo;

  external Pointer<Uint8> pbCertInfo;

  @Uint32()
  external int cbPubArea;

  external Pointer<Uint8> pbPubArea;
}

/// {@category Struct}
class WEBAUTHN_COSE_CREDENTIAL_PARAMETER extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<Utf16> pwszCredentialType;

  @Int32()
  external int lAlg;
}

/// {@category Struct}
class WEBAUTHN_COSE_CREDENTIAL_PARAMETERS extends Struct {
  @Uint32()
  external int cCredentialParameters;

  external Pointer<WEBAUTHN_COSE_CREDENTIAL_PARAMETER> pCredentialParameters;
}

/// {@category Struct}
class WEBAUTHN_CREDENTIAL extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cbId;

  external Pointer<Uint8> pbId;

  external Pointer<Utf16> pwszCredentialType;
}

/// {@category Struct}
class WEBAUTHN_CREDENTIALS extends Struct {
  @Uint32()
  external int cCredentials;

  external Pointer<WEBAUTHN_CREDENTIAL> pCredentials;
}

/// {@category Struct}
class WEBAUTHN_CREDENTIAL_ATTESTATION extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<Utf16> pwszFormatType;

  @Uint32()
  external int cbAuthenticatorData;

  external Pointer<Uint8> pbAuthenticatorData;

  @Uint32()
  external int cbAttestation;

  external Pointer<Uint8> pbAttestation;

  @Uint32()
  external int dwAttestationDecodeType;

  external Pointer pvAttestationDecode;

  @Uint32()
  external int cbAttestationObject;

  external Pointer<Uint8> pbAttestationObject;

  @Uint32()
  external int cbCredentialId;

  external Pointer<Uint8> pbCredentialId;

  external WEBAUTHN_EXTENSIONS Extensions;

  @Uint32()
  external int dwUsedTransport;

  @Int32()
  external int bEpAtt;

  @Int32()
  external int bLargeBlobSupported;

  @Int32()
  external int bResidentKey;
}

/// {@category Struct}
class WEBAUTHN_CREDENTIAL_EX extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cbId;

  external Pointer<Uint8> pbId;

  external Pointer<Utf16> pwszCredentialType;

  @Uint32()
  external int dwTransports;
}

/// {@category Struct}
class WEBAUTHN_CREDENTIAL_LIST extends Struct {
  @Uint32()
  external int cCredentials;

  external Pointer<Pointer<WEBAUTHN_CREDENTIAL_EX>> ppCredentials;
}

/// {@category Struct}
class WEBAUTHN_CRED_BLOB_EXTENSION extends Struct {
  @Uint32()
  external int cbCredBlob;

  external Pointer<Uint8> pbCredBlob;
}

/// {@category Struct}
class WEBAUTHN_CRED_PROTECT_EXTENSION_IN extends Struct {
  @Uint32()
  external int dwCredProtect;

  @Int32()
  external int bRequireCredProtect;
}

/// {@category Struct}
class WEBAUTHN_EXTENSION extends Struct {
  external Pointer<Utf16> pwszExtensionIdentifier;

  @Uint32()
  external int cbExtension;

  external Pointer pvExtension;
}

/// {@category Struct}
class WEBAUTHN_EXTENSIONS extends Struct {
  @Uint32()
  external int cExtensions;

  external Pointer<WEBAUTHN_EXTENSION> pExtensions;
}

/// {@category Struct}
class WEBAUTHN_RP_ENTITY_INFORMATION extends Struct {
  @Uint32()
  external int dwVersion;

  external Pointer<Utf16> pwszId;

  external Pointer<Utf16> pwszName;

  external Pointer<Utf16> pwszIcon;
}

/// {@category Struct}
class WEBAUTHN_USER_ENTITY_INFORMATION extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int cbId;

  external Pointer<Uint8> pbId;

  external Pointer<Utf16> pwszName;

  external Pointer<Utf16> pwszIcon;

  external Pointer<Utf16> pwszDisplayName;
}

/// {@category Struct}
class WEBAUTHN_X5C extends Struct {
  @Uint32()
  external int cbData;

  external Pointer<Uint8> pbData;
}

/// {@category Struct}
class WS_ANY_ATTRIBUTE extends Struct {
  external WS_XML_STRING localName;

  external WS_XML_STRING ns;

  external Pointer<WS_XML_TEXT> value;
}

/// {@category Struct}
class WS_ANY_ATTRIBUTES extends Struct {
  external Pointer<WS_ANY_ATTRIBUTE> attributes;

  @Uint32()
  external int attributeCount;
}

/// {@category Struct}
class WS_ASYNC_CONTEXT extends Struct {
  external Pointer<NativeFunction<WS_ASYNC_CALLBACK>> callback;

  external Pointer callbackState;
}

/// {@category Struct}
class WS_ASYNC_OPERATION extends Struct {
  external Pointer<NativeFunction<WS_ASYNC_FUNCTION>> function;
}

/// {@category Struct}
class WS_ASYNC_STATE extends Struct {
  external Pointer internal0;

  external Pointer internal1;

  external Pointer internal2;

  external Pointer internal3;

  external Pointer internal4;
}

/// {@category Struct}
class WS_ATTRIBUTE_DESCRIPTION extends Struct {
  external Pointer<WS_XML_STRING> attributeLocalName;

  external Pointer<WS_XML_STRING> attributeNs;

  @Int32()
  external int type;

  external Pointer typeDescription;
}

/// {@category Struct}
class WS_BOOL_DESCRIPTION extends Struct {
  @Int32()
  external int value;
}

/// {@category Struct}
class WS_BUFFERS extends Struct {
  @Uint32()
  external int bufferCount;

  external Pointer<WS_BYTES> buffers;
}

/// {@category Struct}
class WS_BYTES extends Struct {
  @Uint32()
  external int length;

  external Pointer<Uint8> bytes;
}

/// {@category Struct}
class WS_BYTES_DESCRIPTION extends Struct {
  @Uint32()
  external int minByteCount;

  @Uint32()
  external int maxByteCount;
}

/// {@category Struct}
class WS_BYTE_ARRAY_DESCRIPTION extends Struct {
  @Uint32()
  external int minByteCount;

  @Uint32()
  external int maxByteCount;
}

/// {@category Struct}
class WS_CALL_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_CAPI_ASYMMETRIC_SECURITY_KEY_HANDLE extends Struct {
  external WS_SECURITY_KEY_HANDLE keyHandle;

  @IntPtr()
  external int provider;

  @Uint32()
  external int keySpec;
}

/// {@category Struct}
class WS_CERTIFICATE_VALIDATION_CALLBACK_CONTEXT extends Struct {
  external Pointer<NativeFunction<WS_CERTIFICATE_VALIDATION_CALLBACK>> callback;

  external Pointer state;
}

/// {@category Struct}
class WS_CERT_CREDENTIAL extends Struct {
  @Int32()
  external int credentialType;
}

/// {@category Struct}
class WS_CERT_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;

  external WS_BYTES rawCertificateData;
}

/// {@category Struct}
class WS_CERT_MESSAGE_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;

  @Int32()
  external int bindingUsage;
}

/// {@category Struct}
class WS_CERT_SIGNED_SAML_AUTHENTICATOR extends Struct {
  external WS_SAML_AUTHENTICATOR authenticator;

  external Pointer<Pointer<CERT_CONTEXT>> trustedIssuerCerts;

  @Uint32()
  external int trustedIssuerCertCount;

  external Pointer<CERT_CONTEXT> decryptionCert;

  external Pointer<NativeFunction<WS_VALIDATE_SAML_CALLBACK>> samlValidator;

  external Pointer samlValidatorCallbackState;
}

/// {@category Struct}
class WS_CHANNEL extends Opaque {}

/// {@category Struct}
class WS_CHANNEL_DECODER extends Struct {
  external Pointer createContext;

  external Pointer<NativeFunction<WS_CREATE_DECODER_CALLBACK>>
      createDecoderCallback;

  external Pointer<NativeFunction<WS_DECODER_GET_CONTENT_TYPE_CALLBACK>>
      decoderGetContentTypeCallback;

  external Pointer<NativeFunction<WS_DECODER_START_CALLBACK>>
      decoderStartCallback;

  external Pointer<NativeFunction<WS_DECODER_DECODE_CALLBACK>>
      decoderDecodeCallback;

  external Pointer<NativeFunction<WS_DECODER_END_CALLBACK>> decoderEndCallback;

  external Pointer<NativeFunction<WS_FREE_DECODER_CALLBACK>>
      freeDecoderCallback;
}

/// {@category Struct}
class WS_CHANNEL_ENCODER extends Struct {
  external Pointer createContext;

  external Pointer<NativeFunction<WS_CREATE_ENCODER_CALLBACK>>
      createEncoderCallback;

  external Pointer<NativeFunction<WS_ENCODER_GET_CONTENT_TYPE_CALLBACK>>
      encoderGetContentTypeCallback;

  external Pointer<NativeFunction<WS_ENCODER_START_CALLBACK>>
      encoderStartCallback;

  external Pointer<NativeFunction<WS_ENCODER_ENCODE_CALLBACK>>
      encoderEncodeCallback;

  external Pointer<NativeFunction<WS_ENCODER_END_CALLBACK>> encoderEndCallback;

  external Pointer<NativeFunction<WS_FREE_ENCODER_CALLBACK>>
      freeEncoderCallback;
}

/// {@category Struct}
class WS_CHANNEL_PROPERTIES extends Struct {
  external Pointer<WS_CHANNEL_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_CHANNEL_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_CHANNEL_PROPERTY_CONSTRAINT extends Struct {
  @Int32()
  external int id;

  external Pointer allowedValues;

  @Uint32()
  external int allowedValuesSize;

  external _WS_CHANNEL_PROPERTY_CONSTRAINT__out_e__Struct out;
}

/// {@category Struct}
class _WS_CHANNEL_PROPERTY_CONSTRAINT__out_e__Struct extends Struct {
  external WS_CHANNEL_PROPERTY channelProperty;
}

extension WS_CHANNEL_PROPERTY_CONSTRAINT_Extension
    on WS_CHANNEL_PROPERTY_CONSTRAINT {
  WS_CHANNEL_PROPERTY get channelProperty => this.out.channelProperty;
  set channelProperty(WS_CHANNEL_PROPERTY value) =>
      this.out.channelProperty = value;
}

/// {@category Struct}
class WS_CHAR_ARRAY_DESCRIPTION extends Struct {
  @Uint32()
  external int minCharCount;

  @Uint32()
  external int maxCharCount;
}

/// {@category Struct}
class WS_CONTRACT_DESCRIPTION extends Struct {
  @Uint32()
  external int operationCount;

  external Pointer<Pointer<WS_OPERATION_DESCRIPTION>> operations;
}

/// {@category Struct}
class WS_CUSTOM_CERT_CREDENTIAL extends Struct {
  external WS_CERT_CREDENTIAL credential;

  external Pointer<NativeFunction<WS_GET_CERT_CALLBACK>> getCertCallback;

  external Pointer getCertCallbackState;

  external Pointer<NativeFunction<WS_CERT_ISSUER_LIST_NOTIFICATION_CALLBACK>>
      certIssuerListNotificationCallback;

  external Pointer certIssuerListNotificationCallbackState;
}

/// {@category Struct}
class WS_CUSTOM_CHANNEL_CALLBACKS extends Struct {
  external Pointer<NativeFunction<WS_CREATE_CHANNEL_CALLBACK>>
      createChannelCallback;

  external Pointer<NativeFunction<WS_FREE_CHANNEL_CALLBACK>>
      freeChannelCallback;

  external Pointer<NativeFunction<WS_RESET_CHANNEL_CALLBACK>>
      resetChannelCallback;

  external Pointer<NativeFunction<WS_OPEN_CHANNEL_CALLBACK>>
      openChannelCallback;

  external Pointer<NativeFunction<WS_CLOSE_CHANNEL_CALLBACK>>
      closeChannelCallback;

  external Pointer<NativeFunction<WS_ABORT_CHANNEL_CALLBACK>>
      abortChannelCallback;

  external Pointer<NativeFunction<WS_GET_CHANNEL_PROPERTY_CALLBACK>>
      getChannelPropertyCallback;

  external Pointer<NativeFunction<WS_SET_CHANNEL_PROPERTY_CALLBACK>>
      setChannelPropertyCallback;

  external Pointer<NativeFunction<WS_WRITE_MESSAGE_START_CALLBACK>>
      writeMessageStartCallback;

  external Pointer<NativeFunction<WS_WRITE_MESSAGE_END_CALLBACK>>
      writeMessageEndCallback;

  external Pointer<NativeFunction<WS_READ_MESSAGE_START_CALLBACK>>
      readMessageStartCallback;

  external Pointer<NativeFunction<WS_READ_MESSAGE_END_CALLBACK>>
      readMessageEndCallback;

  external Pointer<NativeFunction<WS_ABANDON_MESSAGE_CALLBACK>>
      abandonMessageCallback;

  external Pointer<NativeFunction<WS_SHUTDOWN_SESSION_CHANNEL_CALLBACK>>
      shutdownSessionChannelCallback;
}

/// {@category Struct}
class WS_CUSTOM_HTTP_PROXY extends Struct {
  external WS_STRING servers;

  external WS_STRING bypass;
}

/// {@category Struct}
class WS_CUSTOM_LISTENER_CALLBACKS extends Struct {
  external Pointer<NativeFunction<WS_CREATE_LISTENER_CALLBACK>>
      createListenerCallback;

  external Pointer<NativeFunction<WS_FREE_LISTENER_CALLBACK>>
      freeListenerCallback;

  external Pointer<NativeFunction<WS_RESET_LISTENER_CALLBACK>>
      resetListenerCallback;

  external Pointer<NativeFunction<WS_OPEN_LISTENER_CALLBACK>>
      openListenerCallback;

  external Pointer<NativeFunction<WS_CLOSE_LISTENER_CALLBACK>>
      closeListenerCallback;

  external Pointer<NativeFunction<WS_ABORT_LISTENER_CALLBACK>>
      abortListenerCallback;

  external Pointer<NativeFunction<WS_GET_LISTENER_PROPERTY_CALLBACK>>
      getListenerPropertyCallback;

  external Pointer<NativeFunction<WS_SET_LISTENER_PROPERTY_CALLBACK>>
      setListenerPropertyCallback;

  external Pointer<NativeFunction<WS_CREATE_CHANNEL_FOR_LISTENER_CALLBACK>>
      createChannelForListenerCallback;

  external Pointer<NativeFunction<WS_ACCEPT_CHANNEL_CALLBACK>>
      acceptChannelCallback;
}

/// {@category Struct}
class WS_CUSTOM_TYPE_DESCRIPTION extends Struct {
  @Uint32()
  external int size;

  @Uint32()
  external int alignment;

  external Pointer<NativeFunction<WS_READ_TYPE_CALLBACK>> readCallback;

  external Pointer<NativeFunction<WS_WRITE_TYPE_CALLBACK>> writeCallback;

  external Pointer descriptionData;

  external Pointer<NativeFunction<WS_IS_DEFAULT_VALUE_CALLBACK>>
      isDefaultValueCallback;
}

/// {@category Struct}
class WS_DATETIME extends Struct {
  @Uint64()
  external int ticks;

  @Int32()
  external int format;
}

/// {@category Struct}
class WS_DATETIME_DESCRIPTION extends Struct {
  external WS_DATETIME minValue;

  external WS_DATETIME maxValue;
}

/// {@category Struct}
class WS_DECIMAL_DESCRIPTION extends Struct {
  external DECIMAL minValue;

  external DECIMAL maxValue;
}

/// {@category Struct}
class WS_DEFAULT_VALUE extends Struct {
  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_DEFAULT_WINDOWS_INTEGRATED_AUTH_CREDENTIAL extends Struct {
  external WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL credential;
}

/// {@category Struct}
class WS_DISALLOWED_USER_AGENT_SUBSTRINGS extends Struct {
  @Uint32()
  external int subStringCount;

  external Pointer<Pointer<WS_STRING>> subStrings;
}

/// {@category Struct}
class WS_DNS_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;

  external WS_STRING dns;
}

/// {@category Struct}
class WS_DOUBLE_DESCRIPTION extends Struct {
  @Double()
  external double minValue;

  @Double()
  external double maxValue;
}

/// {@category Struct}
class WS_DURATION extends Struct {
  @Int32()
  external int negative;

  @Uint32()
  external int years;

  @Uint32()
  external int months;

  @Uint32()
  external int days;

  @Uint32()
  external int hours;

  @Uint32()
  external int minutes;

  @Uint32()
  external int seconds;

  @Uint32()
  external int milliseconds;

  @Uint32()
  external int ticks;
}

/// {@category Struct}
class WS_DURATION_DESCRIPTION extends Struct {
  external WS_DURATION minValue;

  external WS_DURATION maxValue;

  external Pointer<NativeFunction<WS_DURATION_COMPARISON_CALLBACK>> comparer;
}

/// {@category Struct}
class WS_ELEMENT_DESCRIPTION extends Struct {
  external Pointer<WS_XML_STRING> elementLocalName;

  external Pointer<WS_XML_STRING> elementNs;

  @Int32()
  external int type;

  external Pointer typeDescription;
}

/// {@category Struct}
class WS_ENDPOINT_ADDRESS extends Struct {
  external WS_STRING url;

  external Pointer<WS_XML_BUFFER> headers;

  external Pointer<WS_XML_BUFFER> extensions;

  external Pointer<WS_ENDPOINT_IDENTITY> identity;
}

/// {@category Struct}
class WS_ENDPOINT_ADDRESS_DESCRIPTION extends Struct {
  @Int32()
  external int addressingVersion;
}

/// {@category Struct}
class WS_ENDPOINT_IDENTITY extends Struct {
  @Int32()
  external int identityType;
}

/// {@category Struct}
class WS_ENDPOINT_POLICY_EXTENSION extends Struct {
  external WS_POLICY_EXTENSION policyExtension;

  external Pointer<WS_XML_STRING> assertionName;

  external Pointer<WS_XML_STRING> assertionNs;

  external _WS_ENDPOINT_POLICY_EXTENSION__out_e__Struct out;
}

/// {@category Struct}
class _WS_ENDPOINT_POLICY_EXTENSION__out_e__Struct extends Struct {
  external Pointer<WS_XML_BUFFER> assertionValue;
}

extension WS_ENDPOINT_POLICY_EXTENSION_Extension
    on WS_ENDPOINT_POLICY_EXTENSION {
  Pointer<WS_XML_BUFFER> get assertionValue => this.out.assertionValue;
  set assertionValue(Pointer<WS_XML_BUFFER> value) =>
      this.out.assertionValue = value;
}

/// {@category Struct}
class WS_ENUM_DESCRIPTION extends Struct {
  external Pointer<WS_ENUM_VALUE> values;

  @Uint32()
  external int valueCount;

  @Uint32()
  external int maxByteCount;

  external Pointer<Uint32> nameIndices;
}

/// {@category Struct}
class WS_ENUM_VALUE extends Struct {
  @Int32()
  external int value;

  external Pointer<WS_XML_STRING> name;
}

/// {@category Struct}
class WS_ERROR extends Opaque {}

/// {@category Struct}
class WS_ERROR_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_FAULT extends Struct {
  external Pointer<WS_FAULT_CODE> code;

  external Pointer<WS_FAULT_REASON> reasons;

  @Uint32()
  external int reasonCount;

  external WS_STRING actor;

  external WS_STRING node;

  external Pointer<WS_XML_BUFFER> detail;
}

/// {@category Struct}
class WS_FAULT_CODE extends Struct {
  external WS_XML_QNAME value;

  external Pointer<WS_FAULT_CODE> subCode;
}

/// {@category Struct}
class WS_FAULT_DESCRIPTION extends Struct {
  @Int32()
  external int envelopeVersion;
}

/// {@category Struct}
class WS_FAULT_DETAIL_DESCRIPTION extends Struct {
  external Pointer<WS_XML_STRING> action;

  external Pointer<WS_ELEMENT_DESCRIPTION> detailElementDescription;
}

/// {@category Struct}
class WS_FAULT_REASON extends Struct {
  external WS_STRING text;

  external WS_STRING lang;
}

/// {@category Struct}
class WS_FIELD_DESCRIPTION extends Struct {
  @Int32()
  external int mapping;

  external Pointer<WS_XML_STRING> localName;

  external Pointer<WS_XML_STRING> ns;

  @Int32()
  external int type;

  external Pointer typeDescription;

  @Uint32()
  external int offset;

  @Uint32()
  external int options;

  external Pointer<WS_DEFAULT_VALUE> defaultValue;

  @Uint32()
  external int countOffset;

  external Pointer<WS_XML_STRING> itemLocalName;

  external Pointer<WS_XML_STRING> itemNs;

  external Pointer<WS_ITEM_RANGE> itemRange;
}

/// {@category Struct}
class WS_FLOAT_DESCRIPTION extends Struct {
  @Float()
  external double minValue;

  @Float()
  external double maxValue;
}

/// {@category Struct}
class WS_GUID_DESCRIPTION extends Struct {
  external GUID value;
}

/// {@category Struct}
class WS_HEAP extends Opaque {}

/// {@category Struct}
class WS_HEAP_PROPERTIES extends Struct {
  external Pointer<WS_HEAP_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_HEAP_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_HOST_NAMES extends Struct {
  external Pointer<WS_STRING> hostNames;

  @Uint32()
  external int hostNameCount;
}

/// {@category Struct}
class WS_HTTPS_URL extends Struct {
  external WS_URL url;

  external WS_STRING host;

  @Uint16()
  external int port;

  external WS_STRING portAsString;

  external WS_STRING path;

  external WS_STRING query;

  external WS_STRING fragment;
}

/// {@category Struct}
class WS_HTTP_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
}

/// {@category Struct}
class WS_HTTP_HEADER_AUTH_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_HTTP_HEADER_AUTH_SECURITY_BINDING_TEMPLATE
      httpHeaderAuthSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_HEADER_AUTH_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_HTTP_HEADER_AUTH_SECURITY_BINDING_POLICY_DESCRIPTION
      httpHeaderAuthSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_HEADER_AUTH_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;

  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

/// {@category Struct}
class WS_HTTP_HEADER_AUTH_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;
}

/// {@category Struct}
class WS_HTTP_HEADER_AUTH_SECURITY_BINDING_POLICY_DESCRIPTION extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
}

/// {@category Struct}
class WS_HTTP_HEADER_AUTH_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;

  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

/// {@category Struct}
class WS_HTTP_HEADER_MAPPING extends Struct {
  external WS_XML_STRING headerName;

  @Uint32()
  external int headerMappingOptions;
}

/// {@category Struct}
class WS_HTTP_MESSAGE_MAPPING extends Struct {
  @Uint32()
  external int requestMappingOptions;

  @Uint32()
  external int responseMappingOptions;

  external Pointer<Pointer<WS_HTTP_HEADER_MAPPING>> requestHeaderMappings;

  @Uint32()
  external int requestHeaderMappingCount;

  external Pointer<Pointer<WS_HTTP_HEADER_MAPPING>> responseHeaderMappings;

  @Uint32()
  external int responseHeaderMappingCount;
}

/// {@category Struct}
class WS_HTTP_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
}

/// {@category Struct}
class WS_HTTP_REDIRECT_CALLBACK_CONTEXT extends Struct {
  external Pointer<NativeFunction<WS_HTTP_REDIRECT_CALLBACK>> callback;

  external Pointer state;
}

/// {@category Struct}
class WS_HTTP_SSL_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sslTransportSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_SSL_HEADER_AUTH_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sslTransportSecurityBinding;

  external WS_HTTP_HEADER_AUTH_SECURITY_BINDING_TEMPLATE
      httpHeaderAuthSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_SSL_HEADER_AUTH_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sslTransportSecurityBinding;

  external WS_HTTP_HEADER_AUTH_SECURITY_BINDING_POLICY_DESCRIPTION
      httpHeaderAuthSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_SSL_KERBEROS_APREQ_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sslTransportSecurityBinding;

  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_TEMPLATE
      kerberosApreqMessageSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_SSL_KERBEROS_APREQ_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sslTransportSecurityBinding;

  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      kerberosApreqMessageSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_SSL_KERBEROS_APREQ_SECURITY_CONTEXT_BINDING_TEMPLATE
    extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sslTransportSecurityBinding;

  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_TEMPLATE
      kerberosApreqMessageSecurityBinding;

  external WS_SECURITY_CONTEXT_SECURITY_BINDING_TEMPLATE
      securityContextSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_SSL_KERBEROS_APREQ_SECURITY_CONTEXT_POLICY_DESCRIPTION
    extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sslTransportSecurityBinding;

  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      kerberosApreqMessageSecurityBinding;

  external WS_SECURITY_CONTEXT_SECURITY_BINDING_POLICY_DESCRIPTION
      securityContextSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_SSL_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sslTransportSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_SSL_USERNAME_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sslTransportSecurityBinding;

  external WS_USERNAME_MESSAGE_SECURITY_BINDING_TEMPLATE
      usernameMessageSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_SSL_USERNAME_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sslTransportSecurityBinding;

  external WS_USERNAME_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      usernameMessageSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_SSL_USERNAME_SECURITY_CONTEXT_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sslTransportSecurityBinding;

  external WS_USERNAME_MESSAGE_SECURITY_BINDING_TEMPLATE
      usernameMessageSecurityBinding;

  external WS_SECURITY_CONTEXT_SECURITY_BINDING_TEMPLATE
      securityContextSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_SSL_USERNAME_SECURITY_CONTEXT_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sslTransportSecurityBinding;

  external WS_USERNAME_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      usernameMessageSecurityBinding;

  external WS_SECURITY_CONTEXT_SECURITY_BINDING_POLICY_DESCRIPTION
      securityContextSecurityBinding;
}

/// {@category Struct}
class WS_HTTP_URL extends Struct {
  external WS_URL url;

  external WS_STRING host;

  @Uint16()
  external int port;

  external WS_STRING portAsString;

  external WS_STRING path;

  external WS_STRING query;

  external WS_STRING fragment;
}

/// {@category Struct}
class WS_INT16_DESCRIPTION extends Struct {
  @Int16()
  external int minValue;

  @Int16()
  external int maxValue;
}

/// {@category Struct}
class WS_INT32_DESCRIPTION extends Struct {
  @Int32()
  external int minValue;

  @Int32()
  external int maxValue;
}

/// {@category Struct}
class WS_INT64_DESCRIPTION extends Struct {
  @Int64()
  external int minValue;

  @Int64()
  external int maxValue;
}

/// {@category Struct}
class WS_INT8_DESCRIPTION extends Struct {
  @Uint8()
  external int minValue;

  @Uint8()
  external int maxValue;
}

/// {@category Struct}
class WS_ISSUED_TOKEN_MESSAGE_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;

  @Int32()
  external int bindingUsage;

  external Pointer<WS_XML_STRING> claimConstraints;

  @Uint32()
  external int claimConstraintCount;

  external Pointer<WS_REQUEST_SECURITY_TOKEN_PROPERTY_CONSTRAINT>
      requestSecurityTokenPropertyConstraints;

  @Uint32()
  external int requestSecurityTokenPropertyConstraintCount;

  external _WS_ISSUED_TOKEN_MESSAGE_SECURITY_BINDING_CONSTRAINT__out_e__Struct
      out;
}

/// {@category Struct}
class _WS_ISSUED_TOKEN_MESSAGE_SECURITY_BINDING_CONSTRAINT__out_e__Struct
    extends Struct {
  external Pointer<WS_ENDPOINT_ADDRESS> issuerAddress;

  external Pointer<WS_XML_BUFFER> requestSecurityTokenTemplate;
}

extension WS_ISSUED_TOKEN_MESSAGE_SECURITY_BINDING_CONSTRAINT_Extension
    on WS_ISSUED_TOKEN_MESSAGE_SECURITY_BINDING_CONSTRAINT {
  Pointer<WS_ENDPOINT_ADDRESS> get issuerAddress => this.out.issuerAddress;
  set issuerAddress(Pointer<WS_ENDPOINT_ADDRESS> value) =>
      this.out.issuerAddress = value;

  Pointer<WS_XML_BUFFER> get requestSecurityTokenTemplate =>
      this.out.requestSecurityTokenTemplate;
  set requestSecurityTokenTemplate(Pointer<WS_XML_BUFFER> value) =>
      this.out.requestSecurityTokenTemplate = value;
}

/// {@category Struct}
class WS_ITEM_RANGE extends Struct {
  @Uint32()
  external int minItemCount;

  @Uint32()
  external int maxItemCount;
}

/// {@category Struct}
class WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;

  @Int32()
  external int bindingUsage;

  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

/// {@category Struct}
class WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;

  @Int32()
  external int bindingUsage;
}

/// {@category Struct}
class WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
    extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;

  @Int32()
  external int bindingUsage;
}

/// {@category Struct}
class WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;

  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

/// {@category Struct}
class WS_LISTENER extends Opaque {}

/// {@category Struct}
class WS_LISTENER_PROPERTIES extends Struct {
  external Pointer<WS_LISTENER_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_LISTENER_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_MESSAGE extends Opaque {}

/// {@category Struct}
class WS_MESSAGE_DESCRIPTION extends Struct {
  external Pointer<WS_XML_STRING> action;

  external Pointer<WS_ELEMENT_DESCRIPTION> bodyElementDescription;
}

/// {@category Struct}
class WS_MESSAGE_PROPERTIES extends Struct {
  external Pointer<WS_MESSAGE_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_MESSAGE_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_METADATA extends Opaque {}

/// {@category Struct}
class WS_METADATA_ENDPOINT extends Struct {
  external WS_ENDPOINT_ADDRESS endpointAddress;

  external Pointer<WS_POLICY> endpointPolicy;

  external Pointer<WS_XML_STRING> portName;

  external Pointer<WS_XML_STRING> serviceName;

  external Pointer<WS_XML_STRING> serviceNs;

  external Pointer<WS_XML_STRING> bindingName;

  external Pointer<WS_XML_STRING> bindingNs;

  external Pointer<WS_XML_STRING> portTypeName;

  external Pointer<WS_XML_STRING> portTypeNs;
}

/// {@category Struct}
class WS_METADATA_ENDPOINTS extends Struct {
  external Pointer<WS_METADATA_ENDPOINT> endpoints;

  @Uint32()
  external int endpointCount;
}

/// {@category Struct}
class WS_METADATA_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_NAMEDPIPE_SSPI_TRANSPORT_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;

  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

/// {@category Struct}
class WS_NCRYPT_ASYMMETRIC_SECURITY_KEY_HANDLE extends Struct {
  external WS_SECURITY_KEY_HANDLE keyHandle;

  @IntPtr()
  external int asymmetricKey;
}

/// {@category Struct}
class WS_NETPIPE_URL extends Struct {
  external WS_URL url;

  external WS_STRING host;

  @Uint16()
  external int port;

  external WS_STRING portAsString;

  external WS_STRING path;

  external WS_STRING query;

  external WS_STRING fragment;
}

/// {@category Struct}
class WS_NETTCP_URL extends Struct {
  external WS_URL url;

  external WS_STRING host;

  @Uint16()
  external int port;

  external WS_STRING portAsString;

  external WS_STRING path;

  external WS_STRING query;

  external WS_STRING fragment;
}

/// {@category Struct}
class WS_OPAQUE_WINDOWS_INTEGRATED_AUTH_CREDENTIAL extends Struct {
  external WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL credential;

  external Pointer opaqueAuthIdentity;
}

/// {@category Struct}
class WS_OPERATION_CONTEXT extends Opaque {}

/// {@category Struct}
class WS_OPERATION_DESCRIPTION extends Struct {
  @Uint32()
  external int versionInfo;

  external Pointer<WS_MESSAGE_DESCRIPTION> inputMessageDescription;

  external Pointer<WS_MESSAGE_DESCRIPTION> outputMessageDescription;

  @Uint32()
  external int inputMessageOptions;

  @Uint32()
  external int outputMessageOptions;

  @Uint16()
  external int parameterCount;

  external Pointer<WS_PARAMETER_DESCRIPTION> parameterDescription;

  external Pointer<NativeFunction<WS_SERVICE_STUB_CALLBACK>> stubCallback;

  @Int32()
  external int style;
}

/// {@category Struct}
class WS_PARAMETER_DESCRIPTION extends Struct {
  @Int32()
  external int parameterType;

  @Uint16()
  external int inputMessageIndex;

  @Uint16()
  external int outputMessageIndex;
}

/// {@category Struct}
class WS_POLICY extends Opaque {}

/// {@category Struct}
class WS_POLICY_CONSTRAINTS extends Struct {
  @Int32()
  external int channelBinding;

  external Pointer<WS_CHANNEL_PROPERTY_CONSTRAINT> channelPropertyConstraints;

  @Uint32()
  external int channelPropertyConstraintCount;

  external Pointer<WS_SECURITY_CONSTRAINTS> securityConstraints;

  external Pointer<Pointer<WS_POLICY_EXTENSION>> policyExtensions;

  @Uint32()
  external int policyExtensionCount;
}

/// {@category Struct}
class WS_POLICY_EXTENSION extends Struct {
  @Int32()
  external int type;
}

/// {@category Struct}
class WS_POLICY_PROPERTIES extends Struct {
  external Pointer<WS_POLICY_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_POLICY_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_PROXY_MESSAGE_CALLBACK_CONTEXT extends Struct {
  external Pointer<NativeFunction<WS_PROXY_MESSAGE_CALLBACK>> callback;

  external Pointer state;
}

/// {@category Struct}
class WS_PROXY_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_RAW_SYMMETRIC_SECURITY_KEY_HANDLE extends Struct {
  external WS_SECURITY_KEY_HANDLE keyHandle;

  external WS_BYTES rawKeyBytes;
}

/// {@category Struct}
class WS_REQUEST_SECURITY_TOKEN_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_REQUEST_SECURITY_TOKEN_PROPERTY_CONSTRAINT extends Struct {
  @Int32()
  external int id;

  external Pointer allowedValues;

  @Uint32()
  external int allowedValuesSize;

  external _WS_REQUEST_SECURITY_TOKEN_PROPERTY_CONSTRAINT__out_e__Struct out;
}

/// {@category Struct}
class _WS_REQUEST_SECURITY_TOKEN_PROPERTY_CONSTRAINT__out_e__Struct
    extends Struct {
  external WS_REQUEST_SECURITY_TOKEN_PROPERTY requestSecurityTokenProperty;
}

extension WS_REQUEST_SECURITY_TOKEN_PROPERTY_CONSTRAINT_Extension
    on WS_REQUEST_SECURITY_TOKEN_PROPERTY_CONSTRAINT {
  WS_REQUEST_SECURITY_TOKEN_PROPERTY get requestSecurityTokenProperty =>
      this.out.requestSecurityTokenProperty;
  set requestSecurityTokenProperty(WS_REQUEST_SECURITY_TOKEN_PROPERTY value) =>
      this.out.requestSecurityTokenProperty = value;
}

/// {@category Struct}
class WS_RSA_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;

  external WS_BYTES modulus;

  external WS_BYTES exponent;
}

/// {@category Struct}
class WS_SAML_AUTHENTICATOR extends Struct {
  @Int32()
  external int authenticatorType;
}

/// {@category Struct}
class WS_SAML_MESSAGE_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;

  @Int32()
  external int bindingUsage;

  external Pointer<WS_SAML_AUTHENTICATOR> authenticator;
}

/// {@category Struct}
class WS_SECURITY_ALGORITHM_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_SECURITY_ALGORITHM_SUITE extends Struct {
  @Int32()
  external int canonicalizationAlgorithm;

  @Int32()
  external int digestAlgorithm;

  @Int32()
  external int symmetricSignatureAlgorithm;

  @Int32()
  external int asymmetricSignatureAlgorithm;

  @Int32()
  external int encryptionAlgorithm;

  @Int32()
  external int keyDerivationAlgorithm;

  @Int32()
  external int symmetricKeyWrapAlgorithm;

  @Int32()
  external int asymmetricKeyWrapAlgorithm;

  @Uint32()
  external int minSymmetricKeyLength;

  @Uint32()
  external int maxSymmetricKeyLength;

  @Uint32()
  external int minAsymmetricKeyLength;

  @Uint32()
  external int maxAsymmetricKeyLength;

  external Pointer<WS_SECURITY_ALGORITHM_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_SECURITY_BINDING extends Struct {
  @Int32()
  external int bindingType;

  external Pointer<WS_SECURITY_BINDING_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_SECURITY_BINDING_CONSTRAINT extends Struct {
  @Int32()
  external int type;

  external Pointer<WS_SECURITY_BINDING_PROPERTY_CONSTRAINT> propertyConstraints;

  @Uint32()
  external int propertyConstraintCount;
}

/// {@category Struct}
class WS_SECURITY_BINDING_PROPERTIES extends Struct {
  external Pointer<WS_SECURITY_BINDING_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_SECURITY_BINDING_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_SECURITY_BINDING_PROPERTY_CONSTRAINT extends Struct {
  @Int32()
  external int id;

  external Pointer allowedValues;

  @Uint32()
  external int allowedValuesSize;

  external _WS_SECURITY_BINDING_PROPERTY_CONSTRAINT__out_e__Struct out;
}

/// {@category Struct}
class _WS_SECURITY_BINDING_PROPERTY_CONSTRAINT__out_e__Struct extends Struct {
  external WS_SECURITY_BINDING_PROPERTY securityBindingProperty;
}

extension WS_SECURITY_BINDING_PROPERTY_CONSTRAINT_Extension
    on WS_SECURITY_BINDING_PROPERTY_CONSTRAINT {
  WS_SECURITY_BINDING_PROPERTY get securityBindingProperty =>
      this.out.securityBindingProperty;
  set securityBindingProperty(WS_SECURITY_BINDING_PROPERTY value) =>
      this.out.securityBindingProperty = value;
}

/// {@category Struct}
class WS_SECURITY_CONSTRAINTS extends Struct {
  external Pointer<WS_SECURITY_PROPERTY_CONSTRAINT> securityPropertyConstraints;

  @Uint32()
  external int securityPropertyConstraintCount;

  external Pointer<Pointer<WS_SECURITY_BINDING_CONSTRAINT>>
      securityBindingConstraints;

  @Uint32()
  external int securityBindingConstraintCount;
}

/// {@category Struct}
class WS_SECURITY_CONTEXT extends Opaque {}

/// {@category Struct}
class WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;

  @Int32()
  external int bindingUsage;

  external Pointer<WS_SECURITY_DESCRIPTION> bootstrapSecurityDescription;
}

/// {@category Struct}
class WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;

  @Int32()
  external int bindingUsage;

  external Pointer<WS_SECURITY_CONSTRAINTS> bootstrapSecurityConstraint;
}

/// {@category Struct}
class WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
    extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;

  @Int32()
  external int bindingUsage;
}

/// {@category Struct}
class WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
}

/// {@category Struct}
class WS_SECURITY_CONTEXT_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_SECURITY_CONTEXT_SECURITY_BINDING_POLICY_DESCRIPTION extends Struct {
  external WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      securityContextMessageSecurityBinding;

  external WS_SECURITY_PROPERTIES securityProperties;
}

/// {@category Struct}
class WS_SECURITY_CONTEXT_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING_TEMPLATE
      securityContextMessageSecurityBinding;

  external WS_SECURITY_PROPERTIES securityProperties;
}

/// {@category Struct}
class WS_SECURITY_DESCRIPTION extends Struct {
  external Pointer<Pointer<WS_SECURITY_BINDING>> securityBindings;

  @Uint32()
  external int securityBindingCount;

  external Pointer<WS_SECURITY_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_SECURITY_KEY_HANDLE extends Struct {
  @Int32()
  external int keyHandleType;
}

/// {@category Struct}
class WS_SECURITY_PROPERTIES extends Struct {
  external Pointer<WS_SECURITY_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_SECURITY_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_SECURITY_PROPERTY_CONSTRAINT extends Struct {
  @Int32()
  external int id;

  external Pointer allowedValues;

  @Uint32()
  external int allowedValuesSize;

  external _WS_SECURITY_PROPERTY_CONSTRAINT__out_e__Struct out;
}

/// {@category Struct}
class _WS_SECURITY_PROPERTY_CONSTRAINT__out_e__Struct extends Struct {
  external WS_SECURITY_PROPERTY securityProperty;
}

extension WS_SECURITY_PROPERTY_CONSTRAINT_Extension
    on WS_SECURITY_PROPERTY_CONSTRAINT {
  WS_SECURITY_PROPERTY get securityProperty => this.out.securityProperty;
  set securityProperty(WS_SECURITY_PROPERTY value) =>
      this.out.securityProperty = value;
}

/// {@category Struct}
class WS_SECURITY_TOKEN extends Opaque {}

/// {@category Struct}
class WS_SERVICE_CONTRACT extends Struct {
  external Pointer<WS_CONTRACT_DESCRIPTION> contractDescription;

  external Pointer<NativeFunction<WS_SERVICE_MESSAGE_RECEIVE_CALLBACK>>
      defaultMessageHandlerCallback;

  external Pointer methodTable;
}

/// {@category Struct}
class WS_SERVICE_ENDPOINT extends Struct {
  external WS_ENDPOINT_ADDRESS address;

  @Int32()
  external int channelBinding;

  @Int32()
  external int channelType;

  external Pointer<WS_SECURITY_DESCRIPTION> securityDescription;

  external Pointer<WS_SERVICE_CONTRACT> contract;

  external Pointer<NativeFunction<WS_SERVICE_SECURITY_CALLBACK>>
      authorizationCallback;

  external Pointer<WS_SERVICE_ENDPOINT_PROPERTY> properties;

  @Uint32()
  external int propertyCount;

  external WS_CHANNEL_PROPERTIES channelProperties;
}

/// {@category Struct}
class WS_SERVICE_ENDPOINT_METADATA extends Struct {
  external Pointer<WS_XML_STRING> portName;

  external Pointer<WS_XML_STRING> bindingName;

  external Pointer<WS_XML_STRING> bindingNs;
}

/// {@category Struct}
class WS_SERVICE_ENDPOINT_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_SERVICE_HOST extends Opaque {}

/// {@category Struct}
class WS_SERVICE_METADATA extends Struct {
  @Uint32()
  external int documentCount;

  external Pointer<Pointer<WS_SERVICE_METADATA_DOCUMENT>> documents;

  external Pointer<WS_XML_STRING> serviceName;

  external Pointer<WS_XML_STRING> serviceNs;
}

/// {@category Struct}
class WS_SERVICE_METADATA_DOCUMENT extends Struct {
  external Pointer<WS_XML_STRING> content;

  external Pointer<WS_STRING> name;
}

/// {@category Struct}
class WS_SERVICE_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_SERVICE_PROPERTY_ACCEPT_CALLBACK extends Struct {
  external Pointer<NativeFunction<WS_SERVICE_ACCEPT_CHANNEL_CALLBACK>> callback;
}

/// {@category Struct}
class WS_SERVICE_PROPERTY_CLOSE_CALLBACK extends Struct {
  external Pointer<NativeFunction<WS_SERVICE_CLOSE_CHANNEL_CALLBACK>> callback;
}

/// {@category Struct}
class WS_SERVICE_PROXY extends Opaque {}

/// {@category Struct}
class WS_SERVICE_SECURITY_IDENTITIES extends Struct {
  external Pointer<WS_STRING> serviceIdentities;

  @Uint32()
  external int serviceIdentityCount;
}

/// {@category Struct}
class WS_SOAPUDP_URL extends Struct {
  external WS_URL url;

  external WS_STRING host;

  @Uint16()
  external int port;

  external WS_STRING portAsString;

  external WS_STRING path;

  external WS_STRING query;

  external WS_STRING fragment;
}

/// {@category Struct}
class WS_SPN_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;

  external WS_STRING spn;
}

/// {@category Struct}
class WS_SSL_TRANSPORT_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;

  external Pointer<WS_CERT_CREDENTIAL> localCertCredential;
}

/// {@category Struct}
class WS_SSL_TRANSPORT_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;

  external _WS_SSL_TRANSPORT_SECURITY_BINDING_CONSTRAINT__out_e__Struct out;
}

/// {@category Struct}
class _WS_SSL_TRANSPORT_SECURITY_BINDING_CONSTRAINT__out_e__Struct
    extends Struct {
  @Int32()
  external int clientCertCredentialRequired;
}

extension WS_SSL_TRANSPORT_SECURITY_BINDING_CONSTRAINT_Extension
    on WS_SSL_TRANSPORT_SECURITY_BINDING_CONSTRAINT {
  int get clientCertCredentialRequired => this.out.clientCertCredentialRequired;
  set clientCertCredentialRequired(int value) =>
      this.out.clientCertCredentialRequired = value;
}

/// {@category Struct}
class WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
}

/// {@category Struct}
class WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;

  external Pointer<WS_CERT_CREDENTIAL> localCertCredential;
}

/// {@category Struct}
class WS_SSPI_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
}

/// {@category Struct}
class WS_STRING extends Struct {
  @Uint32()
  external int length;

  external Pointer<Utf16> chars;
}

/// {@category Struct}
class WS_STRING_DESCRIPTION extends Struct {
  @Uint32()
  external int minCharCount;

  @Uint32()
  external int maxCharCount;
}

/// {@category Struct}
class WS_STRING_USERNAME_CREDENTIAL extends Struct {
  external WS_USERNAME_CREDENTIAL credential;

  external WS_STRING username;

  external WS_STRING password;
}

/// {@category Struct}
class WS_STRING_WINDOWS_INTEGRATED_AUTH_CREDENTIAL extends Struct {
  external WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL credential;

  external WS_STRING username;

  external WS_STRING password;

  external WS_STRING domain;
}

/// {@category Struct}
class WS_STRUCT_DESCRIPTION extends Struct {
  @Uint32()
  external int size;

  @Uint32()
  external int alignment;

  external Pointer<Pointer<WS_FIELD_DESCRIPTION>> fields;

  @Uint32()
  external int fieldCount;

  external Pointer<WS_XML_STRING> typeLocalName;

  external Pointer<WS_XML_STRING> typeNs;

  external Pointer<WS_STRUCT_DESCRIPTION> parentType;

  external Pointer<Pointer<WS_STRUCT_DESCRIPTION>> subTypes;

  @Uint32()
  external int subTypeCount;

  @Uint32()
  external int structOptions;
}

/// {@category Struct}
class WS_SUBJECT_NAME_CERT_CREDENTIAL extends Struct {
  external WS_CERT_CREDENTIAL credential;

  @Uint32()
  external int storeLocation;

  external WS_STRING storeName;

  external WS_STRING subjectName;
}

/// {@category Struct}
class WS_TCP_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
}

/// {@category Struct}
class WS_TCP_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
}

/// {@category Struct}
class WS_TCP_SSPI_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sspiTransportSecurityBinding;
}

/// {@category Struct}
class WS_TCP_SSPI_KERBEROS_APREQ_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sspiTransportSecurityBinding;

  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_TEMPLATE
      kerberosApreqMessageSecurityBinding;
}

/// {@category Struct}
class WS_TCP_SSPI_KERBEROS_APREQ_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSPI_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sspiTransportSecurityBinding;

  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      kerberosApreqMessageSecurityBinding;
}

/// {@category Struct}
class WS_TCP_SSPI_KERBEROS_APREQ_SECURITY_CONTEXT_BINDING_TEMPLATE
    extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sspiTransportSecurityBinding;

  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_TEMPLATE
      kerberosApreqMessageSecurityBinding;

  external WS_SECURITY_CONTEXT_SECURITY_BINDING_TEMPLATE
      securityContextSecurityBinding;
}

/// {@category Struct}
class WS_TCP_SSPI_KERBEROS_APREQ_SECURITY_CONTEXT_POLICY_DESCRIPTION
    extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSPI_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sspiTransportSecurityBinding;

  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      kerberosApreqMessageSecurityBinding;

  external WS_SECURITY_CONTEXT_SECURITY_BINDING_POLICY_DESCRIPTION
      securityContextSecurityBinding;
}

/// {@category Struct}
class WS_TCP_SSPI_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSPI_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sspiTransportSecurityBinding;
}

/// {@category Struct}
class WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;

  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

/// {@category Struct}
class WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;
}

/// {@category Struct}
class WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;

  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

/// {@category Struct}
class WS_TCP_SSPI_USERNAME_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sspiTransportSecurityBinding;

  external WS_USERNAME_MESSAGE_SECURITY_BINDING_TEMPLATE
      usernameMessageSecurityBinding;
}

/// {@category Struct}
class WS_TCP_SSPI_USERNAME_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSPI_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sspiTransportSecurityBinding;

  external WS_USERNAME_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      usernameMessageSecurityBinding;
}

/// {@category Struct}
class WS_TCP_SSPI_USERNAME_SECURITY_CONTEXT_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sspiTransportSecurityBinding;

  external WS_USERNAME_MESSAGE_SECURITY_BINDING_TEMPLATE
      usernameMessageSecurityBinding;

  external WS_SECURITY_CONTEXT_SECURITY_BINDING_TEMPLATE
      securityContextSecurityBinding;
}

/// {@category Struct}
class WS_TCP_SSPI_USERNAME_SECURITY_CONTEXT_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;

  external WS_SECURITY_PROPERTIES securityProperties;

  external WS_SSPI_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sspiTransportSecurityBinding;

  external WS_USERNAME_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      usernameMessageSecurityBinding;

  external WS_SECURITY_CONTEXT_SECURITY_BINDING_POLICY_DESCRIPTION
      securityContextSecurityBinding;
}

/// {@category Struct}
class WS_THUMBPRINT_CERT_CREDENTIAL extends Struct {
  external WS_CERT_CREDENTIAL credential;

  @Uint32()
  external int storeLocation;

  external WS_STRING storeName;

  external WS_STRING thumbprint;
}

/// {@category Struct}
class WS_TIMESPAN extends Struct {
  @Int64()
  external int ticks;
}

/// {@category Struct}
class WS_TIMESPAN_DESCRIPTION extends Struct {
  external WS_TIMESPAN minValue;

  external WS_TIMESPAN maxValue;
}

/// {@category Struct}
class WS_UINT16_DESCRIPTION extends Struct {
  @Uint16()
  external int minValue;

  @Uint16()
  external int maxValue;
}

/// {@category Struct}
class WS_UINT32_DESCRIPTION extends Struct {
  @Uint32()
  external int minValue;

  @Uint32()
  external int maxValue;
}

/// {@category Struct}
class WS_UINT64_DESCRIPTION extends Struct {
  @Uint64()
  external int minValue;

  @Uint64()
  external int maxValue;
}

/// {@category Struct}
class WS_UINT8_DESCRIPTION extends Struct {
  @Uint8()
  external int minValue;

  @Uint8()
  external int maxValue;
}

/// {@category Struct}
class WS_UNION_DESCRIPTION extends Struct {
  @Uint32()
  external int size;

  @Uint32()
  external int alignment;

  external Pointer<Pointer<WS_UNION_FIELD_DESCRIPTION>> fields;

  @Uint32()
  external int fieldCount;

  @Uint32()
  external int enumOffset;

  @Int32()
  external int noneEnumValue;

  external Pointer<Uint32> valueIndices;
}

/// {@category Struct}
class WS_UNION_FIELD_DESCRIPTION extends Struct {
  @Int32()
  external int value;

  external WS_FIELD_DESCRIPTION field;
}

/// {@category Struct}
class WS_UNIQUE_ID extends Struct {
  external WS_STRING uri;

  external GUID guid;
}

/// {@category Struct}
class WS_UNIQUE_ID_DESCRIPTION extends Struct {
  @Uint32()
  external int minCharCount;

  @Uint32()
  external int maxCharCount;
}

/// {@category Struct}
class WS_UNKNOWN_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;

  external Pointer<WS_XML_BUFFER> element;
}

/// {@category Struct}
class WS_UPN_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;

  external WS_STRING upn;
}

/// {@category Struct}
class WS_URL extends Struct {
  @Int32()
  external int scheme;
}

/// {@category Struct}
class WS_USERNAME_CREDENTIAL extends Struct {
  @Int32()
  external int credentialType;
}

/// {@category Struct}
class WS_USERNAME_MESSAGE_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;

  @Int32()
  external int bindingUsage;

  external Pointer<WS_USERNAME_CREDENTIAL> clientCredential;

  external Pointer<NativeFunction<WS_VALIDATE_PASSWORD_CALLBACK>>
      passwordValidator;

  external Pointer passwordValidatorCallbackState;
}

/// {@category Struct}
class WS_USERNAME_MESSAGE_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;

  @Int32()
  external int bindingUsage;
}

/// {@category Struct}
class WS_USERNAME_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;

  @Int32()
  external int bindingUsage;
}

/// {@category Struct}
class WS_USERNAME_MESSAGE_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;

  external Pointer<WS_USERNAME_CREDENTIAL> clientCredential;

  external Pointer<NativeFunction<WS_VALIDATE_PASSWORD_CALLBACK>>
      passwordValidator;

  external Pointer passwordValidatorCallbackState;
}

/// {@category Struct}
class WS_UTF8_ARRAY_DESCRIPTION extends Struct {
  @Uint32()
  external int minByteCount;

  @Uint32()
  external int maxByteCount;
}

/// {@category Struct}
class WS_VOID_DESCRIPTION extends Struct {
  @Uint32()
  external int size;
}

/// {@category Struct}
class WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL extends Struct {
  @Int32()
  external int credentialType;
}

/// {@category Struct}
class WS_WSZ_DESCRIPTION extends Struct {
  @Uint32()
  external int minCharCount;

  @Uint32()
  external int maxCharCount;
}

/// {@category Struct}
class WS_XML_ATTRIBUTE extends Struct {
  @Uint8()
  external int singleQuote;

  @Uint8()
  external int isXmlNs;

  external Pointer<WS_XML_STRING> prefix;

  external Pointer<WS_XML_STRING> localName;

  external Pointer<WS_XML_STRING> ns;

  external Pointer<WS_XML_TEXT> value;
}

/// {@category Struct}
class WS_XML_BASE64_TEXT extends Struct {
  external WS_XML_TEXT text;

  external Pointer<Uint8> bytes;

  @Uint32()
  external int length;
}

/// {@category Struct}
class WS_XML_BOOL_TEXT extends Struct {
  external WS_XML_TEXT text;

  @Int32()
  external int value;
}

/// {@category Struct}
class WS_XML_BUFFER extends Opaque {}

/// {@category Struct}
class WS_XML_BUFFER_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_XML_CANONICALIZATION_INCLUSIVE_PREFIXES extends Struct {
  @Uint32()
  external int prefixCount;

  external Pointer<WS_XML_STRING> prefixes;
}

/// {@category Struct}
class WS_XML_CANONICALIZATION_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_XML_COMMENT_NODE extends Struct {
  external WS_XML_NODE node;

  external WS_XML_STRING value;
}

/// {@category Struct}
class WS_XML_DATETIME_TEXT extends Struct {
  external WS_XML_TEXT text;

  external WS_DATETIME value;
}

/// {@category Struct}
class WS_XML_DECIMAL_TEXT extends Struct {
  external WS_XML_TEXT text;

  external DECIMAL value;
}

/// {@category Struct}
class WS_XML_DICTIONARY extends Struct {
  external GUID guid;

  external Pointer<WS_XML_STRING> strings;

  @Uint32()
  external int stringCount;

  @Int32()
  external int isConst;
}

/// {@category Struct}
class WS_XML_DOUBLE_TEXT extends Struct {
  external WS_XML_TEXT text;

  @Double()
  external double value;
}

/// {@category Struct}
class WS_XML_ELEMENT_NODE extends Struct {
  external WS_XML_NODE node;

  external Pointer<WS_XML_STRING> prefix;

  external Pointer<WS_XML_STRING> localName;

  external Pointer<WS_XML_STRING> ns;

  @Uint32()
  external int attributeCount;

  external Pointer<Pointer<WS_XML_ATTRIBUTE>> attributes;

  @Int32()
  external int isEmpty;
}

/// {@category Struct}
class WS_XML_FLOAT_TEXT extends Struct {
  external WS_XML_TEXT text;

  @Float()
  external double value;
}

/// {@category Struct}
class WS_XML_GUID_TEXT extends Struct {
  external WS_XML_TEXT text;

  external GUID value;
}

/// {@category Struct}
class WS_XML_INT32_TEXT extends Struct {
  external WS_XML_TEXT text;

  @Int32()
  external int value;
}

/// {@category Struct}
class WS_XML_INT64_TEXT extends Struct {
  external WS_XML_TEXT text;

  @Int64()
  external int value;
}

/// {@category Struct}
class WS_XML_LIST_TEXT extends Struct {
  external WS_XML_TEXT text;

  @Uint32()
  external int itemCount;

  external Pointer<Pointer<WS_XML_TEXT>> items;
}

/// {@category Struct}
class WS_XML_NODE extends Struct {
  @Int32()
  external int nodeType;
}

/// {@category Struct}
class WS_XML_NODE_POSITION extends Struct {
  external Pointer<WS_XML_BUFFER> buffer;

  external Pointer node;
}

/// {@category Struct}
class WS_XML_QNAME extends Struct {
  external WS_XML_STRING localName;

  external WS_XML_STRING ns;
}

/// {@category Struct}
class WS_XML_QNAME_DESCRIPTION extends Struct {
  @Uint32()
  external int minLocalNameByteCount;

  @Uint32()
  external int maxLocalNameByteCount;

  @Uint32()
  external int minNsByteCount;

  @Uint32()
  external int maxNsByteCount;
}

/// {@category Struct}
class WS_XML_QNAME_TEXT extends Struct {
  external WS_XML_TEXT text;

  external Pointer<WS_XML_STRING> prefix;

  external Pointer<WS_XML_STRING> localName;

  external Pointer<WS_XML_STRING> ns;
}

/// {@category Struct}
class WS_XML_READER extends Opaque {}

/// {@category Struct}
class WS_XML_READER_BINARY_ENCODING extends Struct {
  external WS_XML_READER_ENCODING encoding;

  external Pointer<WS_XML_DICTIONARY> staticDictionary;

  external Pointer<WS_XML_DICTIONARY> dynamicDictionary;
}

/// {@category Struct}
class WS_XML_READER_BUFFER_INPUT extends Struct {
  external WS_XML_READER_INPUT input;

  external Pointer encodedData;

  @Uint32()
  external int encodedDataSize;
}

/// {@category Struct}
class WS_XML_READER_ENCODING extends Struct {
  @Int32()
  external int encodingType;
}

/// {@category Struct}
class WS_XML_READER_INPUT extends Struct {
  @Int32()
  external int inputType;
}

/// {@category Struct}
class WS_XML_READER_MTOM_ENCODING extends Struct {
  external WS_XML_READER_ENCODING encoding;

  external Pointer<WS_XML_READER_ENCODING> textEncoding;

  @Int32()
  external int readMimeHeader;

  external WS_STRING startInfo;

  external WS_STRING boundary;

  external WS_STRING startUri;
}

/// {@category Struct}
class WS_XML_READER_PROPERTIES extends Struct {
  external Pointer<WS_XML_READER_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_XML_READER_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_XML_READER_RAW_ENCODING extends Struct {
  external WS_XML_READER_ENCODING encoding;
}

/// {@category Struct}
class WS_XML_READER_STREAM_INPUT extends Struct {
  external WS_XML_READER_INPUT input;

  external Pointer<NativeFunction<WS_READ_CALLBACK>> readCallback;

  external Pointer readCallbackState;
}

/// {@category Struct}
class WS_XML_READER_TEXT_ENCODING extends Struct {
  external WS_XML_READER_ENCODING encoding;

  @Int32()
  external int charSet;
}

/// {@category Struct}
class WS_XML_SECURITY_TOKEN_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_XML_STRING extends Struct {
  @Uint32()
  external int length;

  external Pointer<Uint8> bytes;

  external Pointer<WS_XML_DICTIONARY> dictionary;

  @Uint32()
  external int id;
}

/// {@category Struct}
class WS_XML_STRING_DESCRIPTION extends Struct {
  @Uint32()
  external int minByteCount;

  @Uint32()
  external int maxByteCount;
}

/// {@category Struct}
class WS_XML_TEXT extends Struct {
  @Int32()
  external int textType;
}

/// {@category Struct}
class WS_XML_TEXT_NODE extends Struct {
  external WS_XML_NODE node;

  external Pointer<WS_XML_TEXT> text;
}

/// {@category Struct}
class WS_XML_TIMESPAN_TEXT extends Struct {
  external WS_XML_TEXT text;

  external WS_TIMESPAN value;
}

/// {@category Struct}
class WS_XML_TOKEN_MESSAGE_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;

  @Int32()
  external int bindingUsage;

  external Pointer<WS_SECURITY_TOKEN> xmlToken;
}

/// {@category Struct}
class WS_XML_UINT64_TEXT extends Struct {
  external WS_XML_TEXT text;

  @Uint64()
  external int value;
}

/// {@category Struct}
class WS_XML_UNIQUE_ID_TEXT extends Struct {
  external WS_XML_TEXT text;

  external GUID value;
}

/// {@category Struct}
class WS_XML_UTF16_TEXT extends Struct {
  external WS_XML_TEXT text;

  external Pointer<Uint8> bytes;

  @Uint32()
  external int byteCount;
}

/// {@category Struct}
class WS_XML_UTF8_TEXT extends Struct {
  external WS_XML_TEXT text;

  external WS_XML_STRING value;
}

/// {@category Struct}
class WS_XML_WRITER extends Opaque {}

/// {@category Struct}
class WS_XML_WRITER_BINARY_ENCODING extends Struct {
  external WS_XML_WRITER_ENCODING encoding;

  external Pointer<WS_XML_DICTIONARY> staticDictionary;

  external Pointer<NativeFunction<WS_DYNAMIC_STRING_CALLBACK>>
      dynamicStringCallback;

  external Pointer dynamicStringCallbackState;
}

/// {@category Struct}
class WS_XML_WRITER_BUFFER_OUTPUT extends Struct {
  external WS_XML_WRITER_OUTPUT output;
}

/// {@category Struct}
class WS_XML_WRITER_ENCODING extends Struct {
  @Int32()
  external int encodingType;
}

/// {@category Struct}
class WS_XML_WRITER_MTOM_ENCODING extends Struct {
  external WS_XML_WRITER_ENCODING encoding;

  external Pointer<WS_XML_WRITER_ENCODING> textEncoding;

  @Int32()
  external int writeMimeHeader;

  external WS_STRING boundary;

  external WS_STRING startInfo;

  external WS_STRING startUri;

  @Uint32()
  external int maxInlineByteCount;
}

/// {@category Struct}
class WS_XML_WRITER_OUTPUT extends Struct {
  @Int32()
  external int outputType;
}

/// {@category Struct}
class WS_XML_WRITER_PROPERTIES extends Struct {
  external Pointer<WS_XML_WRITER_PROPERTY> properties;

  @Uint32()
  external int propertyCount;
}

/// {@category Struct}
class WS_XML_WRITER_PROPERTY extends Struct {
  @Int32()
  external int id;

  external Pointer value;

  @Uint32()
  external int valueSize;
}

/// {@category Struct}
class WS_XML_WRITER_RAW_ENCODING extends Struct {
  external WS_XML_WRITER_ENCODING encoding;
}

/// {@category Struct}
class WS_XML_WRITER_STREAM_OUTPUT extends Struct {
  external WS_XML_WRITER_OUTPUT output;

  external Pointer<NativeFunction<WS_WRITE_CALLBACK>> writeCallback;

  external Pointer writeCallbackState;
}

/// {@category Struct}
class WS_XML_WRITER_TEXT_ENCODING extends Struct {
  external WS_XML_WRITER_ENCODING encoding;

  @Int32()
  external int charSet;
}
