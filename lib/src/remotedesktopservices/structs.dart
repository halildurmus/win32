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

class HwtsVirtualChannelHandle extends Struct {
  @IntPtr()
  external int Value;
}

class APO_CONNECTION_PROPERTY extends Struct {
  @IntPtr()
  external int pBuffer;
  @Uint32()
  external int u32ValidFrameCount;
  @Uint32()
  external int u32BufferFlags;
  @Uint32()
  external int u32Signature;
}

class AE_CURRENT_POSITION extends Struct {
  @Uint64()
  external int u64DevicePosition;
  @Uint64()
  external int u64StreamPosition;
  @Uint64()
  external int u64PaddingFrames;
  @Int64()
  external int hnsQPCPosition;
  @Float()
  external double f32FramesPerSecond;
  @Uint32()
  external int Flag;
}

class WTSSESSION_NOTIFICATION extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwSessionId;
}

class TSUserExInterfaces extends Struct {}

class ADsTSUserEx extends Struct {}

class AAAccountingData extends Struct {
  external Pointer<Utf16> userName;
  external Pointer<Utf16> clientName;
  @Uint32()
  external int authType;
  external Pointer<Utf16> resourceName;
  @Int32()
  external int portNumber;
  external Pointer<Utf16> protocolName;
  @Int32()
  external int numberOfBytesReceived;
  @Int32()
  external int numberOfBytesTransfered;
  external Pointer<Utf16> reasonForDisconnect;
  external GUID mainSessionId;
  @Int32()
  external int subSessionId;
}

class WTS_SERVER_INFOW extends Struct {
  external Pointer<Utf16> pServerName;
}

class WTS_SERVER_INFOA extends Struct {
  external Pointer<Utf8> pServerName;
}

class WTS_SESSION_INFOW extends Struct {
  @Uint32()
  external int SessionId;
  external Pointer<Utf16> pWinStationName;
  @Uint32()
  external int State;
}

class WTS_SESSION_INFOA extends Struct {
  @Uint32()
  external int SessionId;
  external Pointer<Utf8> pWinStationName;
  @Uint32()
  external int State;
}

class WTS_SESSION_INFO_1W extends Struct {
  @Uint32()
  external int ExecEnvId;
  @Uint32()
  external int State;
  @Uint32()
  external int SessionId;
  external Pointer<Utf16> pSessionName;
  external Pointer<Utf16> pHostName;
  external Pointer<Utf16> pUserName;
  external Pointer<Utf16> pDomainName;
  external Pointer<Utf16> pFarmName;
}

class WTS_SESSION_INFO_1A extends Struct {
  @Uint32()
  external int ExecEnvId;
  @Uint32()
  external int State;
  @Uint32()
  external int SessionId;
  external Pointer<Utf8> pSessionName;
  external Pointer<Utf8> pHostName;
  external Pointer<Utf8> pUserName;
  external Pointer<Utf8> pDomainName;
  external Pointer<Utf8> pFarmName;
}

class WTS_PROCESS_INFOW extends Struct {
  @Uint32()
  external int SessionId;
  @Uint32()
  external int ProcessId;
  external Pointer<Utf16> pProcessName;
  external Pointer pUserSid;
}

class WTS_PROCESS_INFOA extends Struct {
  @Uint32()
  external int SessionId;
  @Uint32()
  external int ProcessId;
  external Pointer<Utf8> pProcessName;
  external Pointer pUserSid;
}

class WTSCONFIGINFOW extends Struct {
  @Uint32()
  external int version;
  @Uint32()
  external int fConnectClientDrivesAtLogon;
  @Uint32()
  external int fConnectPrinterAtLogon;
  @Uint32()
  external int fDisablePrinterRedirection;
  @Uint32()
  external int fDisableDefaultMainClientPrinter;
  @Uint32()
  external int ShadowSettings;
  @Array(21)
  external Array<Uint16> LogonUserName;
  @Array(18)
  external Array<Uint16> LogonDomain;
  @Array(129)
  external Array<Uint16> WorkDirectory;
  @Array(129)
  external Array<Uint16> InitialProgram;
  @Array(129)
  external Array<Uint16> ApplicationName;
}

class WTSCONFIGINFOA extends Struct {
  @Uint32()
  external int version;
  @Uint32()
  external int fConnectClientDrivesAtLogon;
  @Uint32()
  external int fConnectPrinterAtLogon;
  @Uint32()
  external int fDisablePrinterRedirection;
  @Uint32()
  external int fDisableDefaultMainClientPrinter;
  @Uint32()
  external int ShadowSettings;
  @Array(21)
  external Array<Int8> LogonUserName;
  @Array(18)
  external Array<Int8> LogonDomain;
  @Array(129)
  external Array<Int8> WorkDirectory;
  @Array(129)
  external Array<Int8> InitialProgram;
  @Array(129)
  external Array<Int8> ApplicationName;
}

class WTSINFOW extends Struct {
  @Uint32()
  external int State;
  @Uint32()
  external int SessionId;
  @Uint32()
  external int IncomingBytes;
  @Uint32()
  external int OutgoingBytes;
  @Uint32()
  external int IncomingFrames;
  @Uint32()
  external int OutgoingFrames;
  @Uint32()
  external int IncomingCompressedBytes;
  @Uint32()
  external int OutgoingCompressedBytes;
  @Array(32)
  external Array<Uint16> WinStationName;
  @Array(17)
  external Array<Uint16> Domain;
  @Array(21)
  external Array<Uint16> UserName;
  @Int64()
  external int ConnectTime;
  @Int64()
  external int DisconnectTime;
  @Int64()
  external int LastInputTime;
  @Int64()
  external int LogonTime;
  @Int64()
  external int CurrentTime;
}

