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
import '../../networkmanagement/ndis/callbacks.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/ndis/structs.g.dart';
import '../../networkmanagement/wifi/structs.g.dart';
import '../../security/extensibleauthenticationprotocol/structs.g.dart';
import '../../networkmanagement/iphelper/structs.g.dart';

/// {@category Struct}
class BSSID_INFO extends Struct {
  @Array(6)
  external Array<Uint8> BSSID;

  @Array(16)
  external Array<Uint8> PMKID;
}

/// {@category Struct}
class DOT11EXT_APIS extends Struct {
  external Pointer<NativeFunction<DOT11EXT_ALLOCATE_BUFFER>>
      Dot11ExtAllocateBuffer;

  external Pointer<NativeFunction<DOT11EXT_FREE_BUFFER>> Dot11ExtFreeBuffer;

  external Pointer<NativeFunction<DOT11EXT_SET_PROFILE_CUSTOM_USER_DATA>>
      Dot11ExtSetProfileCustomUserData;

  external Pointer<NativeFunction<DOT11EXT_GET_PROFILE_CUSTOM_USER_DATA>>
      Dot11ExtGetProfileCustomUserData;

  external Pointer<NativeFunction<DOT11EXT_SET_CURRENT_PROFILE>>
      Dot11ExtSetCurrentProfile;

  external Pointer<NativeFunction<DOT11EXT_SEND_UI_REQUEST>>
      Dot11ExtSendUIRequest;

  external Pointer<NativeFunction<DOT11EXT_PRE_ASSOCIATE_COMPLETION>>
      Dot11ExtPreAssociateCompletion;

  external Pointer<NativeFunction<DOT11EXT_POST_ASSOCIATE_COMPLETION>>
      Dot11ExtPostAssociateCompletion;

  external Pointer<NativeFunction<DOT11EXT_SEND_NOTIFICATION>>
      Dot11ExtSendNotification;

  external Pointer<NativeFunction<DOT11EXT_SEND_PACKET>> Dot11ExtSendPacket;

  external Pointer<NativeFunction<DOT11EXT_SET_ETHERTYPE_HANDLING>>
      Dot11ExtSetEtherTypeHandling;

  external Pointer<NativeFunction<DOT11EXT_SET_AUTH_ALGORITHM>>
      Dot11ExtSetAuthAlgorithm;

  external Pointer<NativeFunction<DOT11EXT_SET_UNICAST_CIPHER_ALGORITHM>>
      Dot11ExtSetUnicastCipherAlgorithm;

  external Pointer<NativeFunction<DOT11EXT_SET_MULTICAST_CIPHER_ALGORITHM>>
      Dot11ExtSetMulticastCipherAlgorithm;

  external Pointer<NativeFunction<DOT11EXT_SET_DEFAULT_KEY>>
      Dot11ExtSetDefaultKey;

  external Pointer<NativeFunction<DOT11EXT_SET_KEY_MAPPING_KEY>>
      Dot11ExtSetKeyMappingKey;

  external Pointer<NativeFunction<DOT11EXT_SET_DEFAULT_KEY_ID>>
      Dot11ExtSetDefaultKeyId;

  external Pointer<NativeFunction<DOT11EXT_NIC_SPECIFIC_EXTENSION>>
      Dot11ExtNicSpecificExtension;

  external Pointer<NativeFunction<DOT11EXT_SET_EXCLUDE_UNENCRYPTED>>
      Dot11ExtSetExcludeUnencrypted;

  external Pointer<NativeFunction<DOT11EXT_ONEX_START>> Dot11ExtStartOneX;

  external Pointer<NativeFunction<DOT11EXT_ONEX_STOP>> Dot11ExtStopOneX;

  external Pointer<NativeFunction<DOT11EXT_PROCESS_ONEX_PACKET>>
      Dot11ExtProcessSecurityPacket;
}

/// {@category Struct}
class DOT11EXT_IHV_CONNECTIVITY_PROFILE extends Struct {
  external Pointer<Utf16> pszXmlFragmentIhvConnectivity;
}

/// {@category Struct}
class DOT11EXT_IHV_DISCOVERY_PROFILE extends Struct {
  external DOT11EXT_IHV_CONNECTIVITY_PROFILE IhvConnectivityProfile;

  external DOT11EXT_IHV_SECURITY_PROFILE IhvSecurityProfile;
}

/// {@category Struct}
class DOT11EXT_IHV_DISCOVERY_PROFILE_LIST extends Struct {
  @Uint32()
  external int dwCount;

  external Pointer<DOT11EXT_IHV_DISCOVERY_PROFILE> pIhvDiscoveryProfiles;
}

/// {@category Struct}
class DOT11EXT_IHV_HANDLERS extends Struct {
  external Pointer<NativeFunction<DOT11EXTIHV_DEINIT_SERVICE>>
      Dot11ExtIhvDeinitService;

  external Pointer<NativeFunction<DOT11EXTIHV_INIT_ADAPTER>>
      Dot11ExtIhvInitAdapter;

  external Pointer<NativeFunction<DOT11EXTIHV_DEINIT_ADAPTER>>
      Dot11ExtIhvDeinitAdapter;

  external Pointer<NativeFunction<DOT11EXTIHV_PERFORM_PRE_ASSOCIATE>>
      Dot11ExtIhvPerformPreAssociate;

  external Pointer<NativeFunction<DOT11EXTIHV_ADAPTER_RESET>>
      Dot11ExtIhvAdapterReset;

  external Pointer<NativeFunction<DOT11EXTIHV_PERFORM_POST_ASSOCIATE>>
      Dot11ExtIhvPerformPostAssociate;

  external Pointer<NativeFunction<DOT11EXTIHV_STOP_POST_ASSOCIATE>>
      Dot11ExtIhvStopPostAssociate;

  external Pointer<NativeFunction<DOT11EXTIHV_VALIDATE_PROFILE>>
      Dot11ExtIhvValidateProfile;

  external Pointer<NativeFunction<DOT11EXTIHV_PERFORM_CAPABILITY_MATCH>>
      Dot11ExtIhvPerformCapabilityMatch;

  external Pointer<NativeFunction<DOT11EXTIHV_CREATE_DISCOVERY_PROFILES>>
      Dot11ExtIhvCreateDiscoveryProfiles;

  external Pointer<NativeFunction<DOT11EXTIHV_PROCESS_SESSION_CHANGE>>
      Dot11ExtIhvProcessSessionChange;

  external Pointer<NativeFunction<DOT11EXTIHV_RECEIVE_INDICATION>>
      Dot11ExtIhvReceiveIndication;

  external Pointer<NativeFunction<DOT11EXTIHV_RECEIVE_PACKET>>
      Dot11ExtIhvReceivePacket;

  external Pointer<NativeFunction<DOT11EXTIHV_SEND_PACKET_COMPLETION>>
      Dot11ExtIhvSendPacketCompletion;

  external Pointer<NativeFunction<DOT11EXTIHV_IS_UI_REQUEST_PENDING>>
      Dot11ExtIhvIsUIRequestPending;

  external Pointer<NativeFunction<DOT11EXTIHV_PROCESS_UI_RESPONSE>>
      Dot11ExtIhvProcessUIResponse;

  external Pointer<NativeFunction<DOT11EXTIHV_QUERY_UI_REQUEST>>
      Dot11ExtIhvQueryUIRequest;

  external Pointer<NativeFunction<DOT11EXTIHV_ONEX_INDICATE_RESULT>>
      Dot11ExtIhvOnexIndicateResult;

  external Pointer<NativeFunction<DOT11EXTIHV_CONTROL>> Dot11ExtIhvControl;
}

/// {@category Struct}
class DOT11EXT_IHV_PARAMS extends Struct {
  external DOT11EXT_IHV_PROFILE_PARAMS dot11ExtIhvProfileParams;

  @Array(256)
  external Array<Uint16> _wstrProfileName;

  String get wstrProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wstrProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wstrProfileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wstrProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwProfileTypeFlags;

  external GUID interfaceGuid;
}

