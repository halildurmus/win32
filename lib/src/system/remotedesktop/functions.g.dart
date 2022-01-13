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
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/structs.g.dart';
import '../../security/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart'; // -----------------------------------------------------------------------

// wtsapi32.dll
// -----------------------------------------------------------------------
final _wtsapi32 = DynamicLibrary.open('wtsapi32.dll');

void WTSCloseServer(
  int hServer,
) =>
    _WTSCloseServer(
      hServer,
    );

late final _WTSCloseServer = _wtsapi32.lookupFunction<
    Void Function(
  IntPtr hServer,
),
    void Function(
  int hServer,
)>('WTSCloseServer');

int WTSConnectSession(
  int LogonId,
  int TargetLogonId,
  Pointer<Utf16> pPassword,
  int bWait,
) =>
    _WTSConnectSession(
      LogonId,
      TargetLogonId,
      pPassword,
      bWait,
    );

late final _WTSConnectSession = _wtsapi32.lookupFunction<
    Int32 Function(
  Uint32 LogonId,
  Uint32 TargetLogonId,
  Pointer<Utf16> pPassword,
  Int32 bWait,
),
    int Function(
  int LogonId,
  int TargetLogonId,
  Pointer<Utf16> pPassword,
  int bWait,
)>('WTSConnectSessionW');

int WTSCreateListener(
  int hServer,
  Pointer pReserved,
  int Reserved,
  Pointer<Utf16> pListenerName,
  Pointer<WTSLISTENERCONFIG> pBuffer,
  int flag,
) =>
    _WTSCreateListener(
      hServer,
      pReserved,
      Reserved,
      pListenerName,
      pBuffer,
      flag,
    );

late final _WTSCreateListener = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Pointer pReserved,
  Uint32 Reserved,
  Pointer<Utf16> pListenerName,
  Pointer<WTSLISTENERCONFIG> pBuffer,
  Uint32 flag,
),
    int Function(
  int hServer,
  Pointer pReserved,
  int Reserved,
  Pointer<Utf16> pListenerName,
  Pointer<WTSLISTENERCONFIG> pBuffer,
  int flag,
)>('WTSCreateListenerW');

int WTSDisconnectSession(
  int hServer,
  int SessionId,
  int bWait,
) =>
    _WTSDisconnectSession(
      hServer,
      SessionId,
      bWait,
    );

late final _WTSDisconnectSession = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Uint32 SessionId,
  Int32 bWait,
),
    int Function(
  int hServer,
  int SessionId,
  int bWait,
)>('WTSDisconnectSession');

int WTSEnableChildSessions(
  int bEnable,
) =>
    _WTSEnableChildSessions(
      bEnable,
    );

late final _WTSEnableChildSessions = _wtsapi32.lookupFunction<
    Int32 Function(
  Int32 bEnable,
),
    int Function(
  int bEnable,
)>('WTSEnableChildSessions');

int WTSEnumerateListeners(
  int hServer,
  Pointer pReserved,
  int Reserved,
  Pointer<Pointer<Uint16>> pListeners,
  Pointer<Uint32> pCount,
) =>
    _WTSEnumerateListeners(
      hServer,
      pReserved,
      Reserved,
      pListeners,
      pCount,
    );

late final _WTSEnumerateListeners = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Pointer pReserved,
  Uint32 Reserved,
  Pointer<Pointer<Uint16>> pListeners,
  Pointer<Uint32> pCount,
),
    int Function(
  int hServer,
  Pointer pReserved,
  int Reserved,
  Pointer<Pointer<Uint16>> pListeners,
  Pointer<Uint32> pCount,
)>('WTSEnumerateListenersW');

int WTSEnumerateProcessesEx(
  int hServer,
  Pointer<Uint32> pLevel,
  int SessionId,
  Pointer<Pointer<Utf16>> ppProcessInfo,
  Pointer<Uint32> pCount,
) =>
    _WTSEnumerateProcessesEx(
      hServer,
      pLevel,
      SessionId,
      ppProcessInfo,
      pCount,
    );

