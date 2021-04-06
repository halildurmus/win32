/// {@category Enum}
class CH_DESCRIPTION_TYPE {
  static const ch_description_type_logical = 0x00000001;
  static const ch_description_type_center_frequency = 0x00000002;
  static const ch_description_type_phy_specific = 0x00000003;
}

/// {@category Enum}
class DOT11_AC_PARAM {
  static const dot11_AC_param_BE = 0x00000000;
  static const dot11_AC_param_BK = 0x00000001;
  static const dot11_AC_param_VI = 0x00000002;
  static const dot11_AC_param_VO = 0x00000003;
  static const dot11_AC_param_max = 0x00000004;
}

/// {@category Enum}
class DOT11_ADHOC_AUTH_ALGORITHM {
  static const DOT11_ADHOC_AUTH_ALGO_INVALID = 0xffffffff;
  static const DOT11_ADHOC_AUTH_ALGO_80211_OPEN = 0x00000001;
  static const DOT11_ADHOC_AUTH_ALGO_RSNA_PSK = 0x00000007;
}

/// {@category Enum}
class DOT11_ADHOC_CIPHER_ALGORITHM {
  static const DOT11_ADHOC_CIPHER_ALGO_INVALID = 0xffffffff;
  static const DOT11_ADHOC_CIPHER_ALGO_NONE = 0x00000000;
  static const DOT11_ADHOC_CIPHER_ALGO_CCMP = 0x00000004;
  static const DOT11_ADHOC_CIPHER_ALGO_WEP = 0x00000101;
}

/// {@category Enum}
class DOT11_ADHOC_CONNECT_FAIL_REASON {
  static const DOT11_ADHOC_CONNECT_FAIL_DOMAIN_MISMATCH = 0x00000000;
  static const DOT11_ADHOC_CONNECT_FAIL_PASSPHRASE_MISMATCH = 0x00000001;
  static const DOT11_ADHOC_CONNECT_FAIL_OTHER = 0x00000002;
}

/// {@category Enum}
class DOT11_ADHOC_NETWORK_CONNECTION_STATUS {
  static const DOT11_ADHOC_NETWORK_CONNECTION_STATUS_INVALID = 0x00000000;
  static const DOT11_ADHOC_NETWORK_CONNECTION_STATUS_DISCONNECTED = 0x0000000b;
  static const DOT11_ADHOC_NETWORK_CONNECTION_STATUS_CONNECTING = 0x0000000c;
  static const DOT11_ADHOC_NETWORK_CONNECTION_STATUS_CONNECTED = 0x0000000d;
  static const DOT11_ADHOC_NETWORK_CONNECTION_STATUS_FORMED = 0x0000000e;
}

/// {@category Enum}
class DOT11_ANQP_QUERY_RESULT {
  static const dot11_ANQP_query_result_success = 0x00000000;
  static const dot11_ANQP_query_result_failure = 0x00000001;
  static const dot11_ANQP_query_result_timed_out = 0x00000002;
  static const dot11_ANQP_query_result_resources = 0x00000003;
  static const dot11_ANQP_query_result_advertisement_protocol_not_supported_on_remote =
      0x00000004;
  static const dot11_ANQP_query_result_gas_protocol_failure = 0x00000005;
  static const dot11_ANQP_query_result_advertisement_server_not_responding =
      0x00000006;
  static const dot11_ANQP_query_result_access_issues = 0x00000007;
}

/// {@category Enum}
class DOT11_ASSOCIATION_STATE {
  static const dot11_assoc_state_zero = 0x00000000;
  static const dot11_assoc_state_unauth_unassoc = 0x00000001;
  static const dot11_assoc_state_auth_unassoc = 0x00000002;
  static const dot11_assoc_state_auth_assoc = 0x00000003;
}

/// {@category Enum}
class DOT11_AUTH_ALGORITHM {
  static const DOT11_AUTH_ALGO_80211_OPEN = 0x00000001;
  static const DOT11_AUTH_ALGO_80211_SHARED_KEY = 0x00000002;
  static const DOT11_AUTH_ALGO_WPA = 0x00000003;
  static const DOT11_AUTH_ALGO_WPA_PSK = 0x00000004;
  static const DOT11_AUTH_ALGO_WPA_NONE = 0x00000005;
  static const DOT11_AUTH_ALGO_RSNA = 0x00000006;
  static const DOT11_AUTH_ALGO_RSNA_PSK = 0x00000007;
  static const DOT11_AUTH_ALGO_WPA3 = 0x00000008;
  static const DOT11_AUTH_ALGO_WPA3_SAE = 0x00000009;
  static const DOT11_AUTH_ALGO_OWE = 0x0000000a;
  static const DOT11_AUTH_ALGO_IHV_START = 0x80000000;
  static const DOT11_AUTH_ALGO_IHV_END = 0xffffffff;
}

