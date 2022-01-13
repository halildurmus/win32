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
import '../../networking/windowswebservices/structs.g.dart';
import '../../networking/windowswebservices/callbacks.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// webservices.dll
// -----------------------------------------------------------------------
final _webservices = DynamicLibrary.open('webservices.dll');

int WsAbandonCall(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  int callId,
  Pointer<WS_ERROR> error,
) =>
    _WsAbandonCall(
      serviceProxy,
      callId,
      error,
    );

late final _WsAbandonCall = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Uint32 callId,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  int callId,
  Pointer<WS_ERROR> error,
)>('WsAbandonCall');

int WsAbandonMessage(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
) =>
    _WsAbandonMessage(
      channel,
      message,
      error,
    );

late final _WsAbandonMessage = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
)>('WsAbandonMessage');

int WsAbortChannel(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ERROR> error,
) =>
    _WsAbortChannel(
      channel,
      error,
    );

late final _WsAbortChannel = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ERROR> error,
)>('WsAbortChannel');

int WsAbortListener(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_ERROR> error,
) =>
    _WsAbortListener(
      listener,
      error,
    );

late final _WsAbortListener = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_ERROR> error,
)>('WsAbortListener');

int WsAbortServiceHost(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ERROR> error,
) =>
    _WsAbortServiceHost(
      serviceHost,
      error,
    );

late final _WsAbortServiceHost = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ERROR> error,
)>('WsAbortServiceHost');

int WsAbortServiceProxy(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ERROR> error,
) =>
    _WsAbortServiceProxy(
      serviceProxy,
      error,
    );

late final _WsAbortServiceProxy = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ERROR> error,
)>('WsAbortServiceProxy');

int WsAcceptChannel(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsAcceptChannel(
      listener,
      channel,
      asyncContext,
      error,
    );

late final _WsAcceptChannel = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsAcceptChannel');

int WsAddCustomHeader(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> headerDescription,
  int writeOption,
  Pointer value,
  int valueSize,
  int headerAttributes,
  Pointer<WS_ERROR> error,
) =>
    _WsAddCustomHeader(
      message,
      headerDescription,
      writeOption,
      value,
      valueSize,
      headerAttributes,
      error,
    );

late final _WsAddCustomHeader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> headerDescription,
  Int32 writeOption,
  Pointer value,
  Uint32 valueSize,
  Uint32 headerAttributes,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> headerDescription,
  int writeOption,
  Pointer value,
  int valueSize,
  int headerAttributes,
  Pointer<WS_ERROR> error,
)>('WsAddCustomHeader');

int WsAddErrorString(
  Pointer<WS_ERROR> error,
  Pointer<WS_STRING> string,
) =>
    _WsAddErrorString(
      error,
      string,
    );

late final _WsAddErrorString = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR> error,
  Pointer<WS_STRING> string,
),
    int Function(
  Pointer<WS_ERROR> error,
  Pointer<WS_STRING> string,
)>('WsAddErrorString');

int WsAddMappedHeader(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  int valueType,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsAddMappedHeader(
      message,
      headerName,
      valueType,
      writeOption,
      value,
      valueSize,
      error,
    );

late final _WsAddMappedHeader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  Int32 valueType,
  Int32 writeOption,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  int valueType,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsAddMappedHeader');

int WsAddressMessage(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ENDPOINT_ADDRESS> address,
  Pointer<WS_ERROR> error,
) =>
    _WsAddressMessage(
      message,
      address,
      error,
    );

late final _WsAddressMessage = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ENDPOINT_ADDRESS> address,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ENDPOINT_ADDRESS> address,
  Pointer<WS_ERROR> error,
)>('WsAddressMessage');

int WsAlloc(
  Pointer<WS_HEAP> heap,
  int size,
  Pointer<Pointer> ptr,
  Pointer<WS_ERROR> error,
) =>
    _WsAlloc(
      heap,
      size,
      ptr,
      error,
    );

late final _WsAlloc = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_HEAP> heap,
  IntPtr size,
  Pointer<Pointer> ptr,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_HEAP> heap,
  int size,
  Pointer<Pointer> ptr,
  Pointer<WS_ERROR> error,
)>('WsAlloc');

