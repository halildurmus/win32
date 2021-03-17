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

class DOT11_SSID extends Struct {
  @Uint32() external int uSSIDLength;
  external __ubyte__ ucSSID;
}

class DOT11_AUTH_CIPHER_PAIR extends Struct {
  @Uint32() external int AuthAlgoId;
  @Uint32() external int CipherAlgoId;
}

class DOT11_OI extends Struct {
  @Uint16() external int OILength;
  external __ubyte__ OI;
}

class DOT11_ACCESSNETWORKOPTIONS extends Struct {
  @Uint8() external int AccessNetworkType;
  @Uint8() external int Internet;
  @Uint8() external int ASRA;
  @Uint8() external int ESR;
  @Uint8() external int UESA;
}

class DOT11_VENUEINFO extends Struct {
  @Uint8() external int VenueGroup;
  @Uint8() external int VenueType;
}

class NDIS_STATISTICS_VALUE extends Struct {
  @Uint32() external int Oid;
  @Uint32() external int DataLength;
  external __ubyte__ Data;
}

class NDIS_STATISTICS_VALUE_EX extends Struct {
  @Uint32() external int Oid;
  @Uint32() external int DataLength;
  @Uint32() external int Length;
  external __ubyte__ Data;
}

class NDIS_VAR_DATA_DESC extends Struct {
  @Uint16() external int Length;
  @Uint16() external int MaximumLength;
  @IntPtr() external int Offset;
}

class NDIS_OBJECT_HEADER extends Struct {
  @Uint8() external int Type;
  @Uint8() external int Revision;
  @Uint16() external int Size;
}

class NDIS_STATISTICS_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int SupportedStatistics;
  @Uint64() external int ifInDiscards;
  @Uint64() external int ifInErrors;
  @Uint64() external int ifHCInOctets;
  @Uint64() external int ifHCInUcastPkts;
  @Uint64() external int ifHCInMulticastPkts;
  @Uint64() external int ifHCInBroadcastPkts;
  @Uint64() external int ifHCOutOctets;
  @Uint64() external int ifHCOutUcastPkts;
  @Uint64() external int ifHCOutMulticastPkts;
  @Uint64() external int ifHCOutBroadcastPkts;
  @Uint64() external int ifOutErrors;
  @Uint64() external int ifOutDiscards;
  @Uint64() external int ifHCInUcastOctets;
  @Uint64() external int ifHCInMulticastOctets;
  @Uint64() external int ifHCInBroadcastOctets;
  @Uint64() external int ifHCOutUcastOctets;
  @Uint64() external int ifHCOutMulticastOctets;
  @Uint64() external int ifHCOutBroadcastOctets;
}

class NDIS_INTERRUPT_MODERATION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int Flags;
  @Uint32() external int InterruptModeration;
}

class NDIS_TIMEOUT_DPC_REQUEST_CAPABILITIES extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int Flags;
  @Uint32() external int TimeoutArrayLength;
  external __uint__ TimeoutArray;
}

class NDIS_PCI_DEVICE_CUSTOM_PROPERTIES extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int DeviceType;
  @Uint32() external int CurrentSpeedAndMode;
  @Uint32() external int CurrentPayloadSize;
  @Uint32() external int MaxPayloadSize;
  @Uint32() external int MaxReadRequestSize;
  @Uint32() external int CurrentLinkSpeed;
  @Uint32() external int CurrentLinkWidth;
  @Uint32() external int MaxLinkSpeed;
  @Uint32() external int MaxLinkWidth;
  @Uint32() external int PciExpressVersion;
  @Uint32() external int InterruptType;
  @Uint32() external int MaxInterruptMessages;
}

class NDIS_802_11_STATUS_INDICATION extends Struct {
  @Uint32() external int StatusType;
}

class NDIS_802_11_AUTHENTICATION_REQUEST extends Struct {
  @Uint32() external int Length;
  external __ubyte__ Bssid;
  @Uint32() external int Flags;
}

class PMKID_CANDIDATE extends Struct {
  external __ubyte__ BSSID;
  @Uint32() external int Flags;
}

class NDIS_802_11_PMKID_CANDIDATE_LIST extends Struct {
  @Uint32() external int Version;
  @Uint32() external int NumCandidates;
  external PMKID_CANDIDATE CandidateList;
}

class NDIS_802_11_NETWORK_TYPE_LIST extends Struct {
  @Uint32() external int NumberOfItems;
  @Uint32() external int NetworkType;
}

class NDIS_802_11_CONFIGURATION_FH extends Struct {
  @Uint32() external int Length;
  @Uint32() external int HopPattern;
  @Uint32() external int HopSet;
  @Uint32() external int DwellTime;
}

class NDIS_802_11_CONFIGURATION extends Struct {
  @Uint32() external int Length;
  @Uint32() external int BeaconPeriod;
  @Uint32() external int ATIMWindow;
  @Uint32() external int DSConfig;
  external NDIS_802_11_CONFIGURATION_FH FHConfig;
}

class NDIS_802_11_STATISTICS extends Struct {
  @Uint32() external int Length;
  @Int64() external int TransmittedFragmentCount;
  @Int64() external int MulticastTransmittedFrameCount;
  @Int64() external int FailedCount;
  @Int64() external int RetryCount;
  @Int64() external int MultipleRetryCount;
  @Int64() external int RTSSuccessCount;
  @Int64() external int RTSFailureCount;
  @Int64() external int ACKFailureCount;
  @Int64() external int FrameDuplicateCount;
  @Int64() external int ReceivedFragmentCount;
  @Int64() external int MulticastReceivedFrameCount;
  @Int64() external int FCSErrorCount;
  @Int64() external int TKIPLocalMICFailures;
  @Int64() external int TKIPICVErrorCount;
  @Int64() external int TKIPCounterMeasuresInvoked;
  @Int64() external int TKIPReplays;
  @Int64() external int CCMPFormatErrors;
  @Int64() external int CCMPReplays;
  @Int64() external int CCMPDecryptErrors;
  @Int64() external int FourWayHandshakeFailures;
  @Int64() external int WEPUndecryptableCount;
  @Int64() external int WEPICVErrorCount;
  @Int64() external int DecryptSuccessCount;
  @Int64() external int DecryptFailureCount;
}

class NDIS_802_11_KEY extends Struct {
  @Uint32() external int Length;
  @Uint32() external int KeyIndex;
  @Uint32() external int KeyLength;
  external __ubyte__ BSSID;
  @Uint64() external int KeyRSC;
  external __ubyte__ KeyMaterial;
}

class NDIS_802_11_REMOVE_KEY extends Struct {
  @Uint32() external int Length;
  @Uint32() external int KeyIndex;
  external __ubyte__ BSSID;
}

class NDIS_802_11_WEP extends Struct {
  @Uint32() external int Length;
  @Uint32() external int KeyIndex;
  @Uint32() external int KeyLength;
  external __ubyte__ KeyMaterial;
}

class NDIS_802_11_SSID extends Struct {
  @Uint32() external int SsidLength;
  external __ubyte__ Ssid;
}

class NDIS_WLAN_BSSID extends Struct {
  @Uint32() external int Length;
  external __ubyte__ MacAddress;
  external __ubyte__ Reserved;
  external NDIS_802_11_SSID Ssid;
  @Uint32() external int Privacy;
  @Int32() external int Rssi;
  @Uint32() external int NetworkTypeInUse;
  external NDIS_802_11_CONFIGURATION Configuration;
  @Uint32() external int InfrastructureMode;
  external __ubyte__ SupportedRates;
}

class NDIS_802_11_BSSID_LIST extends Struct {
  @Uint32() external int NumberOfItems;
  external NDIS_WLAN_BSSID Bssid;
}

class NDIS_WLAN_BSSID_EX extends Struct {
  @Uint32() external int Length;
  external __ubyte__ MacAddress;
  external __ubyte__ Reserved;
  external NDIS_802_11_SSID Ssid;
  @Uint32() external int Privacy;
  @Int32() external int Rssi;
  @Uint32() external int NetworkTypeInUse;
  external NDIS_802_11_CONFIGURATION Configuration;
  @Uint32() external int InfrastructureMode;
  external __ubyte__ SupportedRates;
  @Uint32() external int IELength;
  external __ubyte__ IEs;
}

class NDIS_802_11_BSSID_LIST_EX extends Struct {
  @Uint32() external int NumberOfItems;
  external NDIS_WLAN_BSSID_EX Bssid;
}

class NDIS_802_11_FIXED_IEs extends Struct {
  external __ubyte__ Timestamp;
  @Uint16() external int BeaconInterval;
  @Uint16() external int Capabilities;
}

class NDIS_802_11_VARIABLE_IEs extends Struct {
  @Uint8() external int ElementID;
  @Uint8() external int Length;
  external __ubyte__ data;
}

class NDIS_802_11_AI_REQFI extends Struct {
  @Uint16() external int Capabilities;
  @Uint16() external int ListenInterval;
  external __ubyte__ CurrentAPAddress;
}

class NDIS_802_11_AI_RESFI extends Struct {
  @Uint16() external int Capabilities;
  @Uint16() external int StatusCode;
  @Uint16() external int AssociationId;
}

class NDIS_802_11_ASSOCIATION_INFORMATION extends Struct {
  @Uint32() external int Length;
  @Uint16() external int AvailableRequestFixedIEs;
  external NDIS_802_11_AI_REQFI RequestFixedIEs;
  @Uint32() external int RequestIELength;
  @Uint32() external int OffsetRequestIEs;
  @Uint16() external int AvailableResponseFixedIEs;
  external NDIS_802_11_AI_RESFI ResponseFixedIEs;
  @Uint32() external int ResponseIELength;
  @Uint32() external int OffsetResponseIEs;
}

class NDIS_802_11_AUTHENTICATION_EVENT extends Struct {
  external NDIS_802_11_STATUS_INDICATION Status;
  external NDIS_802_11_AUTHENTICATION_REQUEST Request;
}

class BSSID_INFO extends Struct {
  external __ubyte__ BSSID;
  external __ubyte__ PMKID;
}

class NDIS_802_11_PMKID extends Struct {
  @Uint32() external int Length;
  @Uint32() external int BSSIDInfoCount;
  external BSSID_INFO BSSIDInfo;
}

class NDIS_802_11_AUTHENTICATION_ENCRYPTION extends Struct {
  @Uint32() external int AuthModeSupported;
  @Uint32() external int EncryptStatusSupported;
}

class NDIS_802_11_CAPABILITY extends Struct {
  @Uint32() external int Length;
  @Uint32() external int Version;
  @Uint32() external int NoOfPMKIDs;
  @Uint32() external int NoOfAuthEncryptPairsSupported;
  external NDIS_802_11_AUTHENTICATION_ENCRYPTION AuthenticationEncryptionSupported;
}

class NDIS_802_11_NON_BCAST_SSID_LIST extends Struct {
  @Uint32() external int NumberOfItems;
  external NDIS_802_11_SSID Non_Bcast_Ssid;
}

class NDIS_CO_DEVICE_PROFILE extends Struct {
  external NDIS_VAR_DATA_DESC DeviceDescription;
  external NDIS_VAR_DATA_DESC DevSpecificInfo;
  @Uint32() external int ulTAPISupplementaryPassThru;
  @Uint32() external int ulAddressModes;
  @Uint32() external int ulNumAddresses;
  @Uint32() external int ulBearerModes;
  @Uint32() external int ulMaxTxRate;
  @Uint32() external int ulMinTxRate;
  @Uint32() external int ulMaxRxRate;
  @Uint32() external int ulMinRxRate;
  @Uint32() external int ulMediaModes;
  @Uint32() external int ulGenerateToneModes;
  @Uint32() external int ulGenerateToneMaxNumFreq;
  @Uint32() external int ulGenerateDigitModes;
  @Uint32() external int ulMonitorToneMaxNumFreq;
  @Uint32() external int ulMonitorToneMaxNumEntries;
  @Uint32() external int ulMonitorDigitModes;
  @Uint32() external int ulGatherDigitsMinTimeout;
  @Uint32() external int ulGatherDigitsMaxTimeout;
  @Uint32() external int ulDevCapFlags;
  @Uint32() external int ulMaxNumActiveCalls;
  @Uint32() external int ulAnswerMode;
  @Uint32() external int ulUUIAcceptSize;
  @Uint32() external int ulUUIAnswerSize;
  @Uint32() external int ulUUIMakeCallSize;
  @Uint32() external int ulUUIDropSize;
  @Uint32() external int ulUUISendUserUserInfoSize;
  @Uint32() external int ulUUICallInfoSize;
}