class WTSINFOA extends Struct {
  @Uint32()
  external int State;
  @Uint32()
  external int SessionId;
  @Uint32()
  external int IncomingBytes;
  @Uint32()
  external int OutgoingBytes;
  @Uint32()
  external int IncomingFrames;
  @Uint32()
  external int OutgoingFrames;
  @Uint32()
  external int IncomingCompressedBytes;
  @Uint32()
  external int OutgoingCompressedBy;
  @Array(32)
  external Array<Int8> WinStationName;
  @Array(17)
  external Array<Int8> Domain;
  @Array(21)
  external Array<Int8> UserName;
  @Int64()
  external int ConnectTime;
  @Int64()
  external int DisconnectTime;
  @Int64()
  external int LastInputTime;
  @Int64()
  external int LogonTime;
  @Int64()
  external int CurrentTime;
}

class WTSINFOEX_LEVEL1_W extends Struct {
  @Uint32()
  external int SessionId;
  @Uint32()
  external int SessionState;
  @Int32()
  external int SessionFlags;
  @Array(33)
  external Array<Uint16> WinStationName;
  @Array(21)
  external Array<Uint16> UserName;
  @Array(18)
  external Array<Uint16> DomainName;
  @Int64()
  external int LogonTime;
  @Int64()
  external int ConnectTime;
  @Int64()
  external int DisconnectTime;
  @Int64()
  external int LastInputTime;
  @Int64()
  external int CurrentTime;
  @Uint32()
  external int IncomingBytes;
  @Uint32()
  external int OutgoingBytes;
  @Uint32()
  external int IncomingFrames;
  @Uint32()
  external int OutgoingFrames;
  @Uint32()
  external int IncomingCompressedBytes;
  @Uint32()
  external int OutgoingCompressedBytes;
}

class WTSINFOEX_LEVEL1_A extends Struct {
  @Uint32()
  external int SessionId;
  @Uint32()
  external int SessionState;
  @Int32()
  external int SessionFlags;
  @Array(33)
  external Array<Int8> WinStationName;
  @Array(21)
  external Array<Int8> UserName;
  @Array(18)
  external Array<Int8> DomainName;
  @Int64()
  external int LogonTime;
  @Int64()
  external int ConnectTime;
  @Int64()
  external int DisconnectTime;
  @Int64()
  external int LastInputTime;
  @Int64()
  external int CurrentTime;
  @Uint32()
  external int IncomingBytes;
  @Uint32()
  external int OutgoingBytes;
  @Uint32()
  external int IncomingFrames;
  @Uint32()
  external int OutgoingFrames;
  @Uint32()
  external int IncomingCompressedBytes;
  @Uint32()
  external int OutgoingCompressedBytes;
}

class WTSINFOEX_LEVEL_W extends Struct {
  external WTSINFOEX_LEVEL1_W WTSInfoExLevel1;
}

class WTSINFOEX_LEVEL_A extends Struct {
  external WTSINFOEX_LEVEL1_A WTSInfoExLevel1;
}

class WTSINFOEXW extends Struct {
  @Uint32()
  external int Level;
  external WTSINFOEX_LEVEL_W Data;
}

class WTSINFOEXA extends Struct {
  @Uint32()
  external int Level;
  external WTSINFOEX_LEVEL_A Data;
}

class WTSCLIENTW extends Struct {
  @Array(21)
  external Array<Uint16> ClientName;
  @Array(18)
  external Array<Uint16> Domain;
  @Array(21)
  external Array<Uint16> UserName;
  @Array(129)
  external Array<Uint16> WorkDirectory;
  @Array(129)
  external Array<Uint16> InitialProgram;
  @Uint8()
  external int EncryptionLevel;
  @Uint32()
  external int ClientAddressFamily;
  @Array(31)
  external Array<Uint16> ClientAddress;
  @Uint16()
  external int HRes;
  @Uint16()
  external int VRes;
  @Uint16()
  external int ColorDepth;
  @Array(129)
  external Array<Uint16> ClientDirectory;
  @Uint32()
  external int ClientBuildNumber;
  @Uint32()
  external int ClientHardwareId;
  @Uint16()
  external int ClientProductId;
  @Uint16()
  external int OutBufCountHost;
  @Uint16()
  external int OutBufCountClient;
  @Uint16()
  external int OutBufLength;
  @Array(129)
  external Array<Uint16> DeviceId;
}

class WTSCLIENTA extends Struct {
  @Array(21)
  external Array<Int8> ClientName;
  @Array(18)
  external Array<Int8> Domain;
  @Array(21)
  external Array<Int8> UserName;
  @Array(129)
  external Array<Int8> WorkDirectory;
  @Array(129)
  external Array<Int8> InitialProgram;
  @Uint8()
  external int EncryptionLevel;
  @Uint32()
  external int ClientAddressFamily;
  @Array(31)
  external Array<Uint16> ClientAddress;
  @Uint16()
  external int HRes;
  @Uint16()
  external int VRes;
  @Uint16()
  external int ColorDepth;
  @Array(129)
  external Array<Int8> ClientDirectory;
  @Uint32()
  external int ClientBuildNumber;
  @Uint32()
  external int ClientHardwareId;
  @Uint16()
  external int ClientProductId;
  @Uint16()
  external int OutBufCountHost;
  @Uint16()
  external int OutBufCountClient;
  @Uint16()
  external int OutBufLength;
  @Array(129)
  external Array<Int8> DeviceId;
}

