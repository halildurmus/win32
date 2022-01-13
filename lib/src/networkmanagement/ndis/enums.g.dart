/// {@category Enum}
class DOT11EXT_IHV_CONNECTION_PHASE {
  static const connection_phase_any = 0x00000000;
  static const connection_phase_initial_connection = 0x00000001;
  static const connection_phase_post_l3_connection = 0x00000002;
}

/// {@category Enum}
class DOT11EXT_IHV_INDICATION_TYPE {
  static const IndicationTypeNicSpecificNotification = 0x00000000;
  static const IndicationTypePmkidCandidateList = 0x00000001;
  static const IndicationTypeTkipMicFailure = 0x00000002;
  static const IndicationTypePhyStateChange = 0x00000003;
  static const IndicationTypeLinkQuality = 0x00000004;
}

/// {@category Enum}
class DOT11_MSONEX_RESULT {
  static const DOT11_MSONEX_SUCCESS = 0x00000000;
  static const DOT11_MSONEX_FAILURE = 0x00000001;
  static const DOT11_MSONEX_IN_PROGRESS = 0x00000002;
}

/// {@category Enum}
class NDIS_802_11_AUTHENTICATION_MODE {
  static const Ndis802_11AuthModeOpen = 0x00000000;
  static const Ndis802_11AuthModeShared = 0x00000001;
  static const Ndis802_11AuthModeAutoSwitch = 0x00000002;
  static const Ndis802_11AuthModeWPA = 0x00000003;
  static const Ndis802_11AuthModeWPAPSK = 0x00000004;
  static const Ndis802_11AuthModeWPANone = 0x00000005;
  static const Ndis802_11AuthModeWPA2 = 0x00000006;
  static const Ndis802_11AuthModeWPA2PSK = 0x00000007;
  static const Ndis802_11AuthModeWPA3 = 0x00000008;
  static const Ndis802_11AuthModeWPA3Ent192 = 0x00000008;
  static const Ndis802_11AuthModeWPA3SAE = 0x00000009;
  static const Ndis802_11AuthModeWPA3Ent = 0x0000000a;
  static const Ndis802_11AuthModeMax = 0x0000000b;
}

/// {@category Enum}
class NDIS_802_11_MEDIA_STREAM_MODE {
  static const Ndis802_11MediaStreamOff = 0x00000000;
  static const Ndis802_11MediaStreamOn = 0x00000001;
}

/// {@category Enum}
class NDIS_802_11_NETWORK_INFRASTRUCTURE {
  static const Ndis802_11IBSS = 0x00000000;
  static const Ndis802_11Infrastructure = 0x00000001;
  static const Ndis802_11AutoUnknown = 0x00000002;
  static const Ndis802_11InfrastructureMax = 0x00000003;
}

/// {@category Enum}
class NDIS_802_11_NETWORK_TYPE {
  static const Ndis802_11FH = 0x00000000;
  static const Ndis802_11DS = 0x00000001;
  static const Ndis802_11OFDM5 = 0x00000002;
  static const Ndis802_11OFDM24 = 0x00000003;
  static const Ndis802_11Automode = 0x00000004;
  static const Ndis802_11NetworkTypeMax = 0x00000005;
}

/// {@category Enum}
class NDIS_802_11_POWER_MODE {
  static const Ndis802_11PowerModeCAM = 0x00000000;
  static const Ndis802_11PowerModeMAX_PSP = 0x00000001;
  static const Ndis802_11PowerModeFast_PSP = 0x00000002;
  static const Ndis802_11PowerModeMax = 0x00000003;
}

/// {@category Enum}
class NDIS_802_11_PRIVACY_FILTER {
  static const Ndis802_11PrivFilterAcceptAll = 0x00000000;
  static const Ndis802_11PrivFilter8021xWEP = 0x00000001;
}

/// {@category Enum}
class NDIS_802_11_RADIO_STATUS {
  static const Ndis802_11RadioStatusOn = 0x00000000;
  static const Ndis802_11RadioStatusHardwareOff = 0x00000001;
  static const Ndis802_11RadioStatusSoftwareOff = 0x00000002;
  static const Ndis802_11RadioStatusHardwareSoftwareOff = 0x00000003;
  static const Ndis802_11RadioStatusMax = 0x00000004;
}

/// {@category Enum}
class NDIS_802_11_RELOAD_DEFAULTS {
  static const Ndis802_11ReloadWEPKeys = 0x00000000;
}

/// {@category Enum}
class NDIS_802_11_STATUS_TYPE {
  static const Ndis802_11StatusType_Authentication = 0x00000000;
  static const Ndis802_11StatusType_MediaStreamMode = 0x00000001;
  static const Ndis802_11StatusType_PMKID_CandidateList = 0x00000002;
  static const Ndis802_11StatusTypeMax = 0x00000003;
}