class OFFLOAD_ALGO_INFO extends Struct {
  @Uint32() external int algoIdentifier;
  @Uint32() external int algoKeylen;
  @Uint32() external int algoRounds;
}

class OFFLOAD_SECURITY_ASSOCIATION extends Struct {
  @Uint32() external int Operation;
  @Uint32() external int SPI;
  external OFFLOAD_ALGO_INFO IntegrityAlgo;
  external OFFLOAD_ALGO_INFO ConfAlgo;
  external OFFLOAD_ALGO_INFO Reserved;
}

class OFFLOAD_IPSEC_ADD_SA extends Struct {
  @Uint32() external int SrcAddr;
  @Uint32() external int SrcMask;
  @Uint32() external int DestAddr;
  @Uint32() external int DestMask;
  @Uint32() external int Protocol;
  @Uint16() external int SrcPort;
  @Uint16() external int DestPort;
  @Uint32() external int SrcTunnelAddr;
  @Uint32() external int DestTunnelAddr;
  @Uint16() external int Flags;
  @Int16() external int NumSAs;
  external OFFLOAD_SECURITY_ASSOCIATION SecAssoc;
  @IntPtr() external int OffloadHandle;
  @Uint32() external int KeyLen;
  external __ubyte__ KeyMat;
}

class OFFLOAD_IPSEC_DELETE_SA extends Struct {
  @IntPtr() external int OffloadHandle;
}

class OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_ENTRY extends Struct {
  @Uint32() external int UdpEncapType;
  @Uint16() external int DstEncapPort;
}

class OFFLOAD_IPSEC_ADD_UDPESP_SA extends Struct {
  @Uint32() external int SrcAddr;
  @Uint32() external int SrcMask;
  @Uint32() external int DstAddr;
  @Uint32() external int DstMask;
  @Uint32() external int Protocol;
  @Uint16() external int SrcPort;
  @Uint16() external int DstPort;
  @Uint32() external int SrcTunnelAddr;
  @Uint32() external int DstTunnelAddr;
  @Uint16() external int Flags;
  @Int16() external int NumSAs;
  external OFFLOAD_SECURITY_ASSOCIATION SecAssoc;
  @IntPtr() external int OffloadHandle;
  external OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_ENTRY EncapTypeEntry;
  @IntPtr() external int EncapTypeEntryOffldHandle;
  @Uint32() external int KeyLen;
  external __ubyte__ KeyMat;
}

class OFFLOAD_IPSEC_DELETE_UDPESP_SA extends Struct {
  @IntPtr() external int OffloadHandle;
  @IntPtr() external int EncapTypeEntryOffldHandle;
}

class TRANSPORT_HEADER_OFFSET extends Struct {
  @Uint16() external int ProtocolType;
  @Uint16() external int HeaderOffset;
}

class NETWORK_ADDRESS extends Struct {
  @Uint16() external int AddressLength;
  @Uint16() external int AddressType;
  external __ubyte__ Address;
}

class NETWORK_ADDRESS_LIST extends Struct {
  @Int32() external int AddressCount;
  @Uint16() external int AddressType;
  external NETWORK_ADDRESS Address;
}

class NETWORK_ADDRESS_IP extends Struct {
  @Uint16() external int sin_port;
  @Uint32() external int in_addr;
  external __ubyte__ sin_zero;
}

class NETWORK_ADDRESS_IP6 extends Struct {
  @Uint16() external int sin6_port;
  @Uint32() external int sin6_flowinfo;
  external __ushort__ sin6_addr;
  @Uint32() external int sin6_scope_id;
}

class NETWORK_ADDRESS_IPX extends Struct {
  @Uint32() external int NetworkAddress;
  external __ubyte__ NodeAddress;
  @Uint16() external int Socket;
}

class GEN_GET_TIME_CAPS extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int ClockPrecision;
}

class GEN_GET_NETCARD_TIME extends Struct {
  @Uint64() external int ReadTime;
}

class NDIS_PM_PACKET_PATTERN extends Struct {
  @Uint32() external int Priority;
  @Uint32() external int Reserved;
  @Uint32() external int MaskSize;
  @Uint32() external int PatternOffset;
  @Uint32() external int PatternSize;
  @Uint32() external int PatternFlags;
}

class NDIS_PM_WAKE_UP_CAPABILITIES extends Struct {
  @Uint32() external int MinMagicPacketWakeUp;
  @Uint32() external int MinPatternWakeUp;
  @Uint32() external int MinLinkChangeWakeUp;
}

class NDIS_PNP_CAPABILITIES extends Struct {
  @Uint32() external int Flags;
  external NDIS_PM_WAKE_UP_CAPABILITIES WakeUpCapabilities;
}

class NDIS_WAN_PROTOCOL_CAPS extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int Reserved;
}

class NDIS_CO_LINK_SPEED extends Struct {
  @Uint32() external int Outbound;
  @Uint32() external int Inbound;
}

class NDIS_LINK_SPEED extends Struct {
  @Uint64() external int XmitLinkSpeed;
  @Uint64() external int RcvLinkSpeed;
}

class NDIS_IRDA_PACKET_INFO extends Struct {
  @Uint32() external int ExtraBOFs;
  @Uint32() external int MinTurnAroundTime;
}

class NDIS_LINK_STATE extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int MediaConnectState;
  @Uint32() external int MediaDuplexState;
  @Uint64() external int XmitLinkSpeed;
  @Uint64() external int RcvLinkSpeed;
  @Uint32() external int PauseFunctions;
  @Uint32() external int AutoNegotiationFlags;
}

class NDIS_LINK_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int MediaDuplexState;
  @Uint64() external int XmitLinkSpeed;
  @Uint64() external int RcvLinkSpeed;
  @Uint32() external int PauseFunctions;
  @Uint32() external int AutoNegotiationFlags;
}

class NDIS_OPER_STATE extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int OperationalStatus;
  @Uint32() external int OperationalStatusFlags;
}

class NDIS_IP_OPER_STATUS extends Struct {
  @Uint32() external int AddressFamily;
  @Uint32() external int OperationalStatus;
  @Uint32() external int OperationalStatusFlags;
}

class NDIS_IP_OPER_STATUS_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int Flags;
  @Uint32() external int NumberofAddressFamiliesReturned;
  external NDIS_IP_OPER_STATUS IpOperationalStatus;
}

class NDIS_IP_OPER_STATE extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int Flags;
  external NDIS_IP_OPER_STATUS IpOperationalStatus;
}

class NDIS_OFFLOAD_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint8() external int IPv4Checksum;
  @Uint8() external int TCPIPv4Checksum;
  @Uint8() external int UDPIPv4Checksum;
  @Uint8() external int TCPIPv6Checksum;
  @Uint8() external int UDPIPv6Checksum;
  @Uint8() external int LsoV1;
  @Uint8() external int IPsecV1;
  @Uint8() external int LsoV2IPv4;
  @Uint8() external int LsoV2IPv6;
  @Uint8() external int TcpConnectionIPv4;
  @Uint8() external int TcpConnectionIPv6;
  @Uint32() external int Flags;
}

class NDIS_OFFLOAD extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external NDIS_TCP_IP_CHECKSUM_OFFLOAD Checksum;
  external NDIS_TCP_LARGE_SEND_OFFLOAD_V1 LsoV1;
  external NDIS_IPSEC_OFFLOAD_V1 IPsecV1;
  external NDIS_TCP_LARGE_SEND_OFFLOAD_V2 LsoV2;
  @Uint32() external int Flags;
}

class NDIS_WMI_OFFLOAD extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD Checksum;
  external NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V1 LsoV1;
  external NDIS_WMI_IPSEC_OFFLOAD_V1 IPsecV1;
  external NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2 LsoV2;
  @Uint32() external int Flags;
}

class NDIS_TCP_CONNECTION_OFFLOAD extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int Encapsulation;
  @Uint32() external int _bitfield;
  @Uint32() external int TcpConnectionOffloadCapacity;
  @Uint32() external int Flags;
}

class NDIS_WMI_TCP_CONNECTION_OFFLOAD extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int Encapsulation;
  @Uint32() external int SupportIPv4;
  @Uint32() external int SupportIPv6;
  @Uint32() external int SupportIPv6ExtensionHeaders;
  @Uint32() external int SupportSack;
  @Uint32() external int TcpConnectionOffloadCapacity;
  @Uint32() external int Flags;
}

class NDIS_PORT_AUTHENTICATION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int SendControlState;
  @Uint32() external int RcvControlState;
  @Uint32() external int SendAuthorizationState;
  @Uint32() external int RcvAuthorizationState;
}

class NDIS_WMI_METHOD_HEADER extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int PortNumber;
  external NET_LUID_LH NetLuid;
  @Uint64() external int RequestId;
  @Uint32() external int Timeout;
  external __ubyte__ Padding;
}

class NDIS_WMI_SET_HEADER extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int PortNumber;
  external NET_LUID_LH NetLuid;
  @Uint64() external int RequestId;
  @Uint32() external int Timeout;
  external __ubyte__ Padding;
}

class NDIS_WMI_EVENT_HEADER extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int IfIndex;
  external NET_LUID_LH NetLuid;
  @Uint64() external int RequestId;
  @Uint32() external int PortNumber;
  @Uint32() external int DeviceNameLength;
  @Uint32() external int DeviceNameOffset;
  external __ubyte__ Padding;
}

class NDIS_WMI_ENUM_ADAPTER extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int IfIndex;
  external NET_LUID_LH NetLuid;
  @Uint16() external int DeviceNameLength;
  external __byte__ DeviceName;
}

class NDIS_WMI_OUTPUT_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int Flags;
  @Uint8() external int SupportedRevision;
  @Uint32() external int DataOffset;
}

class NDIS_RECEIVE_SCALE_CAPABILITIES extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int CapabilitiesFlags;
  @Uint32() external int NumberOfInterruptMessages;
  @Uint32() external int NumberOfReceiveQueues;
}

class NDIS_RECEIVE_SCALE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint16() external int Flags;
  @Uint16() external int BaseCpuNumber;
  @Uint32() external int HashInformation;
  @Uint16() external int IndirectionTableSize;
  @Uint32() external int IndirectionTableOffset;
  @Uint16() external int HashSecretKeySize;
  @Uint32() external int HashSecretKeyOffset;
}

class NDIS_RECEIVE_HASH_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int Flags;
  @Uint32() external int HashInformation;
  @Uint16() external int HashSecretKeySize;
  @Uint32() external int HashSecretKeyOffset;
}

class NDIS_PORT_STATE extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int MediaConnectState;
  @Uint64() external int XmitLinkSpeed;
  @Uint64() external int RcvLinkSpeed;
  @Uint32() external int Direction;
  @Uint32() external int SendControlState;
  @Uint32() external int RcvControlState;
  @Uint32() external int SendAuthorizationState;
  @Uint32() external int RcvAuthorizationState;
  @Uint32() external int Flags;
}

class NDIS_PORT_CHARACTERISTICS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int PortNumber;
  @Uint32() external int Flags;
  @Uint32() external int Type;
  @Uint32() external int MediaConnectState;
  @Uint64() external int XmitLinkSpeed;
  @Uint64() external int RcvLinkSpeed;
  @Uint32() external int Direction;
  @Uint32() external int SendControlState;
  @Uint32() external int RcvControlState;
  @Uint32() external int SendAuthorizationState;
  @Uint32() external int RcvAuthorizationState;
}

class NDIS_PORT extends Struct {
  external Pointer<NDIS_PORT> Next;
  external Pointer NdisReserved;
  external Pointer MiniportReserved;
  external Pointer ProtocolReserved;
  external NDIS_PORT_CHARACTERISTICS PortCharacteristics;
}

class NDIS_PORT_ARRAY extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int NumberOfPorts;
  @Uint32() external int OffsetFirstPort;
  @Uint32() external int ElementSize;
  external NDIS_PORT_CHARACTERISTICS Ports;
}