class _WTS_PRODUCT_INFOA extends Struct {
  @Array(129)
  external Array<Int8> CompanyName;
  @Array(4)
  external Array<Int8> ProductID;
}

class _WTS_PRODUCT_INFOW extends Struct {
  @Array(129)
  external Array<Uint16> CompanyName;
  @Array(4)
  external Array<Uint16> ProductID;
}

class WTS_VALIDATION_INFORMATIONA extends Struct {
  external _WTS_PRODUCT_INFOA ProductInfo;
  @Array(192)
  external Array<Uint8> License;
  @Uint32()
  external int LicenseLength;
  @Array(20)
  external Array<Uint8> HardwareID;
  @Uint32()
  external int HardwareIDLength;
}

class WTS_VALIDATION_INFORMATIONW extends Struct {
  external _WTS_PRODUCT_INFOW ProductInfo;
  @Array(192)
  external Array<Uint8> License;
  @Uint32()
  external int LicenseLength;
  @Array(20)
  external Array<Uint8> HardwareID;
  @Uint32()
  external int HardwareIDLength;
}

class WTS_CLIENT_ADDRESS extends Struct {
  @Uint32()
  external int AddressFamily;
  @Array(20)
  external Array<Uint8> Address;
}

class WTS_CLIENT_DISPLAY extends Struct {
  @Uint32()
  external int HorizontalResolution;
  @Uint32()
  external int VerticalResolution;
  @Uint32()
  external int ColorDepth;
}

class WTSUSERCONFIGA extends Struct {
  @Uint32()
  external int Source;
  @Uint32()
  external int InheritInitialProgram;
  @Uint32()
  external int AllowLogonTerminalServer;
  @Uint32()
  external int TimeoutSettingsConnections;
  @Uint32()
  external int TimeoutSettingsDisconnections;
  @Uint32()
  external int TimeoutSettingsIdle;
  @Uint32()
  external int DeviceClientDrives;
  @Uint32()
  external int DeviceClientPrinters;
  @Uint32()
  external int ClientDefaultPrinter;
  @Uint32()
  external int BrokenTimeoutSettings;
  @Uint32()
  external int ReconnectSettings;
  @Uint32()
  external int ShadowingSettings;
  @Uint32()
  external int TerminalServerRemoteHomeDir;
  @Array(129)
  external Array<Int8> InitialProgram;
  @Array(129)
  external Array<Int8> WorkDirectory;
  @Array(129)
  external Array<Int8> TerminalServerProfilePath;
  @Array(129)
  external Array<Int8> TerminalServerHomeDir;
  @Array(4)
  external Array<Int8> TerminalServerHomeDirDrive;
}

class WTSUSERCONFIGW extends Struct {
  @Uint32()
  external int Source;
  @Uint32()
  external int InheritInitialProgram;
  @Uint32()
  external int AllowLogonTerminalServer;
  @Uint32()
  external int TimeoutSettingsConnections;
  @Uint32()
  external int TimeoutSettingsDisconnections;
  @Uint32()
  external int TimeoutSettingsIdle;
  @Uint32()
  external int DeviceClientDrives;
  @Uint32()
  external int DeviceClientPrinters;
  @Uint32()
  external int ClientDefaultPrinter;
  @Uint32()
  external int BrokenTimeoutSettings;
  @Uint32()
  external int ReconnectSettings;
  @Uint32()
  external int ShadowingSettings;
  @Uint32()
  external int TerminalServerRemoteHomeDir;
  @Array(129)
  external Array<Uint16> InitialProgram;
  @Array(129)
  external Array<Uint16> WorkDirectory;
  @Array(129)
  external Array<Uint16> TerminalServerProfilePath;
  @Array(129)
  external Array<Uint16> TerminalServerHomeDir;
  @Array(4)
  external Array<Uint16> TerminalServerHomeDirDrive;
}

class WTS_SESSION_ADDRESS extends Struct {
  @Uint32()
  external int AddressFamily;
  @Array(20)
  external Array<Uint8> Address;
}

class WTS_PROCESS_INFO_EXW extends Struct {
  @Uint32()
  external int SessionId;
  @Uint32()
  external int ProcessId;
  external Pointer<Utf16> pProcessName;
  external Pointer pUserSid;
  @Uint32()
  external int NumberOfThreads;
  @Uint32()
  external int HandleCount;
  @Uint32()
  external int PagefileUsage;
  @Uint32()
  external int PeakPagefileUsage;
  @Uint32()
  external int WorkingSetSize;
  @Uint32()
  external int PeakWorkingSetSize;
  @Int64()
  external int UserTime;
  @Int64()
  external int KernelTime;
}

class WTS_PROCESS_INFO_EXA extends Struct {
  @Uint32()
  external int SessionId;
  @Uint32()
  external int ProcessId;
  external Pointer<Utf8> pProcessName;
  external Pointer pUserSid;
  @Uint32()
  external int NumberOfThreads;
  @Uint32()
  external int HandleCount;
  @Uint32()
  external int PagefileUsage;
  @Uint32()
  external int PeakPagefileUsage;
  @Uint32()
  external int WorkingSetSize;
  @Uint32()
  external int PeakWorkingSetSize;
  @Int64()
  external int UserTime;
  @Int64()
  external int KernelTime;
}