late final _WTSEnumerateProcessesEx = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Pointer<Uint32> pLevel,
  Uint32 SessionId,
  Pointer<Pointer<Utf16>> ppProcessInfo,
  Pointer<Uint32> pCount,
),
    int Function(
  int hServer,
  Pointer<Uint32> pLevel,
  int SessionId,
  Pointer<Pointer<Utf16>> ppProcessInfo,
  Pointer<Uint32> pCount,
)>('WTSEnumerateProcessesExW');

int WTSEnumerateProcesses(
  int hServer,
  int Reserved,
  int Version,
  Pointer<Pointer<WTS_PROCESS_INFO>> ppProcessInfo,
  Pointer<Uint32> pCount,
) =>
    _WTSEnumerateProcesses(
      hServer,
      Reserved,
      Version,
      ppProcessInfo,
      pCount,
    );

late final _WTSEnumerateProcesses = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Uint32 Reserved,
  Uint32 Version,
  Pointer<Pointer<WTS_PROCESS_INFO>> ppProcessInfo,
  Pointer<Uint32> pCount,
),
    int Function(
  int hServer,
  int Reserved,
  int Version,
  Pointer<Pointer<WTS_PROCESS_INFO>> ppProcessInfo,
  Pointer<Uint32> pCount,
)>('WTSEnumerateProcessesW');

int WTSEnumerateServers(
  Pointer<Utf16> pDomainName,
  int Reserved,
  int Version,
  Pointer<Pointer<WTS_SERVER_INFO>> ppServerInfo,
  Pointer<Uint32> pCount,
) =>
    _WTSEnumerateServers(
      pDomainName,
      Reserved,
      Version,
      ppServerInfo,
      pCount,
    );

late final _WTSEnumerateServers = _wtsapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pDomainName,
  Uint32 Reserved,
  Uint32 Version,
  Pointer<Pointer<WTS_SERVER_INFO>> ppServerInfo,
  Pointer<Uint32> pCount,
),
    int Function(
  Pointer<Utf16> pDomainName,
  int Reserved,
  int Version,
  Pointer<Pointer<WTS_SERVER_INFO>> ppServerInfo,
  Pointer<Uint32> pCount,
)>('WTSEnumerateServersW');

int WTSEnumerateSessionsEx(
  int hServer,
  Pointer<Uint32> pLevel,
  int Filter,
  Pointer<Pointer<WTS_SESSION_INFO_1>> ppSessionInfo,
  Pointer<Uint32> pCount,
) =>
    _WTSEnumerateSessionsEx(
      hServer,
      pLevel,
      Filter,
      ppSessionInfo,
      pCount,
    );

late final _WTSEnumerateSessionsEx = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Pointer<Uint32> pLevel,
  Uint32 Filter,
  Pointer<Pointer<WTS_SESSION_INFO_1>> ppSessionInfo,
  Pointer<Uint32> pCount,
),
    int Function(
  int hServer,
  Pointer<Uint32> pLevel,
  int Filter,
  Pointer<Pointer<WTS_SESSION_INFO_1>> ppSessionInfo,
  Pointer<Uint32> pCount,
)>('WTSEnumerateSessionsExW');

int WTSEnumerateSessions(
  int hServer,
  int Reserved,
  int Version,
  Pointer<Pointer<WTS_SESSION_INFO>> ppSessionInfo,
  Pointer<Uint32> pCount,
) =>
    _WTSEnumerateSessions(
      hServer,
      Reserved,
      Version,
      ppSessionInfo,
      pCount,
    );

late final _WTSEnumerateSessions = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Uint32 Reserved,
  Uint32 Version,
  Pointer<Pointer<WTS_SESSION_INFO>> ppSessionInfo,
  Pointer<Uint32> pCount,
),
    int Function(
  int hServer,
  int Reserved,
  int Version,
  Pointer<Pointer<WTS_SESSION_INFO>> ppSessionInfo,
  Pointer<Uint32> pCount,
)>('WTSEnumerateSessionsW');