class NDIS_TIMESTAMP_CAPABILITY_FLAGS extends Struct {
  @Uint8() external int PtpV2OverUdpIPv4EventMsgReceiveHw;
  @Uint8() external int PtpV2OverUdpIPv4AllMsgReceiveHw;
  @Uint8() external int PtpV2OverUdpIPv4EventMsgTransmitHw;
  @Uint8() external int PtpV2OverUdpIPv4AllMsgTransmitHw;
  @Uint8() external int PtpV2OverUdpIPv6EventMsgReceiveHw;
  @Uint8() external int PtpV2OverUdpIPv6AllMsgReceiveHw;
  @Uint8() external int PtpV2OverUdpIPv6EventMsgTransmitHw;
  @Uint8() external int PtpV2OverUdpIPv6AllMsgTransmitHw;
  @Uint8() external int AllReceiveHw;
  @Uint8() external int AllTransmitHw;
  @Uint8() external int TaggedTransmitHw;
  @Uint8() external int AllReceiveSw;
  @Uint8() external int AllTransmitSw;
  @Uint8() external int TaggedTransmitSw;
}

class NDIS_TIMESTAMP_CAPABILITIES extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint64() external int HardwareClockFrequencyHz;
  @Uint8() external int CrossTimestamp;
  @Uint64() external int Reserved1;
  @Uint64() external int Reserved2;
  external NDIS_TIMESTAMP_CAPABILITY_FLAGS TimestampFlags;
}

class NDIS_HARDWARE_CROSSTIMESTAMP extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int Flags;
  @Uint64() external int SystemTimestamp1;
  @Uint64() external int HardwareClockTimestamp;
  @Uint64() external int SystemTimestamp2;
}

class DOT11_BSSID_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external __ubyte__ BSSIDs;
}

class DOT11_RATE_SET extends Struct {
  @Uint32() external int uRateSetLength;
  external __ubyte__ ucRateSet;
}

class DOT11_WFD_SESSION_INFO extends Struct {
  @Uint16() external int uSessionInfoLength;
  external __ubyte__ ucSessionInfo;
}

class DOT11_OFFLOAD_CAPABILITY extends Struct {
  @Uint32() external int uReserved;
  @Uint32() external int uFlags;
  @Uint32() external int uSupportedWEPAlgorithms;
  @Uint32() external int uNumOfReplayWindows;
  @Uint32() external int uMaxWEPKeyMappingLength;
  @Uint32() external int uSupportedAuthAlgorithms;
  @Uint32() external int uMaxAuthKeyMappingLength;
}

class DOT11_CURRENT_OFFLOAD_CAPABILITY extends Struct {
  @Uint32() external int uReserved;
  @Uint32() external int uFlags;
}

class DOT11_IV48_COUNTER extends Struct {
  @Uint32() external int uIV32Counter;
  @Uint16() external int usIV16Counter;
}

class DOT11_WEP_OFFLOAD extends Struct {
  @Uint32() external int uReserved;
  @IntPtr() external int hOffloadContext;
  @IntPtr() external int hOffload;
  @Uint32() external int dot11OffloadType;
  @Uint32() external int dwAlgorithm;
  @Uint8() external int bRowIsOutbound;
  @Uint8() external int bUseDefault;
  @Uint32() external int uFlags;
  external __ubyte__ ucMacAddress;
  @Uint32() external int uNumOfRWsOnPeer;
  @Uint32() external int uNumOfRWsOnMe;
  external DOT11_IV48_COUNTER dot11IV48Counters;
  external __ushort__ usDot11RWBitMaps;
  @Uint16() external int usKeyLength;
  external __ubyte__ ucKey;
}

class DOT11_WEP_UPLOAD extends Struct {
  @Uint32() external int uReserved;
  @Uint32() external int dot11OffloadType;
  @IntPtr() external int hOffload;
  @Uint32() external int uNumOfRWsUsed;
  external DOT11_IV48_COUNTER dot11IV48Counters;
  external __ushort__ usDot11RWBitMaps;
}

class DOT11_DEFAULT_WEP_OFFLOAD extends Struct {
  @Uint32() external int uReserved;
  @IntPtr() external int hOffloadContext;
  @IntPtr() external int hOffload;
  @Uint32() external int dwIndex;
  @Uint32() external int dot11OffloadType;
  @Uint32() external int dwAlgorithm;
  @Uint32() external int uFlags;
  @Uint32() external int dot11KeyDirection;
  external __ubyte__ ucMacAddress;
  @Uint32() external int uNumOfRWsOnMe;
  external DOT11_IV48_COUNTER dot11IV48Counters;
  external __ushort__ usDot11RWBitMaps;
  @Uint16() external int usKeyLength;
  external __ubyte__ ucKey;
}

class DOT11_DEFAULT_WEP_UPLOAD extends Struct {
  @Uint32() external int uReserved;
  @Uint32() external int dot11OffloadType;
  @IntPtr() external int hOffload;
  @Uint32() external int uNumOfRWsUsed;
  external DOT11_IV48_COUNTER dot11IV48Counters;
  external __ushort__ usDot11RWBitMaps;
}

class DOT11_OPERATION_MODE_CAPABILITY extends Struct {
  @Uint32() external int uReserved;
  @Uint32() external int uMajorVersion;
  @Uint32() external int uMinorVersion;
  @Uint32() external int uNumOfTXBuffers;
  @Uint32() external int uNumOfRXBuffers;
  @Uint32() external int uOpModeCapability;
}

class DOT11_CURRENT_OPERATION_MODE extends Struct {
  @Uint32() external int uReserved;
  @Uint32() external int uCurrentOpMode;
}

class DOT11_SCAN_REQUEST extends Struct {
  @Uint32() external int dot11BSSType;
  external __ubyte__ dot11BSSID;
  external DOT11_SSID dot11SSID;
  @Uint32() external int dot11ScanType;
  @Uint8() external int bRestrictedScan;
  @Uint8() external int bUseRequestIE;
  @Uint32() external int uRequestIDsOffset;
  @Uint32() external int uNumOfRequestIDs;
  @Uint32() external int uPhyTypesOffset;
  @Uint32() external int uNumOfPhyTypes;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
  external __ubyte__ ucBuffer;
}

class DOT11_PHY_TYPE_INFO extends Struct {
  @Uint32() external int dot11PhyType;
  @Uint8() external int bUseParameters;
  @Uint32() external int uProbeDelay;
  @Uint32() external int uMinChannelTime;
  @Uint32() external int uMaxChannelTime;
  @Uint32() external int ChDescriptionType;
  @Uint32() external int uChannelListSize;
  external __ubyte__ ucChannelListBuffer;
}

class DOT11_SCAN_REQUEST_V2 extends Struct {
  @Uint32() external int dot11BSSType;
  external __ubyte__ dot11BSSID;
  @Uint32() external int dot11ScanType;
  @Uint8() external int bRestrictedScan;
  @Uint32() external int udot11SSIDsOffset;
  @Uint32() external int uNumOfdot11SSIDs;
  @Uint8() external int bUseRequestIE;
  @Uint32() external int uRequestIDsOffset;
  @Uint32() external int uNumOfRequestIDs;
  @Uint32() external int uPhyTypeInfosOffset;
  @Uint32() external int uNumOfPhyTypeInfos;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
  external __ubyte__ ucBuffer;
}

class DOT11_PHY_TYPE_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  @Uint32() external int dot11PhyType;
}

class DOT11_BSS_DESCRIPTION extends Struct {
  @Uint32() external int uReserved;
  external __ubyte__ dot11BSSID;
  @Uint32() external int dot11BSSType;
  @Uint16() external int usBeaconPeriod;
  @Uint64() external int ullTimestamp;
  @Uint16() external int usCapabilityInformation;
  @Uint32() external int uBufferLength;
  external __ubyte__ ucBuffer;
}

class DOT11_JOIN_REQUEST extends Struct {
  @Uint32() external int uJoinFailureTimeout;
  external DOT11_RATE_SET OperationalRateSet;
  @Uint32() external int uChCenterFrequency;
  external DOT11_BSS_DESCRIPTION dot11BSSDescription;
}

class DOT11_START_REQUEST extends Struct {
  @Uint32() external int uStartFailureTimeout;
  external DOT11_RATE_SET OperationalRateSet;
  @Uint32() external int uChCenterFrequency;
  external DOT11_BSS_DESCRIPTION dot11BSSDescription;
}

class DOT11_UPDATE_IE extends Struct {
  @Uint32() external int dot11UpdateIEOp;
  @Uint32() external int uBufferLength;
  external __ubyte__ ucBuffer;
}

class DOT11_RESET_REQUEST extends Struct {
  @Uint32() external int dot11ResetType;
  external __ubyte__ dot11MacAddress;
  @Uint8() external int bSetDefaultMIB;
}

class DOT11_OPTIONAL_CAPABILITY extends Struct {
  @Uint32() external int uReserved;
  @Uint8() external int bDot11PCF;
  @Uint8() external int bDot11PCFMPDUTransferToPC;
  @Uint8() external int bStrictlyOrderedServiceClass;
}

class DOT11_CURRENT_OPTIONAL_CAPABILITY extends Struct {
  @Uint32() external int uReserved;
  @Uint8() external int bDot11CFPollable;
  @Uint8() external int bDot11PCF;
  @Uint8() external int bDot11PCFMPDUTransferToPC;
  @Uint8() external int bStrictlyOrderedServiceClass;
}

class DOT11_POWER_MGMT_MODE extends Struct {
  @Uint32() external int dot11PowerMode;
  @Uint32() external int uPowerSaveLevel;
  @Uint16() external int usListenInterval;
  @Uint16() external int usAID;
  @Uint8() external int bReceiveDTIMs;
}

class DOT11_COUNTERS_ENTRY extends Struct {
  @Uint32() external int uTransmittedFragmentCount;
  @Uint32() external int uMulticastTransmittedFrameCount;
  @Uint32() external int uFailedCount;
  @Uint32() external int uRetryCount;
  @Uint32() external int uMultipleRetryCount;
  @Uint32() external int uFrameDuplicateCount;
  @Uint32() external int uRTSSuccessCount;
  @Uint32() external int uRTSFailureCount;
  @Uint32() external int uACKFailureCount;
  @Uint32() external int uReceivedFragmentCount;
  @Uint32() external int uMulticastReceivedFrameCount;
  @Uint32() external int uFCSErrorCount;
  @Uint32() external int uTransmittedFrameCount;
}

class DOT11_SUPPORTED_PHY_TYPES extends Struct {
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  @Uint32() external int dot11PHYType;
}

class DOT11_SUPPORTED_POWER_LEVELS extends Struct {
  @Uint32() external int uNumOfSupportedPowerLevels;
  external __uint__ uTxPowerLevelValues;
}

class DOT11_REG_DOMAIN_VALUE extends Struct {
  @Uint32() external int uRegDomainsSupportIndex;
  @Uint32() external int uRegDomainsSupportValue;
}

class DOT11_REG_DOMAINS_SUPPORT_VALUE extends Struct {
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_REG_DOMAIN_VALUE dot11RegDomainValue;
}

class DOT11_SUPPORTED_ANTENNA extends Struct {
  @Uint32() external int uAntennaListIndex;
  @Uint8() external int bSupportedAntenna;
}

class DOT11_SUPPORTED_ANTENNA_LIST extends Struct {
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_SUPPORTED_ANTENNA dot11SupportedAntenna;
}

class DOT11_DIVERSITY_SELECTION_RX extends Struct {
  @Uint32() external int uAntennaListIndex;
  @Uint8() external int bDiversitySelectionRX;
}

class DOT11_DIVERSITY_SELECTION_RX_LIST extends Struct {
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_DIVERSITY_SELECTION_RX dot11DiversitySelectionRx;
}

class DOT11_SUPPORTED_DATA_RATES_VALUE extends Struct {
  external __ubyte__ ucSupportedTxDataRatesValue;
  external __ubyte__ ucSupportedRxDataRatesValue;
}

class DOT11_SUPPORTED_DATA_RATES_VALUE_V2 extends Struct {
  external __ubyte__ ucSupportedTxDataRatesValue;
  external __ubyte__ ucSupportedRxDataRatesValue;
}