class WTSLISTENERCONFIGW extends Struct {
  @Uint32()
  external int version;
  @Uint32()
  external int fEnableListener;
  @Uint32()
  external int MaxConnectionCount;
  @Uint32()
  external int fPromptForPassword;
  @Uint32()
  external int fInheritColorDepth;
  @Uint32()
  external int ColorDepth;
  @Uint32()
  external int fInheritBrokenTimeoutSettings;
  @Uint32()
  external int BrokenTimeoutSettings;
  @Uint32()
  external int fDisablePrinterRedirection;
  @Uint32()
  external int fDisableDriveRedirection;
  @Uint32()
  external int fDisableComPortRedirection;
  @Uint32()
  external int fDisableLPTPortRedirection;
  @Uint32()
  external int fDisableClipboardRedirection;
  @Uint32()
  external int fDisableAudioRedirection;
  @Uint32()
  external int fDisablePNPRedirection;
  @Uint32()
  external int fDisableDefaultMainClientPrinter;
  @Uint32()
  external int LanAdapter;
  @Uint32()
  external int PortNumber;
  @Uint32()
  external int fInheritShadowSettings;
  @Uint32()
  external int ShadowSettings;
  @Uint32()
  external int TimeoutSettingsConnection;
  @Uint32()
  external int TimeoutSettingsDisconnection;
  @Uint32()
  external int TimeoutSettingsIdle;
  @Uint32()
  external int SecurityLayer;
  @Uint32()
  external int MinEncryptionLevel;
  @Uint32()
  external int UserAuthentication;
  @Array(61)
  external Array<Uint16> Comment;
  @Array(21)
  external Array<Uint16> LogonUserName;
  @Array(18)
  external Array<Uint16> LogonDomain;
  @Array(129)
  external Array<Uint16> WorkDirectory;
  @Array(129)
  external Array<Uint16> InitialProgram;
}

class WTSLISTENERCONFIGA extends Struct {
  @Uint32()
  external int version;
  @Uint32()
  external int fEnableListener;
  @Uint32()
  external int MaxConnectionCount;
  @Uint32()
  external int fPromptForPassword;
  @Uint32()
  external int fInheritColorDepth;
  @Uint32()
  external int ColorDepth;
  @Uint32()
  external int fInheritBrokenTimeoutSettings;
  @Uint32()
  external int BrokenTimeoutSettings;
  @Uint32()
  external int fDisablePrinterRedirection;
  @Uint32()
  external int fDisableDriveRedirection;
  @Uint32()
  external int fDisableComPortRedirection;
  @Uint32()
  external int fDisableLPTPortRedirection;
  @Uint32()
  external int fDisableClipboardRedirection;
  @Uint32()
  external int fDisableAudioRedirection;
  @Uint32()
  external int fDisablePNPRedirection;
  @Uint32()
  external int fDisableDefaultMainClientPrinter;
  @Uint32()
  external int LanAdapter;
  @Uint32()
  external int PortNumber;
  @Uint32()
  external int fInheritShadowSettings;
  @Uint32()
  external int ShadowSettings;
  @Uint32()
  external int TimeoutSettingsConnection;
  @Uint32()
  external int TimeoutSettingsDisconnection;
  @Uint32()
  external int TimeoutSettingsIdle;
  @Uint32()
  external int SecurityLayer;
  @Uint32()
  external int MinEncryptionLevel;
  @Uint32()
  external int UserAuthentication;
  @Array(61)
  external Array<Int8> Comment;
  @Array(21)
  external Array<Int8> LogonUserName;
  @Array(18)
  external Array<Int8> LogonDomain;
  @Array(129)
  external Array<Int8> WorkDirectory;
  @Array(129)
  external Array<Int8> InitialProgram;
}

class WTSSBX_IP_ADDRESS extends Struct {
  @Uint32()
  external int AddressFamily;
  @Array(16)
  external Array<Uint8> Address;
  @Uint16()
  external int PortNumber;
  @Uint32()
  external int dwScope;
}

class WTSSBX_MACHINE_CONNECT_INFO extends Struct {
  @Array(129)
  external Array<Uint16> wczMachineFQDN;
  @Array(17)
  external Array<Uint16> wczMachineNetBiosName;
  @Uint32()
  external int dwNumOfIPAddr;
  @Array(12)
  external Array<WTSSBX_IP_ADDRESS> IPaddr;
}

class WTSSBX_MACHINE_INFO extends Struct {
  external WTSSBX_MACHINE_CONNECT_INFO ClientConnectInfo;
  @Array(129)
  external Array<Uint16> wczFarmName;
  external WTSSBX_IP_ADDRESS InternalIPAddress;
  @Uint32()
  external int dwMaxSessionsLimit;
  @Uint32()
  external int ServerWeight;
  @Uint32()
  external int SingleSessionMode;
  @Uint32()
  external int InDrain;
  @Uint32()
  external int MachineState;
}

class WTSSBX_SESSION_INFO extends Struct {
  @Array(105)
  external Array<Uint16> wszUserName;
  @Array(129)
  external Array<Uint16> wszDomainName;
  @Array(129)
  external Array<Uint16> ApplicationType;
  @Uint32()
  external int dwSessionId;
  external FILETIME CreateTime;
  external FILETIME DisconnectTime;
  @Uint32()
  external int SessionState;
}