int WsAsyncExecute(
  Pointer<WS_ASYNC_STATE> asyncState,
  Pointer<NativeFunction<WS_ASYNC_FUNCTION>> operation,
  int callbackModel,
  Pointer callbackState,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsAsyncExecute(
      asyncState,
      operation,
      callbackModel,
      callbackState,
      asyncContext,
      error,
    );

late final _WsAsyncExecute = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ASYNC_STATE> asyncState,
  Pointer<NativeFunction<WS_ASYNC_FUNCTION>> operation,
  Int32 callbackModel,
  Pointer callbackState,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_ASYNC_STATE> asyncState,
  Pointer<NativeFunction<WS_ASYNC_FUNCTION>> operation,
  int callbackModel,
  Pointer callbackState,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsAsyncExecute');

int WsCall(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_OPERATION_DESCRIPTION> operation,
  Pointer<Pointer> arguments,
  Pointer<WS_HEAP> heap,
  Pointer<WS_CALL_PROPERTY> callProperties,
  int callPropertyCount,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsCall(
      serviceProxy,
      operation,
      arguments,
      heap,
      callProperties,
      callPropertyCount,
      asyncContext,
      error,
    );

late final _WsCall = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_OPERATION_DESCRIPTION> operation,
  Pointer<Pointer> arguments,
  Pointer<WS_HEAP> heap,
  Pointer<WS_CALL_PROPERTY> callProperties,
  Uint32 callPropertyCount,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_OPERATION_DESCRIPTION> operation,
  Pointer<Pointer> arguments,
  Pointer<WS_HEAP> heap,
  Pointer<WS_CALL_PROPERTY> callProperties,
  int callPropertyCount,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsCall');

int WsCheckMustUnderstandHeaders(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
) =>
    _WsCheckMustUnderstandHeaders(
      message,
      error,
    );

late final _WsCheckMustUnderstandHeaders = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
)>('WsCheckMustUnderstandHeaders');

int WsCloseChannel(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsCloseChannel(
      channel,
      asyncContext,
      error,
    );

late final _WsCloseChannel = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsCloseChannel');

int WsCloseListener(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsCloseListener(
      listener,
      asyncContext,
      error,
    );

late final _WsCloseListener = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsCloseListener');

int WsCloseServiceHost(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsCloseServiceHost(
      serviceHost,
      asyncContext,
      error,
    );

late final _WsCloseServiceHost = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsCloseServiceHost');

int WsCloseServiceProxy(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsCloseServiceProxy(
      serviceProxy,
      asyncContext,
      error,
    );

late final _WsCloseServiceProxy = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsCloseServiceProxy');

int WsCombineUrl(
  Pointer<WS_STRING> baseUrl,
  Pointer<WS_STRING> referenceUrl,
  int flags,
  Pointer<WS_HEAP> heap,
  Pointer<WS_STRING> resultUrl,
  Pointer<WS_ERROR> error,
) =>
    _WsCombineUrl(
      baseUrl,
      referenceUrl,
      flags,
      heap,
      resultUrl,
      error,
    );

late final _WsCombineUrl = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_STRING> baseUrl,
  Pointer<WS_STRING> referenceUrl,
  Uint32 flags,
  Pointer<WS_HEAP> heap,
  Pointer<WS_STRING> resultUrl,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_STRING> baseUrl,
  Pointer<WS_STRING> referenceUrl,
  int flags,
  Pointer<WS_HEAP> heap,
  Pointer<WS_STRING> resultUrl,
  Pointer<WS_ERROR> error,
)>('WsCombineUrl');

int WsCopyError(
  Pointer<WS_ERROR> source,
  Pointer<WS_ERROR> destination,
) =>
    _WsCopyError(
      source,
      destination,
    );

late final _WsCopyError = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR> source,
  Pointer<WS_ERROR> destination,
),
    int Function(
  Pointer<WS_ERROR> source,
  Pointer<WS_ERROR> destination,
)>('WsCopyError');

int WsCopyNode(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
) =>
    _WsCopyNode(
      writer,
      reader,
      error,
    );

late final _WsCopyNode = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
)>('WsCopyNode');

int WsCreateChannel(
  int channelType,
  int channelBinding,
  Pointer<WS_CHANNEL_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_SECURITY_DESCRIPTION> securityDescription,
  Pointer<Pointer<WS_CHANNEL>> channel,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateChannel(
      channelType,
      channelBinding,
      properties,
      propertyCount,
      securityDescription,
      channel,
      error,
    );

late final _WsCreateChannel = _webservices.lookupFunction<
    Int32 Function(
  Int32 channelType,
  Int32 channelBinding,
  Pointer<WS_CHANNEL_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<WS_SECURITY_DESCRIPTION> securityDescription,
  Pointer<Pointer<WS_CHANNEL>> channel,
  Pointer<WS_ERROR> error,
),
    int Function(
  int channelType,
  int channelBinding,
  Pointer<WS_CHANNEL_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_SECURITY_DESCRIPTION> securityDescription,
  Pointer<Pointer<WS_CHANNEL>> channel,
  Pointer<WS_ERROR> error,
)>('WsCreateChannel');

int WsCreateChannelForListener(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_CHANNEL_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_CHANNEL>> channel,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateChannelForListener(
      listener,
      properties,
      propertyCount,
      channel,
      error,
    );

late final _WsCreateChannelForListener = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_CHANNEL_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<Pointer<WS_CHANNEL>> channel,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_CHANNEL_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_CHANNEL>> channel,
  Pointer<WS_ERROR> error,
)>('WsCreateChannelForListener');

int WsCreateError(
  Pointer<WS_ERROR_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_ERROR>> error,
) =>
    _WsCreateError(
      properties,
      propertyCount,
      error,
    );

late final _WsCreateError = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<Pointer<WS_ERROR>> error,
),
    int Function(
  Pointer<WS_ERROR_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_ERROR>> error,
)>('WsCreateError');

int WsCreateFaultFromError(
  Pointer<WS_ERROR> error,
  int faultErrorCode,
  int faultDisclosure,
  Pointer<WS_HEAP> heap,
  Pointer<WS_FAULT> fault,
) =>
    _WsCreateFaultFromError(
      error,
      faultErrorCode,
      faultDisclosure,
      heap,
      fault,
    );

late final _WsCreateFaultFromError = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR> error,
  Int32 faultErrorCode,
  Int32 faultDisclosure,
  Pointer<WS_HEAP> heap,
  Pointer<WS_FAULT> fault,
),
    int Function(
  Pointer<WS_ERROR> error,
  int faultErrorCode,
  int faultDisclosure,
  Pointer<WS_HEAP> heap,
  Pointer<WS_FAULT> fault,
)>('WsCreateFaultFromError');

int WsCreateHeap(
  int maxSize,
  int trimSize,
  Pointer<WS_HEAP_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_HEAP>> heap,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateHeap(
      maxSize,
      trimSize,
      properties,
      propertyCount,
      heap,
      error,
    );

late final _WsCreateHeap = _webservices.lookupFunction<
    Int32 Function(
  IntPtr maxSize,
  IntPtr trimSize,
  Pointer<WS_HEAP_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<Pointer<WS_HEAP>> heap,
  Pointer<WS_ERROR> error,
),
    int Function(
  int maxSize,
  int trimSize,
  Pointer<WS_HEAP_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_HEAP>> heap,
  Pointer<WS_ERROR> error,
)>('WsCreateHeap');

int WsCreateListener(
  int channelType,
  int channelBinding,
  Pointer<WS_LISTENER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_SECURITY_DESCRIPTION> securityDescription,
  Pointer<Pointer<WS_LISTENER>> listener,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateListener(
      channelType,
      channelBinding,
      properties,
      propertyCount,
      securityDescription,
      listener,
      error,
    );

late final _WsCreateListener = _webservices.lookupFunction<
    Int32 Function(
  Int32 channelType,
  Int32 channelBinding,
  Pointer<WS_LISTENER_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<WS_SECURITY_DESCRIPTION> securityDescription,
  Pointer<Pointer<WS_LISTENER>> listener,
  Pointer<WS_ERROR> error,
),
    int Function(
  int channelType,
  int channelBinding,
  Pointer<WS_LISTENER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_SECURITY_DESCRIPTION> securityDescription,
  Pointer<Pointer<WS_LISTENER>> listener,
  Pointer<WS_ERROR> error,
)>('WsCreateListener');

int WsCreateMessage(
  int envelopeVersion,
  int addressingVersion,
  Pointer<WS_MESSAGE_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_MESSAGE>> message,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateMessage(
      envelopeVersion,
      addressingVersion,
      properties,
      propertyCount,
      message,
      error,
    );

late final _WsCreateMessage = _webservices.lookupFunction<
    Int32 Function(
  Int32 envelopeVersion,
  Int32 addressingVersion,
  Pointer<WS_MESSAGE_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<Pointer<WS_MESSAGE>> message,
  Pointer<WS_ERROR> error,
),
    int Function(
  int envelopeVersion,
  int addressingVersion,
  Pointer<WS_MESSAGE_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_MESSAGE>> message,
  Pointer<WS_ERROR> error,
)>('WsCreateMessage');

int WsCreateMessageForChannel(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_MESSAGE>> message,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateMessageForChannel(
      channel,
      properties,
      propertyCount,
      message,
      error,
    );

late final _WsCreateMessageForChannel = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<Pointer<WS_MESSAGE>> message,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_MESSAGE>> message,
  Pointer<WS_ERROR> error,
)>('WsCreateMessageForChannel');

int WsCreateMetadata(
  Pointer<WS_METADATA_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_METADATA>> metadata,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateMetadata(
      properties,
      propertyCount,
      metadata,
      error,
    );

late final _WsCreateMetadata = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_METADATA_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<Pointer<WS_METADATA>> metadata,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_METADATA_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_METADATA>> metadata,
  Pointer<WS_ERROR> error,
)>('WsCreateMetadata');

int WsCreateReader(
  Pointer<WS_XML_READER_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_XML_READER>> reader,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateReader(
      properties,
      propertyCount,
      reader,
      error,
    );

late final _WsCreateReader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<Pointer<WS_XML_READER>> reader,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_XML_READER>> reader,
  Pointer<WS_ERROR> error,
)>('WsCreateReader');

int WsCreateServiceEndpointFromTemplate(
  int channelType,
  Pointer<WS_SERVICE_ENDPOINT_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_STRING> addressUrl,
  Pointer<WS_SERVICE_CONTRACT> contract,
  Pointer<NativeFunction<WS_SERVICE_SECURITY_CALLBACK>> authorizationCallback,
  Pointer<WS_HEAP> heap,
  int templateType,
  Pointer templateValue,
  int templateSize,
  Pointer templateDescription,
  int templateDescriptionSize,
  Pointer<Pointer<WS_SERVICE_ENDPOINT>> serviceEndpoint,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateServiceEndpointFromTemplate(
      channelType,
      properties,
      propertyCount,
      addressUrl,
      contract,
      authorizationCallback,
      heap,
      templateType,
      templateValue,
      templateSize,
      templateDescription,
      templateDescriptionSize,
      serviceEndpoint,
      error,
    );

late final _WsCreateServiceEndpointFromTemplate = _webservices.lookupFunction<
    Int32 Function(
  Int32 channelType,
  Pointer<WS_SERVICE_ENDPOINT_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<WS_STRING> addressUrl,
  Pointer<WS_SERVICE_CONTRACT> contract,
  Pointer<NativeFunction<WS_SERVICE_SECURITY_CALLBACK>> authorizationCallback,
  Pointer<WS_HEAP> heap,
  Int32 templateType,
  Pointer templateValue,
  Uint32 templateSize,
  Pointer templateDescription,
  Uint32 templateDescriptionSize,
  Pointer<Pointer<WS_SERVICE_ENDPOINT>> serviceEndpoint,
  Pointer<WS_ERROR> error,
),
    int Function(
  int channelType,
  Pointer<WS_SERVICE_ENDPOINT_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_STRING> addressUrl,
  Pointer<WS_SERVICE_CONTRACT> contract,
  Pointer<NativeFunction<WS_SERVICE_SECURITY_CALLBACK>> authorizationCallback,
  Pointer<WS_HEAP> heap,
  int templateType,
  Pointer templateValue,
  int templateSize,
  Pointer templateDescription,
  int templateDescriptionSize,
  Pointer<Pointer<WS_SERVICE_ENDPOINT>> serviceEndpoint,
  Pointer<WS_ERROR> error,
)>('WsCreateServiceEndpointFromTemplate');

int WsCreateServiceHost(
  Pointer<Pointer<WS_SERVICE_ENDPOINT>> endpoints,
  int endpointCount,
  Pointer<WS_SERVICE_PROPERTY> serviceProperties,
  int servicePropertyCount,
  Pointer<Pointer<WS_SERVICE_HOST>> serviceHost,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateServiceHost(
      endpoints,
      endpointCount,
      serviceProperties,
      servicePropertyCount,
      serviceHost,
      error,
    );

late final _WsCreateServiceHost = _webservices.lookupFunction<
    Int32 Function(
  Pointer<Pointer<WS_SERVICE_ENDPOINT>> endpoints,
  Uint16 endpointCount,
  Pointer<WS_SERVICE_PROPERTY> serviceProperties,
  Uint32 servicePropertyCount,
  Pointer<Pointer<WS_SERVICE_HOST>> serviceHost,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<Pointer<WS_SERVICE_ENDPOINT>> endpoints,
  int endpointCount,
  Pointer<WS_SERVICE_PROPERTY> serviceProperties,
  int servicePropertyCount,
  Pointer<Pointer<WS_SERVICE_HOST>> serviceHost,
  Pointer<WS_ERROR> error,
)>('WsCreateServiceHost');

int WsCreateServiceProxy(
  int channelType,
  int channelBinding,
  Pointer<WS_SECURITY_DESCRIPTION> securityDescription,
  Pointer<WS_PROXY_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_CHANNEL_PROPERTY> channelProperties,
  int channelPropertyCount,
  Pointer<Pointer<WS_SERVICE_PROXY>> serviceProxy,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateServiceProxy(
      channelType,
      channelBinding,
      securityDescription,
      properties,
      propertyCount,
      channelProperties,
      channelPropertyCount,
      serviceProxy,
      error,
    );

late final _WsCreateServiceProxy = _webservices.lookupFunction<
    Int32 Function(
  Int32 channelType,
  Int32 channelBinding,
  Pointer<WS_SECURITY_DESCRIPTION> securityDescription,
  Pointer<WS_PROXY_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<WS_CHANNEL_PROPERTY> channelProperties,
  Uint32 channelPropertyCount,
  Pointer<Pointer<WS_SERVICE_PROXY>> serviceProxy,
  Pointer<WS_ERROR> error,
),
    int Function(
  int channelType,
  int channelBinding,
  Pointer<WS_SECURITY_DESCRIPTION> securityDescription,
  Pointer<WS_PROXY_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_CHANNEL_PROPERTY> channelProperties,
  int channelPropertyCount,
  Pointer<Pointer<WS_SERVICE_PROXY>> serviceProxy,
  Pointer<WS_ERROR> error,
)>('WsCreateServiceProxy');

int WsCreateServiceProxyFromTemplate(
  int channelType,
  Pointer<WS_PROXY_PROPERTY> properties,
  int propertyCount,
  int templateType,
  Pointer templateValue,
  int templateSize,
  Pointer templateDescription,
  int templateDescriptionSize,
  Pointer<Pointer<WS_SERVICE_PROXY>> serviceProxy,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateServiceProxyFromTemplate(
      channelType,
      properties,
      propertyCount,
      templateType,
      templateValue,
      templateSize,
      templateDescription,
      templateDescriptionSize,
      serviceProxy,
      error,
    );

late final _WsCreateServiceProxyFromTemplate = _webservices.lookupFunction<
    Int32 Function(
  Int32 channelType,
  Pointer<WS_PROXY_PROPERTY> properties,
  Uint32 propertyCount,
  Int32 templateType,
  Pointer templateValue,
  Uint32 templateSize,
  Pointer templateDescription,
  Uint32 templateDescriptionSize,
  Pointer<Pointer<WS_SERVICE_PROXY>> serviceProxy,
  Pointer<WS_ERROR> error,
),
    int Function(
  int channelType,
  Pointer<WS_PROXY_PROPERTY> properties,
  int propertyCount,
  int templateType,
  Pointer templateValue,
  int templateSize,
  Pointer templateDescription,
  int templateDescriptionSize,
  Pointer<Pointer<WS_SERVICE_PROXY>> serviceProxy,
  Pointer<WS_ERROR> error,
)>('WsCreateServiceProxyFromTemplate');

int WsCreateWriter(
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_XML_WRITER>> writer,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateWriter(
      properties,
      propertyCount,
      writer,
      error,
    );

late final _WsCreateWriter = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<Pointer<WS_XML_WRITER>> writer,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_XML_WRITER>> writer,
  Pointer<WS_ERROR> error,
)>('WsCreateWriter');

int WsCreateXmlBuffer(
  Pointer<WS_HEAP> heap,
  Pointer<WS_XML_BUFFER_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_XML_BUFFER>> buffer,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateXmlBuffer(
      heap,
      properties,
      propertyCount,
      buffer,
      error,
    );

late final _WsCreateXmlBuffer = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_HEAP> heap,
  Pointer<WS_XML_BUFFER_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<Pointer<WS_XML_BUFFER>> buffer,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_HEAP> heap,
  Pointer<WS_XML_BUFFER_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_XML_BUFFER>> buffer,
  Pointer<WS_ERROR> error,
)>('WsCreateXmlBuffer');

int WsCreateXmlSecurityToken(
  Pointer<WS_XML_BUFFER> tokenXml,
  Pointer<WS_SECURITY_KEY_HANDLE> tokenKey,
  Pointer<WS_XML_SECURITY_TOKEN_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_SECURITY_TOKEN>> token,
  Pointer<WS_ERROR> error,
) =>
    _WsCreateXmlSecurityToken(
      tokenXml,
      tokenKey,
      properties,
      propertyCount,
      token,
      error,
    );

late final _WsCreateXmlSecurityToken = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_BUFFER> tokenXml,
  Pointer<WS_SECURITY_KEY_HANDLE> tokenKey,
  Pointer<WS_XML_SECURITY_TOKEN_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<Pointer<WS_SECURITY_TOKEN>> token,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_BUFFER> tokenXml,
  Pointer<WS_SECURITY_KEY_HANDLE> tokenKey,
  Pointer<WS_XML_SECURITY_TOKEN_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_SECURITY_TOKEN>> token,
  Pointer<WS_ERROR> error,
)>('WsCreateXmlSecurityToken');

int WsDateTimeToFileTime(
  Pointer<WS_DATETIME> dateTime,
  Pointer<FILETIME> fileTime,
  Pointer<WS_ERROR> error,
) =>
    _WsDateTimeToFileTime(
      dateTime,
      fileTime,
      error,
    );

late final _WsDateTimeToFileTime = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_DATETIME> dateTime,
  Pointer<FILETIME> fileTime,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_DATETIME> dateTime,
  Pointer<FILETIME> fileTime,
  Pointer<WS_ERROR> error,
)>('WsDateTimeToFileTime');

int WsDecodeUrl(
  Pointer<WS_STRING> url,
  int flags,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<WS_URL>> outUrl,
  Pointer<WS_ERROR> error,
) =>
    _WsDecodeUrl(
      url,
      flags,
      heap,
      outUrl,
      error,
    );

late final _WsDecodeUrl = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_STRING> url,
  Uint32 flags,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<WS_URL>> outUrl,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_STRING> url,
  int flags,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<WS_URL>> outUrl,
  Pointer<WS_ERROR> error,
)>('WsDecodeUrl');

int WsEncodeUrl(
  Pointer<WS_URL> url,
  int flags,
  Pointer<WS_HEAP> heap,
  Pointer<WS_STRING> outUrl,
  Pointer<WS_ERROR> error,
) =>
    _WsEncodeUrl(
      url,
      flags,
      heap,
      outUrl,
      error,
    );

late final _WsEncodeUrl = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_URL> url,
  Uint32 flags,
  Pointer<WS_HEAP> heap,
  Pointer<WS_STRING> outUrl,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_URL> url,
  int flags,
  Pointer<WS_HEAP> heap,
  Pointer<WS_STRING> outUrl,
  Pointer<WS_ERROR> error,
)>('WsEncodeUrl');

int WsEndReaderCanonicalization(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
) =>
    _WsEndReaderCanonicalization(
      reader,
      error,
    );

late final _WsEndReaderCanonicalization = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
)>('WsEndReaderCanonicalization');

int WsEndWriterCanonicalization(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
) =>
    _WsEndWriterCanonicalization(
      writer,
      error,
    );

late final _WsEndWriterCanonicalization = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
)>('WsEndWriterCanonicalization');

int WsFileTimeToDateTime(
  Pointer<FILETIME> fileTime,
  Pointer<WS_DATETIME> dateTime,
  Pointer<WS_ERROR> error,
) =>
    _WsFileTimeToDateTime(
      fileTime,
      dateTime,
      error,
    );

late final _WsFileTimeToDateTime = _webservices.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> fileTime,
  Pointer<WS_DATETIME> dateTime,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<FILETIME> fileTime,
  Pointer<WS_DATETIME> dateTime,
  Pointer<WS_ERROR> error,
)>('WsFileTimeToDateTime');

int WsFillBody(
  Pointer<WS_MESSAGE> message,
  int minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsFillBody(
      message,
      minSize,
      asyncContext,
      error,
    );

late final _WsFillBody = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Uint32 minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  int minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsFillBody');

int WsFillReader(
  Pointer<WS_XML_READER> reader,
  int minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsFillReader(
      reader,
      minSize,
      asyncContext,
      error,
    );

late final _WsFillReader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Uint32 minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  int minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsFillReader');

int WsFindAttribute(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  int required,
  Pointer<Uint32> attributeIndex,
  Pointer<WS_ERROR> error,
) =>
    _WsFindAttribute(
      reader,
      localName,
      ns,
      required,
      attributeIndex,
      error,
    );

late final _WsFindAttribute = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Int32 required,
  Pointer<Uint32> attributeIndex,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  int required,
  Pointer<Uint32> attributeIndex,
  Pointer<WS_ERROR> error,
)>('WsFindAttribute');

int WsFlushBody(
  Pointer<WS_MESSAGE> message,
  int minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsFlushBody(
      message,
      minSize,
      asyncContext,
      error,
    );

late final _WsFlushBody = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Uint32 minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  int minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsFlushBody');

int WsFlushWriter(
  Pointer<WS_XML_WRITER> writer,
  int minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsFlushWriter(
      writer,
      minSize,
      asyncContext,
      error,
    );

late final _WsFlushWriter = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Uint32 minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  int minSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsFlushWriter');

void WsFreeChannel(
  Pointer<WS_CHANNEL> channel,
) =>
    _WsFreeChannel(
      channel,
    );

late final _WsFreeChannel = _webservices.lookupFunction<
    Void Function(
  Pointer<WS_CHANNEL> channel,
),
    void Function(
  Pointer<WS_CHANNEL> channel,
)>('WsFreeChannel');

void WsFreeError(
  Pointer<WS_ERROR> error,
) =>
    _WsFreeError(
      error,
    );

late final _WsFreeError = _webservices.lookupFunction<
    Void Function(
  Pointer<WS_ERROR> error,
),
    void Function(
  Pointer<WS_ERROR> error,
)>('WsFreeError');

void WsFreeHeap(
  Pointer<WS_HEAP> heap,
) =>
    _WsFreeHeap(
      heap,
    );

late final _WsFreeHeap = _webservices.lookupFunction<
    Void Function(
  Pointer<WS_HEAP> heap,
),
    void Function(
  Pointer<WS_HEAP> heap,
)>('WsFreeHeap');

void WsFreeListener(
  Pointer<WS_LISTENER> listener,
) =>
    _WsFreeListener(
      listener,
    );

late final _WsFreeListener = _webservices.lookupFunction<
    Void Function(
  Pointer<WS_LISTENER> listener,
),
    void Function(
  Pointer<WS_LISTENER> listener,
)>('WsFreeListener');

void WsFreeMessage(
  Pointer<WS_MESSAGE> message,
) =>
    _WsFreeMessage(
      message,
    );

late final _WsFreeMessage = _webservices.lookupFunction<
    Void Function(
  Pointer<WS_MESSAGE> message,
),
    void Function(
  Pointer<WS_MESSAGE> message,
)>('WsFreeMessage');

void WsFreeMetadata(
  Pointer<WS_METADATA> metadata,
) =>
    _WsFreeMetadata(
      metadata,
    );

late final _WsFreeMetadata = _webservices.lookupFunction<
    Void Function(
  Pointer<WS_METADATA> metadata,
),
    void Function(
  Pointer<WS_METADATA> metadata,
)>('WsFreeMetadata');

void WsFreeReader(
  Pointer<WS_XML_READER> reader,
) =>
    _WsFreeReader(
      reader,
    );

late final _WsFreeReader = _webservices.lookupFunction<
    Void Function(
  Pointer<WS_XML_READER> reader,
),
    void Function(
  Pointer<WS_XML_READER> reader,
)>('WsFreeReader');

void WsFreeSecurityToken(
  Pointer<WS_SECURITY_TOKEN> token,
) =>
    _WsFreeSecurityToken(
      token,
    );

late final _WsFreeSecurityToken = _webservices.lookupFunction<
    Void Function(
  Pointer<WS_SECURITY_TOKEN> token,
),
    void Function(
  Pointer<WS_SECURITY_TOKEN> token,
)>('WsFreeSecurityToken');

void WsFreeServiceHost(
  Pointer<WS_SERVICE_HOST> serviceHost,
) =>
    _WsFreeServiceHost(
      serviceHost,
    );

late final _WsFreeServiceHost = _webservices.lookupFunction<
    Void Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
),
    void Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
)>('WsFreeServiceHost');

void WsFreeServiceProxy(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
) =>
    _WsFreeServiceProxy(
      serviceProxy,
    );

late final _WsFreeServiceProxy = _webservices.lookupFunction<
    Void Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
),
    void Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
)>('WsFreeServiceProxy');

