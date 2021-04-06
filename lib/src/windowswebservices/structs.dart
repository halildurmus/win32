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

class WS_XML_READER extends Struct {}

class WS_XML_WRITER extends Struct {}

class WS_XML_BUFFER extends Struct {}

class WS_CHANNEL extends Struct {}

class WS_OPERATION_CONTEXT extends Struct {}

class WS_ERROR extends Struct {}

class WS_HEAP extends Struct {}

class WS_LISTENER extends Struct {}

class WS_MESSAGE extends Struct {}

class WS_SECURITY_TOKEN extends Struct {}

class WS_SECURITY_CONTEXT extends Struct {}

class WS_SERVICE_HOST extends Struct {}

class WS_SERVICE_PROXY extends Struct {}

class WS_METADATA extends Struct {}

class WS_POLICY extends Struct {}

class WS_XML_DICTIONARY extends Struct {
  external GUID guid;
  external Pointer<WS_XML_STRING> strings;
  @Uint32()
  external int stringCount;
  @Int32()
  external int isConst;
}

class WS_XML_STRING extends Struct {
  @Uint32()
  external int length;
  external Pointer<Uint8> bytes;
  external Pointer<WS_XML_DICTIONARY> dictionary;
  @Uint32()
  external int id;
}

class WS_XML_QNAME extends Struct {
  external WS_XML_STRING localName;
  external WS_XML_STRING ns;
}

class WS_XML_NODE_POSITION extends Struct {
  external Pointer<WS_XML_BUFFER> buffer;
  external Pointer node;
}

class WS_XML_READER_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_XML_CANONICALIZATION_INCLUSIVE_PREFIXES extends Struct {
  @Uint32()
  external int prefixCount;
  external Pointer<WS_XML_STRING> prefixes;
}

class WS_XML_CANONICALIZATION_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_XML_WRITER_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_XML_BUFFER_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_XML_TEXT extends Struct {
  @Uint32()
  external int textType;
}

class WS_XML_UTF8_TEXT extends Struct {
  external WS_XML_TEXT text;
  external WS_XML_STRING value;
}

class WS_XML_UTF16_TEXT extends Struct {
  external WS_XML_TEXT text;
  external Pointer<Uint8> bytes;
  @Uint32()
  external int byteCount;
}

class WS_XML_BASE64_TEXT extends Struct {
  external WS_XML_TEXT text;
  external Pointer<Uint8> bytes;
  @Uint32()
  external int length;
}

class WS_XML_BOOL_TEXT extends Struct {
  external WS_XML_TEXT text;
  @Int32()
  external int value;
}

class WS_XML_INT32_TEXT extends Struct {
  external WS_XML_TEXT text;
  @Int32()
  external int value;
}

class WS_XML_INT64_TEXT extends Struct {
  external WS_XML_TEXT text;
  @Int64()
  external int value;
}

class WS_XML_UINT64_TEXT extends Struct {
  external WS_XML_TEXT text;
  @Uint64()
  external int value;
}

class WS_XML_FLOAT_TEXT extends Struct {
  external WS_XML_TEXT text;
  @Float()
  external double value;
}

class WS_XML_DOUBLE_TEXT extends Struct {
  external WS_XML_TEXT text;
  @Double()
  external double value;
}

class WS_XML_DECIMAL_TEXT extends Struct {
  external WS_XML_TEXT text;
  external DECIMAL value;
}

class WS_XML_GUID_TEXT extends Struct {
  external WS_XML_TEXT text;
  external GUID value;
}

class WS_XML_UNIQUE_ID_TEXT extends Struct {
  external WS_XML_TEXT text;
  external GUID value;
}

class WS_DATETIME extends Struct {
  @Uint64()
  external int ticks;
  @Uint32()
  external int format;
}

class WS_XML_DATETIME_TEXT extends Struct {
  external WS_XML_TEXT text;
  external WS_DATETIME value;
}

class WS_TIMESPAN extends Struct {
  @Int64()
  external int ticks;
}

class WS_XML_TIMESPAN_TEXT extends Struct {
  external WS_XML_TEXT text;
  external WS_TIMESPAN value;
}

class WS_XML_QNAME_TEXT extends Struct {
  external WS_XML_TEXT text;
  external Pointer<WS_XML_STRING> prefix;
  external Pointer<WS_XML_STRING> localName;
  external Pointer<WS_XML_STRING> ns;
}

class WS_XML_LIST_TEXT extends Struct {
  external WS_XML_TEXT text;
  @Uint32()
  external int itemCount;
  external Pointer<Pointer<WS_XML_TEXT>> items;
}

class WS_XML_NODE extends Struct {
  @Uint32()
  external int nodeType;
}

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

class WS_XML_TEXT_NODE extends Struct {
  external WS_XML_NODE node;
  external Pointer<WS_XML_TEXT> text;
}

class WS_XML_COMMENT_NODE extends Struct {
  external WS_XML_NODE node;
  external WS_XML_STRING value;
}

class WS_XML_READER_INPUT extends Struct {
  @Uint32()
  external int inputType;
}

class WS_XML_READER_BUFFER_INPUT extends Struct {
  external WS_XML_READER_INPUT input;
  external Pointer encodedData;
  @Uint32()
  external int encodedDataSize;
}

class WS_XML_READER_STREAM_INPUT extends Struct {
  external WS_XML_READER_INPUT input;
  external WS_READ_CALLBACK readCallback;
  external Pointer readCallbackState;
}

