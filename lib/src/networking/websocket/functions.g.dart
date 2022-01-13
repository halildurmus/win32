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
import '../../networking/websocket/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// websocket.dll
// -----------------------------------------------------------------------
final _websocket = DynamicLibrary.open('websocket.dll');

void WebSocketAbortHandle(
  int hWebSocket,
) =>
    _WebSocketAbortHandle(
      hWebSocket,
    );

late final _WebSocketAbortHandle = _websocket.lookupFunction<
    Void Function(
  IntPtr hWebSocket,
),
    void Function(
  int hWebSocket,
)>('WebSocketAbortHandle');

int WebSocketBeginClientHandshake(
  int hWebSocket,
  Pointer<Pointer<Utf8>> pszSubprotocols,
  int ulSubprotocolCount,
  Pointer<Pointer<Utf8>> pszExtensions,
  int ulExtensionCount,
  Pointer<WEB_SOCKET_HTTP_HEADER> pInitialHeaders,
  int ulInitialHeaderCount,
  Pointer<Pointer<WEB_SOCKET_HTTP_HEADER>> pAdditionalHeaders,
  Pointer<Uint32> pulAdditionalHeaderCount,
) =>
    _WebSocketBeginClientHandshake(
      hWebSocket,
      pszSubprotocols,
      ulSubprotocolCount,
      pszExtensions,
      ulExtensionCount,
      pInitialHeaders,
      ulInitialHeaderCount,
      pAdditionalHeaders,
      pulAdditionalHeaderCount,
    );

late final _WebSocketBeginClientHandshake = _websocket.lookupFunction<
    Int32 Function(
  IntPtr hWebSocket,
  Pointer<Pointer<Utf8>> pszSubprotocols,
  Uint32 ulSubprotocolCount,
  Pointer<Pointer<Utf8>> pszExtensions,
  Uint32 ulExtensionCount,
  Pointer<WEB_SOCKET_HTTP_HEADER> pInitialHeaders,
  Uint32 ulInitialHeaderCount,
  Pointer<Pointer<WEB_SOCKET_HTTP_HEADER>> pAdditionalHeaders,
  Pointer<Uint32> pulAdditionalHeaderCount,
),
    int Function(
  int hWebSocket,
  Pointer<Pointer<Utf8>> pszSubprotocols,
  int ulSubprotocolCount,
  Pointer<Pointer<Utf8>> pszExtensions,
  int ulExtensionCount,
  Pointer<WEB_SOCKET_HTTP_HEADER> pInitialHeaders,
  int ulInitialHeaderCount,
  Pointer<Pointer<WEB_SOCKET_HTTP_HEADER>> pAdditionalHeaders,
  Pointer<Uint32> pulAdditionalHeaderCount,
)>('WebSocketBeginClientHandshake');

int WebSocketBeginServerHandshake(
  int hWebSocket,
  Pointer<Utf8> pszSubprotocolSelected,
  Pointer<Pointer<Utf8>> pszExtensionSelected,
  int ulExtensionSelectedCount,
  Pointer<WEB_SOCKET_HTTP_HEADER> pRequestHeaders,
  int ulRequestHeaderCount,
  Pointer<Pointer<WEB_SOCKET_HTTP_HEADER>> pResponseHeaders,
  Pointer<Uint32> pulResponseHeaderCount,
) =>
    _WebSocketBeginServerHandshake(
      hWebSocket,
      pszSubprotocolSelected,
      pszExtensionSelected,
      ulExtensionSelectedCount,
      pRequestHeaders,
      ulRequestHeaderCount,
      pResponseHeaders,
      pulResponseHeaderCount,
    );

late final _WebSocketBeginServerHandshake = _websocket.lookupFunction<
    Int32 Function(
  IntPtr hWebSocket,
  Pointer<Utf8> pszSubprotocolSelected,
  Pointer<Pointer<Utf8>> pszExtensionSelected,
  Uint32 ulExtensionSelectedCount,
  Pointer<WEB_SOCKET_HTTP_HEADER> pRequestHeaders,
  Uint32 ulRequestHeaderCount,
  Pointer<Pointer<WEB_SOCKET_HTTP_HEADER>> pResponseHeaders,
  Pointer<Uint32> pulResponseHeaderCount,
),
    int Function(
  int hWebSocket,
  Pointer<Utf8> pszSubprotocolSelected,
  Pointer<Pointer<Utf8>> pszExtensionSelected,
  int ulExtensionSelectedCount,
  Pointer<WEB_SOCKET_HTTP_HEADER> pRequestHeaders,
  int ulRequestHeaderCount,
  Pointer<Pointer<WEB_SOCKET_HTTP_HEADER>> pResponseHeaders,
  Pointer<Uint32> pulResponseHeaderCount,
)>('WebSocketBeginServerHandshake');