/// {@category Enum}
class DOT11_BAND {
  static const dot11_band_2p4g = 0x00000001;
  static const dot11_band_4p9g = 0x00000002;
  static const dot11_band_5g = 0x00000003;
}

/// {@category Enum}
class DOT11_BSS_TYPE {
  static const dot11_BSS_type_infrastructure = 0x00000001;
  static const dot11_BSS_type_independent = 0x00000002;
  static const dot11_BSS_type_any = 0x00000003;
}

/// {@category Enum}
class DOT11_CIPHER_ALGORITHM {
  static const DOT11_CIPHER_ALGO_NONE = 0x00000000;
  static const DOT11_CIPHER_ALGO_WEP40 = 0x00000001;
  static const DOT11_CIPHER_ALGO_TKIP = 0x00000002;
  static const DOT11_CIPHER_ALGO_CCMP = 0x00000004;
  static const DOT11_CIPHER_ALGO_WEP104 = 0x00000005;
  static const DOT11_CIPHER_ALGO_BIP = 0x00000006;
  static const DOT11_CIPHER_ALGO_GCMP = 0x00000008;
  static const DOT11_CIPHER_ALGO_GCMP_256 = 0x00000009;
  static const DOT11_CIPHER_ALGO_CCMP_256 = 0x0000000a;
  static const DOT11_CIPHER_ALGO_BIP_GMAC_128 = 0x0000000b;
  static const DOT11_CIPHER_ALGO_BIP_GMAC_256 = 0x0000000c;
  static const DOT11_CIPHER_ALGO_BIP_CMAC_256 = 0x0000000d;
  static const DOT11_CIPHER_ALGO_WPA_USE_GROUP = 0x00000100;
  static const DOT11_CIPHER_ALGO_RSN_USE_GROUP = 0x00000100;
  static const DOT11_CIPHER_ALGO_WEP = 0x00000101;
  static const DOT11_CIPHER_ALGO_IHV_START = 0x80000000;
  static const DOT11_CIPHER_ALGO_IHV_END = 0xffffffff;
}

/// {@category Enum}
class DOT11_DIRECTION {
  static const DOT11_DIR_INBOUND = 0x00000001;
  static const DOT11_DIR_OUTBOUND = 0x00000002;
  static const DOT11_DIR_BOTH = 0x00000003;
}

/// {@category Enum}
class DOT11_DIVERSITY_SUPPORT {
  static const dot11_diversity_support_unknown = 0x00000000;
  static const dot11_diversity_support_fixedlist = 0x00000001;
  static const dot11_diversity_support_notsupported = 0x00000002;
  static const dot11_diversity_support_dynamic = 0x00000003;
}

/// {@category Enum}
class DOT11_DS_INFO {
  static const DOT11_DS_CHANGED = 0x00000000;
  static const DOT11_DS_UNCHANGED = 0x00000001;
  static const DOT11_DS_UNKNOWN = 0x00000002;
}

/// {@category Enum}
class DOT11_HOP_ALGO_ADOPTED {
  static const dot11_hop_algo_current = 0x00000000;
  static const dot11_hop_algo_hop_index = 0x00000001;
  static const dot11_hop_algo_hcc = 0x00000002;
}

/// {@category Enum}
class DOT11_KEY_DIRECTION {
  static const dot11_key_direction_both = 0x00000001;
  static const dot11_key_direction_inbound = 0x00000002;
  static const dot11_key_direction_outbound = 0x00000003;
}

/// {@category Enum}
class DOT11_MANUFACTURING_CALLBACK_TYPE {
  static const dot11_manufacturing_callback_unknown = 0x00000000;
  static const dot11_manufacturing_callback_self_test_complete = 0x00000001;
  static const dot11_manufacturing_callback_sleep_complete = 0x00000002;
  static const dot11_manufacturing_callback_IHV_start = 0x80000000;
  static const dot11_manufacturing_callback_IHV_end = 0xffffffff;
}

/// {@category Enum}
class DOT11_MANUFACTURING_SELF_TEST_TYPE {
  static const DOT11_MANUFACTURING_SELF_TEST_TYPE_INTERFACE = 0x00000001;
  static const DOT11_MANUFACTURING_SELF_TEST_TYPE_RF_INTERFACE = 0x00000002;
  static const DOT11_MANUFACTURING_SELF_TEST_TYPE_BT_COEXISTENCE = 0x00000003;
}

