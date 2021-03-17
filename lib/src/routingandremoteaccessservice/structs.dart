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

class HRASCONN extends Struct {
  @IntPtr() external int Value;
}

class RASIPADDR extends Struct {
  @Uint8() external int a;
  @Uint8() external int b;
  @Uint8() external int c;
  @Uint8() external int d;
}

class RASCONNW extends Struct {
  @Uint32() external int dwSize;
  external HRASCONN hrasconn;
  external __ushort__ szEntryName;
  external __ushort__ szDeviceType;
  external __ushort__ szDeviceName;
  external __ushort__ szPhonebook;
  @Uint32() external int dwSubEntry;
  external GUID guidEntry;
  @Uint32() external int dwFlags;
  external LUID luid;
  external GUID guidCorrelationId;
}

class RASCONNA extends Struct {
  @Uint32() external int dwSize;
  external HRASCONN hrasconn;
  external __byte__ szEntryName;
  external __byte__ szDeviceType;
  external __byte__ szDeviceName;
  external __byte__ szPhonebook;
  @Uint32() external int dwSubEntry;
  external GUID guidEntry;
  @Uint32() external int dwFlags;
  external LUID luid;
  external GUID guidCorrelationId;
}

class RASCONNSTATUSW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int rasconnstate;
  @Uint32() external int dwError;
  external __ushort__ szDeviceType;
  external __ushort__ szDeviceName;
  external __ushort__ szPhoneNumber;
  external RASTUNNELENDPOINT localEndPoint;
  external RASTUNNELENDPOINT remoteEndPoint;
  @Uint32() external int rasconnsubstate;
}

class RASCONNSTATUSA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int rasconnstate;
  @Uint32() external int dwError;
  external __byte__ szDeviceType;
  external __byte__ szDeviceName;
  external __byte__ szPhoneNumber;
  external RASTUNNELENDPOINT localEndPoint;
  external RASTUNNELENDPOINT remoteEndPoint;
  @Uint32() external int rasconnsubstate;
}

class RASDIALPARAMSW extends Struct {
  @Uint32() external int dwSize;
  external __ushort__ szEntryName;
  external __ushort__ szPhoneNumber;
  external __ushort__ szCallbackNumber;
  external __ushort__ szUserName;
  external __ushort__ szPassword;
  external __ushort__ szDomain;
  @Uint32() external int dwSubEntry;
  @IntPtr() external int dwCallbackId;
  @Uint32() external int dwIfIndex;
  external Pointer<Utf16> szEncPassword;
}

class RASDIALPARAMSA extends Struct {
  @Uint32() external int dwSize;
  external __byte__ szEntryName;
  external __byte__ szPhoneNumber;
  external __byte__ szCallbackNumber;
  external __byte__ szUserName;
  external __byte__ szPassword;
  external __byte__ szDomain;
  @Uint32() external int dwSubEntry;
  @IntPtr() external int dwCallbackId;
  @Uint32() external int dwIfIndex;
  external Pointer<Utf8> szEncPassword;
}

class RASEAPINFO extends Struct {
  @Uint32() external int dwSizeofEapInfo;
  external Pointer<Uint8> pbEapInfo;
}

class RASDEVSPECIFICINFO extends Struct {
  @Uint32() external int dwSize;
  external Pointer<Uint8> pbDevSpecificInfo;
}

class RASDIALEXTENSIONS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwfOptions;
  @IntPtr() external int hwndParent;
  @IntPtr() external int reserved;
  @IntPtr() external int reserved1;
  external RASEAPINFO RasEapInfo;
  @Int32() external int fSkipPppAuth;
  external RASDEVSPECIFICINFO RasDevSpecificInfo;
}

class RASENTRYNAMEW extends Struct {
  @Uint32() external int dwSize;
  external __ushort__ szEntryName;
  @Uint32() external int dwFlags;
  external __ushort__ szPhonebookPath;
}

class RASENTRYNAMEA extends Struct {
  @Uint32() external int dwSize;
  external __byte__ szEntryName;
  @Uint32() external int dwFlags;
  external __byte__ szPhonebookPath;
}

class RASAMBW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwError;
  external __ushort__ szNetBiosError;
  @Uint8() external int bLana;
}

class RASAMBA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwError;
  external __byte__ szNetBiosError;
  @Uint8() external int bLana;
}

class RASPPPNBFW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwError;
  @Uint32() external int dwNetBiosError;
  external __ushort__ szNetBiosError;
  external __ushort__ szWorkstationName;
  @Uint8() external int bLana;
}

class RASPPPNBFA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwError;
  @Uint32() external int dwNetBiosError;
  external __byte__ szNetBiosError;
  external __byte__ szWorkstationName;
  @Uint8() external int bLana;
}

class RASIPXW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwError;
  external __ushort__ szIpxAddress;
}

class RASPPPIPXA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwError;
  external __byte__ szIpxAddress;
}

class RASPPPIPW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwError;
  external __ushort__ szIpAddress;
  external __ushort__ szServerIpAddress;
  @Uint32() external int dwOptions;
  @Uint32() external int dwServerOptions;
}

class RASPPPIPA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwError;
  external __byte__ szIpAddress;
  external __byte__ szServerIpAddress;
  @Uint32() external int dwOptions;
  @Uint32() external int dwServerOptions;
}

class RASPPPIPV6 extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwError;
  external __ubyte__ bLocalInterfaceIdentifier;
  external __ubyte__ bPeerInterfaceIdentifier;
  external __ubyte__ bLocalCompressionProtocol;
  external __ubyte__ bPeerCompressionProtocol;
}

class RASPPPLCPW extends Struct {
  @Uint32() external int dwSize;
  @Int32() external int fBundled;
  @Uint32() external int dwError;
  @Uint32() external int dwAuthenticationProtocol;
  @Uint32() external int dwAuthenticationData;
  @Uint32() external int dwEapTypeId;
  @Uint32() external int dwServerAuthenticationProtocol;
  @Uint32() external int dwServerAuthenticationData;
  @Uint32() external int dwServerEapTypeId;
  @Int32() external int fMultilink;
  @Uint32() external int dwTerminateReason;
  @Uint32() external int dwServerTerminateReason;
  external __ushort__ szReplyMessage;
  @Uint32() external int dwOptions;
  @Uint32() external int dwServerOptions;
}

class RASPPPLCPA extends Struct {
  @Uint32() external int dwSize;
  @Int32() external int fBundled;
  @Uint32() external int dwError;
  @Uint32() external int dwAuthenticationProtocol;
  @Uint32() external int dwAuthenticationData;
  @Uint32() external int dwEapTypeId;
  @Uint32() external int dwServerAuthenticationProtocol;
  @Uint32() external int dwServerAuthenticationData;
  @Uint32() external int dwServerEapTypeId;
  @Int32() external int fMultilink;
  @Uint32() external int dwTerminateReason;
  @Uint32() external int dwServerTerminateReason;
  external __byte__ szReplyMessage;
  @Uint32() external int dwOptions;
  @Uint32() external int dwServerOptions;
}

class RASPPPCCP extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwError;
  @Uint32() external int dwCompressionAlgorithm;
  @Uint32() external int dwOptions;
  @Uint32() external int dwServerCompressionAlgorithm;
  @Uint32() external int dwServerOptions;
}