/// {@category Struct}
class DOT11EXT_IHV_PROFILE_PARAMS extends Struct {
  external Pointer<DOT11EXT_IHV_SSID_LIST> pSsidList;

  @Int32()
  external int BssType;

  external Pointer<DOT11_MSSECURITY_SETTINGS> pMSSecuritySettings;
}

/// {@category Struct}
class DOT11EXT_IHV_SECURITY_PROFILE extends Struct {
  external Pointer<Utf16> pszXmlFragmentIhvSecurity;

  @Int32()
  external int bUseMSOnex;
}

/// {@category Struct}
class DOT11EXT_IHV_SSID_LIST extends Struct {
  @Uint32()
  external int ulCount;

  @Array(1)
  external Array<DOT11_SSID> SSIDs;
}

/// {@category Struct}
class DOT11EXT_IHV_UI_REQUEST extends Struct {
  @Uint32()
  external int dwSessionId;

  external GUID guidUIRequest;

  external GUID UIPageClsid;

  @Uint32()
  external int dwByteCount;

  external Pointer<Uint8> pvUIRequest;
}

/// {@category Struct}
class DOT11EXT_VIRTUAL_STATION_APIS extends Struct {
  external Pointer<NativeFunction<DOT11EXT_REQUEST_VIRTUAL_STATION>>
      Dot11ExtRequestVirtualStation;

  external Pointer<NativeFunction<DOT11EXT_RELEASE_VIRTUAL_STATION>>
      Dot11ExtReleaseVirtualStation;

  external Pointer<NativeFunction<DOT11EXT_QUERY_VIRTUAL_STATION_PROPERTIES>>
      Dot11ExtQueryVirtualStationProperties;

  external Pointer<NativeFunction<DOT11EXT_SET_VIRTUAL_STATION_AP_PROPERTIES>>
      Dot11ExtSetVirtualStationAPProperties;
}

/// {@category Struct}
class DOT11EXT_VIRTUAL_STATION_AP_PROPERTY extends Struct {
  external DOT11_SSID dot11SSID;

  @Int32()
  external int dot11AuthAlgo;

  @Int32()
  external int dot11CipherAlgo;

  @Int32()
  external int bIsPassPhrase;

  @Uint32()
  external int dwKeyLength;

  @Array(64)
  external Array<Uint8> ucKeyData;
}

/// {@category Struct}
class DOT11_ADAPTER extends Struct {
  external GUID gAdapterId;

  external Pointer<Utf16> pszDescription;

  external DOT11_CURRENT_OPERATION_MODE Dot11CurrentOpMode;
}

/// {@category Struct}
class DOT11_BSS_LIST extends Struct {
  @Uint32()
  external int uNumOfBytes;

  external Pointer<Uint8> pucBuffer;
}

/// {@category Struct}
class DOT11_EAP_RESULT extends Struct {
  @Uint32()
  external int dwFailureReasonCode;

  external Pointer<EAP_ATTRIBUTES> pAttribArray;
}

/// {@category Struct}
class DOT11_IHV_VERSION_INFO extends Struct {
  @Uint32()
  external int dwVerMin;

  @Uint32()
  external int dwVerMax;
}

/// {@category Struct}
class DOT11_MSONEX_RESULT_PARAMS extends Struct {
  @Int32()
  external int Dot11OnexAuthStatus;

  @Int32()
  external int Dot11OneXReasonCode;

  external Pointer<Uint8> pbMPPESendKey;

  @Uint32()
  external int dwMPPESendKeyLen;

  external Pointer<Uint8> pbMPPERecvKey;

  @Uint32()
  external int dwMPPERecvKeyLen;

  external Pointer<DOT11_EAP_RESULT> pDot11EapResult;
}

/// {@category Struct}
class DOT11_MSSECURITY_SETTINGS extends Struct {
  @Int32()
  external int dot11AuthAlgorithm;

  @Int32()
  external int dot11CipherAlgorithm;

  @Int32()
  external int fOneXEnabled;

  external EAP_METHOD_TYPE eapMethodType;

  @Uint32()
  external int dwEapConnectionDataLen;

  external Pointer<Uint8> pEapConnectionData;
}

/// {@category Struct}
class DOT11_PORT_STATE extends Struct {
  @Array(6)
  external Array<Uint8> PeerMacAddress;

  @Uint32()
  external int uSessionId;

  @Int32()
  external int bPortControlled;

  @Int32()
  external int bPortAuthorized;
}

/// {@category Struct}
@Packed(1)
class DOT11_SECURITY_PACKET_HEADER extends Struct {
  @Array(6)
  external Array<Uint8> PeerMac;

  @Uint16()
  external int usEtherType;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class GEN_GET_NETCARD_TIME extends Struct {
  @Uint64()
  external int ReadTime;
}

/// {@category Struct}
class GEN_GET_TIME_CAPS extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int ClockPrecision;
}

/// {@category Struct}
class NDIS_802_11_AI_REQFI extends Struct {
  @Uint16()
  external int Capabilities;

  @Uint16()
  external int ListenInterval;

  @Array(6)
  external Array<Uint8> CurrentAPAddress;
}

/// {@category Struct}
class NDIS_802_11_AI_RESFI extends Struct {
  @Uint16()
  external int Capabilities;

  @Uint16()
  external int StatusCode;

  @Uint16()
  external int AssociationId;
}

/// {@category Struct}
class NDIS_802_11_ASSOCIATION_INFORMATION extends Struct {
  @Uint32()
  external int Length;

  @Uint16()
  external int AvailableRequestFixedIEs;

  external NDIS_802_11_AI_REQFI RequestFixedIEs;

  @Uint32()
  external int RequestIELength;

  @Uint32()
  external int OffsetRequestIEs;

  @Uint16()
  external int AvailableResponseFixedIEs;

  external NDIS_802_11_AI_RESFI ResponseFixedIEs;

  @Uint32()
  external int ResponseIELength;

  @Uint32()
  external int OffsetResponseIEs;
}

/// {@category Struct}
class NDIS_802_11_AUTHENTICATION_ENCRYPTION extends Struct {
  @Int32()
  external int AuthModeSupported;

  @Int32()
  external int EncryptStatusSupported;
}

/// {@category Struct}
class NDIS_802_11_AUTHENTICATION_EVENT extends Struct {
  external NDIS_802_11_STATUS_INDICATION Status;

  @Array(1)
  external Array<NDIS_802_11_AUTHENTICATION_REQUEST> Request;
}

/// {@category Struct}
class NDIS_802_11_AUTHENTICATION_REQUEST extends Struct {
  @Uint32()
  external int Length;

  @Array(6)
  external Array<Uint8> Bssid;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class NDIS_802_11_BSSID_LIST extends Struct {
  @Uint32()
  external int NumberOfItems;

  @Array(1)
  external Array<NDIS_WLAN_BSSID> Bssid;
}

/// {@category Struct}
class NDIS_802_11_BSSID_LIST_EX extends Struct {
  @Uint32()
  external int NumberOfItems;

  @Array(1)
  external Array<NDIS_WLAN_BSSID_EX> Bssid;
}

/// {@category Struct}
class NDIS_802_11_CAPABILITY extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Version;

  @Uint32()
  external int NoOfPMKIDs;

  @Uint32()
  external int NoOfAuthEncryptPairsSupported;

  @Array(1)
  external Array<NDIS_802_11_AUTHENTICATION_ENCRYPTION>
      AuthenticationEncryptionSupported;
}

/// {@category Struct}
class NDIS_802_11_CONFIGURATION extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int BeaconPeriod;

  @Uint32()
  external int ATIMWindow;

  @Uint32()
  external int DSConfig;

  external NDIS_802_11_CONFIGURATION_FH FHConfig;
}

/// {@category Struct}
class NDIS_802_11_CONFIGURATION_FH extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int HopPattern;

  @Uint32()
  external int HopSet;

  @Uint32()
  external int DwellTime;
}

/// {@category Struct}
class NDIS_802_11_FIXED_IEs extends Struct {
  @Array(8)
  external Array<Uint8> Timestamp;

  @Uint16()
  external int BeaconInterval;