void WsFreeWriter(
  Pointer<WS_XML_WRITER> writer,
) =>
    _WsFreeWriter(
      writer,
    );

late final _WsFreeWriter = _webservices.lookupFunction<
    Void Function(
  Pointer<WS_XML_WRITER> writer,
),
    void Function(
  Pointer<WS_XML_WRITER> writer,
)>('WsFreeWriter');

int WsGetChannelProperty(
  Pointer<WS_CHANNEL> channel,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetChannelProperty(
      channel,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetChannelProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetChannelProperty');

int WsGetCustomHeader(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> customHeaderDescription,
  int repeatingOption,
  int headerIndex,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<Uint32> headerAttributes,
  Pointer<WS_ERROR> error,
) =>
    _WsGetCustomHeader(
      message,
      customHeaderDescription,
      repeatingOption,
      headerIndex,
      readOption,
      heap,
      value,
      valueSize,
      headerAttributes,
      error,
    );

late final _WsGetCustomHeader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> customHeaderDescription,
  Int32 repeatingOption,
  Uint32 headerIndex,
  Int32 readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
  Pointer<Uint32> headerAttributes,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> customHeaderDescription,
  int repeatingOption,
  int headerIndex,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<Uint32> headerAttributes,
  Pointer<WS_ERROR> error,
)>('WsGetCustomHeader');

int WsGetDictionary(
  int encoding,
  Pointer<Pointer<WS_XML_DICTIONARY>> dictionary,
  Pointer<WS_ERROR> error,
) =>
    _WsGetDictionary(
      encoding,
      dictionary,
      error,
    );

late final _WsGetDictionary = _webservices.lookupFunction<
    Int32 Function(
  Int32 encoding,
  Pointer<Pointer<WS_XML_DICTIONARY>> dictionary,
  Pointer<WS_ERROR> error,
),
    int Function(
  int encoding,
  Pointer<Pointer<WS_XML_DICTIONARY>> dictionary,
  Pointer<WS_ERROR> error,
)>('WsGetDictionary');

int WsGetErrorProperty(
  Pointer<WS_ERROR> error,
  int id,
  Pointer buffer,
  int bufferSize,
) =>
    _WsGetErrorProperty(
      error,
      id,
      buffer,
      bufferSize,
    );

late final _WsGetErrorProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR> error,
  Int32 id,
  Pointer buffer,
  Uint32 bufferSize,
),
    int Function(
  Pointer<WS_ERROR> error,
  int id,
  Pointer buffer,
  int bufferSize,
)>('WsGetErrorProperty');

int WsGetErrorString(
  Pointer<WS_ERROR> error,
  int index,
  Pointer<WS_STRING> string,
) =>
    _WsGetErrorString(
      error,
      index,
      string,
    );

late final _WsGetErrorString = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR> error,
  Uint32 index,
  Pointer<WS_STRING> string,
),
    int Function(
  Pointer<WS_ERROR> error,
  int index,
  Pointer<WS_STRING> string,
)>('WsGetErrorString');

int WsGetFaultErrorDetail(
  Pointer<WS_ERROR> error,
  Pointer<WS_FAULT_DETAIL_DESCRIPTION> faultDetailDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
) =>
    _WsGetFaultErrorDetail(
      error,
      faultDetailDescription,
      readOption,
      heap,
      value,
      valueSize,
    );

late final _WsGetFaultErrorDetail = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR> error,
  Pointer<WS_FAULT_DETAIL_DESCRIPTION> faultDetailDescription,
  Int32 readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
),
    int Function(
  Pointer<WS_ERROR> error,
  Pointer<WS_FAULT_DETAIL_DESCRIPTION> faultDetailDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
)>('WsGetFaultErrorDetail');

int WsGetFaultErrorProperty(
  Pointer<WS_ERROR> error,
  int id,
  Pointer buffer,
  int bufferSize,
) =>
    _WsGetFaultErrorProperty(
      error,
      id,
      buffer,
      bufferSize,
    );

late final _WsGetFaultErrorProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR> error,
  Int32 id,
  Pointer buffer,
  Uint32 bufferSize,
),
    int Function(
  Pointer<WS_ERROR> error,
  int id,
  Pointer buffer,
  int bufferSize,
)>('WsGetFaultErrorProperty');

int WsGetHeader(
  Pointer<WS_MESSAGE> message,
  int headerType,
  int valueType,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetHeader(
      message,
      headerType,
      valueType,
      readOption,
      heap,
      value,
      valueSize,
      error,
    );

late final _WsGetHeader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Int32 headerType,
  Int32 valueType,
  Int32 readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  int headerType,
  int valueType,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetHeader');

int WsGetHeaderAttributes(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_READER> reader,
  Pointer<Uint32> headerAttributes,
  Pointer<WS_ERROR> error,
) =>
    _WsGetHeaderAttributes(
      message,
      reader,
      headerAttributes,
      error,
    );

late final _WsGetHeaderAttributes = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_READER> reader,
  Pointer<Uint32> headerAttributes,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_READER> reader,
  Pointer<Uint32> headerAttributes,
  Pointer<WS_ERROR> error,
)>('WsGetHeaderAttributes');