class DOT11_MULTI_DOMAIN_CAPABILITY_ENTRY extends Struct {
  @Uint32() external int uMultiDomainCapabilityIndex;
  @Uint32() external int uFirstChannelNumber;
  @Uint32() external int uNumberOfChannels;
  @Int32() external int lMaximumTransmitPowerLevel;
}

class DOT11_MD_CAPABILITY_ENTRY_LIST extends Struct {
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_MULTI_DOMAIN_CAPABILITY_ENTRY dot11MDCapabilityEntry;
}

class DOT11_HOPPING_PATTERN_ENTRY extends Struct {
  @Uint32() external int uHoppingPatternIndex;
  @Uint32() external int uRandomTableFieldNumber;
}

class DOT11_HOPPING_PATTERN_ENTRY_LIST extends Struct {
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_HOPPING_PATTERN_ENTRY dot11HoppingPatternEntry;
}

class DOT11_WPA_TSC extends Struct {
  @Uint32() external int uReserved;
  @Uint32() external int dot11OffloadType;
  @IntPtr() external int hOffload;
  external DOT11_IV48_COUNTER dot11IV48Counter;
}

class DOT11_RSSI_RANGE extends Struct {
  @Uint32() external int dot11PhyType;
  @Uint32() external int uRSSIMin;
  @Uint32() external int uRSSIMax;
}

class DOT11_NIC_SPECIFIC_EXTENSION extends Struct {
  @Uint32() external int uBufferLength;
  @Uint32() external int uTotalBufferLength;
  external __ubyte__ ucBuffer;
}

class DOT11_AP_JOIN_REQUEST extends Struct {
  @Uint32() external int uJoinFailureTimeout;
  external DOT11_RATE_SET OperationalRateSet;
  @Uint32() external int uChCenterFrequency;
  external DOT11_BSS_DESCRIPTION dot11BSSDescription;
}

class DOT11_RECV_SENSITIVITY extends Struct {
  @Uint8() external int ucDataRate;
  @Int32() external int lRSSIMin;
  @Int32() external int lRSSIMax;
}

class DOT11_WME_AC_PARAMETERS extends Struct {
  @Uint8() external int ucAccessCategoryIndex;
  @Uint8() external int ucAIFSN;
  @Uint8() external int ucECWmin;
  @Uint8() external int ucECWmax;
  @Uint16() external int usTXOPLimit;
}

class _DOT11_WME_AC_PARAMTERS_LIST extends Struct {
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_WME_AC_PARAMETERS dot11WMEACParameters;
}

class DOT11_WME_UPDATE_IE extends Struct {
  @Uint32() external int uParamElemMinBeaconIntervals;
  @Uint32() external int uWMEInfoElemOffset;
  @Uint32() external int uWMEInfoElemLength;
  @Uint32() external int uWMEParamElemOffset;
  @Uint32() external int uWMEParamElemLength;
  external __ubyte__ ucBuffer;
}

class DOT11_QOS_TX_DURATION extends Struct {
  @Uint32() external int uNominalMSDUSize;
  @Uint32() external int uMinPHYRate;
  @Uint32() external int uDuration;
}

class DOT11_QOS_TX_MEDIUM_TIME extends Struct {
  external __ubyte__ dot11PeerAddress;
  @Uint8() external int ucQoSPriority;
  @Uint32() external int uMediumTimeAdmited;
}

class DOT11_SUPPORTED_OFDM_FREQUENCY extends Struct {
  @Uint32() external int uCenterFrequency;
}

class DOT11_SUPPORTED_OFDM_FREQUENCY_LIST extends Struct {
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_SUPPORTED_OFDM_FREQUENCY dot11SupportedOFDMFrequency;
}

class DOT11_SUPPORTED_DSSS_CHANNEL extends Struct {
  @Uint32() external int uChannel;
}

class DOT11_SUPPORTED_DSSS_CHANNEL_LIST extends Struct {
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_SUPPORTED_DSSS_CHANNEL dot11SupportedDSSSChannel;
}

class DOT11_BYTE_ARRAY extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfBytes;
  @Uint32() external int uTotalNumOfBytes;
  external __ubyte__ ucBuffer;
}

class DOT11_BSS_ENTRY extends Struct {
  @Uint32() external int uPhyId;
  external DOT11_BSS_ENTRY_PHY_SPECIFIC_INFO PhySpecificInfo;
  external __ubyte__ dot11BSSID;
  @Uint32() external int dot11BSSType;
  @Int32() external int lRSSI;
  @Uint32() external int uLinkQuality;
  @Uint8() external int bInRegDomain;
  @Uint16() external int usBeaconPeriod;
  @Uint64() external int ullTimestamp;
  @Uint64() external int ullHostTimestamp;
  @Uint16() external int usCapabilityInformation;
  @Uint32() external int uBufferLength;
  external __ubyte__ ucBuffer;
}

class DOT11_SSID_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_SSID SSIDs;
}

class DOT11_MAC_ADDRESS_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external __ubyte__ MacAddrs;
}

class DOT11_PMKID_ENTRY extends Struct {
  external __ubyte__ BSSID;
  external __ubyte__ PMKID;
  @Uint32() external int uFlags;
}

class DOT11_PMKID_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_PMKID_ENTRY PMKIDs;
}

class DOT11_PHY_FRAME_STATISTICS extends Struct {
  @Uint64() external int ullTransmittedFrameCount;
  @Uint64() external int ullMulticastTransmittedFrameCount;
  @Uint64() external int ullFailedCount;
  @Uint64() external int ullRetryCount;
  @Uint64() external int ullMultipleRetryCount;
  @Uint64() external int ullMaxTXLifetimeExceededCount;
  @Uint64() external int ullTransmittedFragmentCount;
  @Uint64() external int ullRTSSuccessCount;
  @Uint64() external int ullRTSFailureCount;
  @Uint64() external int ullACKFailureCount;
  @Uint64() external int ullReceivedFrameCount;
  @Uint64() external int ullMulticastReceivedFrameCount;
  @Uint64() external int ullPromiscuousReceivedFrameCount;
  @Uint64() external int ullMaxRXLifetimeExceededCount;
  @Uint64() external int ullFrameDuplicateCount;
  @Uint64() external int ullReceivedFragmentCount;
  @Uint64() external int ullPromiscuousReceivedFragmentCount;
  @Uint64() external int ullFCSErrorCount;
}

class DOT11_MAC_FRAME_STATISTICS extends Struct {
  @Uint64() external int ullTransmittedFrameCount;
  @Uint64() external int ullReceivedFrameCount;
  @Uint64() external int ullTransmittedFailureFrameCount;
  @Uint64() external int ullReceivedFailureFrameCount;
  @Uint64() external int ullWEPExcludedCount;
  @Uint64() external int ullTKIPLocalMICFailures;
  @Uint64() external int ullTKIPReplays;
  @Uint64() external int ullTKIPICVErrorCount;
  @Uint64() external int ullCCMPReplays;
  @Uint64() external int ullCCMPDecryptErrors;
  @Uint64() external int ullWEPUndecryptableCount;
  @Uint64() external int ullWEPICVErrorCount;
  @Uint64() external int ullDecryptSuccessCount;
  @Uint64() external int ullDecryptFailureCount;
}

class DOT11_STATISTICS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint64() external int ullFourWayHandshakeFailures;
  @Uint64() external int ullTKIPCounterMeasuresInvoked;
  @Uint64() external int ullReserved;
  external DOT11_MAC_FRAME_STATISTICS MacUcastCounters;
  external DOT11_MAC_FRAME_STATISTICS MacMcastCounters;
  external DOT11_PHY_FRAME_STATISTICS PhyCounters;
}

class DOT11_PRIVACY_EXEMPTION extends Struct {
  @Uint16() external int usEtherType;
  @Uint16() external int usExemptionActionType;
  @Uint16() external int usExemptionPacketType;
}

class DOT11_PRIVACY_EXEMPTION_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_PRIVACY_EXEMPTION PrivacyExemptionEntries;
}

class DOT11_AUTH_ALGORITHM_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  @Uint32() external int AlgorithmIds;
}

class DOT11_AUTH_CIPHER_PAIR_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_AUTH_CIPHER_PAIR AuthCipherPairs;
}

class DOT11_CIPHER_ALGORITHM_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  @Uint32() external int AlgorithmIds;
}

class DOT11_CIPHER_DEFAULT_KEY_VALUE extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uKeyIndex;
  @Uint32() external int AlgorithmId;
  external __ubyte__ MacAddr;
  @Uint8() external int bDelete;
  @Uint8() external int bStatic;
  @Uint16() external int usKeyLength;
  external __ubyte__ ucKey;
}

class DOT11_KEY_ALGO_TKIP_MIC extends Struct {
  external __ubyte__ ucIV48Counter;
  @Uint32() external int ulTKIPKeyLength;
  @Uint32() external int ulMICKeyLength;
  external __ubyte__ ucTKIPMICKeys;
}

class DOT11_KEY_ALGO_CCMP extends Struct {
  external __ubyte__ ucIV48Counter;
  @Uint32() external int ulCCMPKeyLength;
  external __ubyte__ ucCCMPKey;
}

class DOT11_KEY_ALGO_GCMP extends Struct {
  external __ubyte__ ucIV48Counter;
  @Uint32() external int ulGCMPKeyLength;
  external __ubyte__ ucGCMPKey;
}

class DOT11_KEY_ALGO_GCMP_256 extends Struct {
  external __ubyte__ ucIV48Counter;
  @Uint32() external int ulGCMP256KeyLength;
  external __ubyte__ ucGCMP256Key;
}

class DOT11_KEY_ALGO_BIP extends Struct {
  external __ubyte__ ucIPN;
  @Uint32() external int ulBIPKeyLength;
  external __ubyte__ ucBIPKey;
}

class DOT11_KEY_ALGO_BIP_GMAC_256 extends Struct {
  external __ubyte__ ucIPN;
  @Uint32() external int ulBIPGmac256KeyLength;
  external __ubyte__ ucBIPGmac256Key;
}

class DOT11_CIPHER_KEY_MAPPING_KEY_VALUE extends Struct {
  external __ubyte__ PeerMacAddr;
  @Uint32() external int AlgorithmId;
  @Uint32() external int Direction;
  @Uint8() external int bDelete;
  @Uint8() external int bStatic;
  @Uint16() external int usKeyLength;
  external __ubyte__ ucKey;
}

class DOT11_ASSOCIATION_INFO_EX extends Struct {
  external __ubyte__ PeerMacAddress;
  external __ubyte__ BSSID;
  @Uint16() external int usCapabilityInformation;
  @Uint16() external int usListenInterval;
  external __ubyte__ ucPeerSupportedRates;
  @Uint16() external int usAssociationID;
  @Uint32() external int dot11AssociationState;
  @Uint32() external int dot11PowerMode;
  @Int64() external int liAssociationUpTime;
  @Uint64() external int ullNumOfTxPacketSuccesses;
  @Uint64() external int ullNumOfTxPacketFailures;
  @Uint64() external int ullNumOfRxPacketSuccesses;
  @Uint64() external int ullNumOfRxPacketFailures;
}

class DOT11_ASSOCIATION_INFO_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_ASSOCIATION_INFO_EX dot11AssocInfo;
}

class DOT11_PHY_ID_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external __uint__ dot11PhyId;
}

class DOT11_EXTSTA_CAPABILITY extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uScanSSIDListSize;
  @Uint32() external int uDesiredBSSIDListSize;
  @Uint32() external int uDesiredSSIDListSize;
  @Uint32() external int uExcludedMacAddressListSize;
  @Uint32() external int uPrivacyExemptionListSize;
  @Uint32() external int uKeyMappingTableSize;
  @Uint32() external int uDefaultKeyTableSize;
  @Uint32() external int uWEPKeyValueMaxLength;
  @Uint32() external int uPMKIDCacheSize;
  @Uint32() external int uMaxNumPerSTADefaultKeyTables;
}

class DOT11_DATA_RATE_MAPPING_ENTRY extends Struct {
  @Uint8() external int ucDataRateIndex;
  @Uint8() external int ucDataRateFlag;
  @Uint16() external int usDataRateValue;
}