  @Uint16()
  external int Capabilities;
}

/// {@category Struct}
class NDIS_802_11_KEY extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int KeyIndex;

  @Uint32()
  external int KeyLength;

  @Array(6)
  external Array<Uint8> BSSID;

  @Uint64()
  external int KeyRSC;

  @Array(1)
  external Array<Uint8> KeyMaterial;
}

/// {@category Struct}
class NDIS_802_11_NETWORK_TYPE_LIST extends Struct {
  @Uint32()
  external int NumberOfItems;

  @Array(1)
  external Array<Int32> NetworkType;
}

/// {@category Struct}
class NDIS_802_11_NON_BCAST_SSID_LIST extends Struct {
  @Uint32()
  external int NumberOfItems;

  @Array(1)
  external Array<NDIS_802_11_SSID> Non_Bcast_Ssid;
}

/// {@category Struct}
class NDIS_802_11_PMKID extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int BSSIDInfoCount;

  @Array(1)
  external Array<BSSID_INFO> BSSIDInfo;
}

/// {@category Struct}
class NDIS_802_11_PMKID_CANDIDATE_LIST extends Struct {
  @Uint32()
  external int Version;

  @Uint32()
  external int NumCandidates;

  @Array(1)
  external Array<PMKID_CANDIDATE> CandidateList;
}

/// {@category Struct}
class NDIS_802_11_REMOVE_KEY extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int KeyIndex;

  @Array(6)
  external Array<Uint8> BSSID;
}

/// {@category Struct}
class NDIS_802_11_SSID extends Struct {
  @Uint32()
  external int SsidLength;

  @Array(32)
  external Array<Uint8> Ssid;
}

/// {@category Struct}
class NDIS_802_11_STATISTICS extends Struct {
  @Uint32()
  external int Length;

  @Int64()
  external int TransmittedFragmentCount;

  @Int64()
  external int MulticastTransmittedFrameCount;

  @Int64()
  external int FailedCount;

  @Int64()
  external int RetryCount;

  @Int64()
  external int MultipleRetryCount;

  @Int64()
  external int RTSSuccessCount;

  @Int64()
  external int RTSFailureCount;

  @Int64()
  external int ACKFailureCount;

  @Int64()
  external int FrameDuplicateCount;

  @Int64()
  external int ReceivedFragmentCount;

  @Int64()
  external int MulticastReceivedFrameCount;

  @Int64()
  external int FCSErrorCount;

  @Int64()
  external int TKIPLocalMICFailures;

  @Int64()
  external int TKIPICVErrorCount;

  @Int64()
  external int TKIPCounterMeasuresInvoked;

  @Int64()
  external int TKIPReplays;

  @Int64()
  external int CCMPFormatErrors;

  @Int64()
  external int CCMPReplays;

  @Int64()
  external int CCMPDecryptErrors;

  @Int64()
  external int FourWayHandshakeFailures;

  @Int64()
  external int WEPUndecryptableCount;

  @Int64()
  external int WEPICVErrorCount;

  @Int64()
  external int DecryptSuccessCount;

  @Int64()
  external int DecryptFailureCount;
}

/// {@category Struct}
class NDIS_802_11_STATUS_INDICATION extends Struct {
  @Int32()
  external int StatusType;
}

/// {@category Struct}
class NDIS_802_11_TEST extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Type;

  external _NDIS_802_11_TEST__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _NDIS_802_11_TEST__Anonymous_e__Union extends Union {
  external NDIS_802_11_AUTHENTICATION_EVENT AuthenticationEvent;

  @Int32()
  external int RssiTrigger;
}

extension NDIS_802_11_TEST_Extension on NDIS_802_11_TEST {
  NDIS_802_11_AUTHENTICATION_EVENT get AuthenticationEvent =>
      this.Anonymous.AuthenticationEvent;
  set AuthenticationEvent(NDIS_802_11_AUTHENTICATION_EVENT value) =>
      this.Anonymous.AuthenticationEvent = value;

  int get RssiTrigger => this.Anonymous.RssiTrigger;
  set RssiTrigger(int value) => this.Anonymous.RssiTrigger = value;
}

/// {@category Struct}
class NDIS_802_11_VARIABLE_IEs extends Struct {
  @Uint8()
  external int ElementID;

  @Uint8()
  external int Length;

  @Array(1)
  external Array<Uint8> data;
}

/// {@category Struct}
class NDIS_802_11_WEP extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int KeyIndex;

  @Uint32()
  external int KeyLength;

  @Array(1)
  external Array<Uint8> KeyMaterial;
}

/// {@category Struct}
class NDIS_CO_DEVICE_PROFILE extends Struct {
  external NDIS_VAR_DATA_DESC DeviceDescription;

  external NDIS_VAR_DATA_DESC DevSpecificInfo;

  @Uint32()
  external int ulTAPISupplementaryPassThru;

  @Uint32()
  external int ulAddressModes;

  @Uint32()
  external int ulNumAddresses;

  @Uint32()
  external int ulBearerModes;

  @Uint32()
  external int ulMaxTxRate;

  @Uint32()
  external int ulMinTxRate;

  @Uint32()
  external int ulMaxRxRate;

  @Uint32()
  external int ulMinRxRate;

  @Uint32()
  external int ulMediaModes;

  @Uint32()
  external int ulGenerateToneModes;

  @Uint32()
  external int ulGenerateToneMaxNumFreq;

  @Uint32()
  external int ulGenerateDigitModes;

  @Uint32()
  external int ulMonitorToneMaxNumFreq;

  @Uint32()
  external int ulMonitorToneMaxNumEntries;

  @Uint32()
  external int ulMonitorDigitModes;

  @Uint32()
  external int ulGatherDigitsMinTimeout;

  @Uint32()
  external int ulGatherDigitsMaxTimeout;

  @Uint32()
  external int ulDevCapFlags;

  @Uint32()
  external int ulMaxNumActiveCalls;

  @Uint32()
  external int ulAnswerMode;

  @Uint32()
  external int ulUUIAcceptSize;

  @Uint32()
  external int ulUUIAnswerSize;

  @Uint32()
  external int ulUUIMakeCallSize;

  @Uint32()
  external int ulUUIDropSize;

  @Uint32()
  external int ulUUISendUserUserInfoSize;

  @Uint32()
  external int ulUUICallInfoSize;
}

/// {@category Struct}
class NDIS_CO_LINK_SPEED extends Struct {
  @Uint32()
  external int Outbound;

  @Uint32()
  external int Inbound;
}

/// {@category Struct}
class NDIS_GUID extends Struct {
  external GUID Guid;

  external _NDIS_GUID__Anonymous_e__Union Anonymous;

  @Uint32()
  external int Size;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class _NDIS_GUID__Anonymous_e__Union extends Union {
  @Uint32()
  external int Oid;

  @Int32()
  external int Status;
}

extension NDIS_GUID_Extension on NDIS_GUID {
  int get Oid => this.Anonymous.Oid;
  set Oid(int value) => this.Anonymous.Oid = value;

  int get Status => this.Anonymous.Status;
  set Status(int value) => this.Anonymous.Status = value;
}

/// {@category Struct}
class NDIS_HARDWARE_CROSSTIMESTAMP extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int Flags;

  @Uint64()
  external int SystemTimestamp1;

  @Uint64()
  external int HardwareClockTimestamp;

  @Uint64()
  external int SystemTimestamp2;
}

/// {@category Struct}
class NDIS_INTERRUPT_MODERATION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int Flags;

  @Int32()
  external int InterruptModeration;
}

/// {@category Struct}
class NDIS_IPSEC_OFFLOAD_V1 extends Struct {
  external _NDIS_IPSEC_OFFLOAD_V1__Supported_e__Struct Supported;

  external _NDIS_IPSEC_OFFLOAD_V1__IPv4AH_e__Struct IPv4AH;

  external _NDIS_IPSEC_OFFLOAD_V1__IPv4ESP_e__Struct IPv4ESP;
}