class WS_XML_READER_ENCODING extends Struct {
  @Uint32()
  external int encodingType;
}

class WS_XML_READER_TEXT_ENCODING extends Struct {
  external WS_XML_READER_ENCODING encoding;
  @Uint32()
  external int charSet;
}

class WS_XML_READER_BINARY_ENCODING extends Struct {
  external WS_XML_READER_ENCODING encoding;
  external Pointer<WS_XML_DICTIONARY> staticDictionary;
  external Pointer<WS_XML_DICTIONARY> dynamicDictionary;
}

class WS_STRING extends Struct {
  @Uint32()
  external int length;
  external Pointer<Utf16> chars;
}

class WS_XML_READER_MTOM_ENCODING extends Struct {
  external WS_XML_READER_ENCODING encoding;
  external Pointer<WS_XML_READER_ENCODING> textEncoding;
  @Int32()
  external int readMimeHeader;
  external WS_STRING startInfo;
  external WS_STRING boundary;
  external WS_STRING startUri;
}

class WS_XML_READER_RAW_ENCODING extends Struct {
  external WS_XML_READER_ENCODING encoding;
}

class WS_XML_WRITER_ENCODING extends Struct {
  @Uint32()
  external int encodingType;
}

class WS_XML_WRITER_TEXT_ENCODING extends Struct {
  external WS_XML_WRITER_ENCODING encoding;
  @Uint32()
  external int charSet;
}

class WS_XML_WRITER_BINARY_ENCODING extends Struct {
  external WS_XML_WRITER_ENCODING encoding;
  external Pointer<WS_XML_DICTIONARY> staticDictionary;
  external WS_DYNAMIC_STRING_CALLBACK dynamicStringCallback;
  external Pointer dynamicStringCallbackState;
}

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

class WS_XML_WRITER_RAW_ENCODING extends Struct {
  external WS_XML_WRITER_ENCODING encoding;
}

class WS_XML_WRITER_OUTPUT extends Struct {
  @Uint32()
  external int outputType;
}

class WS_XML_WRITER_BUFFER_OUTPUT extends Struct {
  external WS_XML_WRITER_OUTPUT output;
}

class WS_XML_WRITER_STREAM_OUTPUT extends Struct {
  external WS_XML_WRITER_OUTPUT output;
  external WS_WRITE_CALLBACK writeCallback;
  external Pointer writeCallbackState;
}

class WS_XML_WRITER_PROPERTIES extends Struct {
  external Pointer<WS_XML_WRITER_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
}

class WS_XML_READER_PROPERTIES extends Struct {
  external Pointer<WS_XML_READER_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
}

class WS_ASYNC_CONTEXT extends Struct {
  external WS_ASYNC_CALLBACK callback;
  external Pointer callbackState;
}

class WS_ASYNC_STATE extends Struct {
  external Pointer internal0;
  external Pointer internal1;
  external Pointer internal2;
  external Pointer internal3;
  external Pointer internal4;
}

class WS_ASYNC_OPERATION extends Struct {
  external WS_ASYNC_FUNCTION function;
}

class WS_CHANNEL_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_CUSTOM_HTTP_PROXY extends Struct {
  external WS_STRING servers;
  external WS_STRING bypass;
}

class WS_CHANNEL_PROPERTIES extends Struct {
  external Pointer<WS_CHANNEL_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
}

class WS_CUSTOM_CHANNEL_CALLBACKS extends Struct {
  external WS_CREATE_CHANNEL_CALLBACK createChannelCallback;
  external WS_FREE_CHANNEL_CALLBACK freeChannelCallback;
  external WS_RESET_CHANNEL_CALLBACK resetChannelCallback;
  external WS_OPEN_CHANNEL_CALLBACK openChannelCallback;
  external WS_CLOSE_CHANNEL_CALLBACK closeChannelCallback;
  external WS_ABORT_CHANNEL_CALLBACK abortChannelCallback;
  external WS_GET_CHANNEL_PROPERTY_CALLBACK getChannelPropertyCallback;
  external WS_SET_CHANNEL_PROPERTY_CALLBACK setChannelPropertyCallback;
  external WS_WRITE_MESSAGE_START_CALLBACK writeMessageStartCallback;
  external WS_WRITE_MESSAGE_END_CALLBACK writeMessageEndCallback;
  external WS_READ_MESSAGE_START_CALLBACK readMessageStartCallback;
  external WS_READ_MESSAGE_END_CALLBACK readMessageEndCallback;
  external WS_ABANDON_MESSAGE_CALLBACK abandonMessageCallback;
  external WS_SHUTDOWN_SESSION_CHANNEL_CALLBACK shutdownSessionChannelCallback;
}

class WS_HTTP_HEADER_MAPPING extends Struct {
  external WS_XML_STRING headerName;
  @Uint32()
  external int headerMappingOptions;
}

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

class WS_ELEMENT_DESCRIPTION extends Struct {
  external Pointer<WS_XML_STRING> elementLocalName;
  external Pointer<WS_XML_STRING> elementNs;
  @Uint32()
  external int type;
  external Pointer typeDescription;
}

class WS_MESSAGE_DESCRIPTION extends Struct {
  external Pointer<WS_XML_STRING> action;
  external Pointer<WS_ELEMENT_DESCRIPTION> bodyElementDescription;
}