int WsGetHeapProperty(
  Pointer<WS_HEAP> heap,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetHeapProperty(
      heap,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetHeapProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_HEAP> heap,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_HEAP> heap,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetHeapProperty');

int WsGetListenerProperty(
  Pointer<WS_LISTENER> listener,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetListenerProperty(
      listener,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetListenerProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_LISTENER> listener,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_LISTENER> listener,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetListenerProperty');

int WsGetMappedHeader(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  int repeatingOption,
  int headerIndex,
  int valueType,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetMappedHeader(
      message,
      headerName,
      repeatingOption,
      headerIndex,
      valueType,
      readOption,
      heap,
      value,
      valueSize,
      error,
    );

late final _WsGetMappedHeader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  Int32 repeatingOption,
  Uint32 headerIndex,
  Int32 valueType,
  Int32 readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  int repeatingOption,
  int headerIndex,
  int valueType,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetMappedHeader');

int WsGetMessageProperty(
  Pointer<WS_MESSAGE> message,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetMessageProperty(
      message,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetMessageProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetMessageProperty');

int WsGetMetadataEndpoints(
  Pointer<WS_METADATA> metadata,
  Pointer<WS_METADATA_ENDPOINTS> endpoints,
  Pointer<WS_ERROR> error,
) =>
    _WsGetMetadataEndpoints(
      metadata,
      endpoints,
      error,
    );

late final _WsGetMetadataEndpoints = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_METADATA> metadata,
  Pointer<WS_METADATA_ENDPOINTS> endpoints,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_METADATA> metadata,
  Pointer<WS_METADATA_ENDPOINTS> endpoints,
  Pointer<WS_ERROR> error,
)>('WsGetMetadataEndpoints');

int WsGetMetadataProperty(
  Pointer<WS_METADATA> metadata,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetMetadataProperty(
      metadata,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetMetadataProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_METADATA> metadata,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_METADATA> metadata,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetMetadataProperty');

int WsGetMissingMetadataDocumentAddress(
  Pointer<WS_METADATA> metadata,
  Pointer<Pointer<WS_ENDPOINT_ADDRESS>> address,
  Pointer<WS_ERROR> error,
) =>
    _WsGetMissingMetadataDocumentAddress(
      metadata,
      address,
      error,
    );

late final _WsGetMissingMetadataDocumentAddress = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_METADATA> metadata,
  Pointer<Pointer<WS_ENDPOINT_ADDRESS>> address,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_METADATA> metadata,
  Pointer<Pointer<WS_ENDPOINT_ADDRESS>> address,
  Pointer<WS_ERROR> error,
)>('WsGetMissingMetadataDocumentAddress');

int WsGetNamespaceFromPrefix(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> prefix,
  int required,
  Pointer<Pointer<WS_XML_STRING>> ns,
  Pointer<WS_ERROR> error,
) =>
    _WsGetNamespaceFromPrefix(
      reader,
      prefix,
      required,
      ns,
      error,
    );

late final _WsGetNamespaceFromPrefix = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> prefix,
  Int32 required,
  Pointer<Pointer<WS_XML_STRING>> ns,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> prefix,
  int required,
  Pointer<Pointer<WS_XML_STRING>> ns,
  Pointer<WS_ERROR> error,
)>('WsGetNamespaceFromPrefix');

int WsGetOperationContextProperty(
  Pointer<WS_OPERATION_CONTEXT> context,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetOperationContextProperty(
      context,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetOperationContextProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_OPERATION_CONTEXT> context,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_OPERATION_CONTEXT> context,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetOperationContextProperty');

int WsGetPolicyAlternativeCount(
  Pointer<WS_POLICY> policy,
  Pointer<Uint32> count,
  Pointer<WS_ERROR> error,
) =>
    _WsGetPolicyAlternativeCount(
      policy,
      count,
      error,
    );

late final _WsGetPolicyAlternativeCount = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_POLICY> policy,
  Pointer<Uint32> count,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_POLICY> policy,
  Pointer<Uint32> count,
  Pointer<WS_ERROR> error,
)>('WsGetPolicyAlternativeCount');

int WsGetPolicyProperty(
  Pointer<WS_POLICY> policy,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetPolicyProperty(
      policy,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetPolicyProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_POLICY> policy,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_POLICY> policy,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetPolicyProperty');

int WsGetPrefixFromNamespace(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> ns,
  int required,
  Pointer<Pointer<WS_XML_STRING>> prefix,
  Pointer<WS_ERROR> error,
) =>
    _WsGetPrefixFromNamespace(
      writer,
      ns,
      required,
      prefix,
      error,
    );

late final _WsGetPrefixFromNamespace = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> ns,
  Int32 required,
  Pointer<Pointer<WS_XML_STRING>> prefix,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> ns,
  int required,
  Pointer<Pointer<WS_XML_STRING>> prefix,
  Pointer<WS_ERROR> error,
)>('WsGetPrefixFromNamespace');

int WsGetReaderNode(
  Pointer<WS_XML_READER> xmlReader,
  Pointer<Pointer<WS_XML_NODE>> node,
  Pointer<WS_ERROR> error,
) =>
    _WsGetReaderNode(
      xmlReader,
      node,
      error,
    );

late final _WsGetReaderNode = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> xmlReader,
  Pointer<Pointer<WS_XML_NODE>> node,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> xmlReader,
  Pointer<Pointer<WS_XML_NODE>> node,
  Pointer<WS_ERROR> error,
)>('WsGetReaderNode');

int WsGetReaderPosition(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
) =>
    _WsGetReaderPosition(
      reader,
      nodePosition,
      error,
    );

late final _WsGetReaderPosition = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
)>('WsGetReaderPosition');

int WsGetReaderProperty(
  Pointer<WS_XML_READER> reader,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetReaderProperty(
      reader,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetReaderProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetReaderProperty');

int WsGetSecurityContextProperty(
  Pointer<WS_SECURITY_CONTEXT> securityContext,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetSecurityContextProperty(
      securityContext,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetSecurityContextProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SECURITY_CONTEXT> securityContext,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SECURITY_CONTEXT> securityContext,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetSecurityContextProperty');

int WsGetSecurityTokenProperty(
  Pointer<WS_SECURITY_TOKEN> securityToken,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_HEAP> heap,
  Pointer<WS_ERROR> error,
) =>
    _WsGetSecurityTokenProperty(
      securityToken,
      id,
      value,
      valueSize,
      heap,
      error,
    );

late final _WsGetSecurityTokenProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SECURITY_TOKEN> securityToken,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_HEAP> heap,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SECURITY_TOKEN> securityToken,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_HEAP> heap,
  Pointer<WS_ERROR> error,
)>('WsGetSecurityTokenProperty');

int WsGetServiceHostProperty(
  Pointer<WS_SERVICE_HOST> serviceHost,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetServiceHostProperty(
      serviceHost,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetServiceHostProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetServiceHostProperty');

int WsGetServiceProxyProperty(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetServiceProxyProperty(
      serviceProxy,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetServiceProxyProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetServiceProxyProperty');

int WsGetWriterPosition(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
) =>
    _WsGetWriterPosition(
      writer,
      nodePosition,
      error,
    );

late final _WsGetWriterPosition = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
)>('WsGetWriterPosition');

int WsGetWriterProperty(
  Pointer<WS_XML_WRITER> writer,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsGetWriterProperty(
      writer,
      id,
      value,
      valueSize,
      error,
    );

late final _WsGetWriterProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsGetWriterProperty');

int WsGetXmlAttribute(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<Uint16>> valueChars,
  Pointer<Uint32> valueCharCount,
  Pointer<WS_ERROR> error,
) =>
    _WsGetXmlAttribute(
      reader,
      localName,
      heap,
      valueChars,
      valueCharCount,
      error,
    );

late final _WsGetXmlAttribute = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<Uint16>> valueChars,
  Pointer<Uint32> valueCharCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<Uint16>> valueChars,
  Pointer<Uint32> valueCharCount,
  Pointer<WS_ERROR> error,
)>('WsGetXmlAttribute');

int WsInitializeMessage(
  Pointer<WS_MESSAGE> message,
  int initialization,
  Pointer<WS_MESSAGE> sourceMessage,
  Pointer<WS_ERROR> error,
) =>
    _WsInitializeMessage(
      message,
      initialization,
      sourceMessage,
      error,
    );

late final _WsInitializeMessage = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Int32 initialization,
  Pointer<WS_MESSAGE> sourceMessage,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  int initialization,
  Pointer<WS_MESSAGE> sourceMessage,
  Pointer<WS_ERROR> error,
)>('WsInitializeMessage');

int WsMarkHeaderAsUnderstood(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_NODE_POSITION> headerPosition,
  Pointer<WS_ERROR> error,
) =>
    _WsMarkHeaderAsUnderstood(
      message,
      headerPosition,
      error,
    );

late final _WsMarkHeaderAsUnderstood = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_NODE_POSITION> headerPosition,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_NODE_POSITION> headerPosition,
  Pointer<WS_ERROR> error,
)>('WsMarkHeaderAsUnderstood');

int WsMatchPolicyAlternative(
  Pointer<WS_POLICY> policy,
  int alternativeIndex,
  Pointer<WS_POLICY_CONSTRAINTS> policyConstraints,
  int matchRequired,
  Pointer<WS_HEAP> heap,
  Pointer<WS_ERROR> error,
) =>
    _WsMatchPolicyAlternative(
      policy,
      alternativeIndex,
      policyConstraints,
      matchRequired,
      heap,
      error,
    );

late final _WsMatchPolicyAlternative = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_POLICY> policy,
  Uint32 alternativeIndex,
  Pointer<WS_POLICY_CONSTRAINTS> policyConstraints,
  Int32 matchRequired,
  Pointer<WS_HEAP> heap,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_POLICY> policy,
  int alternativeIndex,
  Pointer<WS_POLICY_CONSTRAINTS> policyConstraints,
  int matchRequired,
  Pointer<WS_HEAP> heap,
  Pointer<WS_ERROR> error,
)>('WsMatchPolicyAlternative');

int WsMoveReader(
  Pointer<WS_XML_READER> reader,
  int moveTo,
  Pointer<Int32> found,
  Pointer<WS_ERROR> error,
) =>
    _WsMoveReader(
      reader,
      moveTo,
      found,
      error,
    );

late final _WsMoveReader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Int32 moveTo,
  Pointer<Int32> found,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  int moveTo,
  Pointer<Int32> found,
  Pointer<WS_ERROR> error,
)>('WsMoveReader');

int WsMoveWriter(
  Pointer<WS_XML_WRITER> writer,
  int moveTo,
  Pointer<Int32> found,
  Pointer<WS_ERROR> error,
) =>
    _WsMoveWriter(
      writer,
      moveTo,
      found,
      error,
    );

late final _WsMoveWriter = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Int32 moveTo,
  Pointer<Int32> found,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  int moveTo,
  Pointer<Int32> found,
  Pointer<WS_ERROR> error,
)>('WsMoveWriter');

int WsOpenChannel(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ENDPOINT_ADDRESS> endpointAddress,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsOpenChannel(
      channel,
      endpointAddress,
      asyncContext,
      error,
    );

late final _WsOpenChannel = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ENDPOINT_ADDRESS> endpointAddress,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ENDPOINT_ADDRESS> endpointAddress,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsOpenChannel');

int WsOpenListener(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_STRING> url,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsOpenListener(
      listener,
      url,
      asyncContext,
      error,
    );

late final _WsOpenListener = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_STRING> url,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_STRING> url,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsOpenListener');

int WsOpenServiceHost(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsOpenServiceHost(
      serviceHost,
      asyncContext,
      error,
    );

late final _WsOpenServiceHost = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsOpenServiceHost');

int WsOpenServiceProxy(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ENDPOINT_ADDRESS> address,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsOpenServiceProxy(
      serviceProxy,
      address,
      asyncContext,
      error,
    );

late final _WsOpenServiceProxy = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ENDPOINT_ADDRESS> address,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ENDPOINT_ADDRESS> address,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsOpenServiceProxy');

int WsPullBytes(
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_PULL_BYTES_CALLBACK>> callback,
  Pointer callbackState,
  Pointer<WS_ERROR> error,
) =>
    _WsPullBytes(
      writer,
      callback,
      callbackState,
      error,
    );

late final _WsPullBytes = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_PULL_BYTES_CALLBACK>> callback,
  Pointer callbackState,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_PULL_BYTES_CALLBACK>> callback,
  Pointer callbackState,
  Pointer<WS_ERROR> error,
)>('WsPullBytes');

int WsPushBytes(
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_PUSH_BYTES_CALLBACK>> callback,
  Pointer callbackState,
  Pointer<WS_ERROR> error,
) =>
    _WsPushBytes(
      writer,
      callback,
      callbackState,
      error,
    );

late final _WsPushBytes = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_PUSH_BYTES_CALLBACK>> callback,
  Pointer callbackState,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_PUSH_BYTES_CALLBACK>> callback,
  Pointer callbackState,
  Pointer<WS_ERROR> error,
)>('WsPushBytes');

int WsReadArray(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  int valueType,
  Pointer array,
  int arraySize,
  int itemOffset,
  int itemCount,
  Pointer<Uint32> actualItemCount,
  Pointer<WS_ERROR> error,
) =>
    _WsReadArray(
      reader,
      localName,
      ns,
      valueType,
      array,
      arraySize,
      itemOffset,
      itemCount,
      actualItemCount,
      error,
    );

late final _WsReadArray = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Int32 valueType,
  Pointer array,
  Uint32 arraySize,
  Uint32 itemOffset,
  Uint32 itemCount,
  Pointer<Uint32> actualItemCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  int valueType,
  Pointer array,
  int arraySize,
  int itemOffset,
  int itemCount,
  Pointer<Uint32> actualItemCount,
  Pointer<WS_ERROR> error,
)>('WsReadArray');

int WsReadAttribute(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ATTRIBUTE_DESCRIPTION> attributeDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsReadAttribute(
      reader,
      attributeDescription,
      readOption,
      heap,
      value,
      valueSize,
      error,
    );

late final _WsReadAttribute = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ATTRIBUTE_DESCRIPTION> attributeDescription,
  Int32 readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ATTRIBUTE_DESCRIPTION> attributeDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsReadAttribute');

int WsReadBody(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> bodyDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsReadBody(
      message,
      bodyDescription,
      readOption,
      heap,
      value,
      valueSize,
      error,
    );

late final _WsReadBody = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> bodyDescription,
  Int32 readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> bodyDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsReadBody');

int WsReadBytes(
  Pointer<WS_XML_READER> reader,
  Pointer bytes,
  int maxByteCount,
  Pointer<Uint32> actualByteCount,
  Pointer<WS_ERROR> error,
) =>
    _WsReadBytes(
      reader,
      bytes,
      maxByteCount,
      actualByteCount,
      error,
    );

late final _WsReadBytes = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer bytes,
  Uint32 maxByteCount,
  Pointer<Uint32> actualByteCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer bytes,
  int maxByteCount,
  Pointer<Uint32> actualByteCount,
  Pointer<WS_ERROR> error,
)>('WsReadBytes');

int WsReadChars(
  Pointer<WS_XML_READER> reader,
  Pointer<Utf16> chars,
  int maxCharCount,
  Pointer<Uint32> actualCharCount,
  Pointer<WS_ERROR> error,
) =>
    _WsReadChars(
      reader,
      chars,
      maxCharCount,
      actualCharCount,
      error,
    );

late final _WsReadChars = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<Utf16> chars,
  Uint32 maxCharCount,
  Pointer<Uint32> actualCharCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<Utf16> chars,
  int maxCharCount,
  Pointer<Uint32> actualCharCount,
  Pointer<WS_ERROR> error,
)>('WsReadChars');

int WsReadCharsUtf8(
  Pointer<WS_XML_READER> reader,
  Pointer<Uint8> bytes,
  int maxByteCount,
  Pointer<Uint32> actualByteCount,
  Pointer<WS_ERROR> error,
) =>
    _WsReadCharsUtf8(
      reader,
      bytes,
      maxByteCount,
      actualByteCount,
      error,
    );

late final _WsReadCharsUtf8 = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<Uint8> bytes,
  Uint32 maxByteCount,
  Pointer<Uint32> actualByteCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<Uint8> bytes,
  int maxByteCount,
  Pointer<Uint32> actualByteCount,
  Pointer<WS_ERROR> error,
)>('WsReadCharsUtf8');

int WsReadElement(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ELEMENT_DESCRIPTION> elementDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsReadElement(
      reader,
      elementDescription,
      readOption,
      heap,
      value,
      valueSize,
      error,
    );

late final _WsReadElement = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ELEMENT_DESCRIPTION> elementDescription,
  Int32 readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ELEMENT_DESCRIPTION> elementDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsReadElement');

int WsReadEndAttribute(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
) =>
    _WsReadEndAttribute(
      reader,
      error,
    );

late final _WsReadEndAttribute = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
)>('WsReadEndAttribute');

int WsReadEndElement(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
) =>
    _WsReadEndElement(
      reader,
      error,
    );

late final _WsReadEndElement = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
)>('WsReadEndElement');

int WsReadEndpointAddressExtension(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ENDPOINT_ADDRESS> endpointAddress,
  int extensionType,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsReadEndpointAddressExtension(
      reader,
      endpointAddress,
      extensionType,
      readOption,
      heap,
      value,
      valueSize,
      error,
    );

late final _WsReadEndpointAddressExtension = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ENDPOINT_ADDRESS> endpointAddress,
  Int32 extensionType,
  Int32 readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ENDPOINT_ADDRESS> endpointAddress,
  int extensionType,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsReadEndpointAddressExtension');

int WsReadEnvelopeEnd(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
) =>
    _WsReadEnvelopeEnd(
      message,
      error,
    );

late final _WsReadEnvelopeEnd = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
)>('WsReadEnvelopeEnd');

int WsReadEnvelopeStart(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_READER> reader,
  Pointer<NativeFunction<WS_MESSAGE_DONE_CALLBACK>> doneCallback,
  Pointer doneCallbackState,
  Pointer<WS_ERROR> error,
) =>
    _WsReadEnvelopeStart(
      message,
      reader,
      doneCallback,
      doneCallbackState,
      error,
    );

late final _WsReadEnvelopeStart = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_READER> reader,
  Pointer<NativeFunction<WS_MESSAGE_DONE_CALLBACK>> doneCallback,
  Pointer doneCallbackState,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_READER> reader,
  Pointer<NativeFunction<WS_MESSAGE_DONE_CALLBACK>> doneCallback,
  Pointer doneCallbackState,
  Pointer<WS_ERROR> error,
)>('WsReadEnvelopeStart');

int WsReadMessageEnd(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsReadMessageEnd(
      channel,
      message,
      asyncContext,
      error,
    );

late final _WsReadMessageEnd = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsReadMessageEnd');

int WsReadMessageStart(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsReadMessageStart(
      channel,
      message,
      asyncContext,
      error,
    );

late final _WsReadMessageStart = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsReadMessageStart');

int WsReadMetadata(
  Pointer<WS_METADATA> metadata,
  Pointer<WS_XML_READER> reader,
  Pointer<WS_STRING> url,
  Pointer<WS_ERROR> error,
) =>
    _WsReadMetadata(
      metadata,
      reader,
      url,
      error,
    );

late final _WsReadMetadata = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_METADATA> metadata,
  Pointer<WS_XML_READER> reader,
  Pointer<WS_STRING> url,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_METADATA> metadata,
  Pointer<WS_XML_READER> reader,
  Pointer<WS_STRING> url,
  Pointer<WS_ERROR> error,
)>('WsReadMetadata');

int WsReadNode(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
) =>
    _WsReadNode(
      reader,
      error,
    );

late final _WsReadNode = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
)>('WsReadNode');

int WsReadQualifiedName(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_HEAP> heap,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<WS_ERROR> error,
) =>
    _WsReadQualifiedName(
      reader,
      heap,
      prefix,
      localName,
      ns,
      error,
    );

late final _WsReadQualifiedName = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_HEAP> heap,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_HEAP> heap,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<WS_ERROR> error,
)>('WsReadQualifiedName');

int WsReadStartAttribute(
  Pointer<WS_XML_READER> reader,
  int attributeIndex,
  Pointer<WS_ERROR> error,
) =>
    _WsReadStartAttribute(
      reader,
      attributeIndex,
      error,
    );

late final _WsReadStartAttribute = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Uint32 attributeIndex,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  int attributeIndex,
  Pointer<WS_ERROR> error,
)>('WsReadStartAttribute');

int WsReadStartElement(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
) =>
    _WsReadStartElement(
      reader,
      error,
    );

late final _WsReadStartElement = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
)>('WsReadStartElement');

int WsReadToStartElement(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<Int32> found,
  Pointer<WS_ERROR> error,
) =>
    _WsReadToStartElement(
      reader,
      localName,
      ns,
      found,
      error,
    );

late final _WsReadToStartElement = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<Int32> found,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<Int32> found,
  Pointer<WS_ERROR> error,
)>('WsReadToStartElement');

int WsReadType(
  Pointer<WS_XML_READER> reader,
  int typeMapping,
  int type,
  Pointer typeDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsReadType(
      reader,
      typeMapping,
      type,
      typeDescription,
      readOption,
      heap,
      value,
      valueSize,
      error,
    );

late final _WsReadType = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Int32 typeMapping,
  Int32 type,
  Pointer typeDescription,
  Int32 readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  int typeMapping,
  int type,
  Pointer typeDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsReadType');

int WsReadValue(
  Pointer<WS_XML_READER> reader,
  int valueType,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsReadValue(
      reader,
      valueType,
      value,
      valueSize,
      error,
    );

late final _WsReadValue = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Int32 valueType,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  int valueType,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsReadValue');

int WsReadXmlBuffer(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<WS_XML_BUFFER>> xmlBuffer,
  Pointer<WS_ERROR> error,
) =>
    _WsReadXmlBuffer(
      reader,
      heap,
      xmlBuffer,
      error,
    );

late final _WsReadXmlBuffer = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<WS_XML_BUFFER>> xmlBuffer,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<WS_XML_BUFFER>> xmlBuffer,
  Pointer<WS_ERROR> error,
)>('WsReadXmlBuffer');

int WsReadXmlBufferFromBytes(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_READER_ENCODING> encoding,
  Pointer<WS_XML_READER_PROPERTY> properties,
  int propertyCount,
  Pointer bytes,
  int byteCount,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<WS_XML_BUFFER>> xmlBuffer,
  Pointer<WS_ERROR> error,
) =>
    _WsReadXmlBufferFromBytes(
      reader,
      encoding,
      properties,
      propertyCount,
      bytes,
      byteCount,
      heap,
      xmlBuffer,
      error,
    );

late final _WsReadXmlBufferFromBytes = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_READER_ENCODING> encoding,
  Pointer<WS_XML_READER_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer bytes,
  Uint32 byteCount,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<WS_XML_BUFFER>> xmlBuffer,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_READER_ENCODING> encoding,
  Pointer<WS_XML_READER_PROPERTY> properties,
  int propertyCount,
  Pointer bytes,
  int byteCount,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer<WS_XML_BUFFER>> xmlBuffer,
  Pointer<WS_ERROR> error,
)>('WsReadXmlBufferFromBytes');

int WsReceiveMessage(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<Pointer<WS_MESSAGE_DESCRIPTION>> messageDescriptions,
  int messageDescriptionCount,
  int receiveOption,
  int readBodyOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<Uint32> index,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsReceiveMessage(
      channel,
      message,
      messageDescriptions,
      messageDescriptionCount,
      receiveOption,
      readBodyOption,
      heap,
      value,
      valueSize,
      index,
      asyncContext,
      error,
    );

late final _WsReceiveMessage = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<Pointer<WS_MESSAGE_DESCRIPTION>> messageDescriptions,
  Uint32 messageDescriptionCount,
  Int32 receiveOption,
  Int32 readBodyOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
  Pointer<Uint32> index,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<Pointer<WS_MESSAGE_DESCRIPTION>> messageDescriptions,
  int messageDescriptionCount,
  int receiveOption,
  int readBodyOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<Uint32> index,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsReceiveMessage');

int WsRegisterOperationForCancel(
  Pointer<WS_OPERATION_CONTEXT> context,
  Pointer<NativeFunction<WS_OPERATION_CANCEL_CALLBACK>> cancelCallback,
  Pointer<NativeFunction<WS_OPERATION_FREE_STATE_CALLBACK>> freestateCallback,
  Pointer userState,
  Pointer<WS_ERROR> error,
) =>
    _WsRegisterOperationForCancel(
      context,
      cancelCallback,
      freestateCallback,
      userState,
      error,
    );

late final _WsRegisterOperationForCancel = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_OPERATION_CONTEXT> context,
  Pointer<NativeFunction<WS_OPERATION_CANCEL_CALLBACK>> cancelCallback,
  Pointer<NativeFunction<WS_OPERATION_FREE_STATE_CALLBACK>> freestateCallback,
  Pointer userState,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_OPERATION_CONTEXT> context,
  Pointer<NativeFunction<WS_OPERATION_CANCEL_CALLBACK>> cancelCallback,
  Pointer<NativeFunction<WS_OPERATION_FREE_STATE_CALLBACK>> freestateCallback,
  Pointer userState,
  Pointer<WS_ERROR> error,
)>('WsRegisterOperationForCancel');

int WsRemoveCustomHeader(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  Pointer<WS_XML_STRING> headerNs,
  Pointer<WS_ERROR> error,
) =>
    _WsRemoveCustomHeader(
      message,
      headerName,
      headerNs,
      error,
    );

late final _WsRemoveCustomHeader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  Pointer<WS_XML_STRING> headerNs,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  Pointer<WS_XML_STRING> headerNs,
  Pointer<WS_ERROR> error,
)>('WsRemoveCustomHeader');