/// {@category Struct}
class _NDIS_IPSEC_OFFLOAD_V1__Supported_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int AhEspCombined;

  @Uint32()
  external int TransportTunnelCombined;

  @Uint32()
  external int IPv4Options;

  @Uint32()
  external int Flags;
}

extension NDIS_IPSEC_OFFLOAD_V1_Extension on NDIS_IPSEC_OFFLOAD_V1 {
  int get Encapsulation => this.Supported.Encapsulation;
  set Encapsulation(int value) => this.Supported.Encapsulation = value;

  int get AhEspCombined => this.Supported.AhEspCombined;
  set AhEspCombined(int value) => this.Supported.AhEspCombined = value;

  int get TransportTunnelCombined => this.Supported.TransportTunnelCombined;
  set TransportTunnelCombined(int value) =>
      this.Supported.TransportTunnelCombined = value;

  int get IPv4Options => this.Supported.IPv4Options;
  set IPv4Options(int value) => this.Supported.IPv4Options = value;

  int get Flags => this.Supported.Flags;
  set Flags(int value) => this.Supported.Flags = value;
}

/// {@category Struct}
class _NDIS_IPSEC_OFFLOAD_V1__IPv4AH_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension NDIS_IPSEC_OFFLOAD_V1_Extension_1 on NDIS_IPSEC_OFFLOAD_V1 {
  int get bitfield => this.IPv4AH.bitfield;
  set bitfield(int value) => this.IPv4AH.bitfield = value;
}

/// {@category Struct}
class _NDIS_IPSEC_OFFLOAD_V1__IPv4ESP_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension NDIS_IPSEC_OFFLOAD_V1_Extension_2 on NDIS_IPSEC_OFFLOAD_V1 {
  int get bitfield => this.IPv4ESP.bitfield;
  set bitfield(int value) => this.IPv4ESP.bitfield = value;
}

/// {@category Struct}
class NDIS_IP_OPER_STATE extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int Flags;

  external NDIS_IP_OPER_STATUS IpOperationalStatus;
}

/// {@category Struct}
class NDIS_IP_OPER_STATUS extends Struct {
  @Uint32()
  external int AddressFamily;

  @Int32()
  external int OperationalStatus;

  @Uint32()
  external int OperationalStatusFlags;
}

/// {@category Struct}
class NDIS_IP_OPER_STATUS_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int Flags;

  @Uint32()
  external int NumberofAddressFamiliesReturned;

  @Array(32)
  external Array<NDIS_IP_OPER_STATUS> IpOperationalStatus;
}

/// {@category Struct}
class NDIS_IRDA_PACKET_INFO extends Struct {
  @Uint32()
  external int ExtraBOFs;

  @Uint32()
  external int MinTurnAroundTime;
}

/// {@category Struct}
class NDIS_LINK_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int MediaDuplexState;

  @Uint64()
  external int XmitLinkSpeed;

  @Uint64()
  external int RcvLinkSpeed;

  @Int32()
  external int PauseFunctions;

  @Uint32()
  external int AutoNegotiationFlags;
}

/// {@category Struct}
class NDIS_LINK_SPEED extends Struct {
  @Uint64()
  external int XmitLinkSpeed;

  @Uint64()
  external int RcvLinkSpeed;
}

/// {@category Struct}
class NDIS_LINK_STATE extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int MediaConnectState;

  @Int32()
  external int MediaDuplexState;

  @Uint64()
  external int XmitLinkSpeed;

  @Uint64()
  external int RcvLinkSpeed;

  @Int32()
  external int PauseFunctions;

  @Uint32()
  external int AutoNegotiationFlags;
}

/// {@category Struct}
class NDIS_OBJECT_HEADER extends Struct {
  @Uint8()
  external int Type;

  @Uint8()
  external int Revision;

  @Uint16()
  external int Size;
}

/// {@category Struct}
class NDIS_OFFLOAD extends Struct {
  external NDIS_OBJECT_HEADER Header;

  external NDIS_TCP_IP_CHECKSUM_OFFLOAD Checksum;

  external NDIS_TCP_LARGE_SEND_OFFLOAD_V1 LsoV1;

  external NDIS_IPSEC_OFFLOAD_V1 IPsecV1;

  external NDIS_TCP_LARGE_SEND_OFFLOAD_V2 LsoV2;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class NDIS_OFFLOAD_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint8()
  external int IPv4Checksum;

  @Uint8()
  external int TCPIPv4Checksum;

  @Uint8()
  external int UDPIPv4Checksum;

  @Uint8()
  external int TCPIPv6Checksum;

  @Uint8()
  external int UDPIPv6Checksum;

  @Uint8()
  external int LsoV1;

  @Uint8()
  external int IPsecV1;

  @Uint8()
  external int LsoV2IPv4;

  @Uint8()
  external int LsoV2IPv6;

  @Uint8()
  external int TcpConnectionIPv4;

  @Uint8()
  external int TcpConnectionIPv6;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class NDIS_OPER_STATE extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int OperationalStatus;

  @Uint32()
  external int OperationalStatusFlags;
}

/// {@category Struct}
class NDIS_PCI_DEVICE_CUSTOM_PROPERTIES extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int DeviceType;

  @Uint32()
  external int CurrentSpeedAndMode;

  @Uint32()
  external int CurrentPayloadSize;

  @Uint32()
  external int MaxPayloadSize;

  @Uint32()
  external int MaxReadRequestSize;

  @Uint32()
  external int CurrentLinkSpeed;

  @Uint32()
  external int CurrentLinkWidth;

  @Uint32()
  external int MaxLinkSpeed;

  @Uint32()
  external int MaxLinkWidth;

  @Uint32()
  external int PciExpressVersion;

  @Uint32()
  external int InterruptType;

  @Uint32()
  external int MaxInterruptMessages;
}

/// {@category Struct}
class NDIS_PM_PACKET_PATTERN extends Struct {
  @Uint32()
  external int Priority;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int MaskSize;

  @Uint32()
  external int PatternOffset;

  @Uint32()
  external int PatternSize;

  @Uint32()
  external int PatternFlags;
}

/// {@category Struct}
class NDIS_PM_WAKE_UP_CAPABILITIES extends Struct {
  @Int32()
  external int MinMagicPacketWakeUp;

  @Int32()
  external int MinPatternWakeUp;

  @Int32()
  external int MinLinkChangeWakeUp;
}

/// {@category Struct}
class NDIS_PNP_CAPABILITIES extends Struct {
  @Uint32()
  external int Flags;

  external NDIS_PM_WAKE_UP_CAPABILITIES WakeUpCapabilities;
}

/// {@category Struct}
class NDIS_PORT extends Struct {
  external Pointer<NDIS_PORT> Next;

  external Pointer NdisReserved;

  external Pointer MiniportReserved;

  external Pointer ProtocolReserved;

  external NDIS_PORT_CHARACTERISTICS PortCharacteristics;
}

/// {@category Struct}
class NDIS_PORT_ARRAY extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int NumberOfPorts;

  @Uint32()
  external int OffsetFirstPort;

  @Uint32()
  external int ElementSize;

  @Array(1)
  external Array<NDIS_PORT_CHARACTERISTICS> Ports;
}

/// {@category Struct}
class NDIS_PORT_AUTHENTICATION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int SendControlState;

  @Int32()
  external int RcvControlState;

  @Int32()
  external int SendAuthorizationState;

  @Int32()
  external int RcvAuthorizationState;
}

/// {@category Struct}
class NDIS_PORT_CHARACTERISTICS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int PortNumber;

  @Uint32()
  external int Flags;

  @Int32()
  external int Type;

  @Int32()
  external int MediaConnectState;

  @Uint64()
  external int XmitLinkSpeed;

  @Uint64()
  external int RcvLinkSpeed;

  @Int32()
  external int Direction;

  @Int32()
  external int SendControlState;

  @Int32()
  external int RcvControlState;

  @Int32()
  external int SendAuthorizationState;

  @Int32()
  external int RcvAuthorizationState;
}