/// {@category Enum}
class NDIS_802_11_WEP_STATUS {
  static const Ndis802_11WEPEnabled = 0x00000000;
  static const Ndis802_11Encryption1Enabled = 0x00000000;
  static const Ndis802_11WEPDisabled = 0x00000001;
  static const Ndis802_11EncryptionDisabled = 0x00000001;
  static const Ndis802_11WEPKeyAbsent = 0x00000002;
  static const Ndis802_11Encryption1KeyAbsent = 0x00000002;
  static const Ndis802_11WEPNotSupported = 0x00000003;
  static const Ndis802_11EncryptionNotSupported = 0x00000003;
  static const Ndis802_11Encryption2Enabled = 0x00000004;
  static const Ndis802_11Encryption2KeyAbsent = 0x00000005;
  static const Ndis802_11Encryption3Enabled = 0x00000006;
  static const Ndis802_11Encryption3KeyAbsent = 0x00000007;
}

/// {@category Enum}
class NDIS_802_5_RING_STATE {
  static const NdisRingStateOpened = 0x00000001;
  static const NdisRingStateClosed = 0x00000002;
  static const NdisRingStateOpening = 0x00000003;
  static const NdisRingStateClosing = 0x00000004;
  static const NdisRingStateOpenFailure = 0x00000005;
  static const NdisRingStateRingFailure = 0x00000006;
}

/// {@category Enum}
class NDIS_DEVICE_POWER_STATE {
  static const NdisDeviceStateUnspecified = 0x00000000;
  static const NdisDeviceStateD0 = 0x00000001;
  static const NdisDeviceStateD1 = 0x00000002;
  static const NdisDeviceStateD2 = 0x00000003;
  static const NdisDeviceStateD3 = 0x00000004;
  static const NdisDeviceStateMaximum = 0x00000005;
}

/// {@category Enum}
class NDIS_FDDI_ATTACHMENT_TYPE {
  static const NdisFddiTypeIsolated = 0x00000001;
  static const NdisFddiTypeLocalA = 0x00000002;
  static const NdisFddiTypeLocalB = 0x00000003;
  static const NdisFddiTypeLocalAB = 0x00000004;
  static const NdisFddiTypeLocalS = 0x00000005;
  static const NdisFddiTypeWrapA = 0x00000006;
  static const NdisFddiTypeWrapB = 0x00000007;
  static const NdisFddiTypeWrapAB = 0x00000008;
  static const NdisFddiTypeWrapS = 0x00000009;
  static const NdisFddiTypeCWrapA = 0x0000000a;
  static const NdisFddiTypeCWrapB = 0x0000000b;
  static const NdisFddiTypeCWrapS = 0x0000000c;
  static const NdisFddiTypeThrough = 0x0000000d;
}

/// {@category Enum}
class NDIS_FDDI_LCONNECTION_STATE {
  static const NdisFddiStateOff = 0x00000001;
  static const NdisFddiStateBreak = 0x00000002;
  static const NdisFddiStateTrace = 0x00000003;
  static const NdisFddiStateConnect = 0x00000004;
  static const NdisFddiStateNext = 0x00000005;
  static const NdisFddiStateSignal = 0x00000006;
  static const NdisFddiStateJoin = 0x00000007;
  static const NdisFddiStateVerify = 0x00000008;
  static const NdisFddiStateActive = 0x00000009;
  static const NdisFddiStateMaintenance = 0x0000000a;
}

/// {@category Enum}
class NDIS_FDDI_RING_MGT_STATE {
  static const NdisFddiRingIsolated = 0x00000001;
  static const NdisFddiRingNonOperational = 0x00000002;
  static const NdisFddiRingOperational = 0x00000003;
  static const NdisFddiRingDetect = 0x00000004;
  static const NdisFddiRingNonOperationalDup = 0x00000005;
  static const NdisFddiRingOperationalDup = 0x00000006;
  static const NdisFddiRingDirected = 0x00000007;
  static const NdisFddiRingTrace = 0x00000008;
}

/// {@category Enum}
class NDIS_HARDWARE_STATUS {
  static const NdisHardwareStatusReady = 0x00000000;
  static const NdisHardwareStatusInitializing = 0x00000001;
  static const NdisHardwareStatusReset = 0x00000002;
  static const NdisHardwareStatusClosing = 0x00000003;
  static const NdisHardwareStatusNotReady = 0x00000004;
}

/// {@category Enum}
class NDIS_INTERRUPT_MODERATION {
  static const NdisInterruptModerationUnknown = 0x00000000;
  static const NdisInterruptModerationNotSupported = 0x00000001;
  static const NdisInterruptModerationEnabled = 0x00000002;
  static const NdisInterruptModerationDisabled = 0x00000003;
}