void WebSocketCompleteAction(
  int hWebSocket,
  Pointer pvActionContext,
  int ulBytesTransferred,
) =>
    _WebSocketCompleteAction(
      hWebSocket,
      pvActionContext,
      ulBytesTransferred,
    );

late final _WebSocketCompleteAction = _websocket.lookupFunction<
    Void Function(
  IntPtr hWebSocket,
  Pointer pvActionContext,
  Uint32 ulBytesTransferred,
),
    void Function(
  int hWebSocket,
  Pointer pvActionContext,
  int ulBytesTransferred,
)>('WebSocketCompleteAction');

int WebSocketCreateClientHandle(
  Pointer<WEB_SOCKET_PROPERTY> pProperties,
  int ulPropertyCount,
  Pointer<IntPtr> phWebSocket,
) =>
    _WebSocketCreateClientHandle(
      pProperties,
      ulPropertyCount,
      phWebSocket,
    );

late final _WebSocketCreateClientHandle = _websocket.lookupFunction<
    Int32 Function(
  Pointer<WEB_SOCKET_PROPERTY> pProperties,
  Uint32 ulPropertyCount,
  Pointer<IntPtr> phWebSocket,
),
    int Function(
  Pointer<WEB_SOCKET_PROPERTY> pProperties,
  int ulPropertyCount,
  Pointer<IntPtr> phWebSocket,
)>('WebSocketCreateClientHandle');

int WebSocketCreateServerHandle(
  Pointer<WEB_SOCKET_PROPERTY> pProperties,
  int ulPropertyCount,
  Pointer<IntPtr> phWebSocket,
) =>
    _WebSocketCreateServerHandle(
      pProperties,
      ulPropertyCount,
      phWebSocket,
    );

late final _WebSocketCreateServerHandle = _websocket.lookupFunction<
    Int32 Function(
  Pointer<WEB_SOCKET_PROPERTY> pProperties,
  Uint32 ulPropertyCount,
  Pointer<IntPtr> phWebSocket,
),
    int Function(
  Pointer<WEB_SOCKET_PROPERTY> pProperties,
  int ulPropertyCount,
  Pointer<IntPtr> phWebSocket,
)>('WebSocketCreateServerHandle');

void WebSocketDeleteHandle(
  int hWebSocket,
) =>
    _WebSocketDeleteHandle(
      hWebSocket,
    );

late final _WebSocketDeleteHandle = _websocket.lookupFunction<
    Void Function(
  IntPtr hWebSocket,
),
    void Function(
  int hWebSocket,
)>('WebSocketDeleteHandle');

int WebSocketEndClientHandshake(
  int hWebSocket,
  Pointer<WEB_SOCKET_HTTP_HEADER> pResponseHeaders,
  int ulReponseHeaderCount,
  Pointer<Uint32> pulSelectedExtensions,
  Pointer<Uint32> pulSelectedExtensionCount,
  Pointer<Uint32> pulSelectedSubprotocol,
) =>
    _WebSocketEndClientHandshake(
      hWebSocket,
      pResponseHeaders,
      ulReponseHeaderCount,
      pulSelectedExtensions,
      pulSelectedExtensionCount,
      pulSelectedSubprotocol,
    );

late final _WebSocketEndClientHandshake = _websocket.lookupFunction<
    Int32 Function(
  IntPtr hWebSocket,
  Pointer<WEB_SOCKET_HTTP_HEADER> pResponseHeaders,
  Uint32 ulReponseHeaderCount,
  Pointer<Uint32> pulSelectedExtensions,
  Pointer<Uint32> pulSelectedExtensionCount,
  Pointer<Uint32> pulSelectedSubprotocol,
),
    int Function(
  int hWebSocket,
  Pointer<WEB_SOCKET_HTTP_HEADER> pResponseHeaders,
  int ulReponseHeaderCount,
  Pointer<Uint32> pulSelectedExtensions,
  Pointer<Uint32> pulSelectedExtensionCount,
  Pointer<Uint32> pulSelectedSubprotocol,
)>('WebSocketEndClientHandshake');