class DOT11_DATA_RATE_MAPPING_TABLE extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uDataRateMappingLength;
  external DOT11_DATA_RATE_MAPPING_ENTRY DataRateMappingEntries;
}

class DOT11_COUNTRY_OR_REGION_STRING_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external __ubyte__ CountryOrRegionStrings;
}

class DOT11_PORT_STATE_NOTIFICATION extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerMac;
  @Uint8() external int bOpen;
}

class DOT11_IBSS_PARAMS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint8() external int bJoinOnly;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_QOS_PARAMS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint8() external int ucEnabledQoSProtocolFlags;
}

class DOT11_ASSOCIATION_PARAMS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ BSSID;
  @Uint32() external int uAssocRequestIEsOffset;
  @Uint32() external int uAssocRequestIEsLength;
}

class DOT11_FRAGMENT_DESCRIPTOR extends Struct {
  @Uint32() external int uOffset;
  @Uint32() external int uLength;
}

class DOT11_PER_MSDU_COUNTERS extends Struct {
  @Uint32() external int uTransmittedFragmentCount;
  @Uint32() external int uRetryCount;
  @Uint32() external int uRTSSuccessCount;
  @Uint32() external int uRTSFailureCount;
  @Uint32() external int uACKFailureCount;
}

class DOT11_HRDSSS_PHY_ATTRIBUTES extends Struct {
  @Uint8() external int bShortPreambleOptionImplemented;
  @Uint8() external int bPBCCOptionImplemented;
  @Uint8() external int bChannelAgilityPresent;
  @Uint32() external int uHRCCAModeSupported;
}

class DOT11_OFDM_PHY_ATTRIBUTES extends Struct {
  @Uint32() external int uFrequencyBandsSupported;
}

class DOT11_ERP_PHY_ATTRIBUTES extends Struct {
  external DOT11_HRDSSS_PHY_ATTRIBUTES HRDSSSAttributes;
  @Uint8() external int bERPPBCCOptionImplemented;
  @Uint8() external int bDSSSOFDMOptionImplemented;
  @Uint8() external int bShortSlotTimeOptionImplemented;
}

class DOT11_EXTSTA_ATTRIBUTES extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uScanSSIDListSize;
  @Uint32() external int uDesiredBSSIDListSize;
  @Uint32() external int uDesiredSSIDListSize;
  @Uint32() external int uExcludedMacAddressListSize;
  @Uint32() external int uPrivacyExemptionListSize;
  @Uint32() external int uKeyMappingTableSize;
  @Uint32() external int uDefaultKeyTableSize;
  @Uint32() external int uWEPKeyValueMaxLength;
  @Uint32() external int uPMKIDCacheSize;
  @Uint32() external int uMaxNumPerSTADefaultKeyTables;
  @Uint8() external int bStrictlyOrderedServiceClassImplemented;
  @Uint8() external int ucSupportedQoSProtocolFlags;
  @Uint8() external int bSafeModeImplemented;
  @Uint32() external int uNumSupportedCountryOrRegionStrings;
  external Pointer<Uint8> pSupportedCountryOrRegionStrings;
  @Uint32() external int uInfraNumSupportedUcastAlgoPairs;
  external Pointer<DOT11_AUTH_CIPHER_PAIR> pInfraSupportedUcastAlgoPairs;
  @Uint32() external int uInfraNumSupportedMcastAlgoPairs;
  external Pointer<DOT11_AUTH_CIPHER_PAIR> pInfraSupportedMcastAlgoPairs;
  @Uint32() external int uAdhocNumSupportedUcastAlgoPairs;
  external Pointer<DOT11_AUTH_CIPHER_PAIR> pAdhocSupportedUcastAlgoPairs;
  @Uint32() external int uAdhocNumSupportedMcastAlgoPairs;
  external Pointer<DOT11_AUTH_CIPHER_PAIR> pAdhocSupportedMcastAlgoPairs;
  @Uint8() external int bAutoPowerSaveMode;
  @Uint32() external int uMaxNetworkOffloadListSize;
  @Uint8() external int bMFPCapable;
  @Uint32() external int uInfraNumSupportedMcastMgmtAlgoPairs;
  external Pointer<DOT11_AUTH_CIPHER_PAIR> pInfraSupportedMcastMgmtAlgoPairs;
  @Uint8() external int bNeighborReportSupported;
  @Uint8() external int bAPChannelReportSupported;
  @Uint8() external int bActionFramesSupported;
  @Uint8() external int bANQPQueryOffloadSupported;
  @Uint8() external int bHESSIDConnectionSupported;
}

class DOT11_RECV_EXTENSION_INFO extends Struct {
  @Uint32() external int uVersion;
  external Pointer pvReserved;
  @Uint32() external int dot11PhyType;
  @Uint32() external int uChCenterFrequency;
  @Int32() external int lRSSI;
  @Int32() external int lRSSIMin;
  @Int32() external int lRSSIMax;
  @Uint32() external int uRSSI;
  @Uint8() external int ucPriority;
  @Uint8() external int ucDataRate;
  external __ubyte__ ucPeerMacAddress;
  @Uint32() external int dwExtendedStatus;
  @IntPtr() external int hWEPOffloadContext;
  @IntPtr() external int hAuthOffloadContext;
  @Uint16() external int usWEPAppliedMask;
  @Uint16() external int usWPAMSDUPriority;
  external DOT11_IV48_COUNTER dot11LowestIV48Counter;
  @Uint16() external int usDot11LeftRWBitMap;
  external DOT11_IV48_COUNTER dot11HighestIV48Counter;
  @Uint16() external int usDot11RightRWBitMap;
  @Uint16() external int usNumberOfMPDUsReceived;
  @Uint16() external int usNumberOfFragments;
  external ____ pNdisPackets;
}

class DOT11_RECV_EXTENSION_INFO_V2 extends Struct {
  @Uint32() external int uVersion;
  external Pointer pvReserved;
  @Uint32() external int dot11PhyType;
  @Uint32() external int uChCenterFrequency;
  @Int32() external int lRSSI;
  @Uint32() external int uRSSI;
  @Uint8() external int ucPriority;
  @Uint8() external int ucDataRate;
  external __ubyte__ ucPeerMacAddress;
  @Uint32() external int dwExtendedStatus;
  @IntPtr() external int hWEPOffloadContext;
  @IntPtr() external int hAuthOffloadContext;
  @Uint16() external int usWEPAppliedMask;
  @Uint16() external int usWPAMSDUPriority;
  external DOT11_IV48_COUNTER dot11LowestIV48Counter;
  @Uint16() external int usDot11LeftRWBitMap;
  external DOT11_IV48_COUNTER dot11HighestIV48Counter;
  @Uint16() external int usDot11RightRWBitMap;
  @Uint16() external int usNumberOfMPDUsReceived;
  @Uint16() external int usNumberOfFragments;
  external ____ pNdisPackets;
}

class DOT11_STATUS_INDICATION extends Struct {
  @Uint32() external int uStatusType;
  @Int32() external int ndisStatus;
}

class DOT11_MPDU_MAX_LENGTH_INDICATION extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uPhyId;
  @Uint32() external int uMPDUMaxLength;
}

class DOT11_ASSOCIATION_START_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ MacAddr;
  external DOT11_SSID SSID;
  @Uint32() external int uIHVDataOffset;
  @Uint32() external int uIHVDataSize;
}

class DOT11_ENCAP_ENTRY extends Struct {
  @Uint16() external int usEtherType;
  @Uint16() external int usEncapType;
}

class DOT11_ASSOCIATION_COMPLETION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ MacAddr;
  @Uint32() external int uStatus;
  @Uint8() external int bReAssocReq;
  @Uint8() external int bReAssocResp;
  @Uint32() external int uAssocReqOffset;
  @Uint32() external int uAssocReqSize;
  @Uint32() external int uAssocRespOffset;
  @Uint32() external int uAssocRespSize;
  @Uint32() external int uBeaconOffset;
  @Uint32() external int uBeaconSize;
  @Uint32() external int uIHVDataOffset;
  @Uint32() external int uIHVDataSize;
  @Uint32() external int AuthAlgo;
  @Uint32() external int UnicastCipher;
  @Uint32() external int MulticastCipher;
  @Uint32() external int uActivePhyListOffset;
  @Uint32() external int uActivePhyListSize;
  @Uint8() external int bFourAddressSupported;
  @Uint8() external int bPortAuthorized;
  @Uint8() external int ucActiveQoSProtocol;
  @Uint32() external int DSInfo;
  @Uint32() external int uEncapTableOffset;
  @Uint32() external int uEncapTableSize;
  @Uint32() external int MulticastMgmtCipher;
  @Uint32() external int uAssocComebackTime;
}

class DOT11_CONNECTION_START_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int BSSType;
  external __ubyte__ AdhocBSSID;
  external DOT11_SSID AdhocSSID;
}

class DOT11_CONNECTION_COMPLETION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uStatus;
}

class DOT11_ROAMING_START_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ AdhocBSSID;
  external DOT11_SSID AdhocSSID;
  @Uint32() external int uRoamingReason;
}

class DOT11_ROAMING_COMPLETION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uStatus;
}

class DOT11_DISASSOCIATION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ MacAddr;
  @Uint32() external int uReason;
  @Uint32() external int uIHVDataOffset;
  @Uint32() external int uIHVDataSize;
}

class DOT11_TKIPMIC_FAILURE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint8() external int bDefaultKeyFailure;
  @Uint32() external int uKeyIndex;
  external __ubyte__ PeerMac;
}

class DOT11_PMKID_CANDIDATE_LIST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uCandidateListSize;
  @Uint32() external int uCandidateListOffset;
}

class DOT11_BSSID_CANDIDATE extends Struct {
  external __ubyte__ BSSID;
  @Uint32() external int uFlags;
}

class DOT11_PHY_STATE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uPhyId;
  @Uint8() external int bHardwarePhyState;
  @Uint8() external int bSoftwarePhyState;
}

class DOT11_LINK_QUALITY_ENTRY extends Struct {
  external __ubyte__ PeerMacAddr;
  @Uint8() external int ucLinkQuality;
}

class DOT11_LINK_QUALITY_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uLinkQualityListSize;
  @Uint32() external int uLinkQualityListOffset;
}

class DOT11_EXTSTA_SEND_CONTEXT extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint16() external int usExemptionActionType;
  @Uint32() external int uPhyId;
  @Uint32() external int uDelayedSleepValue;
  external Pointer pvMediaSpecificInfo;
  @Uint32() external int uSendFlags;
}

class DOT11_EXTSTA_RECV_CONTEXT extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uReceiveFlags;
  @Uint32() external int uPhyId;
  @Uint32() external int uChCenterFrequency;
  @Uint16() external int usNumberOfMPDUsReceived;
  @Int32() external int lRSSI;
  @Uint8() external int ucDataRate;
  @Uint32() external int uSizeMediaSpecificInfo;
  external Pointer pvMediaSpecificInfo;
  @Uint64() external int ullTimestamp;
}

class DOT11_EXTAP_ATTRIBUTES extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uScanSSIDListSize;
  @Uint32() external int uDesiredSSIDListSize;
  @Uint32() external int uPrivacyExemptionListSize;
  @Uint32() external int uAssociationTableSize;
  @Uint32() external int uDefaultKeyTableSize;
  @Uint32() external int uWEPKeyValueMaxLength;
  @Uint8() external int bStrictlyOrderedServiceClassImplemented;
  @Uint32() external int uNumSupportedCountryOrRegionStrings;
  external Pointer<Uint8> pSupportedCountryOrRegionStrings;
  @Uint32() external int uInfraNumSupportedUcastAlgoPairs;
  external Pointer<DOT11_AUTH_CIPHER_PAIR> pInfraSupportedUcastAlgoPairs;
  @Uint32() external int uInfraNumSupportedMcastAlgoPairs;
  external Pointer<DOT11_AUTH_CIPHER_PAIR> pInfraSupportedMcastAlgoPairs;
}

class DOT11_INCOMING_ASSOC_STARTED_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerMacAddr;
}

class DOT11_INCOMING_ASSOC_REQUEST_RECEIVED_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerMacAddr;
  @Uint8() external int bReAssocReq;
  @Uint32() external int uAssocReqOffset;
  @Uint32() external int uAssocReqSize;
}