class RASPPP_PROJECTION_INFO extends Struct {
  @Uint32() external int dwIPv4NegotiationError;
  external in_addr ipv4Address;
  external in_addr ipv4ServerAddress;
  @Uint32() external int dwIPv4Options;
  @Uint32() external int dwIPv4ServerOptions;
  @Uint32() external int dwIPv6NegotiationError;
  external __ubyte__ bInterfaceIdentifier;
  external __ubyte__ bServerInterfaceIdentifier;
  @Int32() external int fBundled;
  @Int32() external int fMultilink;
  @Uint32() external int dwAuthenticationProtocol;
  @Uint32() external int dwAuthenticationData;
  @Uint32() external int dwServerAuthenticationProtocol;
  @Uint32() external int dwServerAuthenticationData;
  @Uint32() external int dwEapTypeId;
  @Uint32() external int dwServerEapTypeId;
  @Uint32() external int dwLcpOptions;
  @Uint32() external int dwLcpServerOptions;
  @Uint32() external int dwCcpError;
  @Uint32() external int dwCcpCompressionAlgorithm;
  @Uint32() external int dwCcpServerCompressionAlgorithm;
  @Uint32() external int dwCcpOptions;
  @Uint32() external int dwCcpServerOptions;
}

class RASIKEV2_PROJECTION_INFO extends Struct {
  @Uint32() external int dwIPv4NegotiationError;
  external in_addr ipv4Address;
  external in_addr ipv4ServerAddress;
  @Uint32() external int dwIPv6NegotiationError;
  external in6_addr ipv6Address;
  external in6_addr ipv6ServerAddress;
  @Uint32() external int dwPrefixLength;
  @Uint32() external int dwAuthenticationProtocol;
  @Uint32() external int dwEapTypeId;
  @Uint32() external int dwFlags;
  @Uint32() external int dwEncryptionMethod;
  @Uint32() external int numIPv4ServerAddresses;
  external Pointer<in_addr> ipv4ServerAddresses;
  @Uint32() external int numIPv6ServerAddresses;
  external Pointer<in6_addr> ipv6ServerAddresses;
}

class RASDEVINFOW extends Struct {
  @Uint32() external int dwSize;
  external __ushort__ szDeviceType;
  external __ushort__ szDeviceName;
}

class RASDEVINFOA extends Struct {
  @Uint32() external int dwSize;
  external __byte__ szDeviceType;
  external __byte__ szDeviceName;
}

class RASCTRYINFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCountryID;
  @Uint32() external int dwNextCountryID;
  @Uint32() external int dwCountryCode;
  @Uint32() external int dwCountryNameOffset;
}

class RASENTRYA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwfOptions;
  @Uint32() external int dwCountryID;
  @Uint32() external int dwCountryCode;
  external __byte__ szAreaCode;
  external __byte__ szLocalPhoneNumber;
  @Uint32() external int dwAlternateOffset;
  external RASIPADDR ipaddr;
  external RASIPADDR ipaddrDns;
  external RASIPADDR ipaddrDnsAlt;
  external RASIPADDR ipaddrWins;
  external RASIPADDR ipaddrWinsAlt;
  @Uint32() external int dwFrameSize;
  @Uint32() external int dwfNetProtocols;
  @Uint32() external int dwFramingProtocol;
  external __byte__ szScript;
  external __byte__ szAutodialDll;
  external __byte__ szAutodialFunc;
  external __byte__ szDeviceType;
  external __byte__ szDeviceName;
  external __byte__ szX25PadType;
  external __byte__ szX25Address;
  external __byte__ szX25Facilities;
  external __byte__ szX25UserData;
  @Uint32() external int dwChannels;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint32() external int dwSubEntries;
  @Uint32() external int dwDialMode;
  @Uint32() external int dwDialExtraPercent;
  @Uint32() external int dwDialExtraSampleSeconds;
  @Uint32() external int dwHangUpExtraPercent;
  @Uint32() external int dwHangUpExtraSampleSeconds;
  @Uint32() external int dwIdleDisconnectSeconds;
  @Uint32() external int dwType;
  @Uint32() external int dwEncryptionType;
  @Uint32() external int dwCustomAuthKey;
  external GUID guidId;
  external __byte__ szCustomDialDll;
  @Uint32() external int dwVpnStrategy;
  @Uint32() external int dwfOptions2;
  @Uint32() external int dwfOptions3;
  external __byte__ szDnsSuffix;
  @Uint32() external int dwTcpWindowSize;
  external __byte__ szPrerequisitePbk;
  external __byte__ szPrerequisiteEntry;
  @Uint32() external int dwRedialCount;
  @Uint32() external int dwRedialPause;
  external in6_addr ipv6addrDns;
  external in6_addr ipv6addrDnsAlt;
  @Uint32() external int dwIPv4InterfaceMetric;
  @Uint32() external int dwIPv6InterfaceMetric;
  external in6_addr ipv6addr;
  @Uint32() external int dwIPv6PrefixLength;
  @Uint32() external int dwNetworkOutageTime;
  external __byte__ szIDi;
  external __byte__ szIDr;
  @Int32() external int fIsImsConfig;
  @Uint32() external int IdiType;
  @Uint32() external int IdrType;
  @Int32() external int fDisableIKEv2Fragmentation;
}

class RASENTRYW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwfOptions;
  @Uint32() external int dwCountryID;
  @Uint32() external int dwCountryCode;
  external __ushort__ szAreaCode;
  external __ushort__ szLocalPhoneNumber;
  @Uint32() external int dwAlternateOffset;
  external RASIPADDR ipaddr;
  external RASIPADDR ipaddrDns;
  external RASIPADDR ipaddrDnsAlt;
  external RASIPADDR ipaddrWins;
  external RASIPADDR ipaddrWinsAlt;
  @Uint32() external int dwFrameSize;
  @Uint32() external int dwfNetProtocols;
  @Uint32() external int dwFramingProtocol;
  external __ushort__ szScript;
  external __ushort__ szAutodialDll;
  external __ushort__ szAutodialFunc;
  external __ushort__ szDeviceType;
  external __ushort__ szDeviceName;
  external __ushort__ szX25PadType;
  external __ushort__ szX25Address;
  external __ushort__ szX25Facilities;
  external __ushort__ szX25UserData;
  @Uint32() external int dwChannels;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint32() external int dwSubEntries;
  @Uint32() external int dwDialMode;
  @Uint32() external int dwDialExtraPercent;
  @Uint32() external int dwDialExtraSampleSeconds;
  @Uint32() external int dwHangUpExtraPercent;
  @Uint32() external int dwHangUpExtraSampleSeconds;
  @Uint32() external int dwIdleDisconnectSeconds;
  @Uint32() external int dwType;
  @Uint32() external int dwEncryptionType;
  @Uint32() external int dwCustomAuthKey;
  external GUID guidId;
  external __ushort__ szCustomDialDll;
  @Uint32() external int dwVpnStrategy;
  @Uint32() external int dwfOptions2;
  @Uint32() external int dwfOptions3;
  external __ushort__ szDnsSuffix;
  @Uint32() external int dwTcpWindowSize;
  external __ushort__ szPrerequisitePbk;
  external __ushort__ szPrerequisiteEntry;
  @Uint32() external int dwRedialCount;
  @Uint32() external int dwRedialPause;
  external in6_addr ipv6addrDns;
  external in6_addr ipv6addrDnsAlt;
  @Uint32() external int dwIPv4InterfaceMetric;
  @Uint32() external int dwIPv6InterfaceMetric;
  external in6_addr ipv6addr;
  @Uint32() external int dwIPv6PrefixLength;
  @Uint32() external int dwNetworkOutageTime;
  external __ushort__ szIDi;
  external __ushort__ szIDr;
  @Int32() external int fIsImsConfig;
  @Uint32() external int IdiType;
  @Uint32() external int IdrType;
  @Int32() external int fDisableIKEv2Fragmentation;
}