/// {@category Enum}
class NDIS_MEDIA_STATE {
  static const NdisMediaStateConnected = 0x00000000;
  static const NdisMediaStateDisconnected = 0x00000001;
}

/// {@category Enum}
class NDIS_MEDIUM {
  static const NdisMedium802_3 = 0x00000000;
  static const NdisMedium802_5 = 0x00000001;
  static const NdisMediumFddi = 0x00000002;
  static const NdisMediumWan = 0x00000003;
  static const NdisMediumLocalTalk = 0x00000004;
  static const NdisMediumDix = 0x00000005;
  static const NdisMediumArcnetRaw = 0x00000006;
  static const NdisMediumArcnet878_2 = 0x00000007;
  static const NdisMediumAtm = 0x00000008;
  static const NdisMediumWirelessWan = 0x00000009;
  static const NdisMediumIrda = 0x0000000a;
  static const NdisMediumBpc = 0x0000000b;
  static const NdisMediumCoWan = 0x0000000c;
  static const NdisMedium1394 = 0x0000000d;
  static const NdisMediumInfiniBand = 0x0000000e;
  static const NdisMediumTunnel = 0x0000000f;
  static const NdisMediumNative802_11 = 0x00000010;
  static const NdisMediumLoopback = 0x00000011;
  static const NdisMediumWiMAX = 0x00000012;
  static const NdisMediumIP = 0x00000013;
  static const NdisMediumMax = 0x00000014;
}

/// {@category Enum}
class NDIS_NETWORK_CHANGE_TYPE {
  static const NdisPossibleNetworkChange = 0x00000001;
  static const NdisDefinitelyNetworkChange = 0x00000002;
  static const NdisNetworkChangeFromMediaConnect = 0x00000003;
  static const NdisNetworkChangeMax = 0x00000004;
}

/// {@category Enum}
class NDIS_PHYSICAL_MEDIUM {
  static const NdisPhysicalMediumUnspecified = 0x00000000;
  static const NdisPhysicalMediumWirelessLan = 0x00000001;
  static const NdisPhysicalMediumCableModem = 0x00000002;
  static const NdisPhysicalMediumPhoneLine = 0x00000003;
  static const NdisPhysicalMediumPowerLine = 0x00000004;
  static const NdisPhysicalMediumDSL = 0x00000005;
  static const NdisPhysicalMediumFibreChannel = 0x00000006;
  static const NdisPhysicalMedium1394 = 0x00000007;
  static const NdisPhysicalMediumWirelessWan = 0x00000008;
  static const NdisPhysicalMediumNative802_11 = 0x00000009;
  static const NdisPhysicalMediumBluetooth = 0x0000000a;
  static const NdisPhysicalMediumInfiniband = 0x0000000b;
  static const NdisPhysicalMediumWiMax = 0x0000000c;
  static const NdisPhysicalMediumUWB = 0x0000000d;
  static const NdisPhysicalMedium802_3 = 0x0000000e;
  static const NdisPhysicalMedium802_5 = 0x0000000f;
  static const NdisPhysicalMediumIrda = 0x00000010;
  static const NdisPhysicalMediumWiredWAN = 0x00000011;
  static const NdisPhysicalMediumWiredCoWan = 0x00000012;
  static const NdisPhysicalMediumOther = 0x00000013;
  static const NdisPhysicalMediumNative802_15_4 = 0x00000014;
  static const NdisPhysicalMediumMax = 0x00000015;
}

/// {@category Enum}
class NDIS_PORT_AUTHORIZATION_STATE {
  static const NdisPortAuthorizationUnknown = 0x00000000;
  static const NdisPortAuthorized = 0x00000001;
  static const NdisPortUnauthorized = 0x00000002;
  static const NdisPortReauthorizing = 0x00000003;
}

/// {@category Enum}
class NDIS_PORT_CONTROL_STATE {
  static const NdisPortControlStateUnknown = 0x00000000;
  static const NdisPortControlStateControlled = 0x00000001;
  static const NdisPortControlStateUncontrolled = 0x00000002;
}

/// {@category Enum}
class NDIS_PORT_TYPE {
  static const NdisPortTypeUndefined = 0x00000000;
  static const NdisPortTypeBridge = 0x00000001;
  static const NdisPortTypeRasConnection = 0x00000002;
  static const NdisPortType8021xSupplicant = 0x00000003;
  static const NdisPortTypeMax = 0x00000004;
}