void WTSFreeMemory(
  Pointer pMemory,
) =>
    _WTSFreeMemory(
      pMemory,
    );

late final _WTSFreeMemory = _wtsapi32.lookupFunction<
    Void Function(
  Pointer pMemory,
),
    void Function(
  Pointer pMemory,
)>('WTSFreeMemory');

int WTSFreeMemoryEx(
  int WTSTypeClass,
  Pointer pMemory,
  int NumberOfEntries,
) =>
    _WTSFreeMemoryEx(
      WTSTypeClass,
      pMemory,
      NumberOfEntries,
    );

late final _WTSFreeMemoryEx = _wtsapi32.lookupFunction<
    Int32 Function(
  Int32 WTSTypeClass,
  Pointer pMemory,
  Uint32 NumberOfEntries,
),
    int Function(
  int WTSTypeClass,
  Pointer pMemory,
  int NumberOfEntries,
)>('WTSFreeMemoryExW');

int WTSGetChildSessionId(
  Pointer<Uint32> pSessionId,
) =>
    _WTSGetChildSessionId(
      pSessionId,
    );

late final _WTSGetChildSessionId = _wtsapi32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> pSessionId,
),
    int Function(
  Pointer<Uint32> pSessionId,
)>('WTSGetChildSessionId');

int WTSGetListenerSecurity(
  int hServer,
  Pointer pReserved,
  int Reserved,
  Pointer<Utf16> pListenerName,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
) =>
    _WTSGetListenerSecurity(
      hServer,
      pReserved,
      Reserved,
      pListenerName,
      SecurityInformation,
      pSecurityDescriptor,
      nLength,
      lpnLengthNeeded,
    );

late final _WTSGetListenerSecurity = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Pointer pReserved,
  Uint32 Reserved,
  Pointer<Utf16> pListenerName,
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  Uint32 nLength,
  Pointer<Uint32> lpnLengthNeeded,
),
    int Function(
  int hServer,
  Pointer pReserved,
  int Reserved,
  Pointer<Utf16> pListenerName,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
)>('WTSGetListenerSecurityW');

int WTSIsChildSessionsEnabled(
  Pointer<Int32> pbEnabled,
) =>
    _WTSIsChildSessionsEnabled(
      pbEnabled,
    );

late final _WTSIsChildSessionsEnabled = _wtsapi32.lookupFunction<
    Int32 Function(
  Pointer<Int32> pbEnabled,
),
    int Function(
  Pointer<Int32> pbEnabled,
)>('WTSIsChildSessionsEnabled');

int WTSLogoffSession(
  int hServer,
  int SessionId,
  int bWait,
) =>
    _WTSLogoffSession(
      hServer,
      SessionId,
      bWait,
    );

late final _WTSLogoffSession = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Uint32 SessionId,
  Int32 bWait,
),
    int Function(
  int hServer,
  int SessionId,
  int bWait,
)>('WTSLogoffSession');

int WTSOpenServerEx(
  Pointer<Utf16> pServerName,
) =>
    _WTSOpenServerEx(
      pServerName,
    );

late final _WTSOpenServerEx = _wtsapi32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> pServerName,
),
    int Function(
  Pointer<Utf16> pServerName,
)>('WTSOpenServerExW');

int WTSOpenServer(
  Pointer<Utf16> pServerName,
) =>
    _WTSOpenServer(
      pServerName,
    );

late final _WTSOpenServer = _wtsapi32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> pServerName,
),
    int Function(
  Pointer<Utf16> pServerName,
)>('WTSOpenServerW');

int WTSQueryListenerConfig(
  int hServer,
  Pointer pReserved,
  int Reserved,
  Pointer<Utf16> pListenerName,
  Pointer<WTSLISTENERCONFIG> pBuffer,
) =>
    _WTSQueryListenerConfig(
      hServer,
      pReserved,
      Reserved,
      pListenerName,
      pBuffer,
    );