int WsRemoveHeader(
  Pointer<WS_MESSAGE> message,
  int headerType,
  Pointer<WS_ERROR> error,
) =>
    _WsRemoveHeader(
      message,
      headerType,
      error,
    );

late final _WsRemoveHeader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Int32 headerType,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  int headerType,
  Pointer<WS_ERROR> error,
)>('WsRemoveHeader');

int WsRemoveMappedHeader(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  Pointer<WS_ERROR> error,
) =>
    _WsRemoveMappedHeader(
      message,
      headerName,
      error,
    );

late final _WsRemoveMappedHeader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_STRING> headerName,
  Pointer<WS_ERROR> error,
)>('WsRemoveMappedHeader');

int WsRemoveNode(
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
) =>
    _WsRemoveNode(
      nodePosition,
      error,
    );

late final _WsRemoveNode = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
)>('WsRemoveNode');

int WsRequestReply(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> requestMessage,
  Pointer<WS_MESSAGE_DESCRIPTION> requestMessageDescription,
  int writeOption,
  Pointer requestBodyValue,
  int requestBodyValueSize,
  Pointer<WS_MESSAGE> replyMessage,
  Pointer<WS_MESSAGE_DESCRIPTION> replyMessageDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsRequestReply(
      channel,
      requestMessage,
      requestMessageDescription,
      writeOption,
      requestBodyValue,
      requestBodyValueSize,
      replyMessage,
      replyMessageDescription,
      readOption,
      heap,
      value,
      valueSize,
      asyncContext,
      error,
    );

late final _WsRequestReply = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> requestMessage,
  Pointer<WS_MESSAGE_DESCRIPTION> requestMessageDescription,
  Int32 writeOption,
  Pointer requestBodyValue,
  Uint32 requestBodyValueSize,
  Pointer<WS_MESSAGE> replyMessage,
  Pointer<WS_MESSAGE_DESCRIPTION> replyMessageDescription,
  Int32 readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> requestMessage,
  Pointer<WS_MESSAGE_DESCRIPTION> requestMessageDescription,
  int writeOption,
  Pointer requestBodyValue,
  int requestBodyValueSize,
  Pointer<WS_MESSAGE> replyMessage,
  Pointer<WS_MESSAGE_DESCRIPTION> replyMessageDescription,
  int readOption,
  Pointer<WS_HEAP> heap,
  Pointer value,
  int valueSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsRequestReply');

int WsRequestSecurityToken(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_REQUEST_SECURITY_TOKEN_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_SECURITY_TOKEN>> token,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsRequestSecurityToken(
      channel,
      properties,
      propertyCount,
      token,
      asyncContext,
      error,
    );

late final _WsRequestSecurityToken = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_REQUEST_SECURITY_TOKEN_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<Pointer<WS_SECURITY_TOKEN>> token,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_REQUEST_SECURITY_TOKEN_PROPERTY> properties,
  int propertyCount,
  Pointer<Pointer<WS_SECURITY_TOKEN>> token,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsRequestSecurityToken');

int WsResetChannel(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ERROR> error,
) =>
    _WsResetChannel(
      channel,
      error,
    );

late final _WsResetChannel = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ERROR> error,
)>('WsResetChannel');

int WsResetError(
  Pointer<WS_ERROR> error,
) =>
    _WsResetError(
      error,
    );

late final _WsResetError = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_ERROR> error,
)>('WsResetError');