class WS_CHANNEL_ENCODER extends Struct {
  external Pointer createContext;
  external WS_CREATE_ENCODER_CALLBACK createEncoderCallback;
  external WS_ENCODER_GET_CONTENT_TYPE_CALLBACK encoderGetContentTypeCallback;
  external WS_ENCODER_START_CALLBACK encoderStartCallback;
  external WS_ENCODER_ENCODE_CALLBACK encoderEncodeCallback;
  external WS_ENCODER_END_CALLBACK encoderEndCallback;
  external WS_FREE_ENCODER_CALLBACK freeEncoderCallback;
}

class WS_CHANNEL_DECODER extends Struct {
  external Pointer createContext;
  external WS_CREATE_DECODER_CALLBACK createDecoderCallback;
  external WS_DECODER_GET_CONTENT_TYPE_CALLBACK decoderGetContentTypeCallback;
  external WS_DECODER_START_CALLBACK decoderStartCallback;
  external WS_DECODER_DECODE_CALLBACK decoderDecodeCallback;
  external WS_DECODER_END_CALLBACK decoderEndCallback;
  external WS_FREE_DECODER_CALLBACK freeDecoderCallback;
}

class WS_HTTP_REDIRECT_CALLBACK_CONTEXT extends Struct {
  external WS_HTTP_REDIRECT_CALLBACK callback;
  external Pointer state;
}

class WS_ENDPOINT_IDENTITY extends Struct {
  @Uint32()
  external int identityType;
}

class WS_ENDPOINT_ADDRESS extends Struct {
  external WS_STRING url;
  external Pointer<WS_XML_BUFFER> headers;
  external Pointer<WS_XML_BUFFER> extensions;
  external Pointer<WS_ENDPOINT_IDENTITY> identity;
}

class WS_DNS_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;
  external WS_STRING dns;
}

class WS_UPN_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;
  external WS_STRING upn;
}

class WS_SPN_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;
  external WS_STRING spn;
}

class WS_BYTES extends Struct {
  @Uint32()
  external int length;
  external Pointer<Uint8> bytes;
}

class WS_RSA_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;
  external WS_BYTES modulus;
  external WS_BYTES exponent;
}

class WS_CERT_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;
  external WS_BYTES rawCertificateData;
}

class WS_UNKNOWN_ENDPOINT_IDENTITY extends Struct {
  external WS_ENDPOINT_IDENTITY identity;
  external Pointer<WS_XML_BUFFER> element;
}

class WS_ERROR_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_FAULT_REASON extends Struct {
  external WS_STRING text;
  external WS_STRING lang;
}

class WS_FAULT_CODE extends Struct {
  external WS_XML_QNAME value;
  external Pointer<WS_FAULT_CODE> subCode;
}

class WS_FAULT extends Struct {
  external Pointer<WS_FAULT_CODE> code;
  external Pointer<WS_FAULT_REASON> reasons;
  @Uint32()
  external int reasonCount;
  external WS_STRING actor;
  external WS_STRING node;
  external Pointer<WS_XML_BUFFER> detail;
}

class WS_FAULT_DETAIL_DESCRIPTION extends Struct {
  external Pointer<WS_XML_STRING> action;
  external Pointer<WS_ELEMENT_DESCRIPTION> detailElementDescription;
}

class WS_HEAP_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_HEAP_PROPERTIES extends Struct {
  external Pointer<WS_HEAP_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
}

class WS_LISTENER_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_DISALLOWED_USER_AGENT_SUBSTRINGS extends Struct {
  @Uint32()
  external int subStringCount;
  external Pointer<Pointer<WS_STRING>> subStrings;
}

class WS_LISTENER_PROPERTIES extends Struct {
  external Pointer<WS_LISTENER_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
}

class WS_HOST_NAMES extends Struct {
  external Pointer<WS_STRING> hostNames;
  @Uint32()
  external int hostNameCount;
}

class WS_CUSTOM_LISTENER_CALLBACKS extends Struct {
  external WS_CREATE_LISTENER_CALLBACK createListenerCallback;
  external WS_FREE_LISTENER_CALLBACK freeListenerCallback;
  external WS_RESET_LISTENER_CALLBACK resetListenerCallback;
  external WS_OPEN_LISTENER_CALLBACK openListenerCallback;
  external WS_CLOSE_LISTENER_CALLBACK closeListenerCallback;
  external WS_ABORT_LISTENER_CALLBACK abortListenerCallback;
  external WS_GET_LISTENER_PROPERTY_CALLBACK getListenerPropertyCallback;
  external WS_SET_LISTENER_PROPERTY_CALLBACK setListenerPropertyCallback;
  external WS_CREATE_CHANNEL_FOR_LISTENER_CALLBACK
      createChannelForListenerCallback;
  external WS_ACCEPT_CHANNEL_CALLBACK acceptChannelCallback;
}

class WS_MESSAGE_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_MESSAGE_PROPERTIES extends Struct {
  external Pointer<WS_MESSAGE_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
}