class DOT11_INCOMING_ASSOC_COMPLETION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerMacAddr;
  @Uint32() external int uStatus;
  @Uint8() external int ucErrorSource;
  @Uint8() external int bReAssocReq;
  @Uint8() external int bReAssocResp;
  @Uint32() external int uAssocReqOffset;
  @Uint32() external int uAssocReqSize;
  @Uint32() external int uAssocRespOffset;
  @Uint32() external int uAssocRespSize;
  @Uint32() external int AuthAlgo;
  @Uint32() external int UnicastCipher;
  @Uint32() external int MulticastCipher;
  @Uint32() external int uActivePhyListOffset;
  @Uint32() external int uActivePhyListSize;
  @Uint32() external int uBeaconOffset;
  @Uint32() external int uBeaconSize;
}

class DOT11_STOP_AP_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int ulReason;
}

class DOT11_CAN_SUSTAIN_AP_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int ulReason;
}

class DOT11_AVAILABLE_CHANNEL_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external __uint__ uChannelNumber;
}

class DOT11_AVAILABLE_FREQUENCY_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external __uint__ uFrequencyValue;
}

class DOT11_DISASSOCIATE_PEER_REQUEST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerMacAddr;
  @Uint16() external int usReason;
}

class DOT11_INCOMING_ASSOC_DECISION extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerMacAddr;
  @Uint8() external int bAccept;
  @Uint16() external int usReasonCode;
  @Uint32() external int uAssocResponseIEsOffset;
  @Uint32() external int uAssocResponseIEsLength;
}

class DOT11_INCOMING_ASSOC_DECISION_V2 extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerMacAddr;
  @Uint8() external int bAccept;
  @Uint16() external int usReasonCode;
  @Uint32() external int uAssocResponseIEsOffset;
  @Uint32() external int uAssocResponseIEsLength;
  @Uint8() external int WFDStatus;
}

class DOT11_ADDITIONAL_IE extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uBeaconIEsOffset;
  @Uint32() external int uBeaconIEsLength;
  @Uint32() external int uResponseIEsOffset;
  @Uint32() external int uResponseIEsLength;
}

class DOT11_PEER_STATISTICS extends Struct {
  @Uint64() external int ullDecryptSuccessCount;
  @Uint64() external int ullDecryptFailureCount;
  @Uint64() external int ullTxPacketSuccessCount;
  @Uint64() external int ullTxPacketFailureCount;
  @Uint64() external int ullRxPacketSuccessCount;
  @Uint64() external int ullRxPacketFailureCount;
}

class DOT11_PEER_INFO extends Struct {
  external __ubyte__ MacAddress;
  @Uint16() external int usCapabilityInformation;
  @Uint32() external int AuthAlgo;
  @Uint32() external int UnicastCipherAlgo;
  @Uint32() external int MulticastCipherAlgo;
  @Uint8() external int bWpsEnabled;
  @Uint16() external int usListenInterval;
  external __ubyte__ ucSupportedRates;
  @Uint16() external int usAssociationID;
  @Uint32() external int AssociationState;
  @Uint32() external int PowerMode;
  @Int64() external int liAssociationUpTime;
  external DOT11_PEER_STATISTICS Statistics;
}

class DOT11_PEER_INFO_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_PEER_INFO PeerInfo;
}

class DOT11_VWIFI_COMBINATION extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumInfrastructure;
  @Uint32() external int uNumAdhoc;
  @Uint32() external int uNumSoftAP;
}

class DOT11_VWIFI_COMBINATION_V2 extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumInfrastructure;
  @Uint32() external int uNumAdhoc;
  @Uint32() external int uNumSoftAP;
  @Uint32() external int uNumVirtualStation;
}

class DOT11_VWIFI_COMBINATION_V3 extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumInfrastructure;
  @Uint32() external int uNumAdhoc;
  @Uint32() external int uNumSoftAP;
  @Uint32() external int uNumVirtualStation;
  @Uint32() external int uNumWFDGroup;
}

class DOT11_VWIFI_ATTRIBUTES extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_VWIFI_COMBINATION Combinations;
}

class DOT11_MAC_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uOpmodeMask;
}

class DOT11_MAC_INFO extends Struct {
  @Uint32() external int uReserved;
  @Uint32() external int uNdisPortNumber;
  external __ubyte__ MacAddr;
}

class DOT11_WFD_ATTRIBUTES extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumConcurrentGORole;
  @Uint32() external int uNumConcurrentClientRole;
  @Uint32() external int WPSVersionsSupported;
  @Uint8() external int bServiceDiscoverySupported;
  @Uint8() external int bClientDiscoverabilitySupported;
  @Uint8() external int bInfrastructureManagementSupported;
  @Uint32() external int uMaxSecondaryDeviceTypeListSize;
  external __ubyte__ DeviceAddress;
  @Uint32() external int uInterfaceAddressListCount;
  external Pointer<Uint8> pInterfaceAddressList;
  @Uint32() external int uNumSupportedCountryOrRegionStrings;
  external Pointer<Uint8> pSupportedCountryOrRegionStrings;
  @Uint32() external int uDiscoveryFilterListSize;
  @Uint32() external int uGORoleClientTableSize;
}

class DOT11_WFD_DEVICE_TYPE extends Struct {
  @Uint16() external int CategoryID;
  @Uint16() external int SubCategoryID;
  external __ubyte__ OUI;
}

class DOT11_WPS_DEVICE_NAME extends Struct {
  @Uint32() external int uDeviceNameLength;
  external __ubyte__ ucDeviceName;
}

class DOT11_WFD_CONFIGURATION_TIMEOUT extends Struct {
  @Uint8() external int GOTimeout;
  @Uint8() external int ClientTimeout;
}

class DOT11_WFD_GROUP_ID extends Struct {
  external __ubyte__ DeviceAddress;
  external DOT11_SSID SSID;
}

class DOT11_WFD_GO_INTENT extends Struct {
  @Uint8() external int _bitfield;
}

class DOT11_WFD_CHANNEL extends Struct {
  external __ubyte__ CountryRegionString;
  @Uint8() external int OperatingClass;
  @Uint8() external int ChannelNumber;
}

class WFDSVC_CONNECTION_CAPABILITY extends Struct {
  @Uint8() external int bNew;
  @Uint8() external int bClient;
  @Uint8() external int bGO;
}

class DOT11_WFD_SERVICE_HASH_LIST extends Struct {
  @Uint16() external int ServiceHashCount;
  external __ubyte__ ServiceHash;
}

class DOT11_WFD_ADVERTISEMENT_ID extends Struct {
  @Uint32() external int AdvertisementID;
  external __ubyte__ ServiceAddress;
}

class DOT11_WFD_SESSION_ID extends Struct {
  @Uint32() external int SessionID;
  external __ubyte__ SessionAddress;
}

class DOT11_WFD_ADVERTISED_SERVICE_DESCRIPTOR extends Struct {
  @Uint32() external int AdvertisementID;
  @Uint16() external int ConfigMethods;
  @Uint8() external int ServiceNameLength;
  external __ubyte__ ServiceName;
}

class DOT11_WFD_ADVERTISED_SERVICE_LIST extends Struct {
  @Uint16() external int ServiceCount;
  external DOT11_WFD_ADVERTISED_SERVICE_DESCRIPTOR AdvertisedService;
}

class DOT11_WFD_DISCOVER_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Int32() external int Status;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  @Uint32() external int uListOffset;
  @Uint32() external int uListLength;
}

class DOT11_GO_NEGOTIATION_REQUEST_SEND_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerDeviceAddress;
  @Uint8() external int DialogToken;
  @Int32() external int Status;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_RECEIVED_GO_NEGOTIATION_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerDeviceAddress;
  @Uint8() external int DialogToken;
  external Pointer RequestContext;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_GO_NEGOTIATION_RESPONSE_SEND_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerDeviceAddress;
  @Uint8() external int DialogToken;
  @Int32() external int Status;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_RECEIVED_GO_NEGOTIATION_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerDeviceAddress;
  @Uint8() external int DialogToken;
  external Pointer ResponseContext;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_GO_NEGOTIATION_CONFIRMATION_SEND_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerDeviceAddress;
  @Uint8() external int DialogToken;
  @Int32() external int Status;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_RECEIVED_GO_NEGOTIATION_CONFIRMATION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerDeviceAddress;
  @Uint8() external int DialogToken;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_INVITATION_REQUEST_SEND_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerDeviceAddress;
  external __ubyte__ ReceiverAddress;
  @Uint8() external int DialogToken;
  @Int32() external int Status;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_RECEIVED_INVITATION_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ TransmitterDeviceAddress;
  external __ubyte__ BSSID;
  @Uint8() external int DialogToken;
  external Pointer RequestContext;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_INVITATION_RESPONSE_SEND_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ ReceiverDeviceAddress;
  @Uint8() external int DialogToken;
  @Int32() external int Status;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_RECEIVED_INVITATION_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ TransmitterDeviceAddress;
  external __ubyte__ BSSID;
  @Uint8() external int DialogToken;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_PROVISION_DISCOVERY_REQUEST_SEND_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerDeviceAddress;
  external __ubyte__ ReceiverAddress;
  @Uint8() external int DialogToken;
  @Int32() external int Status;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_RECEIVED_PROVISION_DISCOVERY_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ TransmitterDeviceAddress;
  external __ubyte__ BSSID;
  @Uint8() external int DialogToken;
  external Pointer RequestContext;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_PROVISION_DISCOVERY_RESPONSE_SEND_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ ReceiverDeviceAddress;
  @Uint8() external int DialogToken;
  @Int32() external int Status;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_RECEIVED_PROVISION_DISCOVERY_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ TransmitterDeviceAddress;
  external __ubyte__ BSSID;
  @Uint8() external int DialogToken;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_ANQP_QUERY_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int Status;
  @IntPtr() external int hContext;
  @Uint32() external int uResponseLength;
}

class DOT11_WFD_DEVICE_CAPABILITY_CONFIG extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint8() external int bServiceDiscoveryEnabled;
  @Uint8() external int bClientDiscoverabilityEnabled;
  @Uint8() external int bConcurrentOperationSupported;
  @Uint8() external int bInfrastructureManagementEnabled;
  @Uint8() external int bDeviceLimitReached;
  @Uint8() external int bInvitationProcedureEnabled;
  @Uint32() external int WPSVersionsEnabled;
}

class DOT11_WFD_GROUP_OWNER_CAPABILITY_CONFIG extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint8() external int bPersistentGroupEnabled;
  @Uint8() external int bIntraBSSDistributionSupported;
  @Uint8() external int bCrossConnectionSupported;
  @Uint8() external int bPersistentReconnectSupported;
  @Uint8() external int bGroupFormationEnabled;
  @Uint32() external int uMaximumGroupLimit;
}

class DOT11_WFD_GROUP_OWNER_CAPABILITY_CONFIG_V2 extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint8() external int bPersistentGroupEnabled;
  @Uint8() external int bIntraBSSDistributionSupported;
  @Uint8() external int bCrossConnectionSupported;
  @Uint8() external int bPersistentReconnectSupported;
  @Uint8() external int bGroupFormationEnabled;
  @Uint32() external int uMaximumGroupLimit;
  @Uint8() external int bEapolKeyIpAddressAllocationSupported;
}

class DOT11_WFD_DEVICE_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ DeviceAddress;
  @Uint16() external int ConfigMethods;
  external DOT11_WFD_DEVICE_TYPE PrimaryDeviceType;
  external DOT11_WPS_DEVICE_NAME DeviceName;
}

class DOT11_WFD_SECONDARY_DEVICE_TYPE_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uNumOfEntries;
  @Uint32() external int uTotalNumOfEntries;
  external DOT11_WFD_DEVICE_TYPE SecondaryDeviceTypes;
}

class DOT11_WFD_DISCOVER_DEVICE_FILTER extends Struct {
  external __ubyte__ DeviceID;
  @Uint8() external int ucBitmask;
  external DOT11_SSID GroupSSID;
}