int WebSocketEndServerHandshake(
  int hWebSocket,
) =>
    _WebSocketEndServerHandshake(
      hWebSocket,
    );

late final _WebSocketEndServerHandshake = _websocket.lookupFunction<
    Int32 Function(
  IntPtr hWebSocket,
),
    int Function(
  int hWebSocket,
)>('WebSocketEndServerHandshake');

int WebSocketGetAction(
  int hWebSocket,
  int eActionQueue,
  Pointer<WEB_SOCKET_BUFFER> pDataBuffers,
  Pointer<Uint32> pulDataBufferCount,
  Pointer<Int32> pAction,
  Pointer<Int32> pBufferType,
  Pointer<Pointer> pvApplicationContext,
  Pointer<Pointer> pvActionContext,
) =>
    _WebSocketGetAction(
      hWebSocket,
      eActionQueue,
      pDataBuffers,
      pulDataBufferCount,
      pAction,
      pBufferType,
      pvApplicationContext,
      pvActionContext,
    );

late final _WebSocketGetAction = _websocket.lookupFunction<
    Int32 Function(
  IntPtr hWebSocket,
  Int32 eActionQueue,
  Pointer<WEB_SOCKET_BUFFER> pDataBuffers,
  Pointer<Uint32> pulDataBufferCount,
  Pointer<Int32> pAction,
  Pointer<Int32> pBufferType,
  Pointer<Pointer> pvApplicationContext,
  Pointer<Pointer> pvActionContext,
),
    int Function(
  int hWebSocket,
  int eActionQueue,
  Pointer<WEB_SOCKET_BUFFER> pDataBuffers,
  Pointer<Uint32> pulDataBufferCount,
  Pointer<Int32> pAction,
  Pointer<Int32> pBufferType,
  Pointer<Pointer> pvApplicationContext,
  Pointer<Pointer> pvActionContext,
)>('WebSocketGetAction');

int WebSocketGetGlobalProperty(
  int eType,
  Pointer pvValue,
  Pointer<Uint32> ulSize,
) =>
    _WebSocketGetGlobalProperty(
      eType,
      pvValue,
      ulSize,
    );

late final _WebSocketGetGlobalProperty = _websocket.lookupFunction<
    Int32 Function(
  Int32 eType,
  Pointer pvValue,
  Pointer<Uint32> ulSize,
),
    int Function(
  int eType,
  Pointer pvValue,
  Pointer<Uint32> ulSize,
)>('WebSocketGetGlobalProperty');

int WebSocketReceive(
  int hWebSocket,
  Pointer<WEB_SOCKET_BUFFER> pBuffer,
  Pointer pvContext,
) =>
    _WebSocketReceive(
      hWebSocket,
      pBuffer,
      pvContext,
    );

late final _WebSocketReceive = _websocket.lookupFunction<
    Int32 Function(
  IntPtr hWebSocket,
  Pointer<WEB_SOCKET_BUFFER> pBuffer,
  Pointer pvContext,
),
    int Function(
  int hWebSocket,
  Pointer<WEB_SOCKET_BUFFER> pBuffer,
  Pointer pvContext,
)>('WebSocketReceive');

int WebSocketSend(
  int hWebSocket,
  int BufferType,
  Pointer<WEB_SOCKET_BUFFER> pBuffer,
  Pointer Context,
) =>
    _WebSocketSend(
      hWebSocket,
      BufferType,
      pBuffer,
      Context,
    );

late final _WebSocketSend = _websocket.lookupFunction<
    Int32 Function(
  IntPtr hWebSocket,
  Int32 BufferType,
  Pointer<WEB_SOCKET_BUFFER> pBuffer,
  Pointer Context,
),
    int Function(
  int hWebSocket,
  int BufferType,
  Pointer<WEB_SOCKET_BUFFER> pBuffer,
  Pointer Context,
)>('WebSocketSend');