class WS_SECURITY_ALGORITHM_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_SECURITY_ALGORITHM_SUITE extends Struct {
  @Uint32()
  external int canonicalizationAlgorithm;
  @Uint32()
  external int digestAlgorithm;
  @Uint32()
  external int symmetricSignatureAlgorithm;
  @Uint32()
  external int asymmetricSignatureAlgorithm;
  @Uint32()
  external int encryptionAlgorithm;
  @Uint32()
  external int keyDerivationAlgorithm;
  @Uint32()
  external int symmetricKeyWrapAlgorithm;
  @Uint32()
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

class WS_SECURITY_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_SECURITY_PROPERTIES extends Struct {
  external Pointer<WS_SECURITY_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
}

class WS_SECURITY_BINDING_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_SECURITY_BINDING_PROPERTIES extends Struct {
  external Pointer<WS_SECURITY_BINDING_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
}

class WS_SERVICE_SECURITY_IDENTITIES extends Struct {
  external Pointer<WS_STRING> serviceIdentities;
  @Uint32()
  external int serviceIdentityCount;
}

class WS_CERTIFICATE_VALIDATION_CALLBACK_CONTEXT extends Struct {
  external WS_CERTIFICATE_VALIDATION_CALLBACK callback;
  external Pointer state;
}

class WS_CERT_CREDENTIAL extends Struct {
  @Uint32()
  external int credentialType;
}

class WS_SUBJECT_NAME_CERT_CREDENTIAL extends Struct {
  external WS_CERT_CREDENTIAL credential;
  @Uint32()
  external int storeLocation;
  external WS_STRING storeName;
  external WS_STRING subjectName;
}

class WS_THUMBPRINT_CERT_CREDENTIAL extends Struct {
  external WS_CERT_CREDENTIAL credential;
  @Uint32()
  external int storeLocation;
  external WS_STRING storeName;
  external WS_STRING thumbprint;
}

class WS_CUSTOM_CERT_CREDENTIAL extends Struct {
  external WS_CERT_CREDENTIAL credential;
  external WS_GET_CERT_CALLBACK getCertCallback;
  external Pointer getCertCallbackState;
  external WS_CERT_ISSUER_LIST_NOTIFICATION_CALLBACK
      certIssuerListNotificationCallback;
  external Pointer certIssuerListNotificationCallbackState;
}

class WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL extends Struct {
  @Uint32()
  external int credentialType;
}

class WS_STRING_WINDOWS_INTEGRATED_AUTH_CREDENTIAL extends Struct {
  external WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL credential;
  external WS_STRING username;
  external WS_STRING password;
  external WS_STRING domain;
}

class WS_DEFAULT_WINDOWS_INTEGRATED_AUTH_CREDENTIAL extends Struct {
  external WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL credential;
}

class WS_OPAQUE_WINDOWS_INTEGRATED_AUTH_CREDENTIAL extends Struct {
  external WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL credential;
  external Pointer opaqueAuthIdentity;
}

class WS_USERNAME_CREDENTIAL extends Struct {
  @Uint32()
  external int credentialType;
}

class WS_STRING_USERNAME_CREDENTIAL extends Struct {
  external WS_USERNAME_CREDENTIAL credential;
  external WS_STRING username;
  external WS_STRING password;
}

class WS_SECURITY_KEY_HANDLE extends Struct {
  @Uint32()
  external int keyHandleType;
}

class WS_RAW_SYMMETRIC_SECURITY_KEY_HANDLE extends Struct {
  external WS_SECURITY_KEY_HANDLE keyHandle;
  external WS_BYTES rawKeyBytes;
}

class WS_NCRYPT_ASYMMETRIC_SECURITY_KEY_HANDLE extends Struct {
  external WS_SECURITY_KEY_HANDLE keyHandle;
  @IntPtr()
  external int asymmetricKey;
}

class WS_CAPI_ASYMMETRIC_SECURITY_KEY_HANDLE extends Struct {
  external WS_SECURITY_KEY_HANDLE keyHandle;
  @IntPtr()
  external int provider;
  @Uint32()
  external int keySpec;
}

class WS_SECURITY_BINDING extends Struct {
  @Uint32()
  external int bindingType;
  external Pointer<WS_SECURITY_BINDING_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
}

class WS_SSL_TRANSPORT_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;
  external Pointer<WS_CERT_CREDENTIAL> localCertCredential;
}

class WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;
  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

class WS_NAMEDPIPE_SSPI_TRANSPORT_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;
  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

class WS_HTTP_HEADER_AUTH_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;
  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

class WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;
  @Uint32()
  external int bindingUsage;
  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

class WS_USERNAME_MESSAGE_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;
  @Uint32()
  external int bindingUsage;
  external Pointer<WS_USERNAME_CREDENTIAL> clientCredential;
  external WS_VALIDATE_PASSWORD_CALLBACK passwordValidator;
  external Pointer passwordValidatorCallbackState;
}

class WS_SECURITY_DESCRIPTION extends Struct {
  external Pointer<Pointer<WS_SECURITY_BINDING>> securityBindings;
  @Uint32()
  external int securityBindingCount;
  external Pointer<WS_SECURITY_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
}

class WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;
  @Uint32()
  external int bindingUsage;
  external Pointer<WS_SECURITY_DESCRIPTION> bootstrapSecurityDescription;
}

class WS_SECURITY_CONTEXT_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_XML_SECURITY_TOKEN_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_XML_TOKEN_MESSAGE_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;
  @Uint32()
  external int bindingUsage;
  external Pointer<WS_SECURITY_TOKEN> xmlToken;
}

class WS_SAML_AUTHENTICATOR extends Struct {
  @Uint32()
  external int authenticatorType;
}