/// {@category Enum}
class DOT11_MANUFACTURING_TEST_TYPE {
  static const dot11_manufacturing_test_unknown = 0x00000000;
  static const dot11_manufacturing_test_self_start = 0x00000001;
  static const dot11_manufacturing_test_self_query_result = 0x00000002;
  static const dot11_manufacturing_test_rx = 0x00000003;
  static const dot11_manufacturing_test_tx = 0x00000004;
  static const dot11_manufacturing_test_query_adc = 0x00000005;
  static const dot11_manufacturing_test_set_data = 0x00000006;
  static const dot11_manufacturing_test_query_data = 0x00000007;
  static const dot11_manufacturing_test_sleep = 0x00000008;
  static const dot11_manufacturing_test_awake = 0x00000009;
  static const dot11_manufacturing_test_IHV_start = 0x80000000;
  static const dot11_manufacturing_test_IHV_end = 0xffffffff;
}

/// {@category Enum}
class DOT11_OFFLOAD_TYPE {
  static const dot11_offload_type_wep = 0x00000001;
  static const dot11_offload_type_auth = 0x00000002;
}

/// {@category Enum}
class DOT11_PHY_TYPE {
  static const dot11_phy_type_unknown = 0x00000000;
  static const dot11_phy_type_any = 0x00000000;
  static const dot11_phy_type_fhss = 0x00000001;
  static const dot11_phy_type_dsss = 0x00000002;
  static const dot11_phy_type_irbaseband = 0x00000003;
  static const dot11_phy_type_ofdm = 0x00000004;
  static const dot11_phy_type_hrdsss = 0x00000005;
  static const dot11_phy_type_erp = 0x00000006;
  static const dot11_phy_type_ht = 0x00000007;
  static const dot11_phy_type_vht = 0x00000008;
  static const dot11_phy_type_dmg = 0x00000009;
  static const dot11_phy_type_he = 0x0000000a;
  static const dot11_phy_type_IHV_start = 0x80000000;
  static const dot11_phy_type_IHV_end = 0xffffffff;
}

/// {@category Enum}
class DOT11_POWER_MODE {
  static const dot11_power_mode_unknown = 0x00000000;
  static const dot11_power_mode_active = 0x00000001;
  static const dot11_power_mode_powersave = 0x00000002;
}

/// {@category Enum}
class DOT11_POWER_MODE_REASON {
  static const dot11_power_mode_reason_no_change = 0x00000000;
  static const dot11_power_mode_reason_noncompliant_AP = 0x00000001;
  static const dot11_power_mode_reason_legacy_WFD_device = 0x00000002;
  static const dot11_power_mode_reason_compliant_AP = 0x00000003;
  static const dot11_power_mode_reason_compliant_WFD_device = 0x00000004;
  static const dot11_power_mode_reason_others = 0x00000005;
}

/// {@category Enum}
class DOT11_RADIO_STATE {
  static const dot11_radio_state_unknown = 0x00000000;
  static const dot11_radio_state_on = 0x00000001;
  static const dot11_radio_state_off = 0x00000002;
}

/// {@category Enum}
class DOT11_RESET_TYPE {
  static const dot11_reset_type_phy = 0x00000001;
  static const dot11_reset_type_mac = 0x00000002;
  static const dot11_reset_type_phy_and_mac = 0x00000003;
}

/// {@category Enum}
class DOT11_SCAN_TYPE {
  static const dot11_scan_type_active = 0x00000001;
  static const dot11_scan_type_passive = 0x00000002;
  static const dot11_scan_type_auto = 0x00000003;
  static const dot11_scan_type_forced = 0x80000000;
}

/// {@category Enum}
class DOT11_TEMP_TYPE {
  static const dot11_temp_type_unknown = 0x00000000;
  static const dot11_temp_type_1 = 0x00000001;
  static const dot11_temp_type_2 = 0x00000002;
}

/// {@category Enum}
class DOT11_UPDATE_IE_OP {
  static const dot11_update_ie_op_create_replace = 0x00000001;
  static const dot11_update_ie_op_delete = 0x00000002;
}

/// {@category Enum}
class DOT11_WFD_DISCOVER_TYPE {
  static const dot11_wfd_discover_type_scan_only = 0x00000001;
  static const dot11_wfd_discover_type_find_only = 0x00000002;
  static const dot11_wfd_discover_type_auto = 0x00000003;
  static const dot11_wfd_discover_type_scan_social_channels = 0x00000004;
  static const dot11_wfd_discover_type_forced = 0x80000000;
}