class CHANNEL_DEF extends Struct {
  @Array(8)
  external Array<Int8> name;
  @Uint32()
  external int options;
}

class CHANNEL_PDU_HEADER extends Struct {
  @Uint32()
  external int length;
  @Uint32()
  external int flags;
}

class CHANNEL_ENTRY_POINTS extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int protocolVersion;
  external PVIRTUALCHANNELINIT pVirtualChannelInit;
  external PVIRTUALCHANNELOPEN pVirtualChannelOpen;
  external PVIRTUALCHANNELCLOSE pVirtualChannelClose;
  external PVIRTUALCHANNELWRITE pVirtualChannelWrite;
}

class Workspace extends Struct {}

class CLIENT_DISPLAY extends Struct {
  @Uint32()
  external int HorizontalResolution;
  @Uint32()
  external int VerticalResolution;
  @Uint32()
  external int ColorDepth;
}

class TSSD_ConnectionPoint extends Struct {
  @Array(16)
  external Array<Uint8> ServerAddressB;
  @Uint32()
  external int AddressType;
  @Uint16()
  external int PortNumber;
  @Uint32()
  external int AddressScope;
}

class VM_NOTIFY_ENTRY extends Struct {
  @Array(128)
  external Array<Uint16> VmName;
  @Array(128)
  external Array<Uint16> VmHost;
}

class VM_PATCH_INFO extends Struct {
  @Uint32()
  external int dwNumEntries;
  external Pointer<Pointer<Utf16>> pVmNames;
}

class VM_NOTIFY_INFO extends Struct {
  @Uint32()
  external int dwNumEntries;
  external Pointer<Pointer<VM_NOTIFY_ENTRY>> ppVmEntries;
}

class pluginResource extends Struct {
  @Array(129)
  external Array<Uint16> alias;
  @Array(129)
  external Array<Uint16> name;
  external Pointer<Utf16> resourceFileContents;
  @Array(129)
  external Array<Uint16> fileExtension;
  @Array(129)
  external Array<Uint16> resourcePluginType;
  @Uint8()
  external int isDiscoverable;
  @Int32()
  external int resourceType;
  @Uint32()
  external int pceIconSize;
  external Pointer<Uint8> iconContents;
  @Uint32()
  external int pcePluginBlobSize;
  external Pointer<Uint8> blobContents;
}

class pluginResource2FileAssociation extends Struct {
  @Array(129)
  external Array<Uint16> extName;
  @Uint8()
  external int primaryHandler;
  @Uint32()
  external int pceIconSize;
  external Pointer<Uint8> iconContents;
}

class pluginResource2 extends Struct {
  external pluginResource resourceV1;
  @Uint32()
  external int pceFileAssocListSize;
  external Pointer<pluginResource2FileAssociation> fileAssocList;
  external Pointer<Utf16> securityDescriptor;
  @Uint32()
  external int pceFolderListSize;
  external Pointer<Pointer<Uint16>> folderList;
}

class BITMAP_RENDERER_STATISTICS extends Struct {
  @Uint32()
  external int dwFramesDelivered;
  @Uint32()
  external int dwFramesDropped;
}

class RFX_GFX_RECT extends Struct {
  @Int32()
  external int left;
  @Int32()
  external int top;
  @Int32()
  external int right;
  @Int32()
  external int bottom;
}

class RFX_GFX_MSG_HEADER extends Struct {
  @Uint16()
  external int uMSGType;
  @Uint16()
  external int cbSize;
}

class RFX_GFX_MONITOR_INFO extends Struct {
  @Int32()
  external int left;
  @Int32()
  external int top;
  @Int32()
  external int right;
  @Int32()
  external int bottom;
  @Uint32()
  external int physicalWidth;
  @Uint32()
  external int physicalHeight;
  @Uint32()
  external int orientation;
  @Int32()
  external int primary;
}

class RFX_GFX_MSG_CLIENT_DESKTOP_INFO_REQUEST extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;
}

class RFX_GFX_MSG_CLIENT_DESKTOP_INFO_RESPONSE extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;
  @Uint32()
  external int reserved;
  @Uint32()
  external int monitorCount;
  @Array(16)
  external Array<RFX_GFX_MONITOR_INFO> MonitorData;
  @Array(32)
  external Array<Uint16> clientUniqueId;
}

class RFX_GFX_MSG_DESKTOP_CONFIG_CHANGE_NOTIFY extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;
  @Uint32()
  external int ulWidth;
  @Uint32()
  external int ulHeight;
  @Uint32()
  external int ulBpp;
  @Uint32()
  external int Reserved;
}

class RFX_GFX_MSG_DESKTOP_CONFIG_CHANGE_CONFIRM extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;
}

class RFX_GFX_MSG_DESKTOP_INPUT_RESET extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;
  @Uint32()
  external int ulWidth;
  @Uint32()
  external int ulHeight;
}

class RFX_GFX_MSG_DISCONNECT_NOTIFY extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;
  @Uint32()
  external int DisconnectReason;
}

class RFX_GFX_MSG_DESKTOP_RESEND_REQUEST extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;
  external RFX_GFX_RECT RedrawRect;
}

class RFX_GFX_MSG_RDP_DATA extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;
  @Array(1)
  external Array<Uint8> rdpData;
}