class WS_CERT_SIGNED_SAML_AUTHENTICATOR extends Struct {
  external WS_SAML_AUTHENTICATOR authenticator;
  external Pointer<Pointer<CERT_CONTEXT>> trustedIssuerCerts;
  @Uint32()
  external int trustedIssuerCertCount;
  external Pointer<CERT_CONTEXT> decryptionCert;
  external WS_VALIDATE_SAML_CALLBACK samlValidator;
  external Pointer samlValidatorCallbackState;
}

class WS_SAML_MESSAGE_SECURITY_BINDING extends Struct {
  external WS_SECURITY_BINDING binding;
  @Uint32()
  external int bindingUsage;
  external Pointer<WS_SAML_AUTHENTICATOR> authenticator;
}

class WS_REQUEST_SECURITY_TOKEN_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_ANY_ATTRIBUTE extends Struct {
  external WS_XML_STRING localName;
  external WS_XML_STRING ns;
  external Pointer<WS_XML_TEXT> value;
}

class WS_ANY_ATTRIBUTES extends Struct {
  external Pointer<WS_ANY_ATTRIBUTE> attributes;
  @Uint32()
  external int attributeCount;
}

class WS_BOOL_DESCRIPTION extends Struct {
  @Int32()
  external int value;
}

class WS_GUID_DESCRIPTION extends Struct {
  external GUID value;
}

class WS_DATETIME_DESCRIPTION extends Struct {
  external WS_DATETIME minValue;
  external WS_DATETIME maxValue;
}

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

class WS_DURATION_DESCRIPTION extends Struct {
  external WS_DURATION minValue;
  external WS_DURATION maxValue;
  external WS_DURATION_COMPARISON_CALLBACK comparer;
}

class WS_TIMESPAN_DESCRIPTION extends Struct {
  external WS_TIMESPAN minValue;
  external WS_TIMESPAN maxValue;
}

class WS_UNIQUE_ID_DESCRIPTION extends Struct {
  @Uint32()
  external int minCharCount;
  @Uint32()
  external int maxCharCount;
}

class WS_STRING_DESCRIPTION extends Struct {
  @Uint32()
  external int minCharCount;
  @Uint32()
  external int maxCharCount;
}

class WS_XML_STRING_DESCRIPTION extends Struct {
  @Uint32()
  external int minByteCount;
  @Uint32()
  external int maxByteCount;
}

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

class WS_CHAR_ARRAY_DESCRIPTION extends Struct {
  @Uint32()
  external int minCharCount;
  @Uint32()
  external int maxCharCount;
}

class WS_BYTE_ARRAY_DESCRIPTION extends Struct {
  @Uint32()
  external int minByteCount;
  @Uint32()
  external int maxByteCount;
}

class WS_UTF8_ARRAY_DESCRIPTION extends Struct {
  @Uint32()
  external int minByteCount;
  @Uint32()
  external int maxByteCount;
}

class WS_WSZ_DESCRIPTION extends Struct {
  @Uint32()
  external int minCharCount;
  @Uint32()
  external int maxCharCount;
}

class WS_INT8_DESCRIPTION extends Struct {
  @Int8()
  external int minValue;
  @Int8()
  external int maxValue;
}

class WS_UINT8_DESCRIPTION extends Struct {
  @Uint8()
  external int minValue;
  @Uint8()
  external int maxValue;
}

class WS_INT16_DESCRIPTION extends Struct {
  @Int16()
  external int minValue;
  @Int16()
  external int maxValue;
}

class WS_UINT16_DESCRIPTION extends Struct {
  @Uint16()
  external int minValue;
  @Uint16()
  external int maxValue;
}

class WS_INT32_DESCRIPTION extends Struct {
  @Int32()
  external int minValue;
  @Int32()
  external int maxValue;
}

class WS_UINT32_DESCRIPTION extends Struct {
  @Uint32()
  external int minValue;
  @Uint32()
  external int maxValue;
}

class WS_INT64_DESCRIPTION extends Struct {
  @Int64()
  external int minValue;
  @Int64()
  external int maxValue;
}

class WS_UINT64_DESCRIPTION extends Struct {
  @Uint64()
  external int minValue;
  @Uint64()
  external int maxValue;
}

class WS_FLOAT_DESCRIPTION extends Struct {
  @Float()
  external double minValue;
  @Float()
  external double maxValue;
}

class WS_DOUBLE_DESCRIPTION extends Struct {
  @Double()
  external double minValue;
  @Double()
  external double maxValue;
}

class WS_DECIMAL_DESCRIPTION extends Struct {
  external DECIMAL minValue;
  external DECIMAL maxValue;
}

class WS_BYTES_DESCRIPTION extends Struct {
  @Uint32()
  external int minByteCount;
  @Uint32()
  external int maxByteCount;
}

class WS_ENUM_VALUE extends Struct {
  @Int32()
  external int value;
  external Pointer<WS_XML_STRING> name;
}

class WS_ENUM_DESCRIPTION extends Struct {
  external Pointer<WS_ENUM_VALUE> values;
  @Uint32()
  external int valueCount;
  @Uint32()
  external int maxByteCount;
  external Pointer<Uint32> nameIndices;
}

class WS_ITEM_RANGE extends Struct {
  @Uint32()
  external int minItemCount;
  @Uint32()
  external int maxItemCount;
}