late final _WTSQueryListenerConfig = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Pointer pReserved,
  Uint32 Reserved,
  Pointer<Utf16> pListenerName,
  Pointer<WTSLISTENERCONFIG> pBuffer,
),
    int Function(
  int hServer,
  Pointer pReserved,
  int Reserved,
  Pointer<Utf16> pListenerName,
  Pointer<WTSLISTENERCONFIG> pBuffer,
)>('WTSQueryListenerConfigW');

int WTSQuerySessionInformation(
  int hServer,
  int SessionId,
  int WTSInfoClass,
  Pointer<Pointer<Utf16>> ppBuffer,
  Pointer<Uint32> pBytesReturned,
) =>
    _WTSQuerySessionInformation(
      hServer,
      SessionId,
      WTSInfoClass,
      ppBuffer,
      pBytesReturned,
    );

late final _WTSQuerySessionInformation = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Uint32 SessionId,
  Int32 WTSInfoClass,
  Pointer<Pointer<Utf16>> ppBuffer,
  Pointer<Uint32> pBytesReturned,
),
    int Function(
  int hServer,
  int SessionId,
  int WTSInfoClass,
  Pointer<Pointer<Utf16>> ppBuffer,
  Pointer<Uint32> pBytesReturned,
)>('WTSQuerySessionInformationW');

int WTSQueryUserConfig(
  Pointer<Utf16> pServerName,
  Pointer<Utf16> pUserName,
  int WTSConfigClass,
  Pointer<Pointer<Utf16>> ppBuffer,
  Pointer<Uint32> pBytesReturned,
) =>
    _WTSQueryUserConfig(
      pServerName,
      pUserName,
      WTSConfigClass,
      ppBuffer,
      pBytesReturned,
    );

late final _WTSQueryUserConfig = _wtsapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pServerName,
  Pointer<Utf16> pUserName,
  Int32 WTSConfigClass,
  Pointer<Pointer<Utf16>> ppBuffer,
  Pointer<Uint32> pBytesReturned,
),
    int Function(
  Pointer<Utf16> pServerName,
  Pointer<Utf16> pUserName,
  int WTSConfigClass,
  Pointer<Pointer<Utf16>> ppBuffer,
  Pointer<Uint32> pBytesReturned,
)>('WTSQueryUserConfigW');

int WTSQueryUserToken(
  int SessionId,
  Pointer<IntPtr> phToken,
) =>
    _WTSQueryUserToken(
      SessionId,
      phToken,
    );

late final _WTSQueryUserToken = _wtsapi32.lookupFunction<
    Int32 Function(
  Uint32 SessionId,
  Pointer<IntPtr> phToken,
),
    int Function(
  int SessionId,
  Pointer<IntPtr> phToken,
)>('WTSQueryUserToken');

int WTSRegisterSessionNotification(
  int hWnd,
  int dwFlags,
) =>
    _WTSRegisterSessionNotification(
      hWnd,
      dwFlags,
    );

late final _WTSRegisterSessionNotification = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 dwFlags,
),
    int Function(
  int hWnd,
  int dwFlags,
)>('WTSRegisterSessionNotification');

int WTSRegisterSessionNotificationEx(
  int hServer,
  int hWnd,
  int dwFlags,
) =>
    _WTSRegisterSessionNotificationEx(
      hServer,
      hWnd,
      dwFlags,
    );

late final _WTSRegisterSessionNotificationEx = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  IntPtr hWnd,
  Uint32 dwFlags,
),
    int Function(
  int hServer,
  int hWnd,
  int dwFlags,
)>('WTSRegisterSessionNotificationEx');