class WTS_SOCKADDR extends Struct {
  @Uint16()
  external int sin_family;
  @Uint32()
  external int u;
}

class WTS_SMALL_RECT extends Struct {
  @Int16()
  external int Left;
  @Int16()
  external int Top;
  @Int16()
  external int Right;
  @Int16()
  external int Bottom;
}

class WTS_SERVICE_STATE extends Struct {
  @Uint32()
  external int RcmServiceState;
  @Uint32()
  external int RcmDrainState;
}

class WTS_SESSION_ID extends Struct {
  external GUID SessionUniqueGuid;
  @Uint32()
  external int SessionId;
}

class WTS_USER_CREDENTIAL extends Struct {
  @Array(129)
  external Array<Uint16> UserName;
  @Array(129)
  external Array<Uint16> Password;
  @Array(129)
  external Array<Uint16> Domain;
}

class WTS_SYSTEMTIME extends Struct {
  @Uint16()
  external int wYear;
  @Uint16()
  external int wMonth;
  @Uint16()
  external int wDayOfWeek;
  @Uint16()
  external int wDay;
  @Uint16()
  external int wHour;
  @Uint16()
  external int wMinute;
  @Uint16()
  external int wSecond;
  @Uint16()
  external int wMilliseconds;
}

class WTS_TIME_ZONE_INFORMATION extends Struct {
  @Int32()
  external int Bias;
  @Array(32)
  external Array<Uint16> StandardName;
  external WTS_SYSTEMTIME StandardDate;
  @Int32()
  external int StandardBias;
  @Array(32)
  external Array<Uint16> DaylightName;
  external WTS_SYSTEMTIME DaylightDate;
  @Int32()
  external int DaylightBias;
}

class WRDS_DYNAMIC_TIME_ZONE_INFORMATION extends Struct {
  @Int32()
  external int Bias;
  @Array(32)
  external Array<Uint16> StandardName;
  external WTS_SYSTEMTIME StandardDate;
  @Int32()
  external int StandardBias;
  @Array(32)
  external Array<Uint16> DaylightName;
  external WTS_SYSTEMTIME DaylightDate;
  @Int32()
  external int DaylightBias;
  @Array(128)
  external Array<Uint16> TimeZoneKeyName;
  @Uint16()
  external int DynamicDaylightTimeDisabled;
}

class WTS_CLIENT_DATA extends Struct {
  @Uint8()
  external int fDisableCtrlAltDel;
  @Uint8()
  external int fDoubleClickDetect;
  @Uint8()
  external int fEnableWindowsKey;
  @Uint8()
  external int fHideTitleBar;
  @Int32()
  external int fInheritAutoLogon;
  @Uint8()
  external int fPromptForPassword;
  @Uint8()
  external int fUsingSavedCreds;
  @Array(129)
  external Array<Uint16> Domain;
  @Array(129)
  external Array<Uint16> UserName;
  @Array(129)
  external Array<Uint16> Password;
  @Uint8()
  external int fPasswordIsScPin;
  @Int32()
  external int fInheritInitialProgram;
  @Array(129)
  external Array<Uint16> WorkDirectory;
  @Array(129)
  external Array<Uint16> InitialProgram;
  @Uint8()
  external int fMaximizeShell;
  @Uint8()
  external int EncryptionLevel;
  @Uint32()
  external int PerformanceFlags;
  @Array(9)
  external Array<Uint16> ProtocolName;
  @Uint16()
  external int ProtocolType;
  @Int32()
  external int fInheritColorDepth;
  @Uint16()
  external int HRes;
  @Uint16()
  external int VRes;
  @Uint16()
  external int ColorDepth;
  @Array(9)
  external Array<Uint16> DisplayDriverName;
  @Array(20)
  external Array<Uint16> DisplayDeviceName;
  @Uint8()
  external int fMouse;
  @Uint32()
  external int KeyboardLayout;
  @Uint32()
  external int KeyboardType;
  @Uint32()
  external int KeyboardSubType;
  @Uint32()
  external int KeyboardFunctionKey;
  @Array(33)
  external Array<Uint16> imeFileName;
  @Uint32()
  external int ActiveInputLocale;
  @Uint8()
  external int fNoAudioPlayback;
  @Uint8()
  external int fRemoteConsoleAudio;
  @Array(9)
  external Array<Uint16> AudioDriverName;
  external WTS_TIME_ZONE_INFORMATION ClientTimeZone;
  @Array(21)
  external Array<Uint16> ClientName;
  @Uint32()
  external int SerialNumber;
  @Uint32()
  external int ClientAddressFamily;
  @Array(31)
  external Array<Uint16> ClientAddress;
  external WTS_SOCKADDR ClientSockAddress;
  @Array(129)
  external Array<Uint16> ClientDirectory;
  @Uint32()
  external int ClientBuildNumber;
  @Uint16()
  external int ClientProductId;
  @Uint16()
  external int OutBufCountHost;
  @Uint16()
  external int OutBufCountClient;
  @Uint16()
  external int OutBufLength;
  @Uint32()
  external int ClientSessionId;
  @Array(33)
  external Array<Uint16> ClientDigProductId;
  @Uint8()
  external int fDisableCpm;
  @Uint8()
  external int fDisableCdm;
  @Uint8()
  external int fDisableCcm;
  @Uint8()
  external int fDisableLPT;
  @Uint8()
  external int fDisableClip;
  @Uint8()
  external int fDisablePNP;
}