class RASADPARAMS extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndOwner;
  @Uint32() external int dwFlags;
  @Int32() external int xDlg;
  @Int32() external int yDlg;
}

class RASSUBENTRYA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwfFlags;
  external __byte__ szDeviceType;
  external __byte__ szDeviceName;
  external __byte__ szLocalPhoneNumber;
  @Uint32() external int dwAlternateOffset;
}

class RASSUBENTRYW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwfFlags;
  external __ushort__ szDeviceType;
  external __ushort__ szDeviceName;
  external __ushort__ szLocalPhoneNumber;
  @Uint32() external int dwAlternateOffset;
}

class RASCREDENTIALSA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwMask;
  external __byte__ szUserName;
  external __byte__ szPassword;
  external __byte__ szDomain;
}

class RASCREDENTIALSW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwMask;
  external __ushort__ szUserName;
  external __ushort__ szPassword;
  external __ushort__ szDomain;
}

class RASAUTODIALENTRYA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwDialingLocation;
  external __byte__ szEntry;
}

class RASAUTODIALENTRYW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwDialingLocation;
  external __ushort__ szEntry;
}

class RASEAPUSERIDENTITYA extends Struct {
  external __byte__ szUserName;
  @Uint32() external int dwSizeofEapInfo;
  external __ubyte__ pbEapInfo;
}

class RASEAPUSERIDENTITYW extends Struct {
  external __ushort__ szUserName;
  @Uint32() external int dwSizeofEapInfo;
  external __ubyte__ pbEapInfo;
}

class RASCOMMSETTINGS extends Struct {
  @Uint32() external int dwSize;
  @Uint8() external int bParity;
  @Uint8() external int bStop;
  @Uint8() external int bByteSize;
  @Uint8() external int bAlign;
}

class RASCUSTOMSCRIPTEXTENSIONS extends Struct {
  @Uint32() external int dwSize;
  external PFNRASSETCOMMSETTINGS pfnRasSetCommSettings;
}

class RAS_STATS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwBytesXmited;
  @Uint32() external int dwBytesRcved;
  @Uint32() external int dwFramesXmited;
  @Uint32() external int dwFramesRcved;
  @Uint32() external int dwCrcErr;
  @Uint32() external int dwTimeoutErr;
  @Uint32() external int dwAlignmentErr;
  @Uint32() external int dwHardwareOverrunErr;
  @Uint32() external int dwFramingErr;
  @Uint32() external int dwBufferOverrunErr;
  @Uint32() external int dwCompressionRatioIn;
  @Uint32() external int dwCompressionRatioOut;
  @Uint32() external int dwBps;
  @Uint32() external int dwConnectDuration;
}

class RASUPDATECONN extends Struct {
  @Uint32() external int version;
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwIfIndex;
  external RASTUNNELENDPOINT localEndPoint;
  external RASTUNNELENDPOINT remoteEndPoint;
}

class RASNOUSERW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwTimeoutMs;
  external __ushort__ szUserName;
  external __ushort__ szPassword;
  external __ushort__ szDomain;
}

class RASNOUSERA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwTimeoutMs;
  external __byte__ szUserName;
  external __byte__ szPassword;
  external __byte__ szDomain;
}

class RASPBDLGW extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndOwner;
  @Uint32() external int dwFlags;
  @Int32() external int xDlg;
  @Int32() external int yDlg;
  @IntPtr() external int dwCallbackId;
  external RASPBDLGFUNCW pCallback;
  @Uint32() external int dwError;
  @IntPtr() external int reserved;
  @IntPtr() external int reserved2;
}

class RASPBDLGA extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndOwner;
  @Uint32() external int dwFlags;
  @Int32() external int xDlg;
  @Int32() external int yDlg;
  @IntPtr() external int dwCallbackId;
  external RASPBDLGFUNCA pCallback;
  @Uint32() external int dwError;
  @IntPtr() external int reserved;
  @IntPtr() external int reserved2;
}

class RASENTRYDLGW extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndOwner;
  @Uint32() external int dwFlags;
  @Int32() external int xDlg;
  @Int32() external int yDlg;
  external __ushort__ szEntry;
  @Uint32() external int dwError;
  @IntPtr() external int reserved;
  @IntPtr() external int reserved2;
}

class RASENTRYDLGA extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndOwner;
  @Uint32() external int dwFlags;
  @Int32() external int xDlg;
  @Int32() external int yDlg;
  external __byte__ szEntry;
  @Uint32() external int dwError;
  @IntPtr() external int reserved;
  @IntPtr() external int reserved2;
}

class RASDIALDLG extends Struct {
  @Uint32() external int dwSize;
  @IntPtr() external int hwndOwner;
  @Uint32() external int dwFlags;
  @Int32() external int xDlg;
  @Int32() external int yDlg;
  @Uint32() external int dwSubEntry;
  @Uint32() external int dwError;
  @IntPtr() external int reserved;
  @IntPtr() external int reserved2;
}

class MPR_INTERFACE_0 extends Struct {
  external __ushort__ wszInterfaceName;
  @IntPtr() external int hInterface;
  @Int32() external int fEnabled;
  @Uint32() external int dwIfType;
  @Uint32() external int dwConnectionState;
  @Uint32() external int fUnReachabilityReasons;
  @Uint32() external int dwLastError;
}

class MPR_IPINIP_INTERFACE_0 extends Struct {
  external __ushort__ wszFriendlyName;
  external GUID Guid;
}

class MPR_INTERFACE_1 extends Struct {
  external __ushort__ wszInterfaceName;
  @IntPtr() external int hInterface;
  @Int32() external int fEnabled;
  @Uint32() external int dwIfType;
  @Uint32() external int dwConnectionState;
  @Uint32() external int fUnReachabilityReasons;
  @Uint32() external int dwLastError;
  external Pointer<Utf16> lpwsDialoutHoursRestriction;
}

class MPR_INTERFACE_2 extends Struct {
  external __ushort__ wszInterfaceName;
  @IntPtr() external int hInterface;
  @Int32() external int fEnabled;
  @Uint32() external int dwIfType;
  @Uint32() external int dwConnectionState;
  @Uint32() external int fUnReachabilityReasons;
  @Uint32() external int dwLastError;
  @Uint32() external int dwfOptions;
  external __ushort__ szLocalPhoneNumber;
  external Pointer<Utf16> szAlternates;
  @Uint32() external int ipaddr;
  @Uint32() external int ipaddrDns;
  @Uint32() external int ipaddrDnsAlt;
  @Uint32() external int ipaddrWins;
  @Uint32() external int ipaddrWinsAlt;
  @Uint32() external int dwfNetProtocols;
  external __ushort__ szDeviceType;
  external __ushort__ szDeviceName;
  external __ushort__ szX25PadType;
  external __ushort__ szX25Address;
  external __ushort__ szX25Facilities;
  external __ushort__ szX25UserData;
  @Uint32() external int dwChannels;
  @Uint32() external int dwSubEntries;
  @Uint32() external int dwDialMode;
  @Uint32() external int dwDialExtraPercent;
  @Uint32() external int dwDialExtraSampleSeconds;
  @Uint32() external int dwHangUpExtraPercent;
  @Uint32() external int dwHangUpExtraSampleSeconds;
  @Uint32() external int dwIdleDisconnectSeconds;
  @Uint32() external int dwType;
  @Uint32() external int dwEncryptionType;
  @Uint32() external int dwCustomAuthKey;
  @Uint32() external int dwCustomAuthDataSize;
  external Pointer<Uint8> lpbCustomAuthData;
  external GUID guidId;
  @Uint32() external int dwVpnStrategy;
}