class DOT11_WFD_DISCOVER_REQUEST extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int DiscoverType;
  @Uint32() external int ScanType;
  @Uint32() external int uDiscoverTimeout;
  @Uint32() external int uDeviceFilterListOffset;
  @Uint32() external int uNumDeviceFilters;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
  @Uint8() external int bForceScanLegacyNetworks;
}

class DOT11_WFD_DEVICE_ENTRY extends Struct {
  @Uint32() external int uPhyId;
  external DOT11_BSS_ENTRY_PHY_SPECIFIC_INFO PhySpecificInfo;
  external __ubyte__ dot11BSSID;
  @Uint32() external int dot11BSSType;
  external __ubyte__ TransmitterAddress;
  @Int32() external int lRSSI;
  @Uint32() external int uLinkQuality;
  @Uint16() external int usBeaconPeriod;
  @Uint64() external int ullTimestamp;
  @Uint64() external int ullBeaconHostTimestamp;
  @Uint64() external int ullProbeResponseHostTimestamp;
  @Uint16() external int usCapabilityInformation;
  @Uint32() external int uBeaconIEsOffset;
  @Uint32() external int uBeaconIEsLength;
  @Uint32() external int uProbeResponseIEsOffset;
  @Uint32() external int uProbeResponseIEsLength;
}

class DOT11_WFD_ADDITIONAL_IE extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int uBeaconIEsOffset;
  @Uint32() external int uBeaconIEsLength;
  @Uint32() external int uProbeResponseIEsOffset;
  @Uint32() external int uProbeResponseIEsLength;
  @Uint32() external int uDefaultRequestIEsOffset;
  @Uint32() external int uDefaultRequestIEsLength;
}

class DOT11_SEND_GO_NEGOTIATION_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerDeviceAddress;
  @Uint8() external int DialogToken;
  @Uint32() external int uSendTimeout;
  external DOT11_WFD_GO_INTENT GroupOwnerIntent;
  external DOT11_WFD_CONFIGURATION_TIMEOUT MinimumConfigTimeout;
  external __ubyte__ IntendedInterfaceAddress;
  @Uint8() external int GroupCapability;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_SEND_GO_NEGOTIATION_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerDeviceAddress;
  @Uint8() external int DialogToken;
  external Pointer RequestContext;
  @Uint32() external int uSendTimeout;
  @Uint8() external int Status;
  external DOT11_WFD_GO_INTENT GroupOwnerIntent;
  external DOT11_WFD_CONFIGURATION_TIMEOUT MinimumConfigTimeout;
  external __ubyte__ IntendedInterfaceAddress;
  @Uint8() external int GroupCapability;
  external DOT11_WFD_GROUP_ID GroupID;
  @Uint8() external int bUseGroupID;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_SEND_GO_NEGOTIATION_CONFIRMATION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ PeerDeviceAddress;
  @Uint8() external int DialogToken;
  external Pointer ResponseContext;
  @Uint32() external int uSendTimeout;
  @Uint8() external int Status;
  @Uint8() external int GroupCapability;
  external DOT11_WFD_GROUP_ID GroupID;
  @Uint8() external int bUseGroupID;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_WFD_INVITATION_FLAGS extends Struct {
  @Uint8() external int _bitfield;
}

class DOT11_SEND_INVITATION_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint8() external int DialogToken;
  external __ubyte__ PeerDeviceAddress;
  @Uint32() external int uSendTimeout;
  external DOT11_WFD_CONFIGURATION_TIMEOUT MinimumConfigTimeout;
  external DOT11_WFD_INVITATION_FLAGS InvitationFlags;
  external __ubyte__ GroupBSSID;
  @Uint8() external int bUseGroupBSSID;
  external DOT11_WFD_CHANNEL OperatingChannel;
  @Uint8() external int bUseSpecifiedOperatingChannel;
  external DOT11_WFD_GROUP_ID GroupID;
  @Uint8() external int bLocalGO;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_SEND_INVITATION_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ ReceiverDeviceAddress;
  @Uint8() external int DialogToken;
  external Pointer RequestContext;
  @Uint32() external int uSendTimeout;
  @Uint8() external int Status;
  external DOT11_WFD_CONFIGURATION_TIMEOUT MinimumConfigTimeout;
  external __ubyte__ GroupBSSID;
  @Uint8() external int bUseGroupBSSID;
  external DOT11_WFD_CHANNEL OperatingChannel;
  @Uint8() external int bUseSpecifiedOperatingChannel;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_SEND_PROVISION_DISCOVERY_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint8() external int DialogToken;
  external __ubyte__ PeerDeviceAddress;
  @Uint32() external int uSendTimeout;
  @Uint8() external int GroupCapability;
  external DOT11_WFD_GROUP_ID GroupID;
  @Uint8() external int bUseGroupID;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_SEND_PROVISION_DISCOVERY_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external __ubyte__ ReceiverDeviceAddress;
  @Uint8() external int DialogToken;
  external Pointer RequestContext;
  @Uint32() external int uSendTimeout;
  @Uint32() external int uIEsOffset;
  @Uint32() external int uIEsLength;
}

class DOT11_WFD_DEVICE_LISTEN_CHANNEL extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint8() external int ChannelNumber;
}

class DOT11_WFD_GROUP_START_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external DOT11_WFD_CHANNEL AdvertisedOperatingChannel;
}

class DOT11_WFD_GROUP_JOIN_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  external DOT11_WFD_CHANNEL GOOperatingChannel;
  @Uint32() external int GOConfigTime;
  @Uint8() external int bInGroupFormation;
  @Uint8() external int bWaitForWPSReady;
}

class DOT11_POWER_MGMT_AUTO_MODE_ENABLED_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint8() external int bEnabled;
}

class DOT11_POWER_MGMT_MODE_STATUS_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int PowerSaveMode;
  @Uint32() external int uPowerSaveLevel;
  @Uint32() external int Reason;
}

class DOT11_CHANNEL_HINT extends Struct {
  @Uint32() external int Dot11PhyType;
  @Uint32() external int uChannelNumber;
}

class DOT11_OFFLOAD_NETWORK extends Struct {
  external DOT11_SSID Ssid;
  @Uint32() external int UnicastCipher;
  @Uint32() external int AuthAlgo;
  external DOT11_CHANNEL_HINT Dot11ChannelHints;
}

class DOT11_OFFLOAD_NETWORK_LIST_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int ulFlags;
  @Uint32() external int FastScanPeriod;
  @Uint32() external int FastScanIterations;
  @Uint32() external int SlowScanPeriod;
  @Uint32() external int uNumOfEntries;
  external DOT11_OFFLOAD_NETWORK offloadNetworkList;
}

class DOT11_OFFLOAD_NETWORK_STATUS_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Int32() external int Status;
}

class DOT11_MANUFACTURING_TEST extends Struct {
  @Uint32() external int dot11ManufacturingTestType;
  @Uint32() external int uBufferLength;
  external __ubyte__ ucBuffer;
}

class DOT11_MANUFACTURING_SELF_TEST_SET_PARAMS extends Struct {
  @Uint32() external int SelfTestType;
  @Uint32() external int uTestID;
  @Uint32() external int uPinBitMask;
  external Pointer pvContext;
  @Uint32() external int uBufferLength;
  external __ubyte__ ucBufferIn;
}

class DOT11_MANUFACTURING_SELF_TEST_QUERY_RESULTS extends Struct {
  @Uint32() external int SelfTestType;
  @Uint32() external int uTestID;
  @Uint8() external int bResult;
  @Uint32() external int uPinFailedBitMask;
  external Pointer pvContext;
  @Uint32() external int uBytesWrittenOut;
  external __ubyte__ ucBufferOut;
}

class DOT11_MANUFACTURING_FUNCTIONAL_TEST_RX extends Struct {
  @Uint8() external int bEnabled;
  @Uint32() external int Dot11Band;
  @Uint32() external int uChannel;
  @Int32() external int PowerLevel;
}

class DOT11_MANUFACTURING_FUNCTIONAL_TEST_TX extends Struct {
  @Uint8() external int bEnable;
  @Uint8() external int bOpenLoop;
  @Uint32() external int Dot11Band;
  @Uint32() external int uChannel;
  @Uint32() external int uSetPowerLevel;
  @Int32() external int ADCPowerLevel;
}

class DOT11_MANUFACTURING_FUNCTIONAL_TEST_QUERY_ADC extends Struct {
  @Uint32() external int Dot11Band;
  @Uint32() external int uChannel;
  @Int32() external int ADCPowerLevel;
}

class DOT11_MANUFACTURING_TEST_SET_DATA extends Struct {
  @Uint32() external int uKey;
  @Uint32() external int uOffset;
  @Uint32() external int uBufferLength;
  external __ubyte__ ucBufferIn;
}

class DOT11_MANUFACTURING_TEST_QUERY_DATA extends Struct {
  @Uint32() external int uKey;
  @Uint32() external int uOffset;
  @Uint32() external int uBufferLength;
  @Uint32() external int uBytesRead;
  external __ubyte__ ucBufferOut;
}

class DOT11_MANUFACTURING_TEST_SLEEP extends Struct {
  @Uint32() external int uSleepTime;
  external Pointer pvContext;
}

class DOT11_MANUFACTURING_CALLBACK_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;
  @Uint32() external int dot11ManufacturingCallbackType;
  @Uint32() external int uStatus;
  external Pointer pvContext;
}

class WLAN_PROFILE_INFO extends Struct {
  external __ushort__ strProfileName;
  @Uint32() external int dwFlags;
}

class DOT11_NETWORK extends Struct {
  external DOT11_SSID dot11Ssid;
  @Uint32() external int dot11BssType;
}

class WLAN_RAW_DATA extends Struct {
  @Uint32() external int dwDataSize;
  external __ubyte__ DataBlob;
}

class WLAN_RATE_SET extends Struct {
  @Uint32() external int uRateSetLength;
  external __ushort__ usRateSet;
}

class WLAN_AVAILABLE_NETWORK extends Struct {
  external __ushort__ strProfileName;
  external DOT11_SSID dot11Ssid;
  @Uint32() external int dot11BssType;
  @Uint32() external int uNumberOfBssids;
  @Int32() external int bNetworkConnectable;
  @Uint32() external int wlanNotConnectableReason;
  @Uint32() external int uNumberOfPhyTypes;
  @Uint32() external int dot11PhyTypes;
  @Int32() external int bMorePhyTypes;
  @Uint32() external int wlanSignalQuality;
  @Int32() external int bSecurityEnabled;
  @Uint32() external int dot11DefaultAuthAlgorithm;
  @Uint32() external int dot11DefaultCipherAlgorithm;
  @Uint32() external int dwFlags;
  @Uint32() external int dwReserved;
}

class WLAN_AVAILABLE_NETWORK_V2 extends Struct {
  external __ushort__ strProfileName;
  external DOT11_SSID dot11Ssid;
  @Uint32() external int dot11BssType;
  @Uint32() external int uNumberOfBssids;
  @Int32() external int bNetworkConnectable;
  @Uint32() external int wlanNotConnectableReason;
  @Uint32() external int uNumberOfPhyTypes;
  @Uint32() external int dot11PhyTypes;
  @Int32() external int bMorePhyTypes;
  @Uint32() external int wlanSignalQuality;
  @Int32() external int bSecurityEnabled;
  @Uint32() external int dot11DefaultAuthAlgorithm;
  @Uint32() external int dot11DefaultCipherAlgorithm;
  @Uint32() external int dwFlags;
  external DOT11_ACCESSNETWORKOPTIONS AccessNetworkOptions;
  external __ubyte__ dot11HESSID;
  external DOT11_VENUEINFO VenueInfo;
  @Uint32() external int dwReserved;
}

class WLAN_BSS_ENTRY extends Struct {
  external DOT11_SSID dot11Ssid;
  @Uint32() external int uPhyId;
  external __ubyte__ dot11Bssid;
  @Uint32() external int dot11BssType;
  @Uint32() external int dot11BssPhyType;
  @Int32() external int lRssi;
  @Uint32() external int uLinkQuality;
  @Uint8() external int bInRegDomain;
  @Uint16() external int usBeaconPeriod;
  @Uint64() external int ullTimestamp;
  @Uint64() external int ullHostTimestamp;
  @Uint16() external int usCapabilityInformation;
  @Uint32() external int ulChCenterFrequency;
  external WLAN_RATE_SET wlanRateSet;
  @Uint32() external int ulIeOffset;
  @Uint32() external int ulIeSize;
}