/// {@category Struct}
class NDIS_PORT_STATE extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int MediaConnectState;

  @Uint64()
  external int XmitLinkSpeed;

  @Uint64()
  external int RcvLinkSpeed;

  @Int32()
  external int Direction;

  @Int32()
  external int SendControlState;

  @Int32()
  external int RcvControlState;

  @Int32()
  external int SendAuthorizationState;

  @Int32()
  external int RcvAuthorizationState;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class NDIS_RECEIVE_HASH_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int Flags;

  @Uint32()
  external int HashInformation;

  @Uint16()
  external int HashSecretKeySize;

  @Uint32()
  external int HashSecretKeyOffset;
}

/// {@category Struct}
class NDIS_RECEIVE_SCALE_CAPABILITIES extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int CapabilitiesFlags;

  @Uint32()
  external int NumberOfInterruptMessages;

  @Uint32()
  external int NumberOfReceiveQueues;
}

/// {@category Struct}
class NDIS_RECEIVE_SCALE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint16()
  external int Flags;

  @Uint16()
  external int BaseCpuNumber;

  @Uint32()
  external int HashInformation;

  @Uint16()
  external int IndirectionTableSize;

  @Uint32()
  external int IndirectionTableOffset;

  @Uint16()
  external int HashSecretKeySize;

  @Uint32()
  external int HashSecretKeyOffset;
}

/// {@category Struct}
class NDIS_STATISTICS_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int SupportedStatistics;

  @Uint64()
  external int ifInDiscards;

  @Uint64()
  external int ifInErrors;

  @Uint64()
  external int ifHCInOctets;

  @Uint64()
  external int ifHCInUcastPkts;

  @Uint64()
  external int ifHCInMulticastPkts;

  @Uint64()
  external int ifHCInBroadcastPkts;

  @Uint64()
  external int ifHCOutOctets;

  @Uint64()
  external int ifHCOutUcastPkts;

  @Uint64()
  external int ifHCOutMulticastPkts;

  @Uint64()
  external int ifHCOutBroadcastPkts;

  @Uint64()
  external int ifOutErrors;

  @Uint64()
  external int ifOutDiscards;

  @Uint64()
  external int ifHCInUcastOctets;

  @Uint64()
  external int ifHCInMulticastOctets;

  @Uint64()
  external int ifHCInBroadcastOctets;

  @Uint64()
  external int ifHCOutUcastOctets;

  @Uint64()
  external int ifHCOutMulticastOctets;

  @Uint64()
  external int ifHCOutBroadcastOctets;
}

/// {@category Struct}
class NDIS_STATISTICS_VALUE extends Struct {
  @Uint32()
  external int Oid;

  @Uint32()
  external int DataLength;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class NDIS_STATISTICS_VALUE_EX extends Struct {
  @Uint32()
  external int Oid;

  @Uint32()
  external int DataLength;

  @Uint32()
  external int Length;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class NDIS_TCP_CONNECTION_OFFLOAD extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int bitfield;

  @Uint32()
  external int TcpConnectionOffloadCapacity;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class NDIS_TCP_IP_CHECKSUM_OFFLOAD extends Struct {
  external _NDIS_TCP_IP_CHECKSUM_OFFLOAD__IPv4Transmit_e__Struct IPv4Transmit;

  external _NDIS_TCP_IP_CHECKSUM_OFFLOAD__IPv4Receive_e__Struct IPv4Receive;

  external _NDIS_TCP_IP_CHECKSUM_OFFLOAD__IPv6Transmit_e__Struct IPv6Transmit;

  external _NDIS_TCP_IP_CHECKSUM_OFFLOAD__IPv6Receive_e__Struct IPv6Receive;
}

/// {@category Struct}
class _NDIS_TCP_IP_CHECKSUM_OFFLOAD__IPv4Transmit_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int bitfield;
}

extension NDIS_TCP_IP_CHECKSUM_OFFLOAD_Extension
    on NDIS_TCP_IP_CHECKSUM_OFFLOAD {
  int get Encapsulation => this.IPv4Transmit.Encapsulation;
  set Encapsulation(int value) => this.IPv4Transmit.Encapsulation = value;

  int get bitfield => this.IPv4Transmit.bitfield;
  set bitfield(int value) => this.IPv4Transmit.bitfield = value;
}

/// {@category Struct}
class _NDIS_TCP_IP_CHECKSUM_OFFLOAD__IPv4Receive_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int bitfield;
}

extension NDIS_TCP_IP_CHECKSUM_OFFLOAD_Extension_1
    on NDIS_TCP_IP_CHECKSUM_OFFLOAD {
  int get Encapsulation => this.IPv4Receive.Encapsulation;
  set Encapsulation(int value) => this.IPv4Receive.Encapsulation = value;

  int get bitfield => this.IPv4Receive.bitfield;
  set bitfield(int value) => this.IPv4Receive.bitfield = value;
}

/// {@category Struct}
class _NDIS_TCP_IP_CHECKSUM_OFFLOAD__IPv6Transmit_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int bitfield;
}

extension NDIS_TCP_IP_CHECKSUM_OFFLOAD_Extension_2
    on NDIS_TCP_IP_CHECKSUM_OFFLOAD {
  int get Encapsulation => this.IPv6Transmit.Encapsulation;
  set Encapsulation(int value) => this.IPv6Transmit.Encapsulation = value;

  int get bitfield => this.IPv6Transmit.bitfield;
  set bitfield(int value) => this.IPv6Transmit.bitfield = value;
}

/// {@category Struct}
class _NDIS_TCP_IP_CHECKSUM_OFFLOAD__IPv6Receive_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int bitfield;
}

extension NDIS_TCP_IP_CHECKSUM_OFFLOAD_Extension_3
    on NDIS_TCP_IP_CHECKSUM_OFFLOAD {
  int get Encapsulation => this.IPv6Receive.Encapsulation;
  set Encapsulation(int value) => this.IPv6Receive.Encapsulation = value;

  int get bitfield => this.IPv6Receive.bitfield;
  set bitfield(int value) => this.IPv6Receive.bitfield = value;
}

/// {@category Struct}
class NDIS_TCP_LARGE_SEND_OFFLOAD_V1 extends Struct {
  external _NDIS_TCP_LARGE_SEND_OFFLOAD_V1__IPv4_e__Struct IPv4;
}

/// {@category Struct}
class _NDIS_TCP_LARGE_SEND_OFFLOAD_V1__IPv4_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int MaxOffLoadSize;

  @Uint32()
  external int MinSegmentCount;

  @Uint32()
  external int bitfield;
}

extension NDIS_TCP_LARGE_SEND_OFFLOAD_V1_Extension
    on NDIS_TCP_LARGE_SEND_OFFLOAD_V1 {
  int get Encapsulation => this.IPv4.Encapsulation;
  set Encapsulation(int value) => this.IPv4.Encapsulation = value;

  int get MaxOffLoadSize => this.IPv4.MaxOffLoadSize;
  set MaxOffLoadSize(int value) => this.IPv4.MaxOffLoadSize = value;

  int get MinSegmentCount => this.IPv4.MinSegmentCount;
  set MinSegmentCount(int value) => this.IPv4.MinSegmentCount = value;

  int get bitfield => this.IPv4.bitfield;
  set bitfield(int value) => this.IPv4.bitfield = value;
}

/// {@category Struct}
class NDIS_TCP_LARGE_SEND_OFFLOAD_V2 extends Struct {
  external _NDIS_TCP_LARGE_SEND_OFFLOAD_V2__IPv4_e__Struct IPv4;

  external _NDIS_TCP_LARGE_SEND_OFFLOAD_V2__IPv6_e__Struct IPv6;
}

/// {@category Struct}
class _NDIS_TCP_LARGE_SEND_OFFLOAD_V2__IPv4_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int MaxOffLoadSize;

  @Uint32()
  external int MinSegmentCount;
}

extension NDIS_TCP_LARGE_SEND_OFFLOAD_V2_Extension
    on NDIS_TCP_LARGE_SEND_OFFLOAD_V2 {
  int get Encapsulation => this.IPv4.Encapsulation;
  set Encapsulation(int value) => this.IPv4.Encapsulation = value;

  int get MaxOffLoadSize => this.IPv4.MaxOffLoadSize;
  set MaxOffLoadSize(int value) => this.IPv4.MaxOffLoadSize = value;

  int get MinSegmentCount => this.IPv4.MinSegmentCount;
  set MinSegmentCount(int value) => this.IPv4.MinSegmentCount = value;
}