class MPR_INTERFACE_3 extends Struct {
  external __ushort__ wszInterfaceName;
  @IntPtr() external int hInterface;
  @Int32() external int fEnabled;
  @Uint32() external int dwIfType;
  @Uint32() external int dwConnectionState;
  @Uint32() external int fUnReachabilityReasons;
  @Uint32() external int dwLastError;
  @Uint32() external int dwfOptions;
  external __ushort__ szLocalPhoneNumber;
  external Pointer<Utf16> szAlternates;
  @Uint32() external int ipaddr;
  @Uint32() external int ipaddrDns;
  @Uint32() external int ipaddrDnsAlt;
  @Uint32() external int ipaddrWins;
  @Uint32() external int ipaddrWinsAlt;
  @Uint32() external int dwfNetProtocols;
  external __ushort__ szDeviceType;
  external __ushort__ szDeviceName;
  external __ushort__ szX25PadType;
  external __ushort__ szX25Address;
  external __ushort__ szX25Facilities;
  external __ushort__ szX25UserData;
  @Uint32() external int dwChannels;
  @Uint32() external int dwSubEntries;
  @Uint32() external int dwDialMode;
  @Uint32() external int dwDialExtraPercent;
  @Uint32() external int dwDialExtraSampleSeconds;
  @Uint32() external int dwHangUpExtraPercent;
  @Uint32() external int dwHangUpExtraSampleSeconds;
  @Uint32() external int dwIdleDisconnectSeconds;
  @Uint32() external int dwType;
  @Uint32() external int dwEncryptionType;
  @Uint32() external int dwCustomAuthKey;
  @Uint32() external int dwCustomAuthDataSize;
  external Pointer<Uint8> lpbCustomAuthData;
  external GUID guidId;
  @Uint32() external int dwVpnStrategy;
  @Uint32() external int AddressCount;
  external in6_addr ipv6addrDns;
  external in6_addr ipv6addrDnsAlt;
  external Pointer<in6_addr> ipv6addr;
}

class MPR_DEVICE_0 extends Struct {
  external __ushort__ szDeviceType;
  external __ushort__ szDeviceName;
}

class MPR_DEVICE_1 extends Struct {
  external __ushort__ szDeviceType;
  external __ushort__ szDeviceName;
  external __ushort__ szLocalPhoneNumber;
  external Pointer<Utf16> szAlternates;
}

class MPR_CREDENTIALSEX_0 extends Struct {
  @Uint32() external int dwSize;
  external Pointer<Uint8> lpbCredentialsInfo;
}

class MPR_CREDENTIALSEX_1 extends Struct {
  @Uint32() external int dwSize;
  external Pointer<Uint8> lpbCredentialsInfo;
}

class MPR_TRANSPORT_0 extends Struct {
  @Uint32() external int dwTransportId;
  @IntPtr() external int hTransport;
  external __ushort__ wszTransportName;
}

class MPR_IFTRANSPORT_0 extends Struct {
  @Uint32() external int dwTransportId;
  @IntPtr() external int hIfTransport;
  external __ushort__ wszIfTransportName;
}

class MPR_SERVER_0 extends Struct {
  @Int32() external int fLanOnlyMode;
  @Uint32() external int dwUpTime;
  @Uint32() external int dwTotalPorts;
  @Uint32() external int dwPortsInUse;
}

class MPR_SERVER_1 extends Struct {
  @Uint32() external int dwNumPptpPorts;
  @Uint32() external int dwPptpPortFlags;
  @Uint32() external int dwNumL2tpPorts;
  @Uint32() external int dwL2tpPortFlags;
}

class MPR_SERVER_2 extends Struct {
  @Uint32() external int dwNumPptpPorts;
  @Uint32() external int dwPptpPortFlags;
  @Uint32() external int dwNumL2tpPorts;
  @Uint32() external int dwL2tpPortFlags;
  @Uint32() external int dwNumSstpPorts;
  @Uint32() external int dwSstpPortFlags;
}

class RAS_PORT_0 extends Struct {
  @IntPtr() external int hPort;
  @IntPtr() external int hConnection;
  @Uint32() external int dwPortCondition;
  @Uint32() external int dwTotalNumberOfCalls;
  @Uint32() external int dwConnectDuration;
  external __ushort__ wszPortName;
  external __ushort__ wszMediaName;
  external __ushort__ wszDeviceName;
  external __ushort__ wszDeviceType;
}

class RAS_PORT_1 extends Struct {
  @IntPtr() external int hPort;
  @IntPtr() external int hConnection;
  @Uint32() external int dwHardwareCondition;
  @Uint32() external int dwLineSpeed;
  @Uint32() external int dwBytesXmited;
  @Uint32() external int dwBytesRcved;
  @Uint32() external int dwFramesXmited;
  @Uint32() external int dwFramesRcved;
  @Uint32() external int dwCrcErr;
  @Uint32() external int dwTimeoutErr;
  @Uint32() external int dwAlignmentErr;
  @Uint32() external int dwHardwareOverrunErr;
  @Uint32() external int dwFramingErr;
  @Uint32() external int dwBufferOverrunErr;
  @Uint32() external int dwCompressionRatioIn;
  @Uint32() external int dwCompressionRatioOut;
}

class RAS_PORT_2 extends Struct {
  @IntPtr() external int hPort;
  @IntPtr() external int hConnection;
  @Uint32() external int dwConn_State;
  external __ushort__ wszPortName;
  external __ushort__ wszMediaName;
  external __ushort__ wszDeviceName;
  external __ushort__ wszDeviceType;
  @Uint32() external int dwHardwareCondition;
  @Uint32() external int dwLineSpeed;
  @Uint32() external int dwCrcErr;
  @Uint32() external int dwSerialOverRunErrs;
  @Uint32() external int dwTimeoutErr;
  @Uint32() external int dwAlignmentErr;
  @Uint32() external int dwHardwareOverrunErr;
  @Uint32() external int dwFramingErr;
  @Uint32() external int dwBufferOverrunErr;
  @Uint32() external int dwCompressionRatioIn;
  @Uint32() external int dwCompressionRatioOut;
  @Uint32() external int dwTotalErrors;
  @Uint64() external int ullBytesXmited;
  @Uint64() external int ullBytesRcved;
  @Uint64() external int ullFramesXmited;
  @Uint64() external int ullFramesRcved;
  @Uint64() external int ullBytesTxUncompressed;
  @Uint64() external int ullBytesTxCompressed;
  @Uint64() external int ullBytesRcvUncompressed;
  @Uint64() external int ullBytesRcvCompressed;
}

class PPP_NBFCP_INFO extends Struct {
  @Uint32() external int dwError;
  external __ushort__ wszWksta;
}

class PPP_IPCP_INFO extends Struct {
  @Uint32() external int dwError;
  external __ushort__ wszAddress;
  external __ushort__ wszRemoteAddress;
}