int WsResetHeap(
  Pointer<WS_HEAP> heap,
  Pointer<WS_ERROR> error,
) =>
    _WsResetHeap(
      heap,
      error,
    );

late final _WsResetHeap = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_HEAP> heap,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_HEAP> heap,
  Pointer<WS_ERROR> error,
)>('WsResetHeap');

int WsResetListener(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_ERROR> error,
) =>
    _WsResetListener(
      listener,
      error,
    );

late final _WsResetListener = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_LISTENER> listener,
  Pointer<WS_ERROR> error,
)>('WsResetListener');

int WsResetMessage(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
) =>
    _WsResetMessage(
      message,
      error,
    );

late final _WsResetMessage = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
)>('WsResetMessage');

int WsResetMetadata(
  Pointer<WS_METADATA> metadata,
  Pointer<WS_ERROR> error,
) =>
    _WsResetMetadata(
      metadata,
      error,
    );

late final _WsResetMetadata = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_METADATA> metadata,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_METADATA> metadata,
  Pointer<WS_ERROR> error,
)>('WsResetMetadata');

int WsResetServiceHost(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ERROR> error,
) =>
    _WsResetServiceHost(
      serviceHost,
      error,
    );

late final _WsResetServiceHost = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_HOST> serviceHost,
  Pointer<WS_ERROR> error,
)>('WsResetServiceHost');

int WsResetServiceProxy(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ERROR> error,
) =>
    _WsResetServiceProxy(
      serviceProxy,
      error,
    );

late final _WsResetServiceProxy = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SERVICE_PROXY> serviceProxy,
  Pointer<WS_ERROR> error,
)>('WsResetServiceProxy');

int WsRevokeSecurityContext(
  Pointer<WS_SECURITY_CONTEXT> securityContext,
  Pointer<WS_ERROR> error,
) =>
    _WsRevokeSecurityContext(
      securityContext,
      error,
    );

late final _WsRevokeSecurityContext = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_SECURITY_CONTEXT> securityContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_SECURITY_CONTEXT> securityContext,
  Pointer<WS_ERROR> error,
)>('WsRevokeSecurityContext');

int WsSendFaultMessageForError(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> replyMessage,
  Pointer<WS_ERROR> faultError,
  int faultErrorCode,
  int faultDisclosure,
  Pointer<WS_MESSAGE> requestMessage,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsSendFaultMessageForError(
      channel,
      replyMessage,
      faultError,
      faultErrorCode,
      faultDisclosure,
      requestMessage,
      asyncContext,
      error,
    );

late final _WsSendFaultMessageForError = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> replyMessage,
  Pointer<WS_ERROR> faultError,
  Int32 faultErrorCode,
  Int32 faultDisclosure,
  Pointer<WS_MESSAGE> requestMessage,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> replyMessage,
  Pointer<WS_ERROR> faultError,
  int faultErrorCode,
  int faultDisclosure,
  Pointer<WS_MESSAGE> requestMessage,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsSendFaultMessageForError');

int WsSendMessage(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_MESSAGE_DESCRIPTION> messageDescription,
  int writeOption,
  Pointer bodyValue,
  int bodyValueSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsSendMessage(
      channel,
      message,
      messageDescription,
      writeOption,
      bodyValue,
      bodyValueSize,
      asyncContext,
      error,
    );

late final _WsSendMessage = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_MESSAGE_DESCRIPTION> messageDescription,
  Int32 writeOption,
  Pointer bodyValue,
  Uint32 bodyValueSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_MESSAGE_DESCRIPTION> messageDescription,
  int writeOption,
  Pointer bodyValue,
  int bodyValueSize,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsSendMessage');

int WsSendReplyMessage(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> replyMessage,
  Pointer<WS_MESSAGE_DESCRIPTION> replyMessageDescription,
  int writeOption,
  Pointer replyBodyValue,
  int replyBodyValueSize,
  Pointer<WS_MESSAGE> requestMessage,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsSendReplyMessage(
      channel,
      replyMessage,
      replyMessageDescription,
      writeOption,
      replyBodyValue,
      replyBodyValueSize,
      requestMessage,
      asyncContext,
      error,
    );

late final _WsSendReplyMessage = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> replyMessage,
  Pointer<WS_MESSAGE_DESCRIPTION> replyMessageDescription,
  Int32 writeOption,
  Pointer replyBodyValue,
  Uint32 replyBodyValueSize,
  Pointer<WS_MESSAGE> requestMessage,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> replyMessage,
  Pointer<WS_MESSAGE_DESCRIPTION> replyMessageDescription,
  int writeOption,
  Pointer replyBodyValue,
  int replyBodyValueSize,
  Pointer<WS_MESSAGE> requestMessage,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsSendReplyMessage');

int WsSetChannelProperty(
  Pointer<WS_CHANNEL> channel,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsSetChannelProperty(
      channel,
      id,
      value,
      valueSize,
      error,
    );

late final _WsSetChannelProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsSetChannelProperty');

int WsSetErrorProperty(
  Pointer<WS_ERROR> error,
  int id,
  Pointer value,
  int valueSize,
) =>
    _WsSetErrorProperty(
      error,
      id,
      value,
      valueSize,
    );

late final _WsSetErrorProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR> error,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
),
    int Function(
  Pointer<WS_ERROR> error,
  int id,
  Pointer value,
  int valueSize,
)>('WsSetErrorProperty');

int WsSetFaultErrorDetail(
  Pointer<WS_ERROR> error,
  Pointer<WS_FAULT_DETAIL_DESCRIPTION> faultDetailDescription,
  int writeOption,
  Pointer value,
  int valueSize,
) =>
    _WsSetFaultErrorDetail(
      error,
      faultDetailDescription,
      writeOption,
      value,
      valueSize,
    );

late final _WsSetFaultErrorDetail = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR> error,
  Pointer<WS_FAULT_DETAIL_DESCRIPTION> faultDetailDescription,
  Int32 writeOption,
  Pointer value,
  Uint32 valueSize,
),
    int Function(
  Pointer<WS_ERROR> error,
  Pointer<WS_FAULT_DETAIL_DESCRIPTION> faultDetailDescription,
  int writeOption,
  Pointer value,
  int valueSize,
)>('WsSetFaultErrorDetail');

int WsSetFaultErrorProperty(
  Pointer<WS_ERROR> error,
  int id,
  Pointer value,
  int valueSize,
) =>
    _WsSetFaultErrorProperty(
      error,
      id,
      value,
      valueSize,
    );

late final _WsSetFaultErrorProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_ERROR> error,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
),
    int Function(
  Pointer<WS_ERROR> error,
  int id,
  Pointer value,
  int valueSize,
)>('WsSetFaultErrorProperty');

int WsSetHeader(
  Pointer<WS_MESSAGE> message,
  int headerType,
  int valueType,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsSetHeader(
      message,
      headerType,
      valueType,
      writeOption,
      value,
      valueSize,
      error,
    );

late final _WsSetHeader = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Int32 headerType,
  Int32 valueType,
  Int32 writeOption,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  int headerType,
  int valueType,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsSetHeader');

int WsSetInput(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_READER_ENCODING> encoding,
  Pointer<WS_XML_READER_INPUT> input,
  Pointer<WS_XML_READER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
) =>
    _WsSetInput(
      reader,
      encoding,
      input,
      properties,
      propertyCount,
      error,
    );

late final _WsSetInput = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_READER_ENCODING> encoding,
  Pointer<WS_XML_READER_INPUT> input,
  Pointer<WS_XML_READER_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_READER_ENCODING> encoding,
  Pointer<WS_XML_READER_INPUT> input,
  Pointer<WS_XML_READER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
)>('WsSetInput');

int WsSetInputToBuffer(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_BUFFER> buffer,
  Pointer<WS_XML_READER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
) =>
    _WsSetInputToBuffer(
      reader,
      buffer,
      properties,
      propertyCount,
      error,
    );

late final _WsSetInputToBuffer = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_BUFFER> buffer,
  Pointer<WS_XML_READER_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_BUFFER> buffer,
  Pointer<WS_XML_READER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
)>('WsSetInputToBuffer');