/// {@category Struct}
class _NDIS_TCP_LARGE_SEND_OFFLOAD_V2__IPv6_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int MaxOffLoadSize;

  @Uint32()
  external int MinSegmentCount;

  @Uint32()
  external int bitfield;
}

extension NDIS_TCP_LARGE_SEND_OFFLOAD_V2_Extension_1
    on NDIS_TCP_LARGE_SEND_OFFLOAD_V2 {
  int get Encapsulation => this.IPv6.Encapsulation;
  set Encapsulation(int value) => this.IPv6.Encapsulation = value;

  int get MaxOffLoadSize => this.IPv6.MaxOffLoadSize;
  set MaxOffLoadSize(int value) => this.IPv6.MaxOffLoadSize = value;

  int get MinSegmentCount => this.IPv6.MinSegmentCount;
  set MinSegmentCount(int value) => this.IPv6.MinSegmentCount = value;

  int get bitfield => this.IPv6.bitfield;
  set bitfield(int value) => this.IPv6.bitfield = value;
}

/// {@category Struct}
class NDIS_TIMEOUT_DPC_REQUEST_CAPABILITIES extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int Flags;

  @Uint32()
  external int TimeoutArrayLength;

  @Array(1)
  external Array<Uint32> TimeoutArray;
}

/// {@category Struct}
class NDIS_TIMESTAMP_CAPABILITIES extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint64()
  external int HardwareClockFrequencyHz;

  @Uint8()
  external int CrossTimestamp;

  @Uint64()
  external int Reserved1;

  @Uint64()
  external int Reserved2;

  external NDIS_TIMESTAMP_CAPABILITY_FLAGS TimestampFlags;
}

/// {@category Struct}
class NDIS_TIMESTAMP_CAPABILITY_FLAGS extends Struct {
  @Uint8()
  external int PtpV2OverUdpIPv4EventMsgReceiveHw;

  @Uint8()
  external int PtpV2OverUdpIPv4AllMsgReceiveHw;

  @Uint8()
  external int PtpV2OverUdpIPv4EventMsgTransmitHw;

  @Uint8()
  external int PtpV2OverUdpIPv4AllMsgTransmitHw;

  @Uint8()
  external int PtpV2OverUdpIPv6EventMsgReceiveHw;

  @Uint8()
  external int PtpV2OverUdpIPv6AllMsgReceiveHw;

  @Uint8()
  external int PtpV2OverUdpIPv6EventMsgTransmitHw;

  @Uint8()
  external int PtpV2OverUdpIPv6AllMsgTransmitHw;

  @Uint8()
  external int AllReceiveHw;

  @Uint8()
  external int AllTransmitHw;

  @Uint8()
  external int TaggedTransmitHw;

  @Uint8()
  external int AllReceiveSw;

  @Uint8()
  external int AllTransmitSw;

  @Uint8()
  external int TaggedTransmitSw;
}

/// {@category Struct}
class NDIS_VAR_DATA_DESC extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int MaximumLength;

  @IntPtr()
  external int Offset;
}

/// {@category Struct}
class NDIS_WAN_PROTOCOL_CAPS extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class NDIS_WLAN_BSSID extends Struct {
  @Uint32()
  external int Length;

  @Array(6)
  external Array<Uint8> MacAddress;

  @Array(2)
  external Array<Uint8> Reserved;

  external NDIS_802_11_SSID Ssid;

  @Uint32()
  external int Privacy;

  @Int32()
  external int Rssi;

  @Int32()
  external int NetworkTypeInUse;

  external NDIS_802_11_CONFIGURATION Configuration;

  @Int32()
  external int InfrastructureMode;

  @Array(8)
  external Array<Uint8> SupportedRates;
}

/// {@category Struct}
class NDIS_WLAN_BSSID_EX extends Struct {
  @Uint32()
  external int Length;

  @Array(6)
  external Array<Uint8> MacAddress;

  @Array(2)
  external Array<Uint8> Reserved;

  external NDIS_802_11_SSID Ssid;

  @Uint32()
  external int Privacy;

  @Int32()
  external int Rssi;

  @Int32()
  external int NetworkTypeInUse;

  external NDIS_802_11_CONFIGURATION Configuration;

  @Int32()
  external int InfrastructureMode;

  @Array(16)
  external Array<Uint8> SupportedRates;

  @Uint32()
  external int IELength;

  @Array(1)
  external Array<Uint8> IEs;
}

/// {@category Struct}
class NDIS_WMI_ENUM_ADAPTER extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int IfIndex;

  external NET_LUID_LH NetLuid;

  @Uint16()
  external int DeviceNameLength;

  @Array(1)
  external Array<Uint8> DeviceName;
}

/// {@category Struct}
class NDIS_WMI_EVENT_HEADER extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int IfIndex;

  external NET_LUID_LH NetLuid;

  @Uint64()
  external int RequestId;

  @Uint32()
  external int PortNumber;

  @Uint32()
  external int DeviceNameLength;

  @Uint32()
  external int DeviceNameOffset;

  @Array(4)
  external Array<Uint8> Padding;
}

/// {@category Struct}
class NDIS_WMI_IPSEC_OFFLOAD_V1 extends Struct {
  external _NDIS_WMI_IPSEC_OFFLOAD_V1__Supported_e__Struct Supported;

  external _NDIS_WMI_IPSEC_OFFLOAD_V1__IPv4AH_e__Struct IPv4AH;

  external _NDIS_WMI_IPSEC_OFFLOAD_V1__IPv4ESP_e__Struct IPv4ESP;
}

/// {@category Struct}
class _NDIS_WMI_IPSEC_OFFLOAD_V1__Supported_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int AhEspCombined;

  @Uint32()
  external int TransportTunnelCombined;

  @Uint32()
  external int IPv4Options;

  @Uint32()
  external int Flags;
}

extension NDIS_WMI_IPSEC_OFFLOAD_V1_Extension on NDIS_WMI_IPSEC_OFFLOAD_V1 {
  int get Encapsulation => this.Supported.Encapsulation;
  set Encapsulation(int value) => this.Supported.Encapsulation = value;

  int get AhEspCombined => this.Supported.AhEspCombined;
  set AhEspCombined(int value) => this.Supported.AhEspCombined = value;

  int get TransportTunnelCombined => this.Supported.TransportTunnelCombined;
  set TransportTunnelCombined(int value) =>
      this.Supported.TransportTunnelCombined = value;

  int get IPv4Options => this.Supported.IPv4Options;
  set IPv4Options(int value) => this.Supported.IPv4Options = value;

  int get Flags => this.Supported.Flags;
  set Flags(int value) => this.Supported.Flags = value;
}

/// {@category Struct}
class _NDIS_WMI_IPSEC_OFFLOAD_V1__IPv4AH_e__Struct extends Struct {
  @Uint32()
  external int Md5;

  @Uint32()
  external int Sha_1;

  @Uint32()
  external int Transport;

  @Uint32()
  external int Tunnel;

  @Uint32()
  external int Send;

  @Uint32()
  external int Receive;
}

extension NDIS_WMI_IPSEC_OFFLOAD_V1_Extension_1 on NDIS_WMI_IPSEC_OFFLOAD_V1 {
  int get Md5 => this.IPv4AH.Md5;
  set Md5(int value) => this.IPv4AH.Md5 = value;

  int get Sha_1 => this.IPv4AH.Sha_1;
  set Sha_1(int value) => this.IPv4AH.Sha_1 = value;

  int get Transport => this.IPv4AH.Transport;
  set Transport(int value) => this.IPv4AH.Transport = value;

  int get Tunnel => this.IPv4AH.Tunnel;
  set Tunnel(int value) => this.IPv4AH.Tunnel = value;

