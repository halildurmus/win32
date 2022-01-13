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
import '../../system/remotemanagement/structs.g.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// wsmsvc.dll
// -----------------------------------------------------------------------
final _wsmsvc = DynamicLibrary.open('wsmsvc.dll');

void WSManCloseCommand(
  Pointer<WSMAN_COMMAND> commandHandle,
  int flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
) =>
    _WSManCloseCommand(
      commandHandle,
      flags,
      async,
    );

late final _WSManCloseCommand = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_COMMAND> commandHandle,
  Uint32 flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
),
    void Function(
  Pointer<WSMAN_COMMAND> commandHandle,
  int flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
)>('WSManCloseCommand');

int WSManCloseOperation(
  Pointer<WSMAN_OPERATION> operationHandle,
  int flags,
) =>
    _WSManCloseOperation(
      operationHandle,
      flags,
    );

late final _WSManCloseOperation = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_OPERATION> operationHandle,
  Uint32 flags,
),
    int Function(
  Pointer<WSMAN_OPERATION> operationHandle,
  int flags,
)>('WSManCloseOperation');

int WSManCloseSession(
  Pointer<WSMAN_SESSION> session,
  int flags,
) =>
    _WSManCloseSession(
      session,
      flags,
    );

late final _WSManCloseSession = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_SESSION> session,
  Uint32 flags,
),
    int Function(
  Pointer<WSMAN_SESSION> session,
  int flags,
)>('WSManCloseSession');

void WSManCloseShell(
  Pointer<WSMAN_SHELL> shellHandle,
  int flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
) =>
    _WSManCloseShell(
      shellHandle,
      flags,
      async,
    );

late final _WSManCloseShell = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SHELL> shellHandle,
  Uint32 flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
),
    void Function(
  Pointer<WSMAN_SHELL> shellHandle,
  int flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
)>('WSManCloseShell');

void WSManConnectShell(
  Pointer<WSMAN_SESSION> session,
  int flags,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> shellID,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> connectXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_SHELL>> shell,
) =>
    _WSManConnectShell(
      session,
      flags,
      resourceUri,
      shellID,
      options,
      connectXml,
      async,
      shell,
    );

late final _WSManConnectShell = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SESSION> session,
  Uint32 flags,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> shellID,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> connectXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_SHELL>> shell,
),
    void Function(
  Pointer<WSMAN_SESSION> session,
  int flags,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> shellID,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> connectXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_SHELL>> shell,
)>('WSManConnectShell');

void WSManConnectShellCommand(
  Pointer<WSMAN_SHELL> shell,
  int flags,
  Pointer<Utf16> commandID,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> connectXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_COMMAND>> command,
) =>
    _WSManConnectShellCommand(
      shell,
      flags,
      commandID,
      options,
      connectXml,
      async,
      command,
    );

late final _WSManConnectShellCommand = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SHELL> shell,
  Uint32 flags,
  Pointer<Utf16> commandID,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> connectXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_COMMAND>> command,
),
    void Function(
  Pointer<WSMAN_SHELL> shell,
  int flags,
  Pointer<Utf16> commandID,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> connectXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_COMMAND>> command,
)>('WSManConnectShellCommand');

int WSManCreateSession(
  Pointer<WSMAN_API> apiHandle,
  Pointer<Utf16> connection,
  int flags,
  Pointer<WSMAN_AUTHENTICATION_CREDENTIALS> serverAuthenticationCredentials,
  Pointer<WSMAN_PROXY_INFO> proxyInfo,
  Pointer<Pointer<WSMAN_SESSION>> session,
) =>
    _WSManCreateSession(
      apiHandle,
      connection,
      flags,
      serverAuthenticationCredentials,
      proxyInfo,
      session,
    );