class WTS_USER_DATA extends Struct {
  @Array(129)
  external Array<Uint16> WorkDirectory;
  @Array(129)
  external Array<Uint16> InitialProgram;
  external WTS_TIME_ZONE_INFORMATION UserTimeZone;
}

class WTS_POLICY_DATA extends Struct {
  @Uint8()
  external int fDisableEncryption;
  @Uint8()
  external int fDisableAutoReconnect;
  @Uint32()
  external int ColorDepth;
  @Uint8()
  external int MinEncryptionLevel;
  @Uint8()
  external int fDisableCpm;
  @Uint8()
  external int fDisableCdm;
  @Uint8()
  external int fDisableCcm;
  @Uint8()
  external int fDisableLPT;
  @Uint8()
  external int fDisableClip;
  @Uint8()
  external int fDisablePNPRedir;
}

class WTS_PROTOCOL_CACHE extends Struct {
  @Uint32()
  external int CacheReads;
  @Uint32()
  external int CacheHits;
}

class WTS_CACHE_STATS_UN extends Struct {
  @Array(4)
  external Array<WTS_PROTOCOL_CACHE> ProtocolCache;
  @Uint32()
  external int TShareCacheStats;
  @Array(20)
  external Array<Uint32> Reserved;
}

class WTS_CACHE_STATS extends Struct {
  @Uint32()
  external int Specific;
  external WTS_CACHE_STATS_UN Data;
  @Uint16()
  external int ProtocolType;
  @Uint16()
  external int Length;
}

class WTS_PROTOCOL_COUNTERS extends Struct {
  @Uint32()
  external int WdBytes;
  @Uint32()
  external int WdFrames;
  @Uint32()
  external int WaitForOutBuf;
  @Uint32()
  external int Frames;
  @Uint32()
  external int Bytes;
  @Uint32()
  external int CompressedBytes;
  @Uint32()
  external int CompressFlushes;
  @Uint32()
  external int Errors;
  @Uint32()
  external int Timeouts;
  @Uint32()
  external int AsyncFramingError;
  @Uint32()
  external int AsyncOverrunError;
  @Uint32()
  external int AsyncOverflowError;
  @Uint32()
  external int AsyncParityError;
  @Uint32()
  external int TdErrors;
  @Uint16()
  external int ProtocolType;
  @Uint16()
  external int Length;
  @Uint16()
  external int Specific;
  @Array(100)
  external Array<Uint32> Reserved;
}

class WTS_PROTOCOL_STATUS extends Struct {
  external WTS_PROTOCOL_COUNTERS Output;
  external WTS_PROTOCOL_COUNTERS Input;
  external WTS_CACHE_STATS Cache;
  @Uint32()
  external int AsyncSignal;
  @Uint32()
  external int AsyncSignalMask;
  @Array(100)
  external Array<Int64> Counters;
}

class WTS_DISPLAY_IOCTL extends Struct {
  @Array(129)
  external Array<Uint8> pDisplayIOCtlData;
  @Uint32()
  external int cbDisplayIOCtlData;
}

class WTS_PROPERTY_VALUE extends Struct {
  @Uint16()
  external int Type;
  @Uint32()
  external int u;
}

class WTS_LICENSE_CAPABILITIES extends Struct {
  @Uint32()
  external int KeyExchangeAlg;
  @Uint32()
  external int ProtocolVer;
  @Int32()
  external int fAuthenticateServer;
  @Uint32()
  external int CertType;
  @Uint32()
  external int cbClientName;
  @Array(42)
  external Array<Uint8> rgbClientName;
}

class WRDS_LISTENER_SETTINGS_1 extends Struct {
  @Uint32()
  external int MaxProtocolListenerConnectionCount;
  @Uint32()
  external int SecurityDescriptorSize;
  external Pointer<Uint8> pSecurityDescriptor;
}

class WRDS_LISTENER_SETTING extends Struct {
  external WRDS_LISTENER_SETTINGS_1 WRdsListenerSettings1;
}

class WRDS_LISTENER_SETTINGS extends Struct {
  @Uint32()
  external int WRdsListenerSettingLevel;
  external WRDS_LISTENER_SETTING WRdsListenerSetting;
}