  int get Send => this.IPv4AH.Send;
  set Send(int value) => this.IPv4AH.Send = value;

  int get Receive => this.IPv4AH.Receive;
  set Receive(int value) => this.IPv4AH.Receive = value;
}

/// {@category Struct}
class _NDIS_WMI_IPSEC_OFFLOAD_V1__IPv4ESP_e__Struct extends Struct {
  @Uint32()
  external int Des;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int TripleDes;

  @Uint32()
  external int NullEsp;

  @Uint32()
  external int Transport;

  @Uint32()
  external int Tunnel;

  @Uint32()
  external int Send;

  @Uint32()
  external int Receive;
}

extension NDIS_WMI_IPSEC_OFFLOAD_V1_Extension_2 on NDIS_WMI_IPSEC_OFFLOAD_V1 {
  int get Des => this.IPv4ESP.Des;
  set Des(int value) => this.IPv4ESP.Des = value;

  int get Reserved => this.IPv4ESP.Reserved;
  set Reserved(int value) => this.IPv4ESP.Reserved = value;

  int get TripleDes => this.IPv4ESP.TripleDes;
  set TripleDes(int value) => this.IPv4ESP.TripleDes = value;

  int get NullEsp => this.IPv4ESP.NullEsp;
  set NullEsp(int value) => this.IPv4ESP.NullEsp = value;

  int get Transport => this.IPv4ESP.Transport;
  set Transport(int value) => this.IPv4ESP.Transport = value;

  int get Tunnel => this.IPv4ESP.Tunnel;
  set Tunnel(int value) => this.IPv4ESP.Tunnel = value;

  int get Send => this.IPv4ESP.Send;
  set Send(int value) => this.IPv4ESP.Send = value;

  int get Receive => this.IPv4ESP.Receive;
  set Receive(int value) => this.IPv4ESP.Receive = value;
}

/// {@category Struct}
class NDIS_WMI_METHOD_HEADER extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int PortNumber;

  external NET_LUID_LH NetLuid;

  @Uint64()
  external int RequestId;

  @Uint32()
  external int Timeout;

  @Array(4)
  external Array<Uint8> Padding;
}

/// {@category Struct}
class NDIS_WMI_OFFLOAD extends Struct {
  external NDIS_OBJECT_HEADER Header;

  external NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD Checksum;

  external NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V1 LsoV1;

  external NDIS_WMI_IPSEC_OFFLOAD_V1 IPsecV1;

  external NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2 LsoV2;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class NDIS_WMI_OUTPUT_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int Flags;

  @Uint8()
  external int SupportedRevision;

  @Uint32()
  external int DataOffset;
}

/// {@category Struct}
class NDIS_WMI_SET_HEADER extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int PortNumber;

  external NET_LUID_LH NetLuid;

  @Uint64()
  external int RequestId;

  @Uint32()
  external int Timeout;

  @Array(4)
  external Array<Uint8> Padding;
}

/// {@category Struct}
class NDIS_WMI_TCP_CONNECTION_OFFLOAD extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int SupportIPv4;

  @Uint32()
  external int SupportIPv6;

  @Uint32()
  external int SupportIPv6ExtensionHeaders;

  @Uint32()
  external int SupportSack;

  @Uint32()
  external int TcpConnectionOffloadCapacity;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD extends Struct {
  external _NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD__IPv4Transmit_e__Struct
      IPv4Transmit;

  external _NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD__IPv4Receive_e__Struct IPv4Receive;

  external _NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD__IPv6Transmit_e__Struct
      IPv6Transmit;

  external _NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD__IPv6Receive_e__Struct IPv6Receive;
}

/// {@category Struct}
class _NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD__IPv4Transmit_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int IpOptionsSupported;

  @Uint32()
  external int TcpOptionsSupported;

  @Uint32()
  external int TcpChecksum;

  @Uint32()
  external int UdpChecksum;

  @Uint32()
  external int IpChecksum;
}

extension NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD_Extension
    on NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD {
  int get Encapsulation => this.IPv4Transmit.Encapsulation;
  set Encapsulation(int value) => this.IPv4Transmit.Encapsulation = value;

  int get IpOptionsSupported => this.IPv4Transmit.IpOptionsSupported;
  set IpOptionsSupported(int value) =>
      this.IPv4Transmit.IpOptionsSupported = value;

  int get TcpOptionsSupported => this.IPv4Transmit.TcpOptionsSupported;
  set TcpOptionsSupported(int value) =>
      this.IPv4Transmit.TcpOptionsSupported = value;

  int get TcpChecksum => this.IPv4Transmit.TcpChecksum;
  set TcpChecksum(int value) => this.IPv4Transmit.TcpChecksum = value;

  int get UdpChecksum => this.IPv4Transmit.UdpChecksum;
  set UdpChecksum(int value) => this.IPv4Transmit.UdpChecksum = value;

  int get IpChecksum => this.IPv4Transmit.IpChecksum;
  set IpChecksum(int value) => this.IPv4Transmit.IpChecksum = value;
}

/// {@category Struct}
class _NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD__IPv4Receive_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int IpOptionsSupported;

  @Uint32()
  external int TcpOptionsSupported;

  @Uint32()
  external int TcpChecksum;

  @Uint32()
  external int UdpChecksum;

  @Uint32()
  external int IpChecksum;
}

extension NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD_Extension_1
    on NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD {
  int get Encapsulation => this.IPv4Receive.Encapsulation;
  set Encapsulation(int value) => this.IPv4Receive.Encapsulation = value;

  int get IpOptionsSupported => this.IPv4Receive.IpOptionsSupported;
  set IpOptionsSupported(int value) =>
      this.IPv4Receive.IpOptionsSupported = value;

  int get TcpOptionsSupported => this.IPv4Receive.TcpOptionsSupported;
  set TcpOptionsSupported(int value) =>
      this.IPv4Receive.TcpOptionsSupported = value;

  int get TcpChecksum => this.IPv4Receive.TcpChecksum;
  set TcpChecksum(int value) => this.IPv4Receive.TcpChecksum = value;

  int get UdpChecksum => this.IPv4Receive.UdpChecksum;
  set UdpChecksum(int value) => this.IPv4Receive.UdpChecksum = value;

  int get IpChecksum => this.IPv4Receive.IpChecksum;
  set IpChecksum(int value) => this.IPv4Receive.IpChecksum = value;
}

/// {@category Struct}
class _NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD__IPv6Transmit_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int IpExtensionHeadersSupported;

  @Uint32()
  external int TcpOptionsSupported;

  @Uint32()
  external int TcpChecksum;

  @Uint32()
  external int UdpChecksum;
}

extension NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD_Extension_2
    on NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD {
  int get Encapsulation => this.IPv6Transmit.Encapsulation;
  set Encapsulation(int value) => this.IPv6Transmit.Encapsulation = value;

  int get IpExtensionHeadersSupported =>
      this.IPv6Transmit.IpExtensionHeadersSupported;
  set IpExtensionHeadersSupported(int value) =>
      this.IPv6Transmit.IpExtensionHeadersSupported = value;

  int get TcpOptionsSupported => this.IPv6Transmit.TcpOptionsSupported;
  set TcpOptionsSupported(int value) =>
      this.IPv6Transmit.TcpOptionsSupported = value;

  int get TcpChecksum => this.IPv6Transmit.TcpChecksum;
  set TcpChecksum(int value) => this.IPv6Transmit.TcpChecksum = value;

  int get UdpChecksum => this.IPv6Transmit.UdpChecksum;
  set UdpChecksum(int value) => this.IPv6Transmit.UdpChecksum = value;
}

/// {@category Struct}
class _NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD__IPv6Receive_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int IpExtensionHeadersSupported;

  @Uint32()
  external int TcpOptionsSupported;

  @Uint32()
  external int TcpChecksum;

  @Uint32()
  external int UdpChecksum;
}