class PPP_IPCP_INFO2 extends Struct {
  @Uint32() external int dwError;
  external __ushort__ wszAddress;
  external __ushort__ wszRemoteAddress;
  @Uint32() external int dwOptions;
  @Uint32() external int dwRemoteOptions;
}

class PPP_IPXCP_INFO extends Struct {
  @Uint32() external int dwError;
  external __ushort__ wszAddress;
}

class PPP_ATCP_INFO extends Struct {
  @Uint32() external int dwError;
  external __ushort__ wszAddress;
}

class PPP_IPV6_CP_INFO extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int dwSize;
  @Uint32() external int dwError;
  external __ubyte__ bInterfaceIdentifier;
  external __ubyte__ bRemoteInterfaceIdentifier;
  @Uint32() external int dwOptions;
  @Uint32() external int dwRemoteOptions;
  external __ubyte__ bPrefix;
  @Uint32() external int dwPrefixLength;
}

class PPP_INFO extends Struct {
  external PPP_NBFCP_INFO nbf;
  external PPP_IPCP_INFO ip;
  external PPP_IPXCP_INFO ipx;
  external PPP_ATCP_INFO at;
}

class PPP_CCP_INFO extends Struct {
  @Uint32() external int dwError;
  @Uint32() external int dwCompressionAlgorithm;
  @Uint32() external int dwOptions;
  @Uint32() external int dwRemoteCompressionAlgorithm;
  @Uint32() external int dwRemoteOptions;
}

class PPP_LCP_INFO extends Struct {
  @Uint32() external int dwError;
  @Uint32() external int dwAuthenticationProtocol;
  @Uint32() external int dwAuthenticationData;
  @Uint32() external int dwRemoteAuthenticationProtocol;
  @Uint32() external int dwRemoteAuthenticationData;
  @Uint32() external int dwTerminateReason;
  @Uint32() external int dwRemoteTerminateReason;
  @Uint32() external int dwOptions;
  @Uint32() external int dwRemoteOptions;
  @Uint32() external int dwEapTypeId;
  @Uint32() external int dwRemoteEapTypeId;
}

class PPP_INFO_2 extends Struct {
  external PPP_NBFCP_INFO nbf;
  external PPP_IPCP_INFO2 ip;
  external PPP_IPXCP_INFO ipx;
  external PPP_ATCP_INFO at;
  external PPP_CCP_INFO ccp;
  external PPP_LCP_INFO lcp;
}

class PPP_INFO_3 extends Struct {
  external PPP_NBFCP_INFO nbf;
  external PPP_IPCP_INFO2 ip;
  external PPP_IPV6_CP_INFO ipv6;
  external PPP_CCP_INFO ccp;
  external PPP_LCP_INFO lcp;
}

class RAS_CONNECTION_0 extends Struct {
  @IntPtr() external int hConnection;
  @IntPtr() external int hInterface;
  @Uint32() external int dwConnectDuration;
  @Uint32() external int dwInterfaceType;
  @Uint32() external int dwConnectionFlags;
  external __ushort__ wszInterfaceName;
  external __ushort__ wszUserName;
  external __ushort__ wszLogonDomain;
  external __ushort__ wszRemoteComputer;
}

class RAS_CONNECTION_1 extends Struct {
  @IntPtr() external int hConnection;
  @IntPtr() external int hInterface;
  external PPP_INFO PppInfo;
  @Uint32() external int dwBytesXmited;
  @Uint32() external int dwBytesRcved;
  @Uint32() external int dwFramesXmited;
  @Uint32() external int dwFramesRcved;
  @Uint32() external int dwCrcErr;
  @Uint32() external int dwTimeoutErr;
  @Uint32() external int dwAlignmentErr;
  @Uint32() external int dwHardwareOverrunErr;
  @Uint32() external int dwFramingErr;
  @Uint32() external int dwBufferOverrunErr;
  @Uint32() external int dwCompressionRatioIn;
  @Uint32() external int dwCompressionRatioOut;
}

class RAS_CONNECTION_2 extends Struct {
  @IntPtr() external int hConnection;
  external __ushort__ wszUserName;
  @Uint32() external int dwInterfaceType;
  external GUID guid;
  external PPP_INFO_2 PppInfo2;
}

class RAS_CONNECTION_3 extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int dwSize;
  @IntPtr() external int hConnection;
  external __ushort__ wszUserName;
  @Uint32() external int dwInterfaceType;
  external GUID guid;
  external PPP_INFO_3 PppInfo3;
  @Uint32() external int rasQuarState;
  external FILETIME timer;
}

class RAS_USER_0 extends Struct {
  @Uint8() external int bfPrivilege;
  external __ushort__ wszPhoneNumber;
}

class RAS_USER_1 extends Struct {
  @Uint8() external int bfPrivilege;
  external __ushort__ wszPhoneNumber;
  @Uint8() external int bfPrivilege2;
}

class MPR_FILTER_0 extends Struct {
  @Int32() external int fEnable;
}

class MPRAPI_OBJECT_HEADER extends Struct {
  @Uint8() external int revision;
  @Uint8() external int type;
  @Uint16() external int size;
}

class PPP_PROJECTION_INFO extends Struct {
  @Uint32() external int dwIPv4NegotiationError;
  external __ushort__ wszAddress;
  external __ushort__ wszRemoteAddress;
  @Uint32() external int dwIPv4Options;
  @Uint32() external int dwIPv4RemoteOptions;
  @Uint64() external int IPv4SubInterfaceIndex;
  @Uint32() external int dwIPv6NegotiationError;
  external __ubyte__ bInterfaceIdentifier;
  external __ubyte__ bRemoteInterfaceIdentifier;
  external __ubyte__ bPrefix;
  @Uint32() external int dwPrefixLength;
  @Uint64() external int IPv6SubInterfaceIndex;
  @Uint32() external int dwLcpError;
  @Uint32() external int dwAuthenticationProtocol;
  @Uint32() external int dwAuthenticationData;
  @Uint32() external int dwRemoteAuthenticationProtocol;
  @Uint32() external int dwRemoteAuthenticationData;
  @Uint32() external int dwLcpTerminateReason;
  @Uint32() external int dwLcpRemoteTerminateReason;
  @Uint32() external int dwLcpOptions;
  @Uint32() external int dwLcpRemoteOptions;
  @Uint32() external int dwEapTypeId;
  @Uint32() external int dwRemoteEapTypeId;
  @Uint32() external int dwCcpError;
  @Uint32() external int dwCompressionAlgorithm;
  @Uint32() external int dwCcpOptions;
  @Uint32() external int dwRemoteCompressionAlgorithm;
  @Uint32() external int dwCcpRemoteOptions;
}

class PPP_PROJECTION_INFO2 extends Struct {
  @Uint32() external int dwIPv4NegotiationError;
  external __ushort__ wszAddress;
  external __ushort__ wszRemoteAddress;
  @Uint32() external int dwIPv4Options;
  @Uint32() external int dwIPv4RemoteOptions;
  @Uint64() external int IPv4SubInterfaceIndex;
  @Uint32() external int dwIPv6NegotiationError;
  external __ubyte__ bInterfaceIdentifier;
  external __ubyte__ bRemoteInterfaceIdentifier;
  external __ubyte__ bPrefix;
  @Uint32() external int dwPrefixLength;
  @Uint64() external int IPv6SubInterfaceIndex;
  @Uint32() external int dwLcpError;
  @Uint32() external int dwAuthenticationProtocol;
  @Uint32() external int dwAuthenticationData;
  @Uint32() external int dwRemoteAuthenticationProtocol;
  @Uint32() external int dwRemoteAuthenticationData;
  @Uint32() external int dwLcpTerminateReason;
  @Uint32() external int dwLcpRemoteTerminateReason;
  @Uint32() external int dwLcpOptions;
  @Uint32() external int dwLcpRemoteOptions;
  @Uint32() external int dwEapTypeId;
  @Uint32() external int dwEmbeddedEAPTypeId;
  @Uint32() external int dwRemoteEapTypeId;
  @Uint32() external int dwCcpError;
  @Uint32() external int dwCompressionAlgorithm;
  @Uint32() external int dwCcpOptions;
  @Uint32() external int dwRemoteCompressionAlgorithm;
  @Uint32() external int dwCcpRemoteOptions;
}