int WTSSendMessage(
  int hServer,
  int SessionId,
  Pointer<Utf16> pTitle,
  int TitleLength,
  Pointer<Utf16> pMessage,
  int MessageLength,
  int Style,
  int Timeout,
  Pointer<Int32> pResponse,
  int bWait,
) =>
    _WTSSendMessage(
      hServer,
      SessionId,
      pTitle,
      TitleLength,
      pMessage,
      MessageLength,
      Style,
      Timeout,
      pResponse,
      bWait,
    );

late final _WTSSendMessage = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Uint32 SessionId,
  Pointer<Utf16> pTitle,
  Uint32 TitleLength,
  Pointer<Utf16> pMessage,
  Uint32 MessageLength,
  Uint32 Style,
  Uint32 Timeout,
  Pointer<Int32> pResponse,
  Int32 bWait,
),
    int Function(
  int hServer,
  int SessionId,
  Pointer<Utf16> pTitle,
  int TitleLength,
  Pointer<Utf16> pMessage,
  int MessageLength,
  int Style,
  int Timeout,
  Pointer<Int32> pResponse,
  int bWait,
)>('WTSSendMessageW');

int WTSSetListenerSecurity(
  int hServer,
  Pointer pReserved,
  int Reserved,
  Pointer<Utf16> pListenerName,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
) =>
    _WTSSetListenerSecurity(
      hServer,
      pReserved,
      Reserved,
      pListenerName,
      SecurityInformation,
      pSecurityDescriptor,
    );

late final _WTSSetListenerSecurity = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Pointer pReserved,
  Uint32 Reserved,
  Pointer<Utf16> pListenerName,
  Uint32 SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
),
    int Function(
  int hServer,
  Pointer pReserved,
  int Reserved,
  Pointer<Utf16> pListenerName,
  int SecurityInformation,
  Pointer<SECURITY_DESCRIPTOR> pSecurityDescriptor,
)>('WTSSetListenerSecurityW');

int WTSSetRenderHint(
  Pointer<Uint64> pRenderHintID,
  int hwndOwner,
  int renderHintType,
  int cbHintDataLength,
  Pointer<Uint8> pHintData,
) =>
    _WTSSetRenderHint(
      pRenderHintID,
      hwndOwner,
      renderHintType,
      cbHintDataLength,
      pHintData,
    );

late final _WTSSetRenderHint = _wtsapi32.lookupFunction<
    Int32 Function(
  Pointer<Uint64> pRenderHintID,
  IntPtr hwndOwner,
  Uint32 renderHintType,
  Uint32 cbHintDataLength,
  Pointer<Uint8> pHintData,
),
    int Function(
  Pointer<Uint64> pRenderHintID,
  int hwndOwner,
  int renderHintType,
  int cbHintDataLength,
  Pointer<Uint8> pHintData,
)>('WTSSetRenderHint');

int WTSSetUserConfig(
  Pointer<Utf16> pServerName,
  Pointer<Utf16> pUserName,
  int WTSConfigClass,
  Pointer<Utf16> pBuffer,
  int DataLength,
) =>
    _WTSSetUserConfig(
      pServerName,
      pUserName,
      WTSConfigClass,
      pBuffer,
      DataLength,
    );

late final _WTSSetUserConfig = _wtsapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pServerName,
  Pointer<Utf16> pUserName,
  Int32 WTSConfigClass,
  Pointer<Utf16> pBuffer,
  Uint32 DataLength,
),
    int Function(
  Pointer<Utf16> pServerName,
  Pointer<Utf16> pUserName,
  int WTSConfigClass,
  Pointer<Utf16> pBuffer,
  int DataLength,
)>('WTSSetUserConfigW');

int WTSShutdownSystem(
  int hServer,
  int ShutdownFlag,
) =>
    _WTSShutdownSystem(
      hServer,
      ShutdownFlag,
    );

late final _WTSShutdownSystem = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Uint32 ShutdownFlag,
),
    int Function(
  int hServer,
  int ShutdownFlag,
)>('WTSShutdownSystem');