extension NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD_Extension_3
    on NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD {
  int get Encapsulation => this.IPv6Receive.Encapsulation;
  set Encapsulation(int value) => this.IPv6Receive.Encapsulation = value;

  int get IpExtensionHeadersSupported =>
      this.IPv6Receive.IpExtensionHeadersSupported;
  set IpExtensionHeadersSupported(int value) =>
      this.IPv6Receive.IpExtensionHeadersSupported = value;

  int get TcpOptionsSupported => this.IPv6Receive.TcpOptionsSupported;
  set TcpOptionsSupported(int value) =>
      this.IPv6Receive.TcpOptionsSupported = value;

  int get TcpChecksum => this.IPv6Receive.TcpChecksum;
  set TcpChecksum(int value) => this.IPv6Receive.TcpChecksum = value;

  int get UdpChecksum => this.IPv6Receive.UdpChecksum;
  set UdpChecksum(int value) => this.IPv6Receive.UdpChecksum = value;
}

/// {@category Struct}
class NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V1 extends Struct {
  external _NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V1__IPv4_e__Struct IPv4;
}

/// {@category Struct}
class _NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V1__IPv4_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int MaxOffLoadSize;

  @Uint32()
  external int MinSegmentCount;

  @Uint32()
  external int TcpOptions;

  @Uint32()
  external int IpOptions;
}

extension NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V1_Extension
    on NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V1 {
  int get Encapsulation => this.IPv4.Encapsulation;
  set Encapsulation(int value) => this.IPv4.Encapsulation = value;

  int get MaxOffLoadSize => this.IPv4.MaxOffLoadSize;
  set MaxOffLoadSize(int value) => this.IPv4.MaxOffLoadSize = value;

  int get MinSegmentCount => this.IPv4.MinSegmentCount;
  set MinSegmentCount(int value) => this.IPv4.MinSegmentCount = value;

  int get TcpOptions => this.IPv4.TcpOptions;
  set TcpOptions(int value) => this.IPv4.TcpOptions = value;

  int get IpOptions => this.IPv4.IpOptions;
  set IpOptions(int value) => this.IPv4.IpOptions = value;
}

/// {@category Struct}
class NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2 extends Struct {
  external _NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2__IPv4_e__Struct IPv4;

  external _NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2__IPv6_e__Struct IPv6;
}

/// {@category Struct}
class _NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2__IPv4_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int MaxOffLoadSize;

  @Uint32()
  external int MinSegmentCount;
}

extension NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2_Extension
    on NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2 {
  int get Encapsulation => this.IPv4.Encapsulation;
  set Encapsulation(int value) => this.IPv4.Encapsulation = value;

  int get MaxOffLoadSize => this.IPv4.MaxOffLoadSize;
  set MaxOffLoadSize(int value) => this.IPv4.MaxOffLoadSize = value;

  int get MinSegmentCount => this.IPv4.MinSegmentCount;
  set MinSegmentCount(int value) => this.IPv4.MinSegmentCount = value;
}

/// {@category Struct}
class _NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2__IPv6_e__Struct extends Struct {
  @Uint32()
  external int Encapsulation;

  @Uint32()
  external int MaxOffLoadSize;

  @Uint32()
  external int MinSegmentCount;

  @Uint32()
  external int IpExtensionHeadersSupported;

  @Uint32()
  external int TcpOptionsSupported;
}

extension NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2_Extension_1
    on NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2 {
  int get Encapsulation => this.IPv6.Encapsulation;
  set Encapsulation(int value) => this.IPv6.Encapsulation = value;

  int get MaxOffLoadSize => this.IPv6.MaxOffLoadSize;
  set MaxOffLoadSize(int value) => this.IPv6.MaxOffLoadSize = value;

  int get MinSegmentCount => this.IPv6.MinSegmentCount;
  set MinSegmentCount(int value) => this.IPv6.MinSegmentCount = value;

  int get IpExtensionHeadersSupported => this.IPv6.IpExtensionHeadersSupported;
  set IpExtensionHeadersSupported(int value) =>
      this.IPv6.IpExtensionHeadersSupported = value;

  int get TcpOptionsSupported => this.IPv6.TcpOptionsSupported;
  set TcpOptionsSupported(int value) => this.IPv6.TcpOptionsSupported = value;
}

/// {@category Struct}
class NDK_ADAPTER_INFO extends Struct {
  external NDK_VERSION Version;

  @Uint32()
  external int VendorId;

  @Uint32()
  external int DeviceId;

  @IntPtr()
  external int MaxRegistrationSize;

  @IntPtr()
  external int MaxWindowSize;

  @Uint32()
  external int FRMRPageCount;

  @Uint32()
  external int MaxInitiatorRequestSge;

  @Uint32()
  external int MaxReceiveRequestSge;

  @Uint32()
  external int MaxReadRequestSge;

  @Uint32()
  external int MaxTransferLength;

  @Uint32()
  external int MaxInlineDataSize;

  @Uint32()
  external int MaxInboundReadLimit;

  @Uint32()
  external int MaxOutboundReadLimit;

  @Uint32()
  external int MaxReceiveQueueDepth;

  @Uint32()
  external int MaxInitiatorQueueDepth;

  @Uint32()
  external int MaxSrqDepth;

  @Uint32()
  external int MaxCqDepth;

  @Uint32()
  external int LargeRequestThreshold;

  @Uint32()
  external int MaxCallerData;

  @Uint32()
  external int MaxCalleeData;

  @Uint32()
  external int AdapterFlags;

  @Int32()
  external int RdmaTechnology;
}

/// {@category Struct}
class NDK_VERSION extends Struct {
  @Uint16()
  external int Major;

  @Uint16()
  external int Minor;
}

/// {@category Struct}
class NETWORK_ADDRESS extends Struct {
  @Uint16()
  external int AddressLength;

  @Uint16()
  external int AddressType;

  @Array(1)
  external Array<Uint8> Address;
}

/// {@category Struct}
class NETWORK_ADDRESS_IP extends Struct {
  @Uint16()
  external int sin_port;

  @Uint32()
  external int IN_ADDR;

  @Array(8)
  external Array<Uint8> sin_zero;
}

/// {@category Struct}
class NETWORK_ADDRESS_IP6 extends Struct {
  @Uint16()
  external int sin6_port;

  @Uint32()
  external int sin6_flowinfo;

  @Array(8)
  external Array<Uint16> sin6_addr;

  @Uint32()
  external int sin6_scope_id;
}

/// {@category Struct}
class NETWORK_ADDRESS_IPX extends Struct {
  @Uint32()
  external int NetworkAddress;

  @Array(6)
  external Array<Uint8> NodeAddress;

  @Uint16()
  external int Socket;
}

/// {@category Struct}
class NETWORK_ADDRESS_LIST extends Struct {
  @Int32()
  external int AddressCount;

  @Uint16()
  external int AddressType;

  @Array(1)
  external Array<NETWORK_ADDRESS> Address;
}

/// {@category Struct}
class OFFLOAD_ALGO_INFO extends Struct {
  @Uint32()
  external int algoIdentifier;

  @Uint32()
  external int algoKeylen;

  @Uint32()
  external int algoRounds;
}

/// {@category Struct}
class OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_ENTRY extends Struct {
  @Int32()
  external int UdpEncapType;

  @Uint16()
  external int DstEncapPort;
}

/// {@category Struct}
class OFFLOAD_SECURITY_ASSOCIATION extends Struct {
  @Int32()
  external int Operation;

  @Uint32()
  external int SPI;

  external OFFLOAD_ALGO_INFO IntegrityAlgo;

  external OFFLOAD_ALGO_INFO ConfAlgo;

  external OFFLOAD_ALGO_INFO Reserved;
}

/// {@category Struct}
class PMKID_CANDIDATE extends Struct {
  @Array(6)
  external Array<Uint8> BSSID;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class TRANSPORT_HEADER_OFFSET extends Struct {
  @Uint16()
  external int ProtocolType;

  @Uint16()
  external int HeaderOffset;
}

/// {@category Struct}
class WDIAG_IHV_WLAN_ID extends Struct {
  @Array(256)
  external Array<Uint16> _strProfileName;

  String get strProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_strProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strProfileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _strProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external DOT11_SSID Ssid;

  @Int32()
  external int BssType;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReasonCode;
}