late final _WSManCreateSession = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_API> apiHandle,
  Pointer<Utf16> connection,
  Uint32 flags,
  Pointer<WSMAN_AUTHENTICATION_CREDENTIALS> serverAuthenticationCredentials,
  Pointer<WSMAN_PROXY_INFO> proxyInfo,
  Pointer<Pointer<WSMAN_SESSION>> session,
),
    int Function(
  Pointer<WSMAN_API> apiHandle,
  Pointer<Utf16> connection,
  int flags,
  Pointer<WSMAN_AUTHENTICATION_CREDENTIALS> serverAuthenticationCredentials,
  Pointer<WSMAN_PROXY_INFO> proxyInfo,
  Pointer<Pointer<WSMAN_SESSION>> session,
)>('WSManCreateSession');

void WSManCreateShell(
  Pointer<WSMAN_SESSION> session,
  int flags,
  Pointer<Utf16> resourceUri,
  Pointer<WSMAN_SHELL_STARTUP_INFO_V11> startupInfo,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> createXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_SHELL>> shell,
) =>
    _WSManCreateShell(
      session,
      flags,
      resourceUri,
      startupInfo,
      options,
      createXml,
      async,
      shell,
    );

late final _WSManCreateShell = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SESSION> session,
  Uint32 flags,
  Pointer<Utf16> resourceUri,
  Pointer<WSMAN_SHELL_STARTUP_INFO_V11> startupInfo,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> createXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_SHELL>> shell,
),
    void Function(
  Pointer<WSMAN_SESSION> session,
  int flags,
  Pointer<Utf16> resourceUri,
  Pointer<WSMAN_SHELL_STARTUP_INFO_V11> startupInfo,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> createXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_SHELL>> shell,
)>('WSManCreateShell');

void WSManCreateShellEx(
  Pointer<WSMAN_SESSION> session,
  int flags,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> shellId,
  Pointer<WSMAN_SHELL_STARTUP_INFO_V11> startupInfo,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> createXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_SHELL>> shell,
) =>
    _WSManCreateShellEx(
      session,
      flags,
      resourceUri,
      shellId,
      startupInfo,
      options,
      createXml,
      async,
      shell,
    );

late final _WSManCreateShellEx = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SESSION> session,
  Uint32 flags,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> shellId,
  Pointer<WSMAN_SHELL_STARTUP_INFO_V11> startupInfo,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> createXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_SHELL>> shell,
),
    void Function(
  Pointer<WSMAN_SESSION> session,
  int flags,
  Pointer<Utf16> resourceUri,
  Pointer<Utf16> shellId,
  Pointer<WSMAN_SHELL_STARTUP_INFO_V11> startupInfo,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_DATA> createXml,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_SHELL>> shell,
)>('WSManCreateShellEx');

int WSManDeinitialize(
  Pointer<WSMAN_API> apiHandle,
  int flags,
) =>
    _WSManDeinitialize(
      apiHandle,
      flags,
    );

late final _WSManDeinitialize = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_API> apiHandle,
  Uint32 flags,
),
    int Function(
  Pointer<WSMAN_API> apiHandle,
  int flags,
)>('WSManDeinitialize');

void WSManDisconnectShell(
  Pointer<WSMAN_SHELL> shell,
  int flags,
  Pointer<WSMAN_SHELL_DISCONNECT_INFO> disconnectInfo,
  Pointer<WSMAN_SHELL_ASYNC> async,
) =>
    _WSManDisconnectShell(
      shell,
      flags,
      disconnectInfo,
      async,
    );

late final _WSManDisconnectShell = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SHELL> shell,
  Uint32 flags,
  Pointer<WSMAN_SHELL_DISCONNECT_INFO> disconnectInfo,
  Pointer<WSMAN_SHELL_ASYNC> async,
),
    void Function(
  Pointer<WSMAN_SHELL> shell,
  int flags,
  Pointer<WSMAN_SHELL_DISCONNECT_INFO> disconnectInfo,
  Pointer<WSMAN_SHELL_ASYNC> async,
)>('WSManDisconnectShell');

