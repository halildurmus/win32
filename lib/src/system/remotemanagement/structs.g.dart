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
import '../../system/remotemanagement/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/remotemanagement/callbacks.g.dart';

/// {@category Struct}
class WSMAN_API extends Opaque {}

/// {@category Struct}
class WSMAN_AUTHENTICATION_CREDENTIALS extends Struct {
  @Uint32()
  external int authenticationMechanism;

  external _WSMAN_AUTHENTICATION_CREDENTIALS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WSMAN_AUTHENTICATION_CREDENTIALS__Anonymous_e__Union extends Union {
  external WSMAN_USERNAME_PASSWORD_CREDS userAccount;

  external Pointer<Utf16> certificateThumbprint;
}

extension WSMAN_AUTHENTICATION_CREDENTIALS_Extension
    on WSMAN_AUTHENTICATION_CREDENTIALS {
  WSMAN_USERNAME_PASSWORD_CREDS get userAccount => this.Anonymous.userAccount;
  set userAccount(WSMAN_USERNAME_PASSWORD_CREDS value) =>
      this.Anonymous.userAccount = value;

  Pointer<Utf16> get certificateThumbprint =>
      this.Anonymous.certificateThumbprint;
  set certificateThumbprint(Pointer<Utf16> value) =>
      this.Anonymous.certificateThumbprint = value;
}

/// {@category Struct}
class WSMAN_CERTIFICATE_DETAILS extends Struct {
  external Pointer<Utf16> subject;

  external Pointer<Utf16> issuerName;

  external Pointer<Utf16> issuerThumbprint;

  external Pointer<Utf16> subjectName;
}

/// {@category Struct}
class WSMAN_COMMAND extends Opaque {}

/// {@category Struct}
class WSMAN_COMMAND_ARG_SET extends Struct {
  @Uint32()
  external int argsCount;

  external Pointer<Pointer<Utf16>> args;
}

/// {@category Struct}
class WSMAN_CONNECT_DATA extends Struct {
  external WSMAN_DATA data;
}

/// {@category Struct}
class WSMAN_CREATE_SHELL_DATA extends Struct {
  external WSMAN_DATA data;
}

/// {@category Struct}
class WSMAN_DATA extends Struct {
  @Int32()
  external int type;

  external _WSMAN_DATA__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _WSMAN_DATA__Anonymous_e__Union extends Union {
  external WSMAN_DATA_TEXT text;

  external WSMAN_DATA_BINARY binaryData;

  @Uint32()
  external int number;
}

extension WSMAN_DATA_Extension on WSMAN_DATA {
  WSMAN_DATA_TEXT get text => this.Anonymous.text;
  set text(WSMAN_DATA_TEXT value) => this.Anonymous.text = value;

  WSMAN_DATA_BINARY get binaryData => this.Anonymous.binaryData;
  set binaryData(WSMAN_DATA_BINARY value) => this.Anonymous.binaryData = value;

  int get number => this.Anonymous.number;
  set number(int value) => this.Anonymous.number = value;
}

/// {@category Struct}
class WSMAN_DATA_BINARY extends Struct {
  @Uint32()
  external int dataLength;

  external Pointer<Uint8> data;
}

/// {@category Struct}
class WSMAN_DATA_TEXT extends Struct {
  @Uint32()
  external int bufferLength;

  external Pointer<Utf16> buffer;
}

/// {@category Struct}
class WSMAN_ENVIRONMENT_VARIABLE extends Struct {
  external Pointer<Utf16> name;

  external Pointer<Utf16> value;
}

/// {@category Struct}
class WSMAN_ENVIRONMENT_VARIABLE_SET extends Struct {
  @Uint32()
  external int varsCount;

  external Pointer<WSMAN_ENVIRONMENT_VARIABLE> vars;
}

/// {@category Struct}
class WSMAN_ERROR extends Struct {
  @Uint32()
  external int code;

  external Pointer<Utf16> errorDetail;

  external Pointer<Utf16> language;

  external Pointer<Utf16> machineName;

  external Pointer<Utf16> pluginName;
}

/// {@category Struct}
class WSMAN_FILTER extends Struct {
  external Pointer<Utf16> filter;

  external Pointer<Utf16> dialect;
}

/// {@category Struct}
class WSMAN_FRAGMENT extends Struct {
  external Pointer<Utf16> path;

  external Pointer<Utf16> dialect;
}

/// {@category Struct}
class WSMAN_KEY extends Struct {
  external Pointer<Utf16> key;

  external Pointer<Utf16> value;
}

/// {@category Struct}
class WSMAN_OPERATION extends Opaque {}

/// {@category Struct}
class WSMAN_OPERATION_INFO extends Struct {
  external WSMAN_FRAGMENT fragment;

  external WSMAN_FILTER filter;

  external WSMAN_SELECTOR_SET selectorSet;