int WsSetListenerProperty(
  Pointer<WS_LISTENER> listener,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsSetListenerProperty(
      listener,
      id,
      value,
      valueSize,
      error,
    );

late final _WsSetListenerProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_LISTENER> listener,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_LISTENER> listener,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsSetListenerProperty');

int WsSetMessageProperty(
  Pointer<WS_MESSAGE> message,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsSetMessageProperty(
      message,
      id,
      value,
      valueSize,
      error,
    );

late final _WsSetMessageProperty = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Int32 id,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  int id,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsSetMessageProperty');

int WsSetOutput(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_WRITER_ENCODING> encoding,
  Pointer<WS_XML_WRITER_OUTPUT> output,
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
) =>
    _WsSetOutput(
      writer,
      encoding,
      output,
      properties,
      propertyCount,
      error,
    );

late final _WsSetOutput = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_WRITER_ENCODING> encoding,
  Pointer<WS_XML_WRITER_OUTPUT> output,
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_WRITER_ENCODING> encoding,
  Pointer<WS_XML_WRITER_OUTPUT> output,
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
)>('WsSetOutput');

int WsSetOutputToBuffer(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_BUFFER> buffer,
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
) =>
    _WsSetOutputToBuffer(
      writer,
      buffer,
      properties,
      propertyCount,
      error,
    );

late final _WsSetOutputToBuffer = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_BUFFER> buffer,
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_BUFFER> buffer,
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
)>('WsSetOutputToBuffer');

int WsSetReaderPosition(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
) =>
    _WsSetReaderPosition(
      reader,
      nodePosition,
      error,
    );

late final _WsSetReaderPosition = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
)>('WsSetReaderPosition');

int WsSetWriterPosition(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
) =>
    _WsSetWriterPosition(
      writer,
      nodePosition,
      error,
    );

late final _WsSetWriterPosition = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_NODE_POSITION> nodePosition,
  Pointer<WS_ERROR> error,
)>('WsSetWriterPosition');

int WsShutdownSessionChannel(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsShutdownSessionChannel(
      channel,
      asyncContext,
      error,
    );

late final _WsShutdownSessionChannel = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsShutdownSessionChannel');

int WsSkipNode(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
) =>
    _WsSkipNode(
      reader,
      error,
    );

late final _WsSkipNode = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<WS_ERROR> error,
)>('WsSkipNode');

int WsStartReaderCanonicalization(
  Pointer<WS_XML_READER> reader,
  Pointer<NativeFunction<WS_WRITE_CALLBACK>> writeCallback,
  Pointer writeCallbackState,
  Pointer<WS_XML_CANONICALIZATION_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
) =>
    _WsStartReaderCanonicalization(
      reader,
      writeCallback,
      writeCallbackState,
      properties,
      propertyCount,
      error,
    );

late final _WsStartReaderCanonicalization = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_READER> reader,
  Pointer<NativeFunction<WS_WRITE_CALLBACK>> writeCallback,
  Pointer writeCallbackState,
  Pointer<WS_XML_CANONICALIZATION_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_READER> reader,
  Pointer<NativeFunction<WS_WRITE_CALLBACK>> writeCallback,
  Pointer writeCallbackState,
  Pointer<WS_XML_CANONICALIZATION_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
)>('WsStartReaderCanonicalization');

int WsStartWriterCanonicalization(
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_WRITE_CALLBACK>> writeCallback,
  Pointer writeCallbackState,
  Pointer<WS_XML_CANONICALIZATION_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
) =>
    _WsStartWriterCanonicalization(
      writer,
      writeCallback,
      writeCallbackState,
      properties,
      propertyCount,
      error,
    );

late final _WsStartWriterCanonicalization = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_WRITE_CALLBACK>> writeCallback,
  Pointer writeCallbackState,
  Pointer<WS_XML_CANONICALIZATION_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_WRITE_CALLBACK>> writeCallback,
  Pointer writeCallbackState,
  Pointer<WS_XML_CANONICALIZATION_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_ERROR> error,
)>('WsStartWriterCanonicalization');

int WsTrimXmlWhitespace(
  Pointer<Utf16> chars,
  int charCount,
  Pointer<Pointer<Uint16>> trimmedChars,
  Pointer<Uint32> trimmedCount,
  Pointer<WS_ERROR> error,
) =>
    _WsTrimXmlWhitespace(
      chars,
      charCount,
      trimmedChars,
      trimmedCount,
      error,
    );

late final _WsTrimXmlWhitespace = _webservices.lookupFunction<
    Int32 Function(
  Pointer<Utf16> chars,
  Uint32 charCount,
  Pointer<Pointer<Uint16>> trimmedChars,
  Pointer<Uint32> trimmedCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<Utf16> chars,
  int charCount,
  Pointer<Pointer<Uint16>> trimmedChars,
  Pointer<Uint32> trimmedCount,
  Pointer<WS_ERROR> error,
)>('WsTrimXmlWhitespace');

int WsVerifyXmlNCName(
  Pointer<Utf16> ncNameChars,
  int ncNameCharCount,
  Pointer<WS_ERROR> error,
) =>
    _WsVerifyXmlNCName(
      ncNameChars,
      ncNameCharCount,
      error,
    );

late final _WsVerifyXmlNCName = _webservices.lookupFunction<
    Int32 Function(
  Pointer<Utf16> ncNameChars,
  Uint32 ncNameCharCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<Utf16> ncNameChars,
  int ncNameCharCount,
  Pointer<WS_ERROR> error,
)>('WsVerifyXmlNCName');

int WsWriteArray(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  int valueType,
  Pointer array,
  int arraySize,
  int itemOffset,
  int itemCount,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteArray(
      writer,
      localName,
      ns,
      valueType,
      array,
      arraySize,
      itemOffset,
      itemCount,
      error,
    );

late final _WsWriteArray = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Int32 valueType,
  Pointer array,
  Uint32 arraySize,
  Uint32 itemOffset,
  Uint32 itemCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  int valueType,
  Pointer array,
  int arraySize,
  int itemOffset,
  int itemCount,
  Pointer<WS_ERROR> error,
)>('WsWriteArray');