int WSManGetErrorMessage(
  Pointer<WSMAN_API> apiHandle,
  int flags,
  Pointer<Utf16> languageCode,
  int errorCode,
  int messageLength,
  Pointer<Utf16> message,
  Pointer<Uint32> messageLengthUsed,
) =>
    _WSManGetErrorMessage(
      apiHandle,
      flags,
      languageCode,
      errorCode,
      messageLength,
      message,
      messageLengthUsed,
    );

late final _WSManGetErrorMessage = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_API> apiHandle,
  Uint32 flags,
  Pointer<Utf16> languageCode,
  Uint32 errorCode,
  Uint32 messageLength,
  Pointer<Utf16> message,
  Pointer<Uint32> messageLengthUsed,
),
    int Function(
  Pointer<WSMAN_API> apiHandle,
  int flags,
  Pointer<Utf16> languageCode,
  int errorCode,
  int messageLength,
  Pointer<Utf16> message,
  Pointer<Uint32> messageLengthUsed,
)>('WSManGetErrorMessage');

int WSManGetSessionOptionAsDword(
  Pointer<WSMAN_SESSION> session,
  int option,
  Pointer<Uint32> value,
) =>
    _WSManGetSessionOptionAsDword(
      session,
      option,
      value,
    );

late final _WSManGetSessionOptionAsDword = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_SESSION> session,
  Int32 option,
  Pointer<Uint32> value,
),
    int Function(
  Pointer<WSMAN_SESSION> session,
  int option,
  Pointer<Uint32> value,
)>('WSManGetSessionOptionAsDword');

int WSManGetSessionOptionAsString(
  Pointer<WSMAN_SESSION> session,
  int option,
  int stringLength,
  Pointer<Utf16> string,
  Pointer<Uint32> stringLengthUsed,
) =>
    _WSManGetSessionOptionAsString(
      session,
      option,
      stringLength,
      string,
      stringLengthUsed,
    );

late final _WSManGetSessionOptionAsString = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_SESSION> session,
  Int32 option,
  Uint32 stringLength,
  Pointer<Utf16> string,
  Pointer<Uint32> stringLengthUsed,
),
    int Function(
  Pointer<WSMAN_SESSION> session,
  int option,
  int stringLength,
  Pointer<Utf16> string,
  Pointer<Uint32> stringLengthUsed,
)>('WSManGetSessionOptionAsString');

int WSManInitialize(
  int flags,
  Pointer<Pointer<WSMAN_API>> apiHandle,
) =>
    _WSManInitialize(
      flags,
      apiHandle,
    );

late final _WSManInitialize = _wsmsvc.lookupFunction<
    Uint32 Function(
  Uint32 flags,
  Pointer<Pointer<WSMAN_API>> apiHandle,
),
    int Function(
  int flags,
  Pointer<Pointer<WSMAN_API>> apiHandle,
)>('WSManInitialize');

int WSManPluginAuthzOperationComplete(
  Pointer<WSMAN_SENDER_DETAILS> senderDetails,
  int flags,
  Pointer userAuthorizationContext,
  int errorCode,
  Pointer<Utf16> extendedErrorInformation,
) =>
    _WSManPluginAuthzOperationComplete(
      senderDetails,
      flags,
      userAuthorizationContext,
      errorCode,
      extendedErrorInformation,
    );

late final _WSManPluginAuthzOperationComplete = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_SENDER_DETAILS> senderDetails,
  Uint32 flags,
  Pointer userAuthorizationContext,
  Uint32 errorCode,
  Pointer<Utf16> extendedErrorInformation,
),
    int Function(
  Pointer<WSMAN_SENDER_DETAILS> senderDetails,
  int flags,
  Pointer userAuthorizationContext,
  int errorCode,
  Pointer<Utf16> extendedErrorInformation,
)>('WSManPluginAuthzOperationComplete');

int WSManPluginAuthzQueryQuotaComplete(
  Pointer<WSMAN_SENDER_DETAILS> senderDetails,
  int flags,
  Pointer<WSMAN_AUTHZ_QUOT> quota,
  int errorCode,
  Pointer<Utf16> extendedErrorInformation,
) =>
    _WSManPluginAuthzQueryQuotaComplete(
      senderDetails,
      flags,
      quota,
      errorCode,
      extendedErrorInformation,
    );

