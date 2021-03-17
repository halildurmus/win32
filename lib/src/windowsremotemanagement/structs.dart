// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
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

class WSMAN_DATA_TEXT extends Struct {
  @Uint32() external int bufferLength;
  external Pointer<Utf16> buffer;
}

class WSMAN_DATA_BINARY extends Struct {
  @Uint32() external int dataLength;
  external Pointer<Uint8> data;
}

class WSMAN_ERROR extends Struct {
  @Uint32() external int code;
  external Pointer<Utf16> errorDetail;
  external Pointer<Utf16> language;
  external Pointer<Utf16> machineName;
  external Pointer<Utf16> pluginName;
}

class WSMAN_USERNAME_PASSWORD_CREDS extends Struct {
  external Pointer<Utf16> username;
  external Pointer<Utf16> password;
}

class WSMAN_OPTION extends Struct {
  external Pointer<Utf16> name;
  external Pointer<Utf16> value;
  @Int32() external int mustComply;
}

class WSMAN_OPTION_SET extends Struct {
  @Uint32() external int optionsCount;
  external Pointer<WSMAN_OPTION> options;
  @Int32() external int optionsMustUnderstand;
}

class WSMAN_OPTION_SETEX extends Struct {
  @Uint32() external int optionsCount;
  external Pointer<WSMAN_OPTION> options;
  @Int32() external int optionsMustUnderstand;
  external Pointer<Pointer<Utf16>> optionTypes;
}

class WSMAN_KEY extends Struct {
  external Pointer<Utf16> key;
  external Pointer<Utf16> value;
}

class WSMAN_SELECTOR_SET extends Struct {
  @Uint32() external int numberKeys;
  external Pointer<WSMAN_KEY> keys;
}

class WSMAN_FRAGMENT extends Struct {
  external Pointer<Utf16> path;
  external Pointer<Utf16> dialect;
}

class WSMAN_FILTER extends Struct {
  external Pointer<Utf16> filter;
  external Pointer<Utf16> dialect;
}

class WSMAN_OPERATION_INFO extends Struct {
  external WSMAN_FRAGMENT fragment;
  external WSMAN_FILTER filter;
  external WSMAN_SELECTOR_SET selectorSet;
  external WSMAN_OPTION_SET optionSet;
  external Pointer reserved;
  @Uint32() external int version;
}

class WSMAN_OPERATION_INFOEX extends Struct {
  external WSMAN_FRAGMENT fragment;
  external WSMAN_FILTER filter;
  external WSMAN_SELECTOR_SET selectorSet;
  external WSMAN_OPTION_SETEX optionSet;
  @Uint32() external int version;
  external Pointer<Utf16> uiLocale;
  external Pointer<Utf16> dataLocale;
}

class WSMAN_API extends Struct {
}

class WSMAN_PROXY_INFO extends Struct {
  @Uint32() external int accessType;
  external WSMAN_AUTHENTICATION_CREDENTIALS authenticationCredentials;
}

class WSMAN_SESSION extends Struct {
}

class WSMAN_OPERATION extends Struct {
}

class WSMAN_SHELL extends Struct {
}

class WSMAN_COMMAND extends Struct {
}

class WSMAN_STREAM_ID_SET extends Struct {
  @Uint32() external int streamIDsCount;
  external Pointer<Pointer<Utf16>> streamIDs;
}

class WSMAN_ENVIRONMENT_VARIABLE extends Struct {
  external Pointer<Utf16> name;
  external Pointer<Utf16> value;
}

class WSMAN_ENVIRONMENT_VARIABLE_SET extends Struct {
  @Uint32() external int varsCount;
  external Pointer<WSMAN_ENVIRONMENT_VARIABLE> vars;
}

class WSMAN_SHELL_STARTUP_INFO_V10 extends Struct {
  external Pointer<WSMAN_STREAM_ID_SET> inputStreamSet;
  external Pointer<WSMAN_STREAM_ID_SET> outputStreamSet;
  @Uint32() external int idleTimeoutMs;
  external Pointer<Utf16> workingDirectory;
  external Pointer<WSMAN_ENVIRONMENT_VARIABLE_SET> variableSet;
}

class WSMAN_SHELL_STARTUP_INFO_V11 extends Struct {
  external WSMAN_SHELL_STARTUP_INFO_V10 __AnonymousBase_wsman_L665_C48;
  external Pointer<Utf16> name;
}

class WSMAN_SHELL_DISCONNECT_INFO extends Struct {
  @Uint32() external int idleTimeoutMs;
}

class WSMAN_RECEIVE_DATA_RESULT extends Struct {
  external Pointer<Utf16> streamId;
  external WSMAN_DATA streamData;
  external Pointer<Utf16> commandState;
  @Uint32() external int exitCode;
}

class WSMAN_CONNECT_DATA extends Struct {
  external WSMAN_DATA data;
}

class WSMAN_CREATE_SHELL_DATA extends Struct {
  external WSMAN_DATA data;
}

class WSMAN_RESPONSE_DATA extends Struct {
  external WSMAN_RECEIVE_DATA_RESULT receiveData;
  external WSMAN_CONNECT_DATA connectData;
  external WSMAN_CREATE_SHELL_DATA createData;
}

class WSMAN_SHELL_ASYNC extends Struct {
  external Pointer operationContext;
  external WSMAN_SHELL_COMPLETION_FUNCTION completionFunction;
}

class WSMAN_COMMAND_ARG_SET extends Struct {
  @Uint32() external int argsCount;
  external Pointer<Pointer<Utf16>> args;
}

class WSMAN_CERTIFICATE_DETAILS extends Struct {
  external Pointer<Utf16> subject;
  external Pointer<Utf16> issuerName;
  external Pointer<Utf16> issuerThumbprint;
  external Pointer<Utf16> subjectName;
}

class WSMAN_SENDER_DETAILS extends Struct {
  external Pointer<Utf16> senderName;
  external Pointer<Utf16> authenticationMechanism;
  external Pointer<WSMAN_CERTIFICATE_DETAILS> certificateDetails;
  @IntPtr() external int clientToken;
  external Pointer<Utf16> httpURL;
}

class WSMAN_PLUGIN_REQUEST extends Struct {
  external Pointer<WSMAN_SENDER_DETAILS> senderDetails;
  external Pointer<Utf16> locale;
  external Pointer<Utf16> resourceUri;
  external Pointer<WSMAN_OPERATION_INFO> operationInfo;
  @Int32() external int shutdownNotification;
  @IntPtr() external int shutdownNotificationHandle;
  external Pointer<Utf16> dataLocale;
}

class WSMAN_AUTHZ_QUOTA extends Struct {
  @Uint32() external int maxAllowedConcurrentShells;
  @Uint32() external int maxAllowedConcurrentOperations;
  @Uint32() external int timeslotSize;
  @Uint32() external int maxAllowedOperationsPerTimeslot;
}

class WSMan extends Struct {
}

class WSManInternal extends Struct {
}