class WLAN_BSS_LIST extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNumberOfItems;
  external WLAN_BSS_ENTRY wlanBssEntries;
}

class WLAN_INTERFACE_INFO extends Struct {
  external GUID InterfaceGuid;
  external __ushort__ strInterfaceDescription;
  @Uint32() external int isState;
}

class WLAN_ASSOCIATION_ATTRIBUTES extends Struct {
  external DOT11_SSID dot11Ssid;
  @Uint32() external int dot11BssType;
  external __ubyte__ dot11Bssid;
  @Uint32() external int dot11PhyType;
  @Uint32() external int uDot11PhyIndex;
  @Uint32() external int wlanSignalQuality;
  @Uint32() external int ulRxRate;
  @Uint32() external int ulTxRate;
}

class WLAN_SECURITY_ATTRIBUTES extends Struct {
  @Int32() external int bSecurityEnabled;
  @Int32() external int bOneXEnabled;
  @Uint32() external int dot11AuthAlgorithm;
  @Uint32() external int dot11CipherAlgorithm;
}

class WLAN_CONNECTION_ATTRIBUTES extends Struct {
  @Uint32() external int isState;
  @Uint32() external int wlanConnectionMode;
  external __ushort__ strProfileName;
  external WLAN_ASSOCIATION_ATTRIBUTES wlanAssociationAttributes;
  external WLAN_SECURITY_ATTRIBUTES wlanSecurityAttributes;
}

class WLAN_PHY_RADIO_STATE extends Struct {
  @Uint32() external int dwPhyIndex;
  @Uint32() external int dot11SoftwareRadioState;
  @Uint32() external int dot11HardwareRadioState;
}

class WLAN_RADIO_STATE extends Struct {
  @Uint32() external int dwNumberOfPhys;
  external WLAN_PHY_RADIO_STATE PhyRadioState;
}

class WLAN_INTERFACE_CAPABILITY extends Struct {
  @Uint32() external int interfaceType;
  @Int32() external int bDot11DSupported;
  @Uint32() external int dwMaxDesiredSsidListSize;
  @Uint32() external int dwMaxDesiredBssidListSize;
  @Uint32() external int dwNumberOfSupportedPhys;
  @Uint32() external int dot11PhyTypes;
}

class WLAN_AUTH_CIPHER_PAIR_LIST extends Struct {
  @Uint32() external int dwNumberOfItems;
  external DOT11_AUTH_CIPHER_PAIR pAuthCipherPairList;
}

class WLAN_COUNTRY_OR_REGION_STRING_LIST extends Struct {
  @Uint32() external int dwNumberOfItems;
  external __ubyte__ pCountryOrRegionStringList;
}

class WLAN_PROFILE_INFO_LIST extends Struct {
  @Uint32() external int dwNumberOfItems;
  @Uint32() external int dwIndex;
  external WLAN_PROFILE_INFO ProfileInfo;
}

class WLAN_AVAILABLE_NETWORK_LIST extends Struct {
  @Uint32() external int dwNumberOfItems;
  @Uint32() external int dwIndex;
  external WLAN_AVAILABLE_NETWORK Network;
}

class WLAN_AVAILABLE_NETWORK_LIST_V2 extends Struct {
  @Uint32() external int dwNumberOfItems;
  @Uint32() external int dwIndex;
  external WLAN_AVAILABLE_NETWORK_V2 Network;
}

class WLAN_INTERFACE_INFO_LIST extends Struct {
  @Uint32() external int dwNumberOfItems;
  @Uint32() external int dwIndex;
  external WLAN_INTERFACE_INFO InterfaceInfo;
}

class DOT11_NETWORK_LIST extends Struct {
  @Uint32() external int dwNumberOfItems;
  @Uint32() external int dwIndex;
  external DOT11_NETWORK Network;
}

class WLAN_CONNECTION_PARAMETERS extends Struct {
  @Uint32() external int wlanConnectionMode;
  external Pointer<Utf16> strProfile;
  external Pointer<DOT11_SSID> pDot11Ssid;
  external Pointer<DOT11_BSSID_LIST> pDesiredBssidList;
  @Uint32() external int dot11BssType;
  @Uint32() external int dwFlags;
}

class WLAN_CONNECTION_PARAMETERS_V2 extends Struct {
  @Uint32() external int wlanConnectionMode;
  external Pointer<Utf16> strProfile;
  external Pointer<DOT11_SSID> pDot11Ssid;
  external Pointer<Uint8> pDot11Hessid;
  external Pointer<DOT11_BSSID_LIST> pDesiredBssidList;
  @Uint32() external int dot11BssType;
  @Uint32() external int dwFlags;
  external Pointer<DOT11_ACCESSNETWORKOPTIONS> pDot11AccessNetworkOptions;
}

class WLAN_MSM_NOTIFICATION_DATA extends Struct {
  @Uint32() external int wlanConnectionMode;
  external __ushort__ strProfileName;
  external DOT11_SSID dot11Ssid;
  @Uint32() external int dot11BssType;
  external __ubyte__ dot11MacAddr;
  @Int32() external int bSecurityEnabled;
  @Int32() external int bFirstPeer;
  @Int32() external int bLastPeer;
  @Uint32() external int wlanReasonCode;
}

class WLAN_CONNECTION_NOTIFICATION_DATA extends Struct {
  @Uint32() external int wlanConnectionMode;
  external __ushort__ strProfileName;
  external DOT11_SSID dot11Ssid;
  @Uint32() external int dot11BssType;
  @Int32() external int bSecurityEnabled;
  @Uint32() external int wlanReasonCode;
  @Uint32() external int dwFlags;
  external __ushort__ strProfileXml;
}

class WLAN_DEVICE_SERVICE_NOTIFICATION_DATA extends Struct {
  external GUID DeviceService;
  @Uint32() external int dwOpCode;
  @Uint32() external int dwDataSize;
  external __ubyte__ DataBlob;
}

class WLAN_PHY_FRAME_STATISTICS extends Struct {
  @Uint64() external int ullTransmittedFrameCount;
  @Uint64() external int ullMulticastTransmittedFrameCount;
  @Uint64() external int ullFailedCount;
  @Uint64() external int ullRetryCount;
  @Uint64() external int ullMultipleRetryCount;
  @Uint64() external int ullMaxTXLifetimeExceededCount;
  @Uint64() external int ullTransmittedFragmentCount;
  @Uint64() external int ullRTSSuccessCount;
  @Uint64() external int ullRTSFailureCount;
  @Uint64() external int ullACKFailureCount;
  @Uint64() external int ullReceivedFrameCount;
  @Uint64() external int ullMulticastReceivedFrameCount;
  @Uint64() external int ullPromiscuousReceivedFrameCount;
  @Uint64() external int ullMaxRXLifetimeExceededCount;
  @Uint64() external int ullFrameDuplicateCount;
  @Uint64() external int ullReceivedFragmentCount;
  @Uint64() external int ullPromiscuousReceivedFragmentCount;
  @Uint64() external int ullFCSErrorCount;
}

class WLAN_MAC_FRAME_STATISTICS extends Struct {
  @Uint64() external int ullTransmittedFrameCount;
  @Uint64() external int ullReceivedFrameCount;
  @Uint64() external int ullWEPExcludedCount;
  @Uint64() external int ullTKIPLocalMICFailures;
  @Uint64() external int ullTKIPReplays;
  @Uint64() external int ullTKIPICVErrorCount;
  @Uint64() external int ullCCMPReplays;
  @Uint64() external int ullCCMPDecryptErrors;
  @Uint64() external int ullWEPUndecryptableCount;
  @Uint64() external int ullWEPICVErrorCount;
  @Uint64() external int ullDecryptSuccessCount;
  @Uint64() external int ullDecryptFailureCount;
}

class WLAN_STATISTICS extends Struct {
  @Uint64() external int ullFourWayHandshakeFailures;
  @Uint64() external int ullTKIPCounterMeasuresInvoked;
  @Uint64() external int ullReserved;
  external WLAN_MAC_FRAME_STATISTICS MacUcastCounters;
  external WLAN_MAC_FRAME_STATISTICS MacMcastCounters;
  @Uint32() external int dwNumberOfPhys;
  external WLAN_PHY_FRAME_STATISTICS PhyCounters;
}

class WLAN_DEVICE_SERVICE_GUID_LIST extends Struct {
  @Uint32() external int dwNumberOfItems;
  @Uint32() external int dwIndex;
  external GUID DeviceService;
}

class WFD_GROUP_ID extends Struct {
  external __ubyte__ DeviceAddress;
  external DOT11_SSID GroupSSID;
}

class WLAN_HOSTED_NETWORK_PEER_STATE extends Struct {
  external __ubyte__ PeerMacAddress;
  @Uint32() external int PeerAuthState;
}

class WLAN_HOSTED_NETWORK_RADIO_STATE extends Struct {
  @Uint32() external int dot11SoftwareRadioState;
  @Uint32() external int dot11HardwareRadioState;
}

class WLAN_HOSTED_NETWORK_STATE_CHANGE extends Struct {
  @Uint32() external int OldState;
  @Uint32() external int NewState;
  @Uint32() external int StateChangeReason;
}

class WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE extends Struct {
  external WLAN_HOSTED_NETWORK_PEER_STATE OldState;
  external WLAN_HOSTED_NETWORK_PEER_STATE NewState;
  @Uint32() external int PeerStateChangeReason;
}

class WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS extends Struct {
  external DOT11_SSID hostedNetworkSSID;
  @Uint32() external int dwMaxNumberOfPeers;
}

class WLAN_HOSTED_NETWORK_SECURITY_SETTINGS extends Struct {
  @Uint32() external int dot11AuthAlgo;
  @Uint32() external int dot11CipherAlgo;
}

class WLAN_HOSTED_NETWORK_STATUS extends Struct {
  @Uint32() external int HostedNetworkState;
  external GUID IPDeviceID;
  external __ubyte__ wlanHostedNetworkBSSID;
  @Uint32() external int dot11PhyType;
  @Uint32() external int ulChannelFrequency;
  @Uint32() external int dwNumberOfPeers;
  external WLAN_HOSTED_NETWORK_PEER_STATE PeerList;
}

class ONEX_VARIABLE_BLOB extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwOffset;
}

class ONEX_AUTH_PARAMS extends Struct {
  @Int32() external int fUpdatePending;
  external ONEX_VARIABLE_BLOB oneXConnProfile;
  @Uint32() external int authIdentity;
  @Uint32() external int dwQuarantineState;
  @Uint32() external int _bitfield;
  @Uint32() external int dwSessionId;
  @IntPtr() external int hUserToken;
  external ONEX_VARIABLE_BLOB OneXUserProfile;
  external ONEX_VARIABLE_BLOB Identity;
  external ONEX_VARIABLE_BLOB UserName;
  external ONEX_VARIABLE_BLOB Domain;
}

class ONEX_EAP_ERROR extends Struct {
  @Uint32() external int dwWinError;
  external EAP_METHOD_TYPE type;
  @Uint32() external int dwReasonCode;
  external GUID rootCauseGuid;
  external GUID repairGuid;
  external GUID helpLinkGuid;
  @Uint32() external int _bitfield;
  external ONEX_VARIABLE_BLOB RootCauseString;
  external ONEX_VARIABLE_BLOB RepairString;
}

class ONEX_STATUS extends Struct {
  @Uint32() external int authStatus;
  @Uint32() external int dwReason;
  @Uint32() external int dwError;
}

class ONEX_RESULT_UPDATE_DATA extends Struct {
  external ONEX_STATUS oneXStatus;
  @Uint32() external int BackendSupport;
  @Int32() external int fBackendEngaged;
  @Uint32() external int _bitfield;
  external ONEX_VARIABLE_BLOB authParams;
  external ONEX_VARIABLE_BLOB eapError;
}

class ONEX_USER_INFO extends Struct {
  @Uint32() external int authIdentity;
  @Uint32() external int _bitfield;
  external ONEX_VARIABLE_BLOB UserName;
  external ONEX_VARIABLE_BLOB DomainName;
}

class Dot11AdHocManager extends Struct {
}