int WTSStartRemoteControlSession(
  Pointer<Utf16> pTargetServerName,
  int TargetLogonId,
  int HotkeyVk,
  int HotkeyModifiers,
) =>
    _WTSStartRemoteControlSession(
      pTargetServerName,
      TargetLogonId,
      HotkeyVk,
      HotkeyModifiers,
    );

late final _WTSStartRemoteControlSession = _wtsapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pTargetServerName,
  Uint32 TargetLogonId,
  Uint8 HotkeyVk,
  Uint16 HotkeyModifiers,
),
    int Function(
  Pointer<Utf16> pTargetServerName,
  int TargetLogonId,
  int HotkeyVk,
  int HotkeyModifiers,
)>('WTSStartRemoteControlSessionW');

int WTSStopRemoteControlSession(
  int LogonId,
) =>
    _WTSStopRemoteControlSession(
      LogonId,
    );

late final _WTSStopRemoteControlSession = _wtsapi32.lookupFunction<
    Int32 Function(
  Uint32 LogonId,
),
    int Function(
  int LogonId,
)>('WTSStopRemoteControlSession');

int WTSTerminateProcess(
  int hServer,
  int ProcessId,
  int ExitCode,
) =>
    _WTSTerminateProcess(
      hServer,
      ProcessId,
      ExitCode,
    );

late final _WTSTerminateProcess = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Uint32 ProcessId,
  Uint32 ExitCode,
),
    int Function(
  int hServer,
  int ProcessId,
  int ExitCode,
)>('WTSTerminateProcess');

int WTSUnRegisterSessionNotification(
  int hWnd,
) =>
    _WTSUnRegisterSessionNotification(
      hWnd,
    );

late final _WTSUnRegisterSessionNotification = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('WTSUnRegisterSessionNotification');

int WTSUnRegisterSessionNotificationEx(
  int hServer,
  int hWnd,
) =>
    _WTSUnRegisterSessionNotificationEx(
      hServer,
      hWnd,
    );

late final _WTSUnRegisterSessionNotificationEx = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  IntPtr hWnd,
),
    int Function(
  int hServer,
  int hWnd,
)>('WTSUnRegisterSessionNotificationEx');

int WTSVirtualChannelClose(
  int hChannelHandle,
) =>
    _WTSVirtualChannelClose(
      hChannelHandle,
    );

late final _WTSVirtualChannelClose = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hChannelHandle,
),
    int Function(
  int hChannelHandle,
)>('WTSVirtualChannelClose');

int WTSVirtualChannelOpen(
  int hServer,
  int SessionId,
  Pointer<Utf8> pVirtualName,
) =>
    _WTSVirtualChannelOpen(
      hServer,
      SessionId,
      pVirtualName,
    );

late final _WTSVirtualChannelOpen = _wtsapi32.lookupFunction<
    IntPtr Function(
  IntPtr hServer,
  Uint32 SessionId,
  Pointer<Utf8> pVirtualName,
),
    int Function(
  int hServer,
  int SessionId,
  Pointer<Utf8> pVirtualName,
)>('WTSVirtualChannelOpen');

int WTSVirtualChannelOpenEx(
  int SessionId,
  Pointer<Utf8> pVirtualName,
  int flags,
) =>
    _WTSVirtualChannelOpenEx(
      SessionId,
      pVirtualName,
      flags,
    );

late final _WTSVirtualChannelOpenEx = _wtsapi32.lookupFunction<
    IntPtr Function(
  Uint32 SessionId,
  Pointer<Utf8> pVirtualName,
  Uint32 flags,
),
    int Function(
  int SessionId,
  Pointer<Utf8> pVirtualName,
  int flags,
)>('WTSVirtualChannelOpenEx');

int WTSVirtualChannelPurgeInput(
  int hChannelHandle,
) =>
    _WTSVirtualChannelPurgeInput(
      hChannelHandle,
    );

late final _WTSVirtualChannelPurgeInput = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hChannelHandle,
),
    int Function(
  int hChannelHandle,
)>('WTSVirtualChannelPurgeInput');