class WS_DEFAULT_VALUE extends Struct {
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_FIELD_DESCRIPTION extends Struct {
  @Uint32()
  external int mapping;
  external Pointer<WS_XML_STRING> localName;
  external Pointer<WS_XML_STRING> ns;
  @Uint32()
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

class WS_UNION_FIELD_DESCRIPTION extends Struct {
  @Int32()
  external int value;
  external WS_FIELD_DESCRIPTION field;
}

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

class WS_ENDPOINT_ADDRESS_DESCRIPTION extends Struct {
  @Uint32()
  external int addressingVersion;
}

class WS_FAULT_DESCRIPTION extends Struct {
  @Uint32()
  external int envelopeVersion;
}

class WS_VOID_DESCRIPTION extends Struct {
  @Uint32()
  external int size;
}

class WS_CUSTOM_TYPE_DESCRIPTION extends Struct {
  @Uint32()
  external int size;
  @Uint32()
  external int alignment;
  external WS_READ_TYPE_CALLBACK readCallback;
  external WS_WRITE_TYPE_CALLBACK writeCallback;
  external Pointer descriptionData;
  external WS_IS_DEFAULT_VALUE_CALLBACK isDefaultValueCallback;
}

class WS_ATTRIBUTE_DESCRIPTION extends Struct {
  external Pointer<WS_XML_STRING> attributeLocalName;
  external Pointer<WS_XML_STRING> attributeNs;
  @Uint32()
  external int type;
  external Pointer typeDescription;
}

class WS_PARAMETER_DESCRIPTION extends Struct {
  @Uint32()
  external int parameterType;
  @Uint16()
  external int inputMessageIndex;
  @Uint16()
  external int outputMessageIndex;
}

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
  external WS_SERVICE_STUB_CALLBACK stubCallback;
  @Uint32()
  external int style;
}

class WS_CONTRACT_DESCRIPTION extends Struct {
  @Uint32()
  external int operationCount;
  external Pointer<Pointer<WS_OPERATION_DESCRIPTION>> operations;
}

class WS_SERVICE_CONTRACT extends Struct {
  external Pointer<WS_CONTRACT_DESCRIPTION> contractDescription;
  external WS_SERVICE_MESSAGE_RECEIVE_CALLBACK defaultMessageHandlerCallback;
  external Pointer methodTable;
}

class WS_SERVICE_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_SERVICE_ENDPOINT_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_SERVICE_PROPERTY_ACCEPT_CALLBACK extends Struct {
  external WS_SERVICE_ACCEPT_CHANNEL_CALLBACK callback;
}

class WS_SERVICE_METADATA_DOCUMENT extends Struct {
  external Pointer<WS_XML_STRING> content;
  external Pointer<WS_STRING> name;
}

class WS_SERVICE_METADATA extends Struct {
  @Uint32()
  external int documentCount;
  external Pointer<Pointer<WS_SERVICE_METADATA_DOCUMENT>> documents;
  external Pointer<WS_XML_STRING> serviceName;
  external Pointer<WS_XML_STRING> serviceNs;
}

class WS_SERVICE_PROPERTY_CLOSE_CALLBACK extends Struct {
  external WS_SERVICE_CLOSE_CHANNEL_CALLBACK callback;
}

class WS_SERVICE_ENDPOINT_METADATA extends Struct {
  external Pointer<WS_XML_STRING> portName;
  external Pointer<WS_XML_STRING> bindingName;
  external Pointer<WS_XML_STRING> bindingNs;
}

class WS_SERVICE_ENDPOINT extends Struct {
  external WS_ENDPOINT_ADDRESS address;
  @Uint32()
  external int channelBinding;
  @Uint32()
  external int channelType;
  external Pointer<WS_SECURITY_DESCRIPTION> securityDescription;
  external Pointer<WS_SERVICE_CONTRACT> contract;
  external WS_SERVICE_SECURITY_CALLBACK authorizationCallback;
  external Pointer<WS_SERVICE_ENDPOINT_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
  external WS_CHANNEL_PROPERTIES channelProperties;
}

class WS_PROXY_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_PROXY_MESSAGE_CALLBACK_CONTEXT extends Struct {
  external WS_PROXY_MESSAGE_CALLBACK callback;
  external Pointer state;
}

class WS_CALL_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_URL extends Struct {
  @Uint32()
  external int scheme;
}

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

class WS_UNIQUE_ID extends Struct {
  external WS_STRING uri;
  external GUID guid;
}

class WS_BUFFERS extends Struct {
  @Uint32()
  external int bufferCount;
  external Pointer<WS_BYTES> buffers;
}

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

class WS_METADATA_ENDPOINTS extends Struct {
  external Pointer<WS_METADATA_ENDPOINT> endpoints;
  @Uint32()
  external int endpointCount;
}

class WS_METADATA_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_POLICY_PROPERTY extends Struct {
  @Uint32()
  external int id;
  external Pointer value;
  @Uint32()
  external int valueSize;
}

class WS_POLICY_PROPERTIES extends Struct {
  external Pointer<WS_POLICY_PROPERTY> properties;
  @Uint32()
  external int propertyCount;
}

class WS_SECURITY_BINDING_PROPERTY_CONSTRAINT extends Struct {
  @Uint32()
  external int id;
  external Pointer allowedValues;
  @Uint32()
  external int allowedValuesSize;
  @Uint32()
  external int out;
}

class WS_SECURITY_BINDING_CONSTRAINT extends Struct {
  @Uint32()
  external int type;
  external Pointer<WS_SECURITY_BINDING_PROPERTY_CONSTRAINT> propertyConstraints;
  @Uint32()
  external int propertyConstraintCount;
}

class WS_SSL_TRANSPORT_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;
  @Uint32()
  external int out;
}