  external WSMAN_OPTION_SET optionSet;

  external Pointer reserved;

  @Uint32()
  external int version;
}

/// {@category Struct}
class WSMAN_OPERATION_INFOEX extends Struct {
  external WSMAN_FRAGMENT fragment;

  external WSMAN_FILTER filter;

  external WSMAN_SELECTOR_SET selectorSet;

  external WSMAN_OPTION_SETEX optionSet;

  @Uint32()
  external int version;

  external Pointer<Utf16> uiLocale;

  external Pointer<Utf16> dataLocale;
}

/// {@category Struct}
class WSMAN_OPTION extends Struct {
  external Pointer<Utf16> name;

  external Pointer<Utf16> value;

  @Int32()
  external int mustComply;
}

/// {@category Struct}
class WSMAN_OPTION_SET extends Struct {
  @Uint32()
  external int optionsCount;

  external Pointer<WSMAN_OPTION> options;

  @Int32()
  external int optionsMustUnderstand;
}

/// {@category Struct}
class WSMAN_OPTION_SETEX extends Struct {
  @Uint32()
  external int optionsCount;

  external Pointer<WSMAN_OPTION> options;

  @Int32()
  external int optionsMustUnderstand;

  external Pointer<Pointer<Utf16>> optionTypes;
}

/// {@category Struct}
class WSMAN_PLUGIN_REQUEST extends Struct {
  external Pointer<WSMAN_SENDER_DETAILS> senderDetails;

  external Pointer<Utf16> locale;

  external Pointer<Utf16> resourceUri;

  external Pointer<WSMAN_OPERATION_INFO> operationInfo;

  @Int32()
  external int shutdownNotification;

  @IntPtr()
  external int shutdownNotificationHandle;

  external Pointer<Utf16> dataLocale;
}

/// {@category Struct}
class WSMAN_PROXY_INFO extends Struct {
  @Uint32()
  external int accessType;

  external WSMAN_AUTHENTICATION_CREDENTIALS authenticationCredentials;
}

/// {@category Struct}
class WSMAN_RECEIVE_DATA_RESULT extends Struct {
  external Pointer<Utf16> streamId;

  external WSMAN_DATA streamData;

  external Pointer<Utf16> commandState;

  @Uint32()
  external int exitCode;
}

/// {@category Struct}
class WSMAN_RESPONSE_DATA extends Union {
  external WSMAN_RECEIVE_DATA_RESULT receiveData;

  external WSMAN_CONNECT_DATA connectData;

  external WSMAN_CREATE_SHELL_DATA createData;
}

/// {@category Struct}
class WSMAN_SELECTOR_SET extends Struct {
  @Uint32()
  external int numberKeys;

  external Pointer<WSMAN_KEY> keys;
}

/// {@category Struct}
class WSMAN_SENDER_DETAILS extends Struct {
  external Pointer<Utf16> senderName;

  external Pointer<Utf16> authenticationMechanism;

  external Pointer<WSMAN_CERTIFICATE_DETAILS> certificateDetails;

  @IntPtr()
  external int clientToken;

  external Pointer<Utf16> httpURL;
}

/// {@category Struct}
class WSMAN_SESSION extends Opaque {}

/// {@category Struct}
class WSMAN_SHELL extends Opaque {}

/// {@category Struct}
class WSMAN_SHELL_ASYNC extends Struct {
  external Pointer operationContext;

  external Pointer<NativeFunction<WSMAN_SHELL_COMPLETION_FUNCTION>>
      completionFunction;
}

/// {@category Struct}
class WSMAN_SHELL_DISCONNECT_INFO extends Struct {
  @Uint32()
  external int idleTimeoutMs;
}

/// {@category Struct}
class WSMAN_SHELL_STARTUP_INFO_V10 extends Struct {
  external Pointer<WSMAN_STREAM_ID_SET> inputStreamSet;

  external Pointer<WSMAN_STREAM_ID_SET> outputStreamSet;

  @Uint32()
  external int idleTimeoutMs;

  external Pointer<Utf16> workingDirectory;

  external Pointer<WSMAN_ENVIRONMENT_VARIABLE_SET> variableSet;
}

/// {@category Struct}
class WSMAN_SHELL_STARTUP_INFO_V11 extends Struct {
  external WSMAN_SHELL_STARTUP_INFO_V10 AnonymousBase_wsman_L665_C48;

  external Pointer<Utf16> name;
}

/// {@category Struct}
class WSMAN_STREAM_ID_SET extends Struct {
  @Uint32()
  external int streamIDsCount;

  external Pointer<Pointer<Utf16>> streamIDs;
}

/// {@category Struct}
class WSMAN_USERNAME_PASSWORD_CREDS extends Struct {
  external Pointer<Utf16> username;

  external Pointer<Utf16> password;
}
