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
import '../../system/remotemanagement/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef WSMAN_PLUGIN_AUTHORIZE_OPERATION = Void Function(
  Pointer pluginContext,
  Pointer<WSMAN_SENDER_DETAILS> senderDetails,
  Uint32 flags,
  Uint32 operation,
  Pointer<Utf16> action,
  Pointer<Utf16> resourceUri,
);
typedef WSMAN_PLUGIN_AUTHORIZE_RELEASE_CONTEXT = Void Function(
  Pointer userAuthorizationContext,
);
typedef WSMAN_PLUGIN_AUTHORIZE_USER = Void Function(
  Pointer pluginContext,
  Pointer<WSMAN_SENDER_DETAILS> senderDetails,
  Uint32 flags,
);
typedef WSMAN_PLUGIN_COMMAND = Void Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  Uint32 flags,
  Pointer shellContext,
  Pointer<Utf16> commandLine,
  Pointer<WSMAN_COMMAND_ARG_SET> arguments,
);
typedef WSMAN_PLUGIN_CONNECT = Void Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  Uint32 flags,
  Pointer shellContext,
  Pointer commandContext,
  Pointer<WSMAN_DATA> inboundConnectInformation,
);
typedef WSMAN_PLUGIN_RECEIVE = Void Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  Uint32 flags,
  Pointer shellContext,
  Pointer commandContext,
  Pointer<WSMAN_STREAM_ID_SET> streamSet,
);
typedef WSMAN_PLUGIN_RELEASE_COMMAND_CONTEXT = Void Function(
  Pointer shellContext,
  Pointer commandContext,
);
typedef WSMAN_PLUGIN_RELEASE_SHELL_CONTEXT = Void Function(
  Pointer shellContext,
);
typedef WSMAN_PLUGIN_SEND = Void Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  Uint32 flags,
  Pointer shellContext,
  Pointer commandContext,
  Pointer<Utf16> stream,
  Pointer<WSMAN_DATA> inboundData,
);
typedef WSMAN_PLUGIN_SHELL = Void Function(
  Pointer pluginContext,
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  Uint32 flags,
  Pointer<WSMAN_SHELL_STARTUP_INFO_V11> startupInfo,
  Pointer<WSMAN_DATA> inboundShellInformation,
);
typedef WSMAN_PLUGIN_SHUTDOWN = Uint32 Function(
  Pointer pluginContext,
  Uint32 flags,
  Uint32 reason,
);
typedef WSMAN_PLUGIN_SIGNAL = Void Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  Uint32 flags,
  Pointer shellContext,
  Pointer commandContext,
  Pointer<Utf16> code,
);
typedef WSMAN_PLUGIN_STARTUP = Uint32 Function(
  Uint32 flags,
  Pointer<Utf16> applicationIdentification,
  Pointer<Utf16> extraInfo,
  Pointer<Pointer> pluginContext,
);
typedef WSMAN_SHELL_COMPLETION_FUNCTION = Void Function(
  Pointer operationContext,
  Uint32 flags,
  Pointer<WSMAN_ERROR> error,
  Pointer<WSMAN_SHELL> shell,
  Pointer<WSMAN_COMMAND> command,
  Pointer<WSMAN_OPERATION> operationHandle,
  Pointer<WSMAN_RESPONSE_DATA> data,
);