class IKEV2_PROJECTION_INFO extends Struct {
  @Uint32() external int dwIPv4NegotiationError;
  external __ushort__ wszAddress;
  external __ushort__ wszRemoteAddress;
  @Uint64() external int IPv4SubInterfaceIndex;
  @Uint32() external int dwIPv6NegotiationError;
  external __ubyte__ bInterfaceIdentifier;
  external __ubyte__ bRemoteInterfaceIdentifier;
  external __ubyte__ bPrefix;
  @Uint32() external int dwPrefixLength;
  @Uint64() external int IPv6SubInterfaceIndex;
  @Uint32() external int dwOptions;
  @Uint32() external int dwAuthenticationProtocol;
  @Uint32() external int dwEapTypeId;
  @Uint32() external int dwCompressionAlgorithm;
  @Uint32() external int dwEncryptionMethod;
}

class IKEV2_PROJECTION_INFO2 extends Struct {
  @Uint32() external int dwIPv4NegotiationError;
  external __ushort__ wszAddress;
  external __ushort__ wszRemoteAddress;
  @Uint64() external int IPv4SubInterfaceIndex;
  @Uint32() external int dwIPv6NegotiationError;
  external __ubyte__ bInterfaceIdentifier;
  external __ubyte__ bRemoteInterfaceIdentifier;
  external __ubyte__ bPrefix;
  @Uint32() external int dwPrefixLength;
  @Uint64() external int IPv6SubInterfaceIndex;
  @Uint32() external int dwOptions;
  @Uint32() external int dwAuthenticationProtocol;
  @Uint32() external int dwEapTypeId;
  @Uint32() external int dwEmbeddedEAPTypeId;
  @Uint32() external int dwCompressionAlgorithm;
  @Uint32() external int dwEncryptionMethod;
}

class RAS_CONNECTION_EX extends Struct {
  external MPRAPI_OBJECT_HEADER Header;
  @Uint32() external int dwConnectDuration;
  @Uint32() external int dwInterfaceType;
  @Uint32() external int dwConnectionFlags;
  external __ushort__ wszInterfaceName;
  external __ushort__ wszUserName;
  external __ushort__ wszLogonDomain;
  external __ushort__ wszRemoteComputer;
  external GUID guid;
  @Uint32() external int rasQuarState;
  external FILETIME probationTime;
  @Uint32() external int dwBytesXmited;
  @Uint32() external int dwBytesRcved;
  @Uint32() external int dwFramesXmited;
  @Uint32() external int dwFramesRcved;
  @Uint32() external int dwCrcErr;
  @Uint32() external int dwTimeoutErr;
  @Uint32() external int dwAlignmentErr;
  @Uint32() external int dwHardwareOverrunErr;
  @Uint32() external int dwFramingErr;
  @Uint32() external int dwBufferOverrunErr;
  @Uint32() external int dwCompressionRatioIn;
  @Uint32() external int dwCompressionRatioOut;
  @Uint32() external int dwNumSwitchOvers;
  external __ushort__ wszRemoteEndpointAddress;
  external __ushort__ wszLocalEndpointAddress;
  external PROJECTION_INFO ProjectionInfo;
  @IntPtr() external int hConnection;
  @IntPtr() external int hInterface;
}

class RAS_CONNECTION_4 extends Struct {
  @Uint32() external int dwConnectDuration;
  @Uint32() external int dwInterfaceType;
  @Uint32() external int dwConnectionFlags;
  external __ushort__ wszInterfaceName;
  external __ushort__ wszUserName;
  external __ushort__ wszLogonDomain;
  external __ushort__ wszRemoteComputer;
  external GUID guid;
  @Uint32() external int rasQuarState;
  external FILETIME probationTime;
  external FILETIME connectionStartTime;
  @Uint64() external int ullBytesXmited;
  @Uint64() external int ullBytesRcved;
  @Uint32() external int dwFramesXmited;
  @Uint32() external int dwFramesRcved;
  @Uint32() external int dwCrcErr;
  @Uint32() external int dwTimeoutErr;
  @Uint32() external int dwAlignmentErr;
  @Uint32() external int dwHardwareOverrunErr;
  @Uint32() external int dwFramingErr;
  @Uint32() external int dwBufferOverrunErr;
  @Uint32() external int dwCompressionRatioIn;
  @Uint32() external int dwCompressionRatioOut;
  @Uint32() external int dwNumSwitchOvers;
  external __ushort__ wszRemoteEndpointAddress;
  external __ushort__ wszLocalEndpointAddress;
  external PROJECTION_INFO2 ProjectionInfo;
  @IntPtr() external int hConnection;
  @IntPtr() external int hInterface;
  @Uint32() external int dwDeviceType;
}

class ROUTER_CUSTOM_IKEv2_POLICY0 extends Struct {
  @Uint32() external int dwIntegrityMethod;
  @Uint32() external int dwEncryptionMethod;
  @Uint32() external int dwCipherTransformConstant;
  @Uint32() external int dwAuthTransformConstant;
  @Uint32() external int dwPfsGroup;
  @Uint32() external int dwDhGroup;
}

class ROUTER_IKEv2_IF_CUSTOM_CONFIG0 extends Struct {
  @Uint32() external int dwSaLifeTime;
  @Uint32() external int dwSaDataSize;
  external CRYPTOAPI_BLOB certificateName;
  external Pointer<ROUTER_CUSTOM_IKEv2_POLICY0> customPolicy;
}

class MPR_IF_CUSTOMINFOEX0 extends Struct {
  external MPRAPI_OBJECT_HEADER Header;
  @Uint32() external int dwFlags;
  external ROUTER_IKEv2_IF_CUSTOM_CONFIG0 customIkev2Config;
}

class MPR_CERT_EKU extends Struct {
  @Uint32() external int dwSize;
  @Int32() external int IsEKUOID;
  external Pointer<Utf16> pwszEKU;
}

class _MPR_VPN_SELECTOR extends Struct {
  @Uint32() external int type;
  @Uint8() external int protocolId;
  @Uint16() external int portStart;
  @Uint16() external int portEnd;
  @Uint16() external int tsPayloadId;
  external VPN_TS_IP_ADDRESS addrStart;
  external VPN_TS_IP_ADDRESS addrEnd;
}

class MPR_VPN_TRAFFIC_SELECTORS extends Struct {
  @Uint32() external int numTsi;
  @Uint32() external int numTsr;
  external Pointer<_MPR_VPN_SELECTOR> tsI;
  external Pointer<_MPR_VPN_SELECTOR> tsR;
}