class WRDS_CONNECTION_SETTINGS_1 extends Struct {
  @Uint8()
  external int fInheritInitialProgram;
  @Uint8()
  external int fInheritColorDepth;
  @Uint8()
  external int fHideTitleBar;
  @Uint8()
  external int fInheritAutoLogon;
  @Uint8()
  external int fMaximizeShell;
  @Uint8()
  external int fDisablePNP;
  @Uint8()
  external int fPasswordIsScPin;
  @Uint8()
  external int fPromptForPassword;
  @Uint8()
  external int fDisableCpm;
  @Uint8()
  external int fDisableCdm;
  @Uint8()
  external int fDisableCcm;
  @Uint8()
  external int fDisableLPT;
  @Uint8()
  external int fDisableClip;
  @Uint8()
  external int fResetBroken;
  @Uint8()
  external int fDisableEncryption;
  @Uint8()
  external int fDisableAutoReconnect;
  @Uint8()
  external int fDisableCtrlAltDel;
  @Uint8()
  external int fDoubleClickDetect;
  @Uint8()
  external int fEnableWindowsKey;
  @Uint8()
  external int fUsingSavedCreds;
  @Uint8()
  external int fMouse;
  @Uint8()
  external int fNoAudioPlayback;
  @Uint8()
  external int fRemoteConsoleAudio;
  @Uint8()
  external int EncryptionLevel;
  @Uint16()
  external int ColorDepth;
  @Uint16()
  external int ProtocolType;
  @Uint16()
  external int HRes;
  @Uint16()
  external int VRes;
  @Uint16()
  external int ClientProductId;
  @Uint16()
  external int OutBufCountHost;
  @Uint16()
  external int OutBufCountClient;
  @Uint16()
  external int OutBufLength;
  @Uint32()
  external int KeyboardLayout;
  @Uint32()
  external int MaxConnectionTime;
  @Uint32()
  external int MaxDisconnectionTime;
  @Uint32()
  external int MaxIdleTime;
  @Uint32()
  external int PerformanceFlags;
  @Uint32()
  external int KeyboardType;
  @Uint32()
  external int KeyboardSubType;
  @Uint32()
  external int KeyboardFunctionKey;
  @Uint32()
  external int ActiveInputLocale;
  @Uint32()
  external int SerialNumber;
  @Uint32()
  external int ClientAddressFamily;
  @Uint32()
  external int ClientBuildNumber;
  @Uint32()
  external int ClientSessionId;
  @Array(129)
  external Array<Uint16> WorkDirectory;
  @Array(129)
  external Array<Uint16> InitialProgram;
  @Array(129)
  external Array<Uint16> UserName;
  @Array(129)
  external Array<Uint16> Domain;
  @Array(129)
  external Array<Uint16> Password;
  @Array(9)
  external Array<Uint16> ProtocolName;
  @Array(9)
  external Array<Uint16> DisplayDriverName;
  @Array(20)
  external Array<Uint16> DisplayDeviceName;
  @Array(33)
  external Array<Uint16> imeFileName;
  @Array(9)
  external Array<Uint16> AudioDriverName;
  @Array(21)
  external Array<Uint16> ClientName;
  @Array(31)
  external Array<Uint16> ClientAddress;
  @Array(129)
  external Array<Uint16> ClientDirectory;
  @Array(33)
  external Array<Uint16> ClientDigProductId;
  external WTS_SOCKADDR ClientSockAddress;
  external WTS_TIME_ZONE_INFORMATION ClientTimeZone;
  external WRDS_LISTENER_SETTINGS WRdsListenerSettings;
  external GUID EventLogActivityId;
  @Uint32()
  external int ContextSize;
  external Pointer<Uint8> ContextData;
}

class WRDS_SETTINGS_1 extends Struct {
  @Uint32()
  external int WRdsDisableClipStatus;
  @Uint32()
  external int WRdsDisableClipValue;
  @Uint32()
  external int WRdsDisableLPTStatus;
  @Uint32()
  external int WRdsDisableLPTValue;
  @Uint32()
  external int WRdsDisableCcmStatus;
  @Uint32()
  external int WRdsDisableCcmValue;
  @Uint32()
  external int WRdsDisableCdmStatus;
  @Uint32()
  external int WRdsDisableCdmValue;
  @Uint32()
  external int WRdsDisableCpmStatus;
  @Uint32()
  external int WRdsDisableCpmValue;
  @Uint32()
  external int WRdsDisablePnpStatus;
  @Uint32()
  external int WRdsDisablePnpValue;
  @Uint32()
  external int WRdsEncryptionLevelStatus;
  @Uint32()
  external int WRdsEncryptionValue;
  @Uint32()
  external int WRdsColorDepthStatus;
  @Uint32()
  external int WRdsColorDepthValue;
  @Uint32()
  external int WRdsDisableAutoReconnecetStatus;
  @Uint32()
  external int WRdsDisableAutoReconnecetValue;
  @Uint32()
  external int WRdsDisableEncryptionStatus;
  @Uint32()
  external int WRdsDisableEncryptionValue;
  @Uint32()
  external int WRdsResetBrokenStatus;
  @Uint32()
  external int WRdsResetBrokenValue;
  @Uint32()
  external int WRdsMaxIdleTimeStatus;
  @Uint32()
  external int WRdsMaxIdleTimeValue;
  @Uint32()
  external int WRdsMaxDisconnectTimeStatus;
  @Uint32()
  external int WRdsMaxDisconnectTimeValue;
  @Uint32()
  external int WRdsMaxConnectTimeStatus;
  @Uint32()
  external int WRdsMaxConnectTimeValue;
  @Uint32()
  external int WRdsKeepAliveStatus;
  @Uint8()
  external int WRdsKeepAliveStartValue;
  @Uint32()
  external int WRdsKeepAliveIntervalValue;
}

class WRDS_CONNECTION_SETTING extends Struct {
  external WRDS_CONNECTION_SETTINGS_1 WRdsConnectionSettings1;
}

class WRDS_CONNECTION_SETTINGS extends Struct {
  @Uint32()
  external int WRdsConnectionSettingLevel;
  external WRDS_CONNECTION_SETTING WRdsConnectionSetting;
}

class WRDS_SETTING extends Struct {
  external WRDS_SETTINGS_1 WRdsSettings1;
}

class WRDS_SETTINGS extends Struct {
  @Uint32()
  external int WRdsSettingType;
  @Uint32()
  external int WRdsSettingLevel;
  external WRDS_SETTING WRdsSetting;
}