int WTSVirtualChannelPurgeOutput(
  int hChannelHandle,
) =>
    _WTSVirtualChannelPurgeOutput(
      hChannelHandle,
    );

late final _WTSVirtualChannelPurgeOutput = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hChannelHandle,
),
    int Function(
  int hChannelHandle,
)>('WTSVirtualChannelPurgeOutput');

int WTSVirtualChannelQuery(
  int hChannelHandle,
  int param1,
  Pointer<Pointer> ppBuffer,
  Pointer<Uint32> pBytesReturned,
) =>
    _WTSVirtualChannelQuery(
      hChannelHandle,
      param1,
      ppBuffer,
      pBytesReturned,
    );

late final _WTSVirtualChannelQuery = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hChannelHandle,
  Int32 param1,
  Pointer<Pointer> ppBuffer,
  Pointer<Uint32> pBytesReturned,
),
    int Function(
  int hChannelHandle,
  int param1,
  Pointer<Pointer> ppBuffer,
  Pointer<Uint32> pBytesReturned,
)>('WTSVirtualChannelQuery');

int WTSVirtualChannelRead(
  int hChannelHandle,
  int TimeOut,
  Pointer<Utf8> Buffer,
  int BufferSize,
  Pointer<Uint32> pBytesRead,
) =>
    _WTSVirtualChannelRead(
      hChannelHandle,
      TimeOut,
      Buffer,
      BufferSize,
      pBytesRead,
    );

late final _WTSVirtualChannelRead = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hChannelHandle,
  Uint32 TimeOut,
  Pointer<Utf8> Buffer,
  Uint32 BufferSize,
  Pointer<Uint32> pBytesRead,
),
    int Function(
  int hChannelHandle,
  int TimeOut,
  Pointer<Utf8> Buffer,
  int BufferSize,
  Pointer<Uint32> pBytesRead,
)>('WTSVirtualChannelRead');

int WTSVirtualChannelWrite(
  int hChannelHandle,
  Pointer<Utf8> Buffer,
  int Length,
  Pointer<Uint32> pBytesWritten,
) =>
    _WTSVirtualChannelWrite(
      hChannelHandle,
      Buffer,
      Length,
      pBytesWritten,
    );

late final _WTSVirtualChannelWrite = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hChannelHandle,
  Pointer<Utf8> Buffer,
  Uint32 Length,
  Pointer<Uint32> pBytesWritten,
),
    int Function(
  int hChannelHandle,
  Pointer<Utf8> Buffer,
  int Length,
  Pointer<Uint32> pBytesWritten,
)>('WTSVirtualChannelWrite');

int WTSWaitSystemEvent(
  int hServer,
  int EventMask,
  Pointer<Uint32> pEventFlags,
) =>
    _WTSWaitSystemEvent(
      hServer,
      EventMask,
      pEventFlags,
    );

late final _WTSWaitSystemEvent = _wtsapi32.lookupFunction<
    Int32 Function(
  IntPtr hServer,
  Uint32 EventMask,
  Pointer<Uint32> pEventFlags,
),
    int Function(
  int hServer,
  int EventMask,
  Pointer<Uint32> pEventFlags,
)>('WTSWaitSystemEvent');

// -----------------------------------------------------------------------
// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int ProcessIdToSessionId(
  int dwProcessId,
  Pointer<Uint32> pSessionId,
) =>
    _ProcessIdToSessionId(
      dwProcessId,
      pSessionId,
    );

late final _ProcessIdToSessionId = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwProcessId,
  Pointer<Uint32> pSessionId,
),
    int Function(
  int dwProcessId,
  Pointer<Uint32> pSessionId,
)>('ProcessIdToSessionId');

int WTSGetActiveConsoleSessionId() => _WTSGetActiveConsoleSessionId();

late final _WTSGetActiveConsoleSessionId =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>(
        'WTSGetActiveConsoleSessionId');