late final _WSManPluginAuthzQueryQuotaComplete = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_SENDER_DETAILS> senderDetails,
  Uint32 flags,
  Pointer<WSMAN_AUTHZ_QUOT> quota,
  Uint32 errorCode,
  Pointer<Utf16> extendedErrorInformation,
),
    int Function(
  Pointer<WSMAN_SENDER_DETAILS> senderDetails,
  int flags,
  Pointer<WSMAN_AUTHZ_QUOT> quota,
  int errorCode,
  Pointer<Utf16> extendedErrorInformation,
)>('WSManPluginAuthzQueryQuotaComplete');

int WSManPluginAuthzUserComplete(
  Pointer<WSMAN_SENDER_DETAILS> senderDetails,
  int flags,
  Pointer userAuthorizationContext,
  int impersonationToken,
  int userIsAdministrator,
  int errorCode,
  Pointer<Utf16> extendedErrorInformation,
) =>
    _WSManPluginAuthzUserComplete(
      senderDetails,
      flags,
      userAuthorizationContext,
      impersonationToken,
      userIsAdministrator,
      errorCode,
      extendedErrorInformation,
    );

late final _WSManPluginAuthzUserComplete = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_SENDER_DETAILS> senderDetails,
  Uint32 flags,
  Pointer userAuthorizationContext,
  IntPtr impersonationToken,
  Int32 userIsAdministrator,
  Uint32 errorCode,
  Pointer<Utf16> extendedErrorInformation,
),
    int Function(
  Pointer<WSMAN_SENDER_DETAILS> senderDetails,
  int flags,
  Pointer userAuthorizationContext,
  int impersonationToken,
  int userIsAdministrator,
  int errorCode,
  Pointer<Utf16> extendedErrorInformation,
)>('WSManPluginAuthzUserComplete');

int WSManPluginFreeRequestDetails(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
) =>
    _WSManPluginFreeRequestDetails(
      requestDetails,
    );

late final _WSManPluginFreeRequestDetails = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
),
    int Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
)>('WSManPluginFreeRequestDetails');

int WSManPluginGetConfiguration(
  Pointer pluginContext,
  int flags,
  Pointer<WSMAN_DATA> data,
) =>
    _WSManPluginGetConfiguration(
      pluginContext,
      flags,
      data,
    );

late final _WSManPluginGetConfiguration = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer pluginContext,
  Uint32 flags,
  Pointer<WSMAN_DATA> data,
),
    int Function(
  Pointer pluginContext,
  int flags,
  Pointer<WSMAN_DATA> data,
)>('WSManPluginGetConfiguration');

int WSManPluginGetOperationParameters(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  int flags,
  Pointer<WSMAN_DATA> data,
) =>
    _WSManPluginGetOperationParameters(
      requestDetails,
      flags,
      data,
    );

late final _WSManPluginGetOperationParameters = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  Uint32 flags,
  Pointer<WSMAN_DATA> data,
),
    int Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  int flags,
  Pointer<WSMAN_DATA> data,
)>('WSManPluginGetOperationParameters');

int WSManPluginOperationComplete(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  int flags,
  int errorCode,
  Pointer<Utf16> extendedInformation,
) =>
    _WSManPluginOperationComplete(
      requestDetails,
      flags,
      errorCode,
      extendedInformation,
    );

late final _WSManPluginOperationComplete = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  Uint32 flags,
  Uint32 errorCode,
  Pointer<Utf16> extendedInformation,
),
    int Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  int flags,
  int errorCode,
  Pointer<Utf16> extendedInformation,
)>('WSManPluginOperationComplete');

int WSManPluginReceiveResult(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  int flags,
  Pointer<Utf16> stream,
  Pointer<WSMAN_DATA> streamResult,
  Pointer<Utf16> commandState,
  int exitCode,
) =>
    _WSManPluginReceiveResult(
      requestDetails,
      flags,
      stream,
      streamResult,
      commandState,
      exitCode,
    );