int WsWriteAttribute(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ATTRIBUTE_DESCRIPTION> attributeDescription,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteAttribute(
      writer,
      attributeDescription,
      writeOption,
      value,
      valueSize,
      error,
    );

late final _WsWriteAttribute = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ATTRIBUTE_DESCRIPTION> attributeDescription,
  Int32 writeOption,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ATTRIBUTE_DESCRIPTION> attributeDescription,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsWriteAttribute');

int WsWriteBody(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> bodyDescription,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteBody(
      message,
      bodyDescription,
      writeOption,
      value,
      valueSize,
      error,
    );

late final _WsWriteBody = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> bodyDescription,
  Int32 writeOption,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ELEMENT_DESCRIPTION> bodyDescription,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsWriteBody');

int WsWriteBytes(
  Pointer<WS_XML_WRITER> writer,
  Pointer bytes,
  int byteCount,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteBytes(
      writer,
      bytes,
      byteCount,
      error,
    );

late final _WsWriteBytes = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer bytes,
  Uint32 byteCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer bytes,
  int byteCount,
  Pointer<WS_ERROR> error,
)>('WsWriteBytes');

int WsWriteChars(
  Pointer<WS_XML_WRITER> writer,
  Pointer<Utf16> chars,
  int charCount,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteChars(
      writer,
      chars,
      charCount,
      error,
    );

late final _WsWriteChars = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<Utf16> chars,
  Uint32 charCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<Utf16> chars,
  int charCount,
  Pointer<WS_ERROR> error,
)>('WsWriteChars');

int WsWriteCharsUtf8(
  Pointer<WS_XML_WRITER> writer,
  Pointer<Uint8> bytes,
  int byteCount,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteCharsUtf8(
      writer,
      bytes,
      byteCount,
      error,
    );

late final _WsWriteCharsUtf8 = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<Uint8> bytes,
  Uint32 byteCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<Uint8> bytes,
  int byteCount,
  Pointer<WS_ERROR> error,
)>('WsWriteCharsUtf8');

int WsWriteElement(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ELEMENT_DESCRIPTION> elementDescription,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteElement(
      writer,
      elementDescription,
      writeOption,
      value,
      valueSize,
      error,
    );

late final _WsWriteElement = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ELEMENT_DESCRIPTION> elementDescription,
  Int32 writeOption,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ELEMENT_DESCRIPTION> elementDescription,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsWriteElement');

int WsWriteEndAttribute(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteEndAttribute(
      writer,
      error,
    );

late final _WsWriteEndAttribute = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
)>('WsWriteEndAttribute');

int WsWriteEndCData(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteEndCData(
      writer,
      error,
    );

late final _WsWriteEndCData = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
)>('WsWriteEndCData');

int WsWriteEndElement(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteEndElement(
      writer,
      error,
    );

late final _WsWriteEndElement = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
)>('WsWriteEndElement');

int WsWriteEndStartElement(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteEndStartElement(
      writer,
      error,
    );

late final _WsWriteEndStartElement = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
)>('WsWriteEndStartElement');

int WsWriteEnvelopeEnd(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteEnvelopeEnd(
      message,
      error,
    );

late final _WsWriteEnvelopeEnd = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ERROR> error,
)>('WsWriteEnvelopeEnd');

int WsWriteEnvelopeStart(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_MESSAGE_DONE_CALLBACK>> doneCallback,
  Pointer doneCallbackState,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteEnvelopeStart(
      message,
      writer,
      doneCallback,
      doneCallbackState,
      error,
    );

late final _WsWriteEnvelopeStart = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_MESSAGE_DONE_CALLBACK>> doneCallback,
  Pointer doneCallbackState,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_MESSAGE> message,
  Pointer<WS_XML_WRITER> writer,
  Pointer<NativeFunction<WS_MESSAGE_DONE_CALLBACK>> doneCallback,
  Pointer doneCallbackState,
  Pointer<WS_ERROR> error,
)>('WsWriteEnvelopeStart');

int WsWriteMessageEnd(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteMessageEnd(
      channel,
      message,
      asyncContext,
      error,
    );

late final _WsWriteMessageEnd = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsWriteMessageEnd');

int WsWriteMessageStart(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteMessageStart(
      channel,
      message,
      asyncContext,
      error,
    );

late final _WsWriteMessageStart = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_CHANNEL> channel,
  Pointer<WS_MESSAGE> message,
  Pointer<WS_ASYNC_CONTEXT> asyncContext,
  Pointer<WS_ERROR> error,
)>('WsWriteMessageStart');

int WsWriteNode(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_NODE> node,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteNode(
      writer,
      node,
      error,
    );

late final _WsWriteNode = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_NODE> node,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_NODE> node,
  Pointer<WS_ERROR> error,
)>('WsWriteNode');

int WsWriteQualifiedName(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteQualifiedName(
      writer,
      prefix,
      localName,
      ns,
      error,
    );

late final _WsWriteQualifiedName = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<WS_ERROR> error,
)>('WsWriteQualifiedName');

int WsWriteStartAttribute(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  int singleQuote,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteStartAttribute(
      writer,
      prefix,
      localName,
      ns,
      singleQuote,
      error,
    );

late final _WsWriteStartAttribute = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Int32 singleQuote,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  int singleQuote,
  Pointer<WS_ERROR> error,
)>('WsWriteStartAttribute');

int WsWriteStartCData(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteStartCData(
      writer,
      error,
    );

late final _WsWriteStartCData = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_ERROR> error,
)>('WsWriteStartCData');

int WsWriteStartElement(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteStartElement(
      writer,
      prefix,
      localName,
      ns,
      error,
    );

late final _WsWriteStartElement = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> localName,
  Pointer<WS_XML_STRING> ns,
  Pointer<WS_ERROR> error,
)>('WsWriteStartElement');

int WsWriteText(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_TEXT> text,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteText(
      writer,
      text,
      error,
    );

late final _WsWriteText = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_TEXT> text,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_TEXT> text,
  Pointer<WS_ERROR> error,
)>('WsWriteText');

int WsWriteType(
  Pointer<WS_XML_WRITER> writer,
  int typeMapping,
  int type,
  Pointer typeDescription,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteType(
      writer,
      typeMapping,
      type,
      typeDescription,
      writeOption,
      value,
      valueSize,
      error,
    );

late final _WsWriteType = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Int32 typeMapping,
  Int32 type,
  Pointer typeDescription,
  Int32 writeOption,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  int typeMapping,
  int type,
  Pointer typeDescription,
  int writeOption,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsWriteType');

int WsWriteValue(
  Pointer<WS_XML_WRITER> writer,
  int valueType,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteValue(
      writer,
      valueType,
      value,
      valueSize,
      error,
    );

late final _WsWriteValue = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Int32 valueType,
  Pointer value,
  Uint32 valueSize,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  int valueType,
  Pointer value,
  int valueSize,
  Pointer<WS_ERROR> error,
)>('WsWriteValue');

int WsWriteXmlBuffer(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_BUFFER> xmlBuffer,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteXmlBuffer(
      writer,
      xmlBuffer,
      error,
    );

late final _WsWriteXmlBuffer = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_BUFFER> xmlBuffer,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_BUFFER> xmlBuffer,
  Pointer<WS_ERROR> error,
)>('WsWriteXmlBuffer');

int WsWriteXmlBufferToBytes(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_BUFFER> xmlBuffer,
  Pointer<WS_XML_WRITER_ENCODING> encoding,
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer> bytes,
  Pointer<Uint32> byteCount,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteXmlBufferToBytes(
      writer,
      xmlBuffer,
      encoding,
      properties,
      propertyCount,
      heap,
      bytes,
      byteCount,
      error,
    );

late final _WsWriteXmlBufferToBytes = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_BUFFER> xmlBuffer,
  Pointer<WS_XML_WRITER_ENCODING> encoding,
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  Uint32 propertyCount,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer> bytes,
  Pointer<Uint32> byteCount,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_BUFFER> xmlBuffer,
  Pointer<WS_XML_WRITER_ENCODING> encoding,
  Pointer<WS_XML_WRITER_PROPERTY> properties,
  int propertyCount,
  Pointer<WS_HEAP> heap,
  Pointer<Pointer> bytes,
  Pointer<Uint32> byteCount,
  Pointer<WS_ERROR> error,
)>('WsWriteXmlBufferToBytes');

int WsWriteXmlnsAttribute(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> ns,
  int singleQuote,
  Pointer<WS_ERROR> error,
) =>
    _WsWriteXmlnsAttribute(
      writer,
      prefix,
      ns,
      singleQuote,
      error,
    );

late final _WsWriteXmlnsAttribute = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> ns,
  Int32 singleQuote,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_WRITER> writer,
  Pointer<WS_XML_STRING> prefix,
  Pointer<WS_XML_STRING> ns,
  int singleQuote,
  Pointer<WS_ERROR> error,
)>('WsWriteXmlnsAttribute');

int WsXmlStringEquals(
  Pointer<WS_XML_STRING> string1,
  Pointer<WS_XML_STRING> string2,
  Pointer<WS_ERROR> error,
) =>
    _WsXmlStringEquals(
      string1,
      string2,
      error,
    );

late final _WsXmlStringEquals = _webservices.lookupFunction<
    Int32 Function(
  Pointer<WS_XML_STRING> string1,
  Pointer<WS_XML_STRING> string2,
  Pointer<WS_ERROR> error,
),
    int Function(
  Pointer<WS_XML_STRING> string1,
  Pointer<WS_XML_STRING> string2,
  Pointer<WS_ERROR> error,
)>('WsXmlStringEquals');

// -----------------------------------------------------------------------
// webauthn.dll
// -----------------------------------------------------------------------
final _webauthn = DynamicLibrary.open('webauthn.dll');

int WebAuthNAuthenticatorGetAssertion(
  int hWnd,
  Pointer<Utf16> pwszRpId,
  Pointer<WEBAUTHN_CLIENT_DATA> pWebAuthNClientData,
  Pointer<WEBAUTHN_AUTHENTICATOR_GET_ASSERTION_OPTIONS>
      pWebAuthNGetAssertionOptions,
  Pointer<Pointer<WEBAUTHN_ASSERTION>> ppWebAuthNAssertion,
) =>
    _WebAuthNAuthenticatorGetAssertion(
      hWnd,
      pwszRpId,
      pWebAuthNClientData,
      pWebAuthNGetAssertionOptions,
      ppWebAuthNAssertion,
    );

late final _WebAuthNAuthenticatorGetAssertion = _webauthn.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> pwszRpId,
  Pointer<WEBAUTHN_CLIENT_DATA> pWebAuthNClientData,
  Pointer<WEBAUTHN_AUTHENTICATOR_GET_ASSERTION_OPTIONS>
      pWebAuthNGetAssertionOptions,
  Pointer<Pointer<WEBAUTHN_ASSERTION>> ppWebAuthNAssertion,
),
    int Function(
  int hWnd,
  Pointer<Utf16> pwszRpId,
  Pointer<WEBAUTHN_CLIENT_DATA> pWebAuthNClientData,
  Pointer<WEBAUTHN_AUTHENTICATOR_GET_ASSERTION_OPTIONS>
      pWebAuthNGetAssertionOptions,
  Pointer<Pointer<WEBAUTHN_ASSERTION>> ppWebAuthNAssertion,
)>('WebAuthNAuthenticatorGetAssertion');

int WebAuthNAuthenticatorMakeCredential(
  int hWnd,
  Pointer<WEBAUTHN_RP_ENTITY_INFORMATION> pRpInformation,
  Pointer<WEBAUTHN_USER_ENTITY_INFORMATION> pUserInformation,
  Pointer<WEBAUTHN_COSE_CREDENTIAL_PARAMETERS> pPubKeyCredParams,
  Pointer<WEBAUTHN_CLIENT_DATA> pWebAuthNClientData,
  Pointer<WEBAUTHN_AUTHENTICATOR_MAKE_CREDENTIAL_OPTIONS>
      pWebAuthNMakeCredentialOptions,
  Pointer<Pointer<WEBAUTHN_CREDENTIAL_ATTESTATION>>
      ppWebAuthNCredentialAttestation,
) =>
    _WebAuthNAuthenticatorMakeCredential(
      hWnd,
      pRpInformation,
      pUserInformation,
      pPubKeyCredParams,
      pWebAuthNClientData,
      pWebAuthNMakeCredentialOptions,
      ppWebAuthNCredentialAttestation,
    );

late final _WebAuthNAuthenticatorMakeCredential = _webauthn.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<WEBAUTHN_RP_ENTITY_INFORMATION> pRpInformation,
  Pointer<WEBAUTHN_USER_ENTITY_INFORMATION> pUserInformation,
  Pointer<WEBAUTHN_COSE_CREDENTIAL_PARAMETERS> pPubKeyCredParams,
  Pointer<WEBAUTHN_CLIENT_DATA> pWebAuthNClientData,
  Pointer<WEBAUTHN_AUTHENTICATOR_MAKE_CREDENTIAL_OPTIONS>
      pWebAuthNMakeCredentialOptions,
  Pointer<Pointer<WEBAUTHN_CREDENTIAL_ATTESTATION>>
      ppWebAuthNCredentialAttestation,
),
    int Function(
  int hWnd,
  Pointer<WEBAUTHN_RP_ENTITY_INFORMATION> pRpInformation,
  Pointer<WEBAUTHN_USER_ENTITY_INFORMATION> pUserInformation,
  Pointer<WEBAUTHN_COSE_CREDENTIAL_PARAMETERS> pPubKeyCredParams,
  Pointer<WEBAUTHN_CLIENT_DATA> pWebAuthNClientData,
  Pointer<WEBAUTHN_AUTHENTICATOR_MAKE_CREDENTIAL_OPTIONS>
      pWebAuthNMakeCredentialOptions,
  Pointer<Pointer<WEBAUTHN_CREDENTIAL_ATTESTATION>>
      ppWebAuthNCredentialAttestation,
)>('WebAuthNAuthenticatorMakeCredential');

int WebAuthNCancelCurrentOperation(
  Pointer<GUID> pCancellationId,
) =>
    _WebAuthNCancelCurrentOperation(
      pCancellationId,
    );

late final _WebAuthNCancelCurrentOperation = _webauthn.lookupFunction<
    Int32 Function(
  Pointer<GUID> pCancellationId,
),
    int Function(
  Pointer<GUID> pCancellationId,
)>('WebAuthNCancelCurrentOperation');

void WebAuthNFreeAssertion(
  Pointer<WEBAUTHN_ASSERTION> pWebAuthNAssertion,
) =>
    _WebAuthNFreeAssertion(
      pWebAuthNAssertion,
    );

late final _WebAuthNFreeAssertion = _webauthn.lookupFunction<
    Void Function(
  Pointer<WEBAUTHN_ASSERTION> pWebAuthNAssertion,
),
    void Function(
  Pointer<WEBAUTHN_ASSERTION> pWebAuthNAssertion,
)>('WebAuthNFreeAssertion');

void WebAuthNFreeCredentialAttestation(
  Pointer<WEBAUTHN_CREDENTIAL_ATTESTATION> pWebAuthNCredentialAttestation,
) =>
    _WebAuthNFreeCredentialAttestation(
      pWebAuthNCredentialAttestation,
    );

late final _WebAuthNFreeCredentialAttestation = _webauthn.lookupFunction<
    Void Function(
  Pointer<WEBAUTHN_CREDENTIAL_ATTESTATION> pWebAuthNCredentialAttestation,
),
    void Function(
  Pointer<WEBAUTHN_CREDENTIAL_ATTESTATION> pWebAuthNCredentialAttestation,
)>('WebAuthNFreeCredentialAttestation');

int WebAuthNGetApiVersionNumber() => _WebAuthNGetApiVersionNumber();

late final _WebAuthNGetApiVersionNumber =
    _webauthn.lookupFunction<Uint32 Function(), int Function()>(
        'WebAuthNGetApiVersionNumber');

int WebAuthNGetCancellationId(
  Pointer<GUID> pCancellationId,
) =>
    _WebAuthNGetCancellationId(
      pCancellationId,
    );

late final _WebAuthNGetCancellationId = _webauthn.lookupFunction<
    Int32 Function(
  Pointer<GUID> pCancellationId,
),
    int Function(
  Pointer<GUID> pCancellationId,
)>('WebAuthNGetCancellationId');

Pointer<Utf16> WebAuthNGetErrorName(
  int hr,
) =>
    _WebAuthNGetErrorName(
      hr,
    );

late final _WebAuthNGetErrorName = _webauthn.lookupFunction<
    Pointer<Utf16> Function(
  Int32 hr,
),
    Pointer<Utf16> Function(
  int hr,
)>('WebAuthNGetErrorName');

int WebAuthNGetW3CExceptionDOMError(
  int hr,
) =>
    _WebAuthNGetW3CExceptionDOMError(
      hr,
    );

late final _WebAuthNGetW3CExceptionDOMError = _webauthn.lookupFunction<
    Int32 Function(
  Int32 hr,
),
    int Function(
  int hr,
)>('WebAuthNGetW3CExceptionDOMError');

int WebAuthNIsUserVerifyingPlatformAuthenticatorAvailable(
  Pointer<Int32> pbIsUserVerifyingPlatformAuthenticatorAvailable,
) =>
    _WebAuthNIsUserVerifyingPlatformAuthenticatorAvailable(
      pbIsUserVerifyingPlatformAuthenticatorAvailable,
    );

late final _WebAuthNIsUserVerifyingPlatformAuthenticatorAvailable =
    _webauthn.lookupFunction<
        Int32 Function(
  Pointer<Int32> pbIsUserVerifyingPlatformAuthenticatorAvailable,
),
        int Function(
  Pointer<Int32> pbIsUserVerifyingPlatformAuthenticatorAvailable,
)>('WebAuthNIsUserVerifyingPlatformAuthenticatorAvailable');