class WS_USERNAME_MESSAGE_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;
  @Uint32()
  external int bindingUsage;
}

class WS_HTTP_HEADER_AUTH_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;
}

class WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;
}

class WS_CERT_MESSAGE_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;
  @Uint32()
  external int bindingUsage;
}

class WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;
  @Uint32()
  external int bindingUsage;
}

class WS_REQUEST_SECURITY_TOKEN_PROPERTY_CONSTRAINT extends Struct {
  @Uint32()
  external int id;
  external Pointer allowedValues;
  @Uint32()
  external int allowedValuesSize;
  @Uint32()
  external int out;
}

class WS_ISSUED_TOKEN_MESSAGE_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;
  @Uint32()
  external int bindingUsage;
  external Pointer<WS_XML_STRING> claimConstraints;
  @Uint32()
  external int claimConstraintCount;
  external Pointer<WS_REQUEST_SECURITY_TOKEN_PROPERTY_CONSTRAINT>
      requestSecurityTokenPropertyConstraints;
  @Uint32()
  external int requestSecurityTokenPropertyConstraintCount;
  @Uint32()
  external int out;
}

class WS_SECURITY_PROPERTY_CONSTRAINT extends Struct {
  @Uint32()
  external int id;
  external Pointer allowedValues;
  @Uint32()
  external int allowedValuesSize;
  @Uint32()
  external int out;
}

class WS_SECURITY_CONSTRAINTS extends Struct {
  external Pointer<WS_SECURITY_PROPERTY_CONSTRAINT> securityPropertyConstraints;
  @Uint32()
  external int securityPropertyConstraintCount;
  external Pointer<Pointer<WS_SECURITY_BINDING_CONSTRAINT>>
      securityBindingConstraints;
  @Uint32()
  external int securityBindingConstraintCount;
}

class WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING_CONSTRAINT extends Struct {
  external WS_SECURITY_BINDING_CONSTRAINT bindingConstraint;
  @Uint32()
  external int bindingUsage;
  external Pointer<WS_SECURITY_CONSTRAINTS> bootstrapSecurityConstraint;
}

class WS_CHANNEL_PROPERTY_CONSTRAINT extends Struct {
  @Uint32()
  external int id;
  external Pointer allowedValues;
  @Uint32()
  external int allowedValuesSize;
  @Uint32()
  external int out;
}

class WS_POLICY_EXTENSION extends Struct {
  @Uint32()
  external int type;
}

class WS_ENDPOINT_POLICY_EXTENSION extends Struct {
  external WS_POLICY_EXTENSION policyExtension;
  external Pointer<WS_XML_STRING> assertionName;
  external Pointer<WS_XML_STRING> assertionNs;
  @Uint32()
  external int out;
}

class WS_POLICY_CONSTRAINTS extends Struct {
  @Uint32()
  external int channelBinding;
  external Pointer<WS_CHANNEL_PROPERTY_CONSTRAINT> channelPropertyConstraints;
  @Uint32()
  external int channelPropertyConstraintCount;
  external Pointer<WS_SECURITY_CONSTRAINTS> securityConstraints;
  external Pointer<Pointer<WS_POLICY_EXTENSION>> policyExtensions;
  @Uint32()
  external int policyExtensionCount;
}

class WS_HTTP_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
}

class WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
}

class WS_HTTP_SSL_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sslTransportSecurityBinding;
}

class WS_HTTP_HEADER_AUTH_SECURITY_BINDING_POLICY_DESCRIPTION extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
}

class WS_HTTP_HEADER_AUTH_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_HTTP_HEADER_AUTH_SECURITY_BINDING_POLICY_DESCRIPTION
      httpHeaderAuthSecurityBinding;
}

class WS_HTTP_SSL_HEADER_AUTH_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sslTransportSecurityBinding;
  external WS_HTTP_HEADER_AUTH_SECURITY_BINDING_POLICY_DESCRIPTION
      httpHeaderAuthSecurityBinding;
}

class WS_USERNAME_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
  @Uint32()
  external int bindingUsage;
}

class WS_HTTP_SSL_USERNAME_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sslTransportSecurityBinding;
  external WS_USERNAME_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      usernameMessageSecurityBinding;
}

class WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
    extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
  @Uint32()
  external int bindingUsage;
}

class WS_HTTP_SSL_KERBEROS_APREQ_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_SSL_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sslTransportSecurityBinding;
  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      kerberosApreqMessageSecurityBinding;
}

class WS_TCP_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
}

class WS_SSPI_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
}

class WS_TCP_SSPI_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_SSPI_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sspiTransportSecurityBinding;
}

class WS_TCP_SSPI_USERNAME_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_SSPI_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sspiTransportSecurityBinding;
  external WS_USERNAME_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      usernameMessageSecurityBinding;
}

class WS_TCP_SSPI_KERBEROS_APREQ_POLICY_DESCRIPTION extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_SSPI_TRANSPORT_SECURITY_BINDING_POLICY_DESCRIPTION
      sspiTransportSecurityBinding;
  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      kerberosApreqMessageSecurityBinding;
}

class WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
    extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
  @Uint32()
  external int bindingUsage;
}