late final _WSManPluginReceiveResult = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  Uint32 flags,
  Pointer<Utf16> stream,
  Pointer<WSMAN_DATA> streamResult,
  Pointer<Utf16> commandState,
  Uint32 exitCode,
),
    int Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  int flags,
  Pointer<Utf16> stream,
  Pointer<WSMAN_DATA> streamResult,
  Pointer<Utf16> commandState,
  int exitCode,
)>('WSManPluginReceiveResult');

int WSManPluginReportCompletion(
  Pointer pluginContext,
  int flags,
) =>
    _WSManPluginReportCompletion(
      pluginContext,
      flags,
    );

late final _WSManPluginReportCompletion = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer pluginContext,
  Uint32 flags,
),
    int Function(
  Pointer pluginContext,
  int flags,
)>('WSManPluginReportCompletion');

int WSManPluginReportContext(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  int flags,
  Pointer context,
) =>
    _WSManPluginReportContext(
      requestDetails,
      flags,
      context,
    );

late final _WSManPluginReportContext = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  Uint32 flags,
  Pointer context,
),
    int Function(
  Pointer<WSMAN_PLUGIN_REQUEST> requestDetails,
  int flags,
  Pointer context,
)>('WSManPluginReportContext');

void WSManReceiveShellOutput(
  Pointer<WSMAN_SHELL> shell,
  Pointer<WSMAN_COMMAND> command,
  int flags,
  Pointer<WSMAN_STREAM_ID_SET> desiredStreamSet,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_OPERATION>> receiveOperation,
) =>
    _WSManReceiveShellOutput(
      shell,
      command,
      flags,
      desiredStreamSet,
      async,
      receiveOperation,
    );

late final _WSManReceiveShellOutput = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SHELL> shell,
  Pointer<WSMAN_COMMAND> command,
  Uint32 flags,
  Pointer<WSMAN_STREAM_ID_SET> desiredStreamSet,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_OPERATION>> receiveOperation,
),
    void Function(
  Pointer<WSMAN_SHELL> shell,
  Pointer<WSMAN_COMMAND> command,
  int flags,
  Pointer<WSMAN_STREAM_ID_SET> desiredStreamSet,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_OPERATION>> receiveOperation,
)>('WSManReceiveShellOutput');

void WSManReconnectShell(
  Pointer<WSMAN_SHELL> shell,
  int flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
) =>
    _WSManReconnectShell(
      shell,
      flags,
      async,
    );

late final _WSManReconnectShell = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SHELL> shell,
  Uint32 flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
),
    void Function(
  Pointer<WSMAN_SHELL> shell,
  int flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
)>('WSManReconnectShell');

void WSManReconnectShellCommand(
  Pointer<WSMAN_COMMAND> commandHandle,
  int flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
) =>
    _WSManReconnectShellCommand(
      commandHandle,
      flags,
      async,
    );

late final _WSManReconnectShellCommand = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_COMMAND> commandHandle,
  Uint32 flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
),
    void Function(
  Pointer<WSMAN_COMMAND> commandHandle,
  int flags,
  Pointer<WSMAN_SHELL_ASYNC> async,
)>('WSManReconnectShellCommand');

void WSManRunShellCommand(
  Pointer<WSMAN_SHELL> shell,
  int flags,
  Pointer<Utf16> commandLine,
  Pointer<WSMAN_COMMAND_ARG_SET> args,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_COMMAND>> command,
) =>
    _WSManRunShellCommand(
      shell,
      flags,
      commandLine,
      args,
      options,
      async,
      command,
    );

late final _WSManRunShellCommand = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SHELL> shell,
  Uint32 flags,
  Pointer<Utf16> commandLine,
  Pointer<WSMAN_COMMAND_ARG_SET> args,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_COMMAND>> command,
),
    void Function(
  Pointer<WSMAN_SHELL> shell,
  int flags,
  Pointer<Utf16> commandLine,
  Pointer<WSMAN_COMMAND_ARG_SET> args,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_COMMAND>> command,
)>('WSManRunShellCommand');