class ROUTER_IKEv2_IF_CUSTOM_CONFIG2 extends Struct {
  @Uint32() external int dwSaLifeTime;
  @Uint32() external int dwSaDataSize;
  external CRYPTOAPI_BLOB certificateName;
  external Pointer<ROUTER_CUSTOM_IKEv2_POLICY0> customPolicy;
  external CRYPTOAPI_BLOB certificateHash;
  @Uint32() external int dwMmSaLifeTime;
  external MPR_VPN_TRAFFIC_SELECTORS vpnTrafficSelectors;
}

class MPR_IF_CUSTOMINFOEX2 extends Struct {
  external MPRAPI_OBJECT_HEADER Header;
  @Uint32() external int dwFlags;
  external ROUTER_IKEv2_IF_CUSTOM_CONFIG2 customIkev2Config;
}

class IKEV2_TUNNEL_CONFIG_PARAMS4 extends Struct {
  @Uint32() external int dwIdleTimeout;
  @Uint32() external int dwNetworkBlackoutTime;
  @Uint32() external int dwSaLifeTime;
  @Uint32() external int dwSaDataSizeForRenegotiation;
  @Uint32() external int dwConfigOptions;
  @Uint32() external int dwTotalCertificates;
  external Pointer<CRYPTOAPI_BLOB> certificateNames;
  external CRYPTOAPI_BLOB machineCertificateName;
  @Uint32() external int dwEncryptionType;
  external Pointer<ROUTER_CUSTOM_IKEv2_POLICY0> customPolicy;
  @Uint32() external int dwTotalEkus;
  external Pointer<MPR_CERT_EKU> certificateEKUs;
  external CRYPTOAPI_BLOB machineCertificateHash;
  @Uint32() external int dwMmSaLifeTime;
}

class ROUTER_IKEv2_IF_CUSTOM_CONFIG1 extends Struct {
  @Uint32() external int dwSaLifeTime;
  @Uint32() external int dwSaDataSize;
  external CRYPTOAPI_BLOB certificateName;
  external Pointer<ROUTER_CUSTOM_IKEv2_POLICY0> customPolicy;
  external CRYPTOAPI_BLOB certificateHash;
}

class MPR_IF_CUSTOMINFOEX1 extends Struct {
  external MPRAPI_OBJECT_HEADER Header;
  @Uint32() external int dwFlags;
  external ROUTER_IKEv2_IF_CUSTOM_CONFIG1 customIkev2Config;
}

class IKEV2_TUNNEL_CONFIG_PARAMS3 extends Struct {
  @Uint32() external int dwIdleTimeout;
  @Uint32() external int dwNetworkBlackoutTime;
  @Uint32() external int dwSaLifeTime;
  @Uint32() external int dwSaDataSizeForRenegotiation;
  @Uint32() external int dwConfigOptions;
  @Uint32() external int dwTotalCertificates;
  external Pointer<CRYPTOAPI_BLOB> certificateNames;
  external CRYPTOAPI_BLOB machineCertificateName;
  @Uint32() external int dwEncryptionType;
  external Pointer<ROUTER_CUSTOM_IKEv2_POLICY0> customPolicy;
  @Uint32() external int dwTotalEkus;
  external Pointer<MPR_CERT_EKU> certificateEKUs;
  external CRYPTOAPI_BLOB machineCertificateHash;
}

class IKEV2_TUNNEL_CONFIG_PARAMS2 extends Struct {
  @Uint32() external int dwIdleTimeout;
  @Uint32() external int dwNetworkBlackoutTime;
  @Uint32() external int dwSaLifeTime;
  @Uint32() external int dwSaDataSizeForRenegotiation;
  @Uint32() external int dwConfigOptions;
  @Uint32() external int dwTotalCertificates;
  external Pointer<CRYPTOAPI_BLOB> certificateNames;
  external CRYPTOAPI_BLOB machineCertificateName;
  @Uint32() external int dwEncryptionType;
  external Pointer<ROUTER_CUSTOM_IKEv2_POLICY0> customPolicy;
}

class L2TP_TUNNEL_CONFIG_PARAMS2 extends Struct {
  @Uint32() external int dwIdleTimeout;
  @Uint32() external int dwEncryptionType;
  @Uint32() external int dwSaLifeTime;
  @Uint32() external int dwSaDataSizeForRenegotiation;
  external Pointer<ROUTER_CUSTOM_IKEv2_POLICY0> customPolicy;
  @Uint32() external int dwMmSaLifeTime;
}

class L2TP_TUNNEL_CONFIG_PARAMS1 extends Struct {
  @Uint32() external int dwIdleTimeout;
  @Uint32() external int dwEncryptionType;
  @Uint32() external int dwSaLifeTime;
  @Uint32() external int dwSaDataSizeForRenegotiation;
  external Pointer<ROUTER_CUSTOM_IKEv2_POLICY0> customPolicy;
}

class IKEV2_CONFIG_PARAMS extends Struct {
  @Uint32() external int dwNumPorts;
  @Uint32() external int dwPortFlags;
  @Uint32() external int dwTunnelConfigParamFlags;
  external IKEV2_TUNNEL_CONFIG_PARAMS4 TunnelConfigParams;
}

class PPTP_CONFIG_PARAMS extends Struct {
  @Uint32() external int dwNumPorts;
  @Uint32() external int dwPortFlags;
}

class L2TP_CONFIG_PARAMS1 extends Struct {
  @Uint32() external int dwNumPorts;
  @Uint32() external int dwPortFlags;
  @Uint32() external int dwTunnelConfigParamFlags;
  external L2TP_TUNNEL_CONFIG_PARAMS2 TunnelConfigParams;
}

class GRE_CONFIG_PARAMS0 extends Struct {
  @Uint32() external int dwNumPorts;
  @Uint32() external int dwPortFlags;
}

class L2TP_CONFIG_PARAMS0 extends Struct {
  @Uint32() external int dwNumPorts;
  @Uint32() external int dwPortFlags;
}

class SSTP_CERT_INFO extends Struct {
  @Int32() external int isDefault;
  external CRYPTOAPI_BLOB certBlob;
}

class SSTP_CONFIG_PARAMS extends Struct {
  @Uint32() external int dwNumPorts;
  @Uint32() external int dwPortFlags;
  @Int32() external int isUseHttps;
  @Uint32() external int certAlgorithm;
  external SSTP_CERT_INFO sstpCertDetails;
}

class MPRAPI_TUNNEL_CONFIG_PARAMS0 extends Struct {
  external IKEV2_CONFIG_PARAMS IkeConfigParams;
  external PPTP_CONFIG_PARAMS PptpConfigParams;
  external L2TP_CONFIG_PARAMS1 L2tpConfigParams;
  external SSTP_CONFIG_PARAMS SstpConfigParams;
}

class MPRAPI_TUNNEL_CONFIG_PARAMS1 extends Struct {
  external IKEV2_CONFIG_PARAMS IkeConfigParams;
  external PPTP_CONFIG_PARAMS PptpConfigParams;
  external L2TP_CONFIG_PARAMS1 L2tpConfigParams;
  external SSTP_CONFIG_PARAMS SstpConfigParams;
  external GRE_CONFIG_PARAMS0 GREConfigParams;
}

class MPR_SERVER_EX0 extends Struct {
  external MPRAPI_OBJECT_HEADER Header;
  @Uint32() external int fLanOnlyMode;
  @Uint32() external int dwUpTime;
  @Uint32() external int dwTotalPorts;
  @Uint32() external int dwPortsInUse;
  @Uint32() external int Reserved;
  external MPRAPI_TUNNEL_CONFIG_PARAMS0 ConfigParams;
}

