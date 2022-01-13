// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../networking/windowswebservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/cryptography/structs.g.dart';
import '../../security/authentication/identity/structs.g.dart';
import '../../networking/windowswebservices/callbacks.g.dart';

typedef WS_ABANDON_MESSAGE_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
);
typedef WS_ABORT_CHANNEL_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Pointer<WS_ERROR> error,
);
typedef WS_ABORT_LISTENER_CALLBACK = Int32 Function(
  Pointer listenerInstance,
  Pointer<WS_ERROR> error,
);
typedef WS_ACCEPT_CHANNEL_CALLBACK = Int32 Function(
  Pointer listenerInstance,
  Pointer channelInstance,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_ASYNC_CALLBACK = Void Function(
  Int32 errorCode,
  Int32 callbackModel,
  Pointer callbackState,
);
typedef WS_ASYNC_FUNCTION = Int32 Function(
  Int32 hr,
  Int32 callbackModel,
  Pointer callbackState,
  Pointer<WS_ASYNC_OPERATION> next,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_CERTIFICATE_VALIDATION_CALLBACK = Int32 Function(
  Pointer<CERT_CONTEXT> certContext,
  Pointer state,
);
typedef WS_CERT_ISSUER_LIST_NOTIFICATION_CALLBACK = Int32 Function(
  Pointer certIssuerListNotificationCallbackState,
  Pointer<SecPkgContext_IssuerListInfoEx> issuerList,
  Pointer<WS_ERROR> error,
);
typedef WS_CLOSE_CHANNEL_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_CLOSE_LISTENER_CALLBACK = Int32 Function(
  Pointer listenerInstance,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_CREATE_CHANNEL_CALLBACK = Int32 Function(
  Int32 channelType,
  Pointer channelParameters,
  Uint32 channelParametersSize,
  Pointer<Pointer> channelInstance,
  Pointer<WS_ERROR> error,
);
typedef WS_CREATE_CHANNEL_FOR_LISTENER_CALLBACK = Int32 Function(
  Pointer listenerInstance,
  Pointer channelParameters,
  Uint32 channelParametersSize,
  Pointer<Pointer> channelInstance,
  Pointer<WS_ERROR> error,
);
typedef WS_CREATE_DECODER_CALLBACK = Int32 Function(
  Pointer createContext,
  Pointer<NativeFunction<WS_READ_CALLBACK>> readCallback,
  Pointer readContext,
  Pointer<Pointer> decoderContext,
  Pointer<WS_ERROR> error,
);
typedef WS_CREATE_ENCODER_CALLBACK = Int32 Function(
  Pointer createContext,
  Pointer<NativeFunction<WS_WRITE_CALLBACK>> writeCallback,
  Pointer writeContext,
  Pointer<Pointer> encoderContext,
  Pointer<WS_ERROR> error,
);
typedef WS_CREATE_LISTENER_CALLBACK = Int32 Function(
  Int32 channelType,
  Pointer listenerParameters,
  Uint32 listenerParametersSize,
  Pointer<Pointer> listenerInstance,
  Pointer<WS_ERROR> error,
);
typedef WS_DECODER_DECODE_CALLBACK = Int32 Function(
  Pointer encoderContext,
  Pointer buffer,
  Uint32 maxLength,
  Pointer<Uint32> length,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_DECODER_END_CALLBACK = Int32 Function(
  Pointer encoderContext,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_DECODER_GET_CONTENT_TYPE_CALLBACK = Int32 Function(
  Pointer decoderContext,
  Pointer<WS_STRING> contentType,
  Pointer<WS_STRING> contentEncoding,
  Pointer<WS_STRING> newContentType,
  Pointer<WS_ERROR> error,
);
typedef WS_DECODER_START_CALLBACK = Int32 Function(
  Pointer encoderContext,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_DURATION_COMPARISON_CALLBACK = Int32 Function(
  Pointer<WS_DURATION> duration1,
  Pointer<WS_DURATION> duration2,
  Pointer<Int32> result,
  Pointer<WS_ERROR> error,
);
typedef WS_DYNAMIC_STRING_CALLBACK = Int32 Function(
  Pointer callbackState,
  Pointer<WS_XML_STRING> string,
  Pointer<Int32> found,
  Pointer<Uint32> id,
  Pointer<WS_ERROR> error,
);
typedef WS_ENCODER_ENCODE_CALLBACK = Int32 Function(
  Pointer encoderContext,
  Pointer<WS_BYTES> buffers,
  Uint32 count,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_ENCODER_END_CALLBACK = Int32 Function(
  Pointer encoderContext,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_ENCODER_GET_CONTENT_TYPE_CALLBACK = Int32 Function(
  Pointer encoderContext,
  Pointer<WS_STRING> contentType,
  Pointer<WS_STRING> newContentType,
  Pointer<WS_STRING> contentEncoding,
  Pointer<WS_ERROR> error,
);
typedef WS_ENCODER_START_CALLBACK = Int32 Function(
  Pointer encoderContext,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_FREE_CHANNEL_CALLBACK = Void Function(
  Pointer channelInstance,
);
typedef WS_FREE_DECODER_CALLBACK = Void Function(
  Pointer decoderContext,
);
typedef WS_FREE_ENCODER_CALLBACK = Void Function(
  Pointer encoderContext,
);
typedef WS_FREE_LISTENER_CALLBACK = Void Function(
  Pointer listenerInstance,
);
typedef WS_GET_CERT_CALLBACK = Int32 Function(
  Pointer getCertCallbackState,
  Pointer<WS_ENDPOINT_ADDRESS> targetAddress,
  Pointer<WS_STRING> viaUri,
  Pointer<Pointer<CERT_CONTEXT>> cert,
  Pointer<WS_ERROR> error,
);
typedef WS_GET_CHANNEL_PROPERTY_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
);
typedef WS_GET_LISTENER_PROPERTY_CALLBACK = Int32 Function(
  Pointer listenerInstance,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
);
typedef WS_HTTP_REDIRECT_CALLBACK = Int32 Function(
  Pointer state,
  Pointer<WS_STRING> originalUrl,
  Pointer<WS_STRING> newUrl,
);
typedef WS_IS_DEFAULT_VALUE_CALLBACK = Int32 Function(
  Pointer descriptionData,
  Pointer value,
  Pointer defaultValue,
  Uint32 valueSize,
  Pointer<Int32> isDefault,
  Pointer<WS_ERROR> error,
);
typedef WS_MESSAGE_DONE_CALLBACK = Void Function(
  Pointer doneCallbackState,
);
typedef WS_OPEN_CHANNEL_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Pointer<WS_ENDPOINT_ADDRESS> endpointAddress,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_OPEN_LISTENER_CALLBACK = Int32 Function(
  Pointer listenerInstance,
  Pointer<WS_STRING> url,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_OPERATION_CANCEL_CALLBACK = Void Function(
  Int32 reason,
  Pointer state,
);
typedef WS_OPERATION_FREE_STATE_CALLBACK = Void Function(
  Pointer state,
);
typedef WS_PROXY_MESSAGE_CALLBACK = Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_HEAP> heap,
  Pointer state,
  Pointer<WS_ERROR> error,
);
typedef WS_PULL_BYTES_CALLBACK = Int32 Function(
  Pointer callbackState,
  Pointer bytes,
  Uint32 maxSize,
  Pointer<Uint32> actualSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_PUSH_BYTES_CALLBACK = Int32 Function(
  Pointer callbackState,
  Pointer<NativeFunction<WS_WRITE_CALLBACK>> writeCallback,
  Pointer writeCallbackState,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_READ_CALLBACK = Int32 Function(
  Pointer callbackState,
  Pointer bytes,
  Uint32 maxSize,
  Pointer<Uint32> actualSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_READ_MESSAGE_END_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_READ_MESSAGE_START_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_READ_TYPE_CALLBACK = Int32 Function(
  Pointer<WS_XML_READER> reader,
  Int32 typeMapping,
  Pointer descriptionData,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
);
typedef WS_RESET_CHANNEL_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Pointer<WS_ERROR> error,
);
typedef WS_RESET_LISTENER_CALLBACK = Int32 Function(
  Pointer listenerInstance,
  Pointer<WS_ERROR> error,
);
typedef WS_SERVICE_ACCEPT_CHANNEL_CALLBACK = Int32 Function(
  Pointer<WS_OPERATION_CONTEXT> context,
  Pointer<Pointer> channelState,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_SERVICE_CLOSE_CHANNEL_CALLBACK = Int32 Function(
  Pointer<WS_OPERATION_CONTEXT> context,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
);
typedef WS_SERVICE_MESSAGE_RECEIVE_CALLBACK = Int32 Function(
  Pointer<WS_OPERATION_CONTEXT> context,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_SERVICE_SECURITY_CALLBACK = Int32 Function(
  Pointer<WS_OPERATION_CONTEXT> context,
  Pointer<Int32> authorized,
  Pointer<WS_ERROR> error,
);
typedef WS_SERVICE_STUB_CALLBACK = Int32 Function(
  Pointer<WS_OPERATION_CONTEXT> context,
  Pointer frame,
  Pointer callback,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_SET_CHANNEL_PROPERTY_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
);
typedef WS_SET_LISTENER_PROPERTY_CALLBACK = Int32 Function(
  Pointer listenerInstance,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
);
typedef WS_SHUTDOWN_SESSION_CHANNEL_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_VALIDATE_PASSWORD_CALLBACK = Int32 Function(
  Pointer passwordValidatorCallbackState,
  Pointer<WS_STRING> username,
  Pointer<WS_STRING> password,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_VALIDATE_SAML_CALLBACK = Int32 Function(
  Pointer samlValidatorCallbackState,
  Pointer<WS_XML_BUFFER> samlAssertion,
  Pointer<WS_ERROR> error,
);
typedef WS_WRITE_CALLBACK = Int32 Function(
  Pointer callbackState,
  Pointer<WS_BYTES> buffers,
  Uint32 count,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_WRITE_MESSAGE_END_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_WRITE_MESSAGE_START_CALLBACK = Int32 Function(
  Pointer channelInstance,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
);
typedef WS_WRITE_TYPE_CALLBACK = Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Int32 typeMapping,
  Pointer descriptionData,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
);