void WSManRunShellCommandEx(
  Pointer<WSMAN_SHELL> shell,
  int flags,
  Pointer<Utf16> commandId,
  Pointer<Utf16> commandLine,
  Pointer<WSMAN_COMMAND_ARG_SET> args,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_COMMAND>> command,
) =>
    _WSManRunShellCommandEx(
      shell,
      flags,
      commandId,
      commandLine,
      args,
      options,
      async,
      command,
    );

late final _WSManRunShellCommandEx = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SHELL> shell,
  Uint32 flags,
  Pointer<Utf16> commandId,
  Pointer<Utf16> commandLine,
  Pointer<WSMAN_COMMAND_ARG_SET> args,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_COMMAND>> command,
),
    void Function(
  Pointer<WSMAN_SHELL> shell,
  int flags,
  Pointer<Utf16> commandId,
  Pointer<Utf16> commandLine,
  Pointer<WSMAN_COMMAND_ARG_SET> args,
  Pointer<WSMAN_OPTION_SET> options,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_COMMAND>> command,
)>('WSManRunShellCommandEx');

void WSManSendShellInput(
  Pointer<WSMAN_SHELL> shell,
  Pointer<WSMAN_COMMAND> command,
  int flags,
  Pointer<Utf16> streamId,
  Pointer<WSMAN_DATA> streamData,
  int endOfStream,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_OPERATION>> sendOperation,
) =>
    _WSManSendShellInput(
      shell,
      command,
      flags,
      streamId,
      streamData,
      endOfStream,
      async,
      sendOperation,
    );

late final _WSManSendShellInput = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SHELL> shell,
  Pointer<WSMAN_COMMAND> command,
  Uint32 flags,
  Pointer<Utf16> streamId,
  Pointer<WSMAN_DATA> streamData,
  Int32 endOfStream,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_OPERATION>> sendOperation,
),
    void Function(
  Pointer<WSMAN_SHELL> shell,
  Pointer<WSMAN_COMMAND> command,
  int flags,
  Pointer<Utf16> streamId,
  Pointer<WSMAN_DATA> streamData,
  int endOfStream,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_OPERATION>> sendOperation,
)>('WSManSendShellInput');

int WSManSetSessionOption(
  Pointer<WSMAN_SESSION> session,
  int option,
  Pointer<WSMAN_DATA> data,
) =>
    _WSManSetSessionOption(
      session,
      option,
      data,
    );

late final _WSManSetSessionOption = _wsmsvc.lookupFunction<
    Uint32 Function(
  Pointer<WSMAN_SESSION> session,
  Int32 option,
  Pointer<WSMAN_DATA> data,
),
    int Function(
  Pointer<WSMAN_SESSION> session,
  int option,
  Pointer<WSMAN_DATA> data,
)>('WSManSetSessionOption');

void WSManSignalShell(
  Pointer<WSMAN_SHELL> shell,
  Pointer<WSMAN_COMMAND> command,
  int flags,
  Pointer<Utf16> code,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_OPERATION>> signalOperation,
) =>
    _WSManSignalShell(
      shell,
      command,
      flags,
      code,
      async,
      signalOperation,
    );

late final _WSManSignalShell = _wsmsvc.lookupFunction<
    Void Function(
  Pointer<WSMAN_SHELL> shell,
  Pointer<WSMAN_COMMAND> command,
  Uint32 flags,
  Pointer<Utf16> code,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_OPERATION>> signalOperation,
),
    void Function(
  Pointer<WSMAN_SHELL> shell,
  Pointer<WSMAN_COMMAND> command,
  int flags,
  Pointer<Utf16> code,
  Pointer<WSMAN_SHELL_ASYNC> async,
  Pointer<Pointer<WSMAN_OPERATION>> signalOperation,
)>('WSManSignalShell');