/// {@category Enum}
class NDIS_PROCESSOR_VENDOR {
  static const NdisProcessorVendorUnknown = 0x00000000;
  static const NdisProcessorVendorGenuinIntel = 0x00000001;
  static const NdisProcessorVendorGenuineIntel = 0x00000001;
  static const NdisProcessorVendorAuthenticAMD = 0x00000002;
}

/// {@category Enum}
class NDIS_REQUEST_TYPE {
  static const NdisRequestQueryInformation = 0x00000000;
  static const NdisRequestSetInformation = 0x00000001;
  static const NdisRequestQueryStatistics = 0x00000002;
  static const NdisRequestOpen = 0x00000003;
  static const NdisRequestClose = 0x00000004;
  static const NdisRequestSend = 0x00000005;
  static const NdisRequestTransferData = 0x00000006;
  static const NdisRequestReset = 0x00000007;
  static const NdisRequestGeneric1 = 0x00000008;
  static const NdisRequestGeneric2 = 0x00000009;
  static const NdisRequestGeneric3 = 0x0000000a;
  static const NdisRequestGeneric4 = 0x0000000b;
}

/// {@category Enum}
class NDIS_SUPPORTED_PAUSE_FUNCTIONS {
  static const NdisPauseFunctionsUnsupported = 0x00000000;
  static const NdisPauseFunctionsSendOnly = 0x00000001;
  static const NdisPauseFunctionsReceiveOnly = 0x00000002;
  static const NdisPauseFunctionsSendAndReceive = 0x00000003;
  static const NdisPauseFunctionsUnknown = 0x00000004;
}

/// {@category Enum}
class NDIS_WAN_HEADER_FORMAT {
  static const NdisWanHeaderNative = 0x00000000;
  static const NdisWanHeaderEthernet = 0x00000001;
}

/// {@category Enum}
class NDIS_WAN_MEDIUM_SUBTYPE {
  static const NdisWanMediumHub = 0x00000000;
  static const NdisWanMediumX_25 = 0x00000001;
  static const NdisWanMediumIsdn = 0x00000002;
  static const NdisWanMediumSerial = 0x00000003;
  static const NdisWanMediumFrameRelay = 0x00000004;
  static const NdisWanMediumAtm = 0x00000005;
  static const NdisWanMediumSonet = 0x00000006;
  static const NdisWanMediumSW56K = 0x00000007;
  static const NdisWanMediumPPTP = 0x00000008;
  static const NdisWanMediumL2TP = 0x00000009;
  static const NdisWanMediumIrda = 0x0000000a;
  static const NdisWanMediumParallel = 0x0000000b;
  static const NdisWanMediumPppoe = 0x0000000c;
  static const NdisWanMediumSSTP = 0x0000000d;
  static const NdisWanMediumAgileVPN = 0x0000000e;
  static const NdisWanMediumGre = 0x0000000f;
  static const NdisWanMediumSubTypeMax = 0x00000010;
}

/// {@category Enum}
class NDIS_WAN_QUALITY {
  static const NdisWanRaw = 0x00000000;
  static const NdisWanErrorControl = 0x00000001;
  static const NdisWanReliable = 0x00000002;
}

/// {@category Enum}
class NDK_RDMA_TECHNOLOGY {
  static const NdkUndefined = 0x00000000;
  static const NdkiWarp = 0x00000001;
  static const NdkInfiniBand = 0x00000002;
  static const NdkRoCE = 0x00000003;
  static const NdkRoCEv2 = 0x00000004;
  static const NdkMaxTechnology = 0x00000005;
}

/// {@category Enum}
class OFFLOAD_CONF_ALGO {
  static const OFFLOAD_IPSEC_CONF_NONE = 0x00000000;
  static const OFFLOAD_IPSEC_CONF_DES = 0x00000001;
  static const OFFLOAD_IPSEC_CONF_RESERVED = 0x00000002;
  static const OFFLOAD_IPSEC_CONF_3_DES = 0x00000003;
  static const OFFLOAD_IPSEC_CONF_MAX = 0x00000004;
}

/// {@category Enum}
class OFFLOAD_INTEGRITY_ALGO {
  static const OFFLOAD_IPSEC_INTEGRITY_NONE = 0x00000000;
  static const OFFLOAD_IPSEC_INTEGRITY_MD5 = 0x00000001;
  static const OFFLOAD_IPSEC_INTEGRITY_SHA = 0x00000002;
  static const OFFLOAD_IPSEC_INTEGRITY_MAX = 0x00000003;
}

/// {@category Enum}
class OFFLOAD_OPERATION_E {
  static const AUTHENTICATE = 0x00000001;
  static const ENCRYPT = 0x00000002;
}

/// {@category Enum}
class UDP_ENCAP_TYPE {
  static const OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_IKE = 0x00000000;
  static const OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_OTHER = 0x00000001;
}