class WS_SECURITY_CONTEXT_SECURITY_BINDING_POLICY_DESCRIPTION extends Struct {
  external WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING_POLICY_DESCRIPTION
      securityContextMessageSecurityBinding;
  external WS_SECURITY_PROPERTIES securityProperties;
}

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

class WS_HTTP_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
}

class WS_TCP_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
}

class WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
  external Pointer<WS_CERT_CREDENTIAL> localCertCredential;
}

class WS_HTTP_SSL_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sslTransportSecurityBinding;
}

class WS_HTTP_HEADER_AUTH_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

class WS_HTTP_HEADER_AUTH_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_HTTP_HEADER_AUTH_SECURITY_BINDING_TEMPLATE
      httpHeaderAuthSecurityBinding;
}

class WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

class WS_TCP_SSPI_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sspiTransportSecurityBinding;
}

class WS_HTTP_SSL_HEADER_AUTH_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sslTransportSecurityBinding;
  external WS_HTTP_HEADER_AUTH_SECURITY_BINDING_TEMPLATE
      httpHeaderAuthSecurityBinding;
}

class WS_USERNAME_MESSAGE_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
  external Pointer<WS_USERNAME_CREDENTIAL> clientCredential;
  external WS_VALIDATE_PASSWORD_CALLBACK passwordValidator;
  external Pointer passwordValidatorCallbackState;
}

class WS_HTTP_SSL_USERNAME_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sslTransportSecurityBinding;
  external WS_USERNAME_MESSAGE_SECURITY_BINDING_TEMPLATE
      usernameMessageSecurityBinding;
}

class WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
  external Pointer<WS_WINDOWS_INTEGRATED_AUTH_CREDENTIAL> clientCredential;
}

class WS_HTTP_SSL_KERBEROS_APREQ_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_SSL_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sslTransportSecurityBinding;
  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_TEMPLATE
      kerberosApreqMessageSecurityBinding;
}

class WS_TCP_SSPI_USERNAME_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sspiTransportSecurityBinding;
  external WS_USERNAME_MESSAGE_SECURITY_BINDING_TEMPLATE
      usernameMessageSecurityBinding;
}

class WS_TCP_SSPI_KERBEROS_APREQ_BINDING_TEMPLATE extends Struct {
  external WS_CHANNEL_PROPERTIES channelProperties;
  external WS_SECURITY_PROPERTIES securityProperties;
  external WS_TCP_SSPI_TRANSPORT_SECURITY_BINDING_TEMPLATE
      sspiTransportSecurityBinding;
  external WS_KERBEROS_APREQ_MESSAGE_SECURITY_BINDING_TEMPLATE
      kerberosApreqMessageSecurityBinding;
}

class WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_BINDING_PROPERTIES securityBindingProperties;
}

class WS_SECURITY_CONTEXT_SECURITY_BINDING_TEMPLATE extends Struct {
  external WS_SECURITY_CONTEXT_MESSAGE_SECURITY_BINDING_TEMPLATE
      securityContextMessageSecurityBinding;
  external WS_SECURITY_PROPERTIES securityProperties;
}

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

class WEBAUTHN_RP_ENTITY_INFORMATION extends Struct {
  @Uint32()
  external int dwVersion;
  external Pointer<Utf16> pwszId;
  external Pointer<Utf16> pwszName;
  external Pointer<Utf16> pwszIcon;
}

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

class WEBAUTHN_CLIENT_DATA extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int cbClientDataJSON;
  external Pointer<Uint8> pbClientDataJSON;
  external Pointer<Utf16> pwszHashAlgId;
}

class WEBAUTHN_COSE_CREDENTIAL_PARAMETER extends Struct {
  @Uint32()
  external int dwVersion;
  external Pointer<Utf16> pwszCredentialType;
  @Int32()
  external int lAlg;
}

class WEBAUTHN_COSE_CREDENTIAL_PARAMETERS extends Struct {
  @Uint32()
  external int cCredentialParameters;
  external Pointer<WEBAUTHN_COSE_CREDENTIAL_PARAMETER> pCredentialParameters;
}

class WEBAUTHN_CREDENTIAL extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int cbId;
  external Pointer<Uint8> pbId;
  external Pointer<Utf16> pwszCredentialType;
}

class WEBAUTHN_CREDENTIALS extends Struct {
  @Uint32()
  external int cCredentials;
  external Pointer<WEBAUTHN_CREDENTIAL> pCredentials;
}

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

class WEBAUTHN_CREDENTIAL_LIST extends Struct {
  @Uint32()
  external int cCredentials;
  external Pointer<Pointer<WEBAUTHN_CREDENTIAL_EX>> ppCredentials;
}

class WEBAUTHN_CRED_PROTECT_EXTENSION_IN extends Struct {
  @Uint32()
  external int dwCredProtect;
  @Int32()
  external int bRequireCredProtect;
}

class WEBAUTHN_EXTENSION extends Struct {
  external Pointer<Utf16> pwszExtensionIdentifier;
  @Uint32()
  external int cbExtension;
  external Pointer pvExtension;
}

class WEBAUTHN_EXTENSIONS extends Struct {
  @Uint32()
  external int cExtensions;
  external Pointer<WEBAUTHN_EXTENSION> pExtensions;
}

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
}

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
}

class WEBAUTHN_X5C extends Struct {
  @Uint32()
  external int cbData;
  external Pointer<Uint8> pbData;
}

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
}

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
}