/// {@category Enum}
class DOT11_WFD_SCAN_TYPE {
  static const dot11_wfd_scan_type_active = 0x00000001;
  static const dot11_wfd_scan_type_passive = 0x00000002;
  static const dot11_wfd_scan_type_auto = 0x00000003;
}

/// {@category Enum}
class DOT11_WPS_CONFIG_METHOD {
  static const DOT11_WPS_CONFIG_METHOD_NULL = 0x00000000;
  static const DOT11_WPS_CONFIG_METHOD_DISPLAY = 0x00000008;
  static const DOT11_WPS_CONFIG_METHOD_NFC_TAG = 0x00000020;
  static const DOT11_WPS_CONFIG_METHOD_NFC_INTERFACE = 0x00000040;
  static const DOT11_WPS_CONFIG_METHOD_PUSHBUTTON = 0x00000080;
  static const DOT11_WPS_CONFIG_METHOD_KEYPAD = 0x00000100;
  static const DOT11_WPS_CONFIG_METHOD_WFDS_DEFAULT = 0x00001000;
}

/// {@category Enum}
class DOT11_WPS_DEVICE_PASSWORD_ID {
  static const DOT11_WPS_PASSWORD_ID_DEFAULT = 0x00000000;
  static const DOT11_WPS_PASSWORD_ID_USER_SPECIFIED = 0x00000001;
  static const DOT11_WPS_PASSWORD_ID_MACHINE_SPECIFIED = 0x00000002;
  static const DOT11_WPS_PASSWORD_ID_REKEY = 0x00000003;
  static const DOT11_WPS_PASSWORD_ID_PUSHBUTTON = 0x00000004;
  static const DOT11_WPS_PASSWORD_ID_REGISTRAR_SPECIFIED = 0x00000005;
  static const DOT11_WPS_PASSWORD_ID_NFC_CONNECTION_HANDOVER = 0x00000007;
  static const DOT11_WPS_PASSWORD_ID_WFD_SERVICES = 0x00000008;
  static const DOT11_WPS_PASSWORD_ID_OOB_RANGE_MIN = 0x00000010;
  static const DOT11_WPS_PASSWORD_ID_OOB_RANGE_MAX = 0x0000ffff;
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
  static const Ndis802_11AuthModeWPA3SAE = 0x00000009;
  static const Ndis802_11AuthModeMax = 0x0000000a;
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
class ONEX_AUTH_IDENTITY {
  static const OneXAuthIdentityNone = 0x00000000;
  static const OneXAuthIdentityMachine = 0x00000001;
  static const OneXAuthIdentityUser = 0x00000002;
  static const OneXAuthIdentityExplicitUser = 0x00000003;
  static const OneXAuthIdentityGuest = 0x00000004;
  static const OneXAuthIdentityInvalid = 0x00000005;
}

/// {@category Enum}
class ONEX_AUTH_RESTART_REASON {
  static const OneXRestartReasonPeerInitiated = 0x00000000;
  static const OneXRestartReasonMsmInitiated = 0x00000001;
  static const OneXRestartReasonOneXHeldStateTimeout = 0x00000002;
  static const OneXRestartReasonOneXAuthTimeout = 0x00000003;
  static const OneXRestartReasonOneXConfigurationChanged = 0x00000004;
  static const OneXRestartReasonOneXUserChanged = 0x00000005;
  static const OneXRestartReasonQuarantineStateChanged = 0x00000006;
  static const OneXRestartReasonAltCredsTrial = 0x00000007;
  static const OneXRestartReasonInvalid = 0x00000008;
}

/// {@category Enum}
class ONEX_AUTH_STATUS {
  static const OneXAuthNotStarted = 0x00000000;
  static const OneXAuthInProgress = 0x00000001;
  static const OneXAuthNoAuthenticatorFound = 0x00000002;
  static const OneXAuthSuccess = 0x00000003;
  static const OneXAuthFailure = 0x00000004;
  static const OneXAuthInvalid = 0x00000005;
}

/// {@category Enum}
class ONEX_EAP_METHOD_BACKEND_SUPPORT {
  static const OneXEapMethodBackendSupportUnknown = 0x00000000;
  static const OneXEapMethodBackendSupported = 0x00000001;
  static const OneXEapMethodBackendUnsupported = 0x00000002;
}

/// {@category Enum}
class ONEX_NOTIFICATION_TYPE {
  static const OneXPublicNotificationBase = 0x00000000;
  static const OneXNotificationTypeResultUpdate = 0x00000001;
  static const OneXNotificationTypeAuthRestarted = 0x00000002;
  static const OneXNotificationTypeEventInvalid = 0x00000003;
  static const OneXNumNotifications = 0x00000003;
}

/// {@category Enum}
class ONEX_REASON_CODE {
  static const ONEX_REASON_CODE_SUCCESS = 0x00000000;
  static const ONEX_REASON_START = 0x00050000;
  static const ONEX_UNABLE_TO_IDENTIFY_USER = 0x00050001;
  static const ONEX_IDENTITY_NOT_FOUND = 0x00050002;
  static const ONEX_UI_DISABLED = 0x00050003;
  static const ONEX_UI_FAILURE = 0x00050004;
  static const ONEX_EAP_FAILURE_RECEIVED = 0x00050005;
  static const ONEX_AUTHENTICATOR_NO_LONGER_PRESENT = 0x00050006;
  static const ONEX_NO_RESPONSE_TO_IDENTITY = 0x00050007;
  static const ONEX_PROFILE_VERSION_NOT_SUPPORTED = 0x00050008;
  static const ONEX_PROFILE_INVALID_LENGTH = 0x00050009;
  static const ONEX_PROFILE_DISALLOWED_EAP_TYPE = 0x0005000a;
  static const ONEX_PROFILE_INVALID_EAP_TYPE_OR_FLAG = 0x0005000b;
  static const ONEX_PROFILE_INVALID_ONEX_FLAGS = 0x0005000c;
  static const ONEX_PROFILE_INVALID_TIMER_VALUE = 0x0005000d;
  static const ONEX_PROFILE_INVALID_SUPPLICANT_MODE = 0x0005000e;
  static const ONEX_PROFILE_INVALID_AUTH_MODE = 0x0005000f;
  static const ONEX_PROFILE_INVALID_EAP_CONNECTION_PROPERTIES = 0x00050010;
  static const ONEX_UI_CANCELLED = 0x00050011;
  static const ONEX_PROFILE_INVALID_EXPLICIT_CREDENTIALS = 0x00050012;
  static const ONEX_PROFILE_EXPIRED_EXPLICIT_CREDENTIALS = 0x00050013;
  static const ONEX_UI_NOT_PERMITTED = 0x00050014;
}

/// {@category Enum}
class UDP_ENCAP_TYPE {
  static const OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_IKE = 0x00000000;
  static const OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_OTHER = 0x00000001;
}

/// {@category Enum}
class WFD_ROLE_TYPE {
  static const WFD_ROLE_TYPE_NONE = 0x00000000;
  static const WFD_ROLE_TYPE_DEVICE = 0x00000001;
  static const WFD_ROLE_TYPE_GROUP_OWNER = 0x00000002;
  static const WFD_ROLE_TYPE_CLIENT = 0x00000004;
  static const WFD_ROLE_TYPE_MAX = 0x00000005;
}

/// {@category Enum}
class WLAN_ADHOC_NETWORK_STATE {
  static const wlan_adhoc_network_state_formed = 0x00000000;
  static const wlan_adhoc_network_state_connected = 0x00000001;
}

/// {@category Enum}
class WLAN_AUTOCONF_OPCODE {
  static const wlan_autoconf_opcode_start = 0x00000000;
  static const wlan_autoconf_opcode_show_denied_networks = 0x00000001;
  static const wlan_autoconf_opcode_power_setting = 0x00000002;
  static const wlan_autoconf_opcode_only_use_gp_profiles_for_allowed_networks =
      0x00000003;
  static const wlan_autoconf_opcode_allow_explicit_creds = 0x00000004;
  static const wlan_autoconf_opcode_block_period = 0x00000005;
  static const wlan_autoconf_opcode_allow_virtual_station_extensibility =
      0x00000006;
  static const wlan_autoconf_opcode_end = 0x00000007;
}

/// {@category Enum}
class WLAN_CONNECTION_MODE {
  static const wlan_connection_mode_profile = 0x00000000;
  static const wlan_connection_mode_temporary_profile = 0x00000001;
  static const wlan_connection_mode_discovery_secure = 0x00000002;
  static const wlan_connection_mode_discovery_unsecure = 0x00000003;
  static const wlan_connection_mode_auto = 0x00000004;
  static const wlan_connection_mode_invalid = 0x00000005;
}

/// {@category Enum}
class WLAN_CONNECTION_NOTIFICATION_DATAFlags {
  static const WLAN_CONNECTION_NOTIFICATION_ADHOC_NETWORK_FORMED = 0x00000001;
  static const WLAN_CONNECTION_NOTIFICATION_CONSOLE_USER_PROFILE = 0x00000004;
}

/// {@category Enum}
class WLAN_FILTER_LIST_TYPE {
  static const wlan_filter_list_type_gp_permit = 0x00000000;
  static const wlan_filter_list_type_gp_deny = 0x00000001;
  static const wlan_filter_list_type_user_permit = 0x00000002;
  static const wlan_filter_list_type_user_deny = 0x00000003;
}

/// {@category Enum}
class WLAN_HOSTED_NETWORK_NOTIFICATION_CODE {
  static const wlan_hosted_network_state_change = 0x00001000;
  static const wlan_hosted_network_peer_state_change = 0x00001001;
  static const wlan_hosted_network_radio_state_change = 0x00001002;
}

/// {@category Enum}
class WLAN_HOSTED_NETWORK_OPCODE {
  static const wlan_hosted_network_opcode_connection_settings = 0x00000000;
  static const wlan_hosted_network_opcode_security_settings = 0x00000001;
  static const wlan_hosted_network_opcode_station_profile = 0x00000002;
  static const wlan_hosted_network_opcode_enable = 0x00000003;
}

/// {@category Enum}
class WLAN_HOSTED_NETWORK_PEER_AUTH_STATE {
  static const wlan_hosted_network_peer_state_invalid = 0x00000000;
  static const wlan_hosted_network_peer_state_authenticated = 0x00000001;
}

/// {@category Enum}
class WLAN_HOSTED_NETWORK_REASON {
  static const wlan_hosted_network_reason_success = 0x00000000;
  static const wlan_hosted_network_reason_unspecified = 0x00000001;
  static const wlan_hosted_network_reason_bad_parameters = 0x00000002;
  static const wlan_hosted_network_reason_service_shutting_down = 0x00000003;
  static const wlan_hosted_network_reason_insufficient_resources = 0x00000004;
  static const wlan_hosted_network_reason_elevation_required = 0x00000005;
  static const wlan_hosted_network_reason_read_only = 0x00000006;
  static const wlan_hosted_network_reason_persistence_failed = 0x00000007;
  static const wlan_hosted_network_reason_crypt_error = 0x00000008;
  static const wlan_hosted_network_reason_impersonation = 0x00000009;
  static const wlan_hosted_network_reason_stop_before_start = 0x0000000a;
  static const wlan_hosted_network_reason_interface_available = 0x0000000b;
  static const wlan_hosted_network_reason_interface_unavailable = 0x0000000c;
  static const wlan_hosted_network_reason_miniport_stopped = 0x0000000d;
  static const wlan_hosted_network_reason_miniport_started = 0x0000000e;
  static const wlan_hosted_network_reason_incompatible_connection_started =
      0x0000000f;
  static const wlan_hosted_network_reason_incompatible_connection_stopped =
      0x00000010;
  static const wlan_hosted_network_reason_user_action = 0x00000011;
  static const wlan_hosted_network_reason_client_abort = 0x00000012;
  static const wlan_hosted_network_reason_ap_start_failed = 0x00000013;
  static const wlan_hosted_network_reason_peer_arrived = 0x00000014;
  static const wlan_hosted_network_reason_peer_departed = 0x00000015;
  static const wlan_hosted_network_reason_peer_timeout = 0x00000016;
  static const wlan_hosted_network_reason_gp_denied = 0x00000017;
  static const wlan_hosted_network_reason_service_unavailable = 0x00000018;
  static const wlan_hosted_network_reason_device_change = 0x00000019;
  static const wlan_hosted_network_reason_properties_change = 0x0000001a;
  static const wlan_hosted_network_reason_virtual_station_blocking_use =
      0x0000001b;
  static const wlan_hosted_network_reason_service_available_on_virtual_station =
      0x0000001c;
}

/// {@category Enum}
class WLAN_HOSTED_NETWORK_STATE {
  static const wlan_hosted_network_unavailable = 0x00000000;
  static const wlan_hosted_network_idle = 0x00000001;
  static const wlan_hosted_network_active = 0x00000002;
}

/// {@category Enum}
class WLAN_IHV_CONTROL_TYPE {
  static const wlan_ihv_control_type_service = 0x00000000;
  static const wlan_ihv_control_type_driver = 0x00000001;
}

/// {@category Enum}
class WLAN_INTERFACE_STATE {
  static const wlan_interface_state_not_ready = 0x00000000;
  static const wlan_interface_state_connected = 0x00000001;
  static const wlan_interface_state_ad_hoc_network_formed = 0x00000002;
  static const wlan_interface_state_disconnecting = 0x00000003;
  static const wlan_interface_state_disconnected = 0x00000004;
  static const wlan_interface_state_associating = 0x00000005;
  static const wlan_interface_state_discovering = 0x00000006;
  static const wlan_interface_state_authenticating = 0x00000007;
}

/// {@category Enum}
class WLAN_INTERFACE_TYPE {
  static const wlan_interface_type_emulated_802_11 = 0x00000000;
  static const wlan_interface_type_native_802_11 = 0x00000001;
  static const wlan_interface_type_invalid = 0x00000002;
}

/// {@category Enum}
class WLAN_INTF_OPCODE {
  static const wlan_intf_opcode_autoconf_start = 0x00000000;
  static const wlan_intf_opcode_autoconf_enabled = 0x00000001;
  static const wlan_intf_opcode_background_scan_enabled = 0x00000002;
  static const wlan_intf_opcode_media_streaming_mode = 0x00000003;
  static const wlan_intf_opcode_radio_state = 0x00000004;
  static const wlan_intf_opcode_bss_type = 0x00000005;
  static const wlan_intf_opcode_interface_state = 0x00000006;
  static const wlan_intf_opcode_current_connection = 0x00000007;
  static const wlan_intf_opcode_channel_number = 0x00000008;
  static const wlan_intf_opcode_supported_infrastructure_auth_cipher_pairs =
      0x00000009;
  static const wlan_intf_opcode_supported_adhoc_auth_cipher_pairs = 0x0000000a;
  static const wlan_intf_opcode_supported_country_or_region_string_list =
      0x0000000b;
  static const wlan_intf_opcode_current_operation_mode = 0x0000000c;
  static const wlan_intf_opcode_supported_safe_mode = 0x0000000d;
  static const wlan_intf_opcode_certified_safe_mode = 0x0000000e;
  static const wlan_intf_opcode_hosted_network_capable = 0x0000000f;
  static const wlan_intf_opcode_management_frame_protection_capable =
      0x00000010;
  static const wlan_intf_opcode_autoconf_end = 0x0fffffff;
  static const wlan_intf_opcode_msm_start = 0x10000100;
  static const wlan_intf_opcode_statistics = 0x10000101;
  static const wlan_intf_opcode_rssi = 0x10000102;
  static const wlan_intf_opcode_msm_end = 0x1fffffff;
  static const wlan_intf_opcode_security_start = 0x20010000;
  static const wlan_intf_opcode_security_end = 0x2fffffff;
  static const wlan_intf_opcode_ihv_start = 0x30000000;
  static const wlan_intf_opcode_ihv_end = 0x3fffffff;
}

/// {@category Enum}
class WLAN_NOTIFICATION_ACM {
  static const wlan_notification_acm_start = 0x00000000;
  static const wlan_notification_acm_autoconf_enabled = 0x00000001;
  static const wlan_notification_acm_autoconf_disabled = 0x00000002;
  static const wlan_notification_acm_background_scan_enabled = 0x00000003;
  static const wlan_notification_acm_background_scan_disabled = 0x00000004;
  static const wlan_notification_acm_bss_type_change = 0x00000005;
  static const wlan_notification_acm_power_setting_change = 0x00000006;
  static const wlan_notification_acm_scan_complete = 0x00000007;
  static const wlan_notification_acm_scan_fail = 0x00000008;
  static const wlan_notification_acm_connection_start = 0x00000009;
  static const wlan_notification_acm_connection_complete = 0x0000000a;
  static const wlan_notification_acm_connection_attempt_fail = 0x0000000b;
  static const wlan_notification_acm_filter_list_change = 0x0000000c;
  static const wlan_notification_acm_interface_arrival = 0x0000000d;
  static const wlan_notification_acm_interface_removal = 0x0000000e;
  static const wlan_notification_acm_profile_change = 0x0000000f;
  static const wlan_notification_acm_profile_name_change = 0x00000010;
  static const wlan_notification_acm_profiles_exhausted = 0x00000011;
  static const wlan_notification_acm_network_not_available = 0x00000012;
  static const wlan_notification_acm_network_available = 0x00000013;
  static const wlan_notification_acm_disconnecting = 0x00000014;
  static const wlan_notification_acm_disconnected = 0x00000015;
  static const wlan_notification_acm_adhoc_network_state_change = 0x00000016;
  static const wlan_notification_acm_profile_unblocked = 0x00000017;
  static const wlan_notification_acm_screen_power_change = 0x00000018;
  static const wlan_notification_acm_profile_blocked = 0x00000019;
  static const wlan_notification_acm_scan_list_refresh = 0x0000001a;
  static const wlan_notification_acm_operational_state_change = 0x0000001b;
  static const wlan_notification_acm_end = 0x0000001c;
}

/// {@category Enum}
class WLAN_NOTIFICATION_MSM {
  static const wlan_notification_msm_start = 0x00000000;
  static const wlan_notification_msm_associating = 0x00000001;
  static const wlan_notification_msm_associated = 0x00000002;
  static const wlan_notification_msm_authenticating = 0x00000003;
  static const wlan_notification_msm_connected = 0x00000004;
  static const wlan_notification_msm_roaming_start = 0x00000005;
  static const wlan_notification_msm_roaming_end = 0x00000006;
  static const wlan_notification_msm_radio_state_change = 0x00000007;
  static const wlan_notification_msm_signal_quality_change = 0x00000008;
  static const wlan_notification_msm_disassociating = 0x00000009;
  static const wlan_notification_msm_disconnected = 0x0000000a;
  static const wlan_notification_msm_peer_join = 0x0000000b;
  static const wlan_notification_msm_peer_leave = 0x0000000c;
  static const wlan_notification_msm_adapter_removal = 0x0000000d;
  static const wlan_notification_msm_adapter_operation_mode_change = 0x0000000e;
  static const wlan_notification_msm_link_degraded = 0x0000000f;
  static const wlan_notification_msm_link_improved = 0x00000010;
  static const wlan_notification_msm_end = 0x00000011;
}

/// {@category Enum}
class WLAN_NOTIFICATION_SECURITY {
  static const wlan_notification_security_start = 0x00000000;
  static const wlan_notification_security_end = 0x00000001;
}

/// {@category Enum}
class WLAN_OPCODE_VALUE_TYPE {
  static const wlan_opcode_value_type_query_only = 0x00000000;
  static const wlan_opcode_value_type_set_by_group_policy = 0x00000001;
  static const wlan_opcode_value_type_set_by_user = 0x00000002;
  static const wlan_opcode_value_type_invalid = 0x00000003;
}

/// {@category Enum}
class WLAN_OPERATIONAL_STATE {
  static const wlan_operational_state_unknown = 0x00000000;
  static const wlan_operational_state_off = 0x00000001;
  static const wlan_operational_state_on = 0x00000002;
  static const wlan_operational_state_going_off = 0x00000003;
  static const wlan_operational_state_going_on = 0x00000004;
}

/// {@category Enum}
class WLAN_POWER_SETTING {
  static const wlan_power_setting_no_saving = 0x00000000;
  static const wlan_power_setting_low_saving = 0x00000001;
  static const wlan_power_setting_medium_saving = 0x00000002;
  static const wlan_power_setting_maximum_saving = 0x00000003;
  static const wlan_power_setting_invalid = 0x00000004;
}

/// {@category Enum}
class WLAN_SECURABLE_OBJECT {
  static const wlan_secure_permit_list = 0x00000000;
  static const wlan_secure_deny_list = 0x00000001;
  static const wlan_secure_ac_enabled = 0x00000002;
  static const wlan_secure_bc_scan_enabled = 0x00000003;
  static const wlan_secure_bss_type = 0x00000004;
  static const wlan_secure_show_denied = 0x00000005;
  static const wlan_secure_interface_properties = 0x00000006;
  static const wlan_secure_ihv_control = 0x00000007;
  static const wlan_secure_all_user_profiles_order = 0x00000008;
  static const wlan_secure_add_new_all_user_profiles = 0x00000009;
  static const wlan_secure_add_new_per_user_profiles = 0x0000000a;
  static const wlan_secure_media_streaming_mode_enabled = 0x0000000b;
  static const wlan_secure_current_operation_mode = 0x0000000c;
  static const wlan_secure_get_plaintext_key = 0x0000000d;
  static const wlan_secure_hosted_network_elevated_access = 0x0000000e;
  static const wlan_secure_virtual_station_extensibility = 0x0000000f;
  static const wlan_secure_wfd_elevated_access = 0x00000010;
  static const WLAN_SECURABLE_OBJECT_COUNT = 0x00000011;
}

/// {@category Enum}
class WL_DISPLAY_PAGES {
  static const WLConnectionPage = 0x00000000;
  static const WLSecurityPage = 0x00000001;
  static const WLAdvPage = 0x00000002;
}

/// {@category Enum}
class WlanSetProfileEap_dwFlags {
  static const WLAN_SET_EAPHOST_DATA_ALL_USERS = 0x00000001;
}