class MPR_SERVER_EX1 extends Struct {
  external MPRAPI_OBJECT_HEADER Header;
  @Uint32() external int fLanOnlyMode;
  @Uint32() external int dwUpTime;
  @Uint32() external int dwTotalPorts;
  @Uint32() external int dwPortsInUse;
  @Uint32() external int Reserved;
  external MPRAPI_TUNNEL_CONFIG_PARAMS1 ConfigParams;
}

class MPR_SERVER_SET_CONFIG_EX0 extends Struct {
  external MPRAPI_OBJECT_HEADER Header;
  @Uint32() external int setConfigForProtocols;
  external MPRAPI_TUNNEL_CONFIG_PARAMS0 ConfigParams;
}

class MPR_SERVER_SET_CONFIG_EX1 extends Struct {
  external MPRAPI_OBJECT_HEADER Header;
  @Uint32() external int setConfigForProtocols;
  external MPRAPI_TUNNEL_CONFIG_PARAMS1 ConfigParams;
}

class AUTH_VALIDATION_EX extends Struct {
  external MPRAPI_OBJECT_HEADER Header;
  @IntPtr() external int hRasConnection;
  external __ushort__ wszUserName;
  external __ushort__ wszLogonDomain;
  @Uint32() external int AuthInfoSize;
  external __ubyte__ AuthInfo;
}

class RAS_UPDATE_CONNECTION extends Struct {
  external MPRAPI_OBJECT_HEADER Header;
  @Uint32() external int dwIfIndex;
  external __ushort__ wszLocalEndpointAddress;
  external __ushort__ wszRemoteEndpointAddress;
}

class MPRAPI_ADMIN_DLL_CALLBACKS extends Struct {
  @Uint8() external int revision;
  external PMPRADMINGETIPADDRESSFORUSER lpfnMprAdminGetIpAddressForUser;
  external PMPRADMINRELEASEIPADRESS lpfnMprAdminReleaseIpAddress;
  external PMPRADMINGETIPV6ADDRESSFORUSER lpfnMprAdminGetIpv6AddressForUser;
  external PMPRADMINRELEASEIPV6ADDRESSFORUSER lpfnMprAdminReleaseIpV6AddressForUser;
  external PMPRADMINACCEPTNEWLINK lpfnRasAdminAcceptNewLink;
  external PMPRADMINLINKHANGUPNOTIFICATION lpfnRasAdminLinkHangupNotification;
  external PMPRADMINTERMINATEDLL lpfnRasAdminTerminateDll;
  external PMPRADMINACCEPTNEWCONNECTIONEX lpfnRasAdminAcceptNewConnectionEx;
  external PMPRADMINACCEPTTUNNELENDPOINTCHANGEEX lpfnRasAdminAcceptEndpointChangeEx;
  external PMPRADMINACCEPTREAUTHENTICATIONEX lpfnRasAdminAcceptReauthenticationEx;
  external PMPRADMINCONNECTIONHANGUPNOTIFICATIONEX lpfnRasAdminConnectionHangupNotificationEx;
  external PMPRADMINRASVALIDATEPREAUTHENTICATEDCONNECTIONEX lpfnRASValidatePreAuthenticatedConnectionEx;
}

class SECURITY_MESSAGE extends Struct {
  @Uint32() external int dwMsgId;
  @IntPtr() external int hPort;
  @Uint32() external int dwError;
  external __byte__ UserName;
  external __byte__ Domain;
}

class RAS_SECURITY_INFO extends Struct {
  @Uint32() external int LastError;
  @Uint32() external int BytesReceived;
  external __byte__ DeviceName;
}

class MGM_IF_ENTRY extends Struct {
  @Uint32() external int dwIfIndex;
  @Uint32() external int dwIfNextHopAddr;
  @Int32() external int bIGMP;
  @Int32() external int bIsEnabled;
}

class ROUTING_PROTOCOL_CONFIG extends Struct {
  @Uint32() external int dwCallbackFlags;
  external PMGM_RPF_CALLBACK pfnRpfCallback;
  external PMGM_CREATION_ALERT_CALLBACK pfnCreationAlertCallback;
  external PMGM_PRUNE_ALERT_CALLBACK pfnPruneAlertCallback;
  external PMGM_JOIN_ALERT_CALLBACK pfnJoinAlertCallback;
  external PMGM_WRONG_IF_CALLBACK pfnWrongIfCallback;
  external PMGM_LOCAL_JOIN_CALLBACK pfnLocalJoinCallback;
  external PMGM_LOCAL_LEAVE_CALLBACK pfnLocalLeaveCallback;
  external PMGM_DISABLE_IGMP_CALLBACK pfnDisableIgmpCallback;
  external PMGM_ENABLE_IGMP_CALLBACK pfnEnableIgmpCallback;
}

class SOURCE_GROUP_ENTRY extends Struct {
  @Uint32() external int dwSourceAddr;
  @Uint32() external int dwSourceMask;
  @Uint32() external int dwGroupAddr;
  @Uint32() external int dwGroupMask;
}

class RTM_REGN_PROFILE extends Struct {
  @Uint32() external int MaxNextHopsInRoute;
  @Uint32() external int MaxHandlesInEnum;
  @Uint32() external int ViewsSupported;
  @Uint32() external int NumberOfViews;
}

class RTM_NET_ADDRESS extends Struct {
  @Uint16() external int AddressFamily;
  @Uint16() external int NumBits;
  external __ubyte__ AddrBits;
}

class RTM_PREF_INFO extends Struct {
  @Uint32() external int Metric;
  @Uint32() external int Preference;
}

class RTM_NEXTHOP_LIST extends Struct {
  @Uint16() external int NumNextHops;
  external __intptr__ NextHops;
}

class RTM_ROUTE_INFO extends Struct {
  @IntPtr() external int DestHandle;
  @IntPtr() external int RouteOwner;
  @IntPtr() external int Neighbour;
  @Uint8() external int State;
  @Uint8() external int Flags1;
  @Uint16() external int Flags;
  external RTM_PREF_INFO PrefInfo;
  @Uint32() external int BelongsToViews;
  external Pointer EntitySpecificInfo;
  external RTM_NEXTHOP_LIST NextHopsList;
}

class RTM_NEXTHOP_INFO extends Struct {
  external RTM_NET_ADDRESS NextHopAddress;
  @IntPtr() external int NextHopOwner;
  @Uint32() external int InterfaceIndex;
  @Uint16() external int State;
  @Uint16() external int Flags;
  external Pointer EntitySpecificInfo;
  @IntPtr() external int RemoteNextHop;
}

class RTM_ENTITY_INFO extends Struct {
  @Uint16() external int RtmInstanceId;
  @Uint16() external int AddressFamily;
  external RTM_ENTITY_ID EntityId;
}

class RTM_ENTITY_METHOD_INPUT extends Struct {
  @Uint32() external int MethodType;
  @Uint32() external int InputSize;
  external __ubyte__ InputData;
}

class RTM_ENTITY_METHOD_OUTPUT extends Struct {
  @Uint32() external int MethodType;
  @Uint32() external int MethodStatus;
  @Uint32() external int OutputSize;
  external __ubyte__ OutputData;
}

class RTM_ENTITY_EXPORT_METHODS extends Struct {
  @Uint32() external int NumMethods;
  external RTM_ENTITY_EXPORT_METHOD Methods;
}

