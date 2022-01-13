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
import '../../networkmanagement/ndis/structs.g.dart';
import '../../networkmanagement/wifi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/extensibleauthenticationprotocol/structs.g.dart';

/// {@category Struct}
class DOT11_ACCESSNETWORKOPTIONS extends Struct {
  @Uint8()
  external int AccessNetworkType;

  @Uint8()
  external int Internet;

  @Uint8()
  external int ASRA;

  @Uint8()
  external int ESR;

  @Uint8()
  external int UESA;
}

/// {@category Struct}
class DOT11_ADDITIONAL_IE extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uBeaconIEsOffset;

  @Uint32()
  external int uBeaconIEsLength;

  @Uint32()
  external int uResponseIEsOffset;

  @Uint32()
  external int uResponseIEsLength;
}

/// {@category Struct}
class DOT11_ANQP_QUERY_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int Status;

  @IntPtr()
  external int hContext;

  @Uint32()
  external int uResponseLength;
}

/// {@category Struct}
class DOT11_AP_JOIN_REQUEST extends Struct {
  @Uint32()
  external int uJoinFailureTimeout;

  external DOT11_RATE_SET OperationalRateSet;

  @Uint32()
  external int uChCenterFrequency;

  external DOT11_BSS_DESCRIPTION dot11BSSDescription;
}

/// {@category Struct}
class DOT11_ASSOCIATION_COMPLETION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> MacAddr;

  @Uint32()
  external int uStatus;

  @Uint8()
  external int bReAssocReq;

  @Uint8()
  external int bReAssocResp;

  @Uint32()
  external int uAssocReqOffset;

  @Uint32()
  external int uAssocReqSize;

  @Uint32()
  external int uAssocRespOffset;

  @Uint32()
  external int uAssocRespSize;

  @Uint32()
  external int uBeaconOffset;

  @Uint32()
  external int uBeaconSize;

  @Uint32()
  external int uIHVDataOffset;

  @Uint32()
  external int uIHVDataSize;

  @Int32()
  external int AuthAlgo;

  @Int32()
  external int UnicastCipher;

  @Int32()
  external int MulticastCipher;

  @Uint32()
  external int uActivePhyListOffset;

  @Uint32()
  external int uActivePhyListSize;

  @Uint8()
  external int bFourAddressSupported;

  @Uint8()
  external int bPortAuthorized;

  @Uint8()
  external int ucActiveQoSProtocol;

  @Int32()
  external int DSInfo;

  @Uint32()
  external int uEncapTableOffset;

  @Uint32()
  external int uEncapTableSize;

  @Int32()
  external int MulticastMgmtCipher;

  @Uint32()
  external int uAssocComebackTime;
}

/// {@category Struct}
class DOT11_ASSOCIATION_INFO_EX extends Struct {
  @Array(6)
  external Array<Uint8> PeerMacAddress;

  @Array(6)
  external Array<Uint8> BSSID;

  @Uint16()
  external int usCapabilityInformation;

  @Uint16()
  external int usListenInterval;

  @Array(255)
  external Array<Uint8> ucPeerSupportedRates;

  @Uint16()
  external int usAssociationID;

  @Int32()
  external int dot11AssociationState;

  @Int32()
  external int dot11PowerMode;

  @Int64()
  external int liAssociationUpTime;

  @Uint64()
  external int ullNumOfTxPacketSuccesses;

  @Uint64()
  external int ullNumOfTxPacketFailures;

  @Uint64()
  external int ullNumOfRxPacketSuccesses;

  @Uint64()
  external int ullNumOfRxPacketFailures;
}

/// {@category Struct}
class DOT11_ASSOCIATION_INFO_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_ASSOCIATION_INFO_EX> dot11AssocInfo;
}

/// {@category Struct}
class DOT11_ASSOCIATION_PARAMS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> BSSID;

  @Uint32()
  external int uAssocRequestIEsOffset;

  @Uint32()
  external int uAssocRequestIEsLength;
}

/// {@category Struct}
class DOT11_ASSOCIATION_START_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> MacAddr;

  external DOT11_SSID SSID;

  @Uint32()
  external int uIHVDataOffset;

  @Uint32()
  external int uIHVDataSize;
}

/// {@category Struct}
class DOT11_AUTH_ALGORITHM_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<Int32> AlgorithmIds;
}

/// {@category Struct}
class DOT11_AUTH_CIPHER_PAIR extends Struct {
  @Int32()
  external int AuthAlgoId;

  @Int32()
  external int CipherAlgoId;
}

/// {@category Struct}
class DOT11_AUTH_CIPHER_PAIR_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_AUTH_CIPHER_PAIR> AuthCipherPairs;
}

/// {@category Struct}
class DOT11_AVAILABLE_CHANNEL_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<Uint32> uChannelNumber;
}

/// {@category Struct}
class DOT11_AVAILABLE_FREQUENCY_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<Uint32> uFrequencyValue;
}

/// {@category Struct}
class DOT11_BSSID_CANDIDATE extends Struct {
  @Array(6)
  external Array<Uint8> BSSID;

  @Uint32()
  external int uFlags;
}

/// {@category Struct}
class DOT11_BSSID_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(6)
  external Array<Uint8> BSSIDs;
}

/// {@category Struct}
class DOT11_BSS_DESCRIPTION extends Struct {
  @Uint32()
  external int uReserved;

  @Array(6)
  external Array<Uint8> dot11BSSID;

  @Int32()
  external int dot11BSSType;

  @Uint16()
  external int usBeaconPeriod;

  @Uint64()
  external int ullTimestamp;

  @Uint16()
  external int usCapabilityInformation;

  @Uint32()
  external int uBufferLength;

  @Array(1)
  external Array<Uint8> ucBuffer;
}

/// {@category Struct}
class DOT11_BSS_ENTRY extends Struct {
  @Uint32()
  external int uPhyId;

  external DOT11_BSS_ENTRY_PHY_SPECIFIC_INFO PhySpecificInfo;

  @Array(6)
  external Array<Uint8> dot11BSSID;

  @Int32()
  external int dot11BSSType;

  @Int32()
  external int lRSSI;

  @Uint32()
  external int uLinkQuality;

  @Uint8()
  external int bInRegDomain;

  @Uint16()
  external int usBeaconPeriod;

  @Uint64()
  external int ullTimestamp;

  @Uint64()
  external int ullHostTimestamp;

  @Uint16()
  external int usCapabilityInformation;

  @Uint32()
  external int uBufferLength;

  @Array(1)
  external Array<Uint8> ucBuffer;
}

/// {@category Struct}
class DOT11_BSS_ENTRY_PHY_SPECIFIC_INFO extends Union {
  @Uint32()
  external int uChCenterFrequency;

  external _DOT11_BSS_ENTRY_PHY_SPECIFIC_INFO__FHSS_e__Struct FHSS;
}

/// {@category Struct}
class _DOT11_BSS_ENTRY_PHY_SPECIFIC_INFO__FHSS_e__Struct extends Struct {
  @Uint32()
  external int uHopPattern;

  @Uint32()
  external int uHopSet;

  @Uint32()
  external int uDwellTime;
}

extension DOT11_BSS_ENTRY_PHY_SPECIFIC_INFO_Extension
    on DOT11_BSS_ENTRY_PHY_SPECIFIC_INFO {
  int get uHopPattern => this.FHSS.uHopPattern;
  set uHopPattern(int value) => this.FHSS.uHopPattern = value;

  int get uHopSet => this.FHSS.uHopSet;
  set uHopSet(int value) => this.FHSS.uHopSet = value;

  int get uDwellTime => this.FHSS.uDwellTime;
  set uDwellTime(int value) => this.FHSS.uDwellTime = value;
}

/// {@category Struct}
class DOT11_BYTE_ARRAY extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfBytes;

  @Uint32()
  external int uTotalNumOfBytes;

  @Array(1)
  external Array<Uint8> ucBuffer;
}

/// {@category Struct}
class DOT11_CAN_SUSTAIN_AP_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int ulReason;
}

/// {@category Struct}
class DOT11_CHANNEL_HINT extends Struct {
  @Int32()
  external int Dot11PhyType;

  @Uint32()
  external int uChannelNumber;
}

/// {@category Struct}
class DOT11_CIPHER_ALGORITHM_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<Int32> AlgorithmIds;
}

/// {@category Struct}
class DOT11_CIPHER_DEFAULT_KEY_VALUE extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uKeyIndex;

  @Int32()
  external int AlgorithmId;

  @Array(6)
  external Array<Uint8> MacAddr;

  @Uint8()
  external int bDelete;

  @Uint8()
  external int bStatic;

  @Uint16()
  external int usKeyLength;

  @Array(1)
  external Array<Uint8> ucKey;
}

/// {@category Struct}
class DOT11_CIPHER_KEY_MAPPING_KEY_VALUE extends Struct {
  @Array(6)
  external Array<Uint8> PeerMacAddr;

  @Int32()
  external int AlgorithmId;

  @Int32()
  external int Direction;

  @Uint8()
  external int bDelete;

  @Uint8()
  external int bStatic;

  @Uint16()
  external int usKeyLength;

  @Array(1)
  external Array<Uint8> ucKey;
}

/// {@category Struct}
class DOT11_CONNECTION_COMPLETION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uStatus;
}

/// {@category Struct}
class DOT11_CONNECTION_START_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int BSSType;

  @Array(6)
  external Array<Uint8> AdhocBSSID;

  external DOT11_SSID AdhocSSID;
}

/// {@category Struct}
class DOT11_COUNTERS_ENTRY extends Struct {
  @Uint32()
  external int uTransmittedFragmentCount;

  @Uint32()
  external int uMulticastTransmittedFrameCount;

  @Uint32()
  external int uFailedCount;

  @Uint32()
  external int uRetryCount;

  @Uint32()
  external int uMultipleRetryCount;

  @Uint32()
  external int uFrameDuplicateCount;

  @Uint32()
  external int uRTSSuccessCount;

  @Uint32()
  external int uRTSFailureCount;

  @Uint32()
  external int uACKFailureCount;

  @Uint32()
  external int uReceivedFragmentCount;

  @Uint32()
  external int uMulticastReceivedFrameCount;

  @Uint32()
  external int uFCSErrorCount;

  @Uint32()
  external int uTransmittedFrameCount;
}

/// {@category Struct}
class DOT11_COUNTRY_OR_REGION_STRING_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(3)
  external Array<Uint8> CountryOrRegionStrings;
}

/// {@category Struct}
class DOT11_CURRENT_OFFLOAD_CAPABILITY extends Struct {
  @Uint32()
  external int uReserved;

  @Uint32()
  external int uFlags;
}

/// {@category Struct}
class DOT11_CURRENT_OPERATION_MODE extends Struct {
  @Uint32()
  external int uReserved;

  @Uint32()
  external int uCurrentOpMode;
}

/// {@category Struct}
class DOT11_CURRENT_OPTIONAL_CAPABILITY extends Struct {
  @Uint32()
  external int uReserved;

  @Uint8()
  external int bDot11CFPollable;

  @Uint8()
  external int bDot11PCF;

  @Uint8()
  external int bDot11PCFMPDUTransferToPC;

  @Uint8()
  external int bStrictlyOrderedServiceClass;
}

/// {@category Struct}
class DOT11_DATA_RATE_MAPPING_ENTRY extends Struct {
  @Uint8()
  external int ucDataRateIndex;

  @Uint8()
  external int ucDataRateFlag;

  @Uint16()
  external int usDataRateValue;
}

/// {@category Struct}
class DOT11_DATA_RATE_MAPPING_TABLE extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uDataRateMappingLength;

  @Array(126)
  external Array<DOT11_DATA_RATE_MAPPING_ENTRY> DataRateMappingEntries;
}

/// {@category Struct}
class DOT11_DEFAULT_WEP_OFFLOAD extends Struct {
  @Uint32()
  external int uReserved;

  @IntPtr()
  external int hOffloadContext;

  @IntPtr()
  external int hOffload;

  @Uint32()
  external int dwIndex;

  @Int32()
  external int dot11OffloadType;

  @Uint32()
  external int dwAlgorithm;

  @Uint32()
  external int uFlags;

  @Int32()
  external int dot11KeyDirection;

  @Array(6)
  external Array<Uint8> ucMacAddress;

  @Uint32()
  external int uNumOfRWsOnMe;

  @Array(16)
  external Array<DOT11_IV48_COUNTER> dot11IV48Counters;

  @Array(16)
  external Array<Uint16> usDot11RWBitMaps;

  @Uint16()
  external int usKeyLength;

  @Array(1)
  external Array<Uint8> ucKey;
}

/// {@category Struct}
class DOT11_DEFAULT_WEP_UPLOAD extends Struct {
  @Uint32()
  external int uReserved;

  @Int32()
  external int dot11OffloadType;

  @IntPtr()
  external int hOffload;

  @Uint32()
  external int uNumOfRWsUsed;

  @Array(16)
  external Array<DOT11_IV48_COUNTER> dot11IV48Counters;

  @Array(16)
  external Array<Uint16> usDot11RWBitMaps;
}

/// {@category Struct}
class DOT11_DISASSOCIATE_PEER_REQUEST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerMacAddr;

  @Uint16()
  external int usReason;
}

/// {@category Struct}
class DOT11_DISASSOCIATION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> MacAddr;

  @Uint32()
  external int uReason;

  @Uint32()
  external int uIHVDataOffset;

  @Uint32()
  external int uIHVDataSize;
}

/// {@category Struct}
class DOT11_DIVERSITY_SELECTION_RX extends Struct {
  @Uint32()
  external int uAntennaListIndex;

  @Uint8()
  external int bDiversitySelectionRX;
}

/// {@category Struct}
class DOT11_DIVERSITY_SELECTION_RX_LIST extends Struct {
  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_DIVERSITY_SELECTION_RX> dot11DiversitySelectionRx;
}

/// {@category Struct}
class DOT11_ENCAP_ENTRY extends Struct {
  @Uint16()
  external int usEtherType;

  @Uint16()
  external int usEncapType;
}

/// {@category Struct}
class DOT11_ERP_PHY_ATTRIBUTES extends Struct {
  external DOT11_HRDSSS_PHY_ATTRIBUTES HRDSSSAttributes;

  @Uint8()
  external int bERPPBCCOptionImplemented;

  @Uint8()
  external int bDSSSOFDMOptionImplemented;

  @Uint8()
  external int bShortSlotTimeOptionImplemented;
}

/// {@category Struct}
class DOT11_EXTAP_ATTRIBUTES extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uScanSSIDListSize;

  @Uint32()
  external int uDesiredSSIDListSize;

  @Uint32()
  external int uPrivacyExemptionListSize;

  @Uint32()
  external int uAssociationTableSize;

  @Uint32()
  external int uDefaultKeyTableSize;

  @Uint32()
  external int uWEPKeyValueMaxLength;

  @Uint8()
  external int bStrictlyOrderedServiceClassImplemented;

  @Uint32()
  external int uNumSupportedCountryOrRegionStrings;

  external Pointer<Uint8> pSupportedCountryOrRegionStrings;

  @Uint32()
  external int uInfraNumSupportedUcastAlgoPairs;

  external Pointer<DOT11_AUTH_CIPHER_PAIR> pInfraSupportedUcastAlgoPairs;

  @Uint32()
  external int uInfraNumSupportedMcastAlgoPairs;

  external Pointer<DOT11_AUTH_CIPHER_PAIR> pInfraSupportedMcastAlgoPairs;
}

/// {@category Struct}
class DOT11_EXTSTA_ATTRIBUTES extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uScanSSIDListSize;

  @Uint32()
  external int uDesiredBSSIDListSize;

  @Uint32()
  external int uDesiredSSIDListSize;

  @Uint32()
  external int uExcludedMacAddressListSize;

  @Uint32()
  external int uPrivacyExemptionListSize;

  @Uint32()
  external int uKeyMappingTableSize;

  @Uint32()
  external int uDefaultKeyTableSize;

  @Uint32()
  external int uWEPKeyValueMaxLength;

  @Uint32()
  external int uPMKIDCacheSize;

  @Uint32()
  external int uMaxNumPerSTADefaultKeyTables;

  @Uint8()
  external int bStrictlyOrderedServiceClassImplemented;

  @Uint8()
  external int ucSupportedQoSProtocolFlags;

  @Uint8()
  external int bSafeModeImplemented;

  @Uint32()
  external int uNumSupportedCountryOrRegionStrings;

  external Pointer<Uint8> pSupportedCountryOrRegionStrings;

  @Uint32()
  external int uInfraNumSupportedUcastAlgoPairs;

  external Pointer<DOT11_AUTH_CIPHER_PAIR> pInfraSupportedUcastAlgoPairs;

  @Uint32()
  external int uInfraNumSupportedMcastAlgoPairs;

  external Pointer<DOT11_AUTH_CIPHER_PAIR> pInfraSupportedMcastAlgoPairs;

  @Uint32()
  external int uAdhocNumSupportedUcastAlgoPairs;

  external Pointer<DOT11_AUTH_CIPHER_PAIR> pAdhocSupportedUcastAlgoPairs;

  @Uint32()
  external int uAdhocNumSupportedMcastAlgoPairs;

  external Pointer<DOT11_AUTH_CIPHER_PAIR> pAdhocSupportedMcastAlgoPairs;

  @Uint8()
  external int bAutoPowerSaveMode;

  @Uint32()
  external int uMaxNetworkOffloadListSize;

  @Uint8()
  external int bMFPCapable;

  @Uint32()
  external int uInfraNumSupportedMcastMgmtAlgoPairs;

  external Pointer<DOT11_AUTH_CIPHER_PAIR> pInfraSupportedMcastMgmtAlgoPairs;

  @Uint8()
  external int bNeighborReportSupported;

  @Uint8()
  external int bAPChannelReportSupported;

  @Uint8()
  external int bActionFramesSupported;

  @Uint8()
  external int bANQPQueryOffloadSupported;

  @Uint8()
  external int bHESSIDConnectionSupported;
}

/// {@category Struct}
class DOT11_EXTSTA_CAPABILITY extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uScanSSIDListSize;

  @Uint32()
  external int uDesiredBSSIDListSize;

  @Uint32()
  external int uDesiredSSIDListSize;

  @Uint32()
  external int uExcludedMacAddressListSize;

  @Uint32()
  external int uPrivacyExemptionListSize;

  @Uint32()
  external int uKeyMappingTableSize;

  @Uint32()
  external int uDefaultKeyTableSize;

  @Uint32()
  external int uWEPKeyValueMaxLength;

  @Uint32()
  external int uPMKIDCacheSize;

  @Uint32()
  external int uMaxNumPerSTADefaultKeyTables;
}

/// {@category Struct}
class DOT11_EXTSTA_RECV_CONTEXT extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uReceiveFlags;

  @Uint32()
  external int uPhyId;

  @Uint32()
  external int uChCenterFrequency;

  @Uint16()
  external int usNumberOfMPDUsReceived;

  @Int32()
  external int lRSSI;

  @Uint8()
  external int ucDataRate;

  @Uint32()
  external int uSizeMediaSpecificInfo;

  external Pointer pvMediaSpecificInfo;

  @Uint64()
  external int ullTimestamp;
}

/// {@category Struct}
class DOT11_EXTSTA_SEND_CONTEXT extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint16()
  external int usExemptionActionType;

  @Uint32()
  external int uPhyId;

  @Uint32()
  external int uDelayedSleepValue;

  external Pointer pvMediaSpecificInfo;

  @Uint32()
  external int uSendFlags;
}

/// {@category Struct}
class DOT11_FRAGMENT_DESCRIPTOR extends Struct {
  @Uint32()
  external int uOffset;

  @Uint32()
  external int uLength;
}

/// {@category Struct}
class DOT11_GO_NEGOTIATION_CONFIRMATION_SEND_COMPLETE_PARAMETERS
    extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Uint8()
  external int DialogToken;

  @Int32()
  external int Status;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_GO_NEGOTIATION_REQUEST_SEND_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Uint8()
  external int DialogToken;

  @Int32()
  external int Status;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_GO_NEGOTIATION_RESPONSE_SEND_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Uint8()
  external int DialogToken;

  @Int32()
  external int Status;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_HOPPING_PATTERN_ENTRY extends Struct {
  @Uint32()
  external int uHoppingPatternIndex;

  @Uint32()
  external int uRandomTableFieldNumber;
}

/// {@category Struct}
class DOT11_HOPPING_PATTERN_ENTRY_LIST extends Struct {
  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_HOPPING_PATTERN_ENTRY> dot11HoppingPatternEntry;
}

/// {@category Struct}
class DOT11_HRDSSS_PHY_ATTRIBUTES extends Struct {
  @Uint8()
  external int bShortPreambleOptionImplemented;

  @Uint8()
  external int bPBCCOptionImplemented;

  @Uint8()
  external int bChannelAgilityPresent;

  @Uint32()
  external int uHRCCAModeSupported;
}

/// {@category Struct}
class DOT11_IBSS_PARAMS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint8()
  external int bJoinOnly;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_INCOMING_ASSOC_COMPLETION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerMacAddr;

  @Uint32()
  external int uStatus;

  @Uint8()
  external int ucErrorSource;

  @Uint8()
  external int bReAssocReq;

  @Uint8()
  external int bReAssocResp;

  @Uint32()
  external int uAssocReqOffset;

  @Uint32()
  external int uAssocReqSize;

  @Uint32()
  external int uAssocRespOffset;

  @Uint32()
  external int uAssocRespSize;

  @Int32()
  external int AuthAlgo;

  @Int32()
  external int UnicastCipher;

  @Int32()
  external int MulticastCipher;

  @Uint32()
  external int uActivePhyListOffset;

  @Uint32()
  external int uActivePhyListSize;

  @Uint32()
  external int uBeaconOffset;

  @Uint32()
  external int uBeaconSize;
}

/// {@category Struct}
class DOT11_INCOMING_ASSOC_DECISION extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerMacAddr;

  @Uint8()
  external int bAccept;

  @Uint16()
  external int usReasonCode;

  @Uint32()
  external int uAssocResponseIEsOffset;

  @Uint32()
  external int uAssocResponseIEsLength;
}

/// {@category Struct}
class DOT11_INCOMING_ASSOC_DECISION_V2 extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerMacAddr;

  @Uint8()
  external int bAccept;

  @Uint16()
  external int usReasonCode;

  @Uint32()
  external int uAssocResponseIEsOffset;

  @Uint32()
  external int uAssocResponseIEsLength;

  @Uint8()
  external int WFDStatus;
}

/// {@category Struct}
class DOT11_INCOMING_ASSOC_REQUEST_RECEIVED_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerMacAddr;

  @Uint8()
  external int bReAssocReq;

  @Uint32()
  external int uAssocReqOffset;

  @Uint32()
  external int uAssocReqSize;
}

/// {@category Struct}
class DOT11_INCOMING_ASSOC_STARTED_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerMacAddr;
}

/// {@category Struct}
class DOT11_INVITATION_REQUEST_SEND_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Array(6)
  external Array<Uint8> ReceiverAddress;

  @Uint8()
  external int DialogToken;

  @Int32()
  external int Status;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_INVITATION_RESPONSE_SEND_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> ReceiverDeviceAddress;

  @Uint8()
  external int DialogToken;

  @Int32()
  external int Status;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_IV48_COUNTER extends Struct {
  @Uint32()
  external int uIV32Counter;

  @Uint16()
  external int usIV16Counter;
}

/// {@category Struct}
class DOT11_JOIN_REQUEST extends Struct {
  @Uint32()
  external int uJoinFailureTimeout;

  external DOT11_RATE_SET OperationalRateSet;

  @Uint32()
  external int uChCenterFrequency;

  external DOT11_BSS_DESCRIPTION dot11BSSDescription;
}

/// {@category Struct}
class DOT11_KEY_ALGO_BIP extends Struct {
  @Array(6)
  external Array<Uint8> ucIPN;

  @Uint32()
  external int ulBIPKeyLength;

  @Array(1)
  external Array<Uint8> ucBIPKey;
}

/// {@category Struct}
class DOT11_KEY_ALGO_BIP_GMAC_256 extends Struct {
  @Array(6)
  external Array<Uint8> ucIPN;

  @Uint32()
  external int ulBIPGmac256KeyLength;

  @Array(1)
  external Array<Uint8> ucBIPGmac256Key;
}

/// {@category Struct}
class DOT11_KEY_ALGO_CCMP extends Struct {
  @Array(6)
  external Array<Uint8> ucIV48Counter;

  @Uint32()
  external int ulCCMPKeyLength;

  @Array(1)
  external Array<Uint8> ucCCMPKey;
}

/// {@category Struct}
class DOT11_KEY_ALGO_GCMP extends Struct {
  @Array(6)
  external Array<Uint8> ucIV48Counter;

  @Uint32()
  external int ulGCMPKeyLength;

  @Array(1)
  external Array<Uint8> ucGCMPKey;
}

/// {@category Struct}
class DOT11_KEY_ALGO_GCMP_256 extends Struct {
  @Array(6)
  external Array<Uint8> ucIV48Counter;

  @Uint32()
  external int ulGCMP256KeyLength;

  @Array(1)
  external Array<Uint8> ucGCMP256Key;
}

/// {@category Struct}
class DOT11_KEY_ALGO_TKIP_MIC extends Struct {
  @Array(6)
  external Array<Uint8> ucIV48Counter;

  @Uint32()
  external int ulTKIPKeyLength;

  @Uint32()
  external int ulMICKeyLength;

  @Array(1)
  external Array<Uint8> ucTKIPMICKeys;
}

/// {@category Struct}
class DOT11_LINK_QUALITY_ENTRY extends Struct {
  @Array(6)
  external Array<Uint8> PeerMacAddr;

  @Uint8()
  external int ucLinkQuality;
}

/// {@category Struct}
class DOT11_LINK_QUALITY_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uLinkQualityListSize;

  @Uint32()
  external int uLinkQualityListOffset;
}

/// {@category Struct}
class DOT11_MAC_ADDRESS_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(6)
  external Array<Uint8> MacAddrs;
}

/// {@category Struct}
class DOT11_MAC_FRAME_STATISTICS extends Struct {
  @Uint64()
  external int ullTransmittedFrameCount;

  @Uint64()
  external int ullReceivedFrameCount;

  @Uint64()
  external int ullTransmittedFailureFrameCount;

  @Uint64()
  external int ullReceivedFailureFrameCount;

  @Uint64()
  external int ullWEPExcludedCount;

  @Uint64()
  external int ullTKIPLocalMICFailures;

  @Uint64()
  external int ullTKIPReplays;

  @Uint64()
  external int ullTKIPICVErrorCount;

  @Uint64()
  external int ullCCMPReplays;

  @Uint64()
  external int ullCCMPDecryptErrors;

  @Uint64()
  external int ullWEPUndecryptableCount;

  @Uint64()
  external int ullWEPICVErrorCount;

  @Uint64()
  external int ullDecryptSuccessCount;

  @Uint64()
  external int ullDecryptFailureCount;
}

/// {@category Struct}
class DOT11_MAC_INFO extends Struct {
  @Uint32()
  external int uReserved;

  @Uint32()
  external int uNdisPortNumber;

  @Array(6)
  external Array<Uint8> MacAddr;
}

/// {@category Struct}
class DOT11_MAC_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uOpmodeMask;
}

/// {@category Struct}
class DOT11_MANUFACTURING_CALLBACK_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int dot11ManufacturingCallbackType;

  @Uint32()
  external int uStatus;

  external Pointer pvContext;
}

/// {@category Struct}
class DOT11_MANUFACTURING_FUNCTIONAL_TEST_QUERY_ADC extends Struct {
  @Int32()
  external int Dot11Band;

  @Uint32()
  external int uChannel;

  @Int32()
  external int ADCPowerLevel;
}

/// {@category Struct}
class DOT11_MANUFACTURING_FUNCTIONAL_TEST_RX extends Struct {
  @Uint8()
  external int bEnabled;

  @Int32()
  external int Dot11Band;

  @Uint32()
  external int uChannel;

  @Int32()
  external int PowerLevel;
}

/// {@category Struct}
class DOT11_MANUFACTURING_FUNCTIONAL_TEST_TX extends Struct {
  @Uint8()
  external int bEnable;

  @Uint8()
  external int bOpenLoop;

  @Int32()
  external int Dot11Band;

  @Uint32()
  external int uChannel;

  @Uint32()
  external int uSetPowerLevel;

  @Int32()
  external int ADCPowerLevel;
}

/// {@category Struct}
class DOT11_MANUFACTURING_SELF_TEST_QUERY_RESULTS extends Struct {
  @Int32()
  external int SelfTestType;

  @Uint32()
  external int uTestID;

  @Uint8()
  external int bResult;

  @Uint32()
  external int uPinFailedBitMask;

  external Pointer pvContext;

  @Uint32()
  external int uBytesWrittenOut;

  @Array(1)
  external Array<Uint8> ucBufferOut;
}

/// {@category Struct}
class DOT11_MANUFACTURING_SELF_TEST_SET_PARAMS extends Struct {
  @Int32()
  external int SelfTestType;

  @Uint32()
  external int uTestID;

  @Uint32()
  external int uPinBitMask;

  external Pointer pvContext;

  @Uint32()
  external int uBufferLength;

  @Array(1)
  external Array<Uint8> ucBufferIn;
}

/// {@category Struct}
class DOT11_MANUFACTURING_TEST extends Struct {
  @Int32()
  external int dot11ManufacturingTestType;

  @Uint32()
  external int uBufferLength;

  @Array(1)
  external Array<Uint8> ucBuffer;
}

/// {@category Struct}
class DOT11_MANUFACTURING_TEST_QUERY_DATA extends Struct {
  @Uint32()
  external int uKey;

  @Uint32()
  external int uOffset;

  @Uint32()
  external int uBufferLength;

  @Uint32()
  external int uBytesRead;

  @Array(1)
  external Array<Uint8> ucBufferOut;
}

/// {@category Struct}
class DOT11_MANUFACTURING_TEST_SET_DATA extends Struct {
  @Uint32()
  external int uKey;

  @Uint32()
  external int uOffset;

  @Uint32()
  external int uBufferLength;

  @Array(1)
  external Array<Uint8> ucBufferIn;
}

/// {@category Struct}
class DOT11_MANUFACTURING_TEST_SLEEP extends Struct {
  @Uint32()
  external int uSleepTime;

  external Pointer pvContext;
}

/// {@category Struct}
class DOT11_MD_CAPABILITY_ENTRY_LIST extends Struct {
  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_MULTI_DOMAIN_CAPABILITY_ENTRY> dot11MDCapabilityEntry;
}

/// {@category Struct}
class DOT11_MPDU_MAX_LENGTH_INDICATION extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uPhyId;

  @Uint32()
  external int uMPDUMaxLength;
}

/// {@category Struct}
class DOT11_MULTI_DOMAIN_CAPABILITY_ENTRY extends Struct {
  @Uint32()
  external int uMultiDomainCapabilityIndex;

  @Uint32()
  external int uFirstChannelNumber;

  @Uint32()
  external int uNumberOfChannels;

  @Int32()
  external int lMaximumTransmitPowerLevel;
}

/// {@category Struct}
class DOT11_NETWORK extends Struct {
  external DOT11_SSID dot11Ssid;

  @Int32()
  external int dot11BssType;
}

/// {@category Struct}
class DOT11_NETWORK_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Uint32()
  external int dwIndex;

  @Array(1)
  external Array<DOT11_NETWORK> Network;
}

/// {@category Struct}
class DOT11_NIC_SPECIFIC_EXTENSION extends Struct {
  @Uint32()
  external int uBufferLength;

  @Uint32()
  external int uTotalBufferLength;

  @Array(1)
  external Array<Uint8> ucBuffer;
}

/// {@category Struct}
class DOT11_OFDM_PHY_ATTRIBUTES extends Struct {
  @Uint32()
  external int uFrequencyBandsSupported;
}

/// {@category Struct}
class DOT11_OFFLOAD_CAPABILITY extends Struct {
  @Uint32()
  external int uReserved;

  @Uint32()
  external int uFlags;

  @Uint32()
  external int uSupportedWEPAlgorithms;

  @Uint32()
  external int uNumOfReplayWindows;

  @Uint32()
  external int uMaxWEPKeyMappingLength;

  @Uint32()
  external int uSupportedAuthAlgorithms;

  @Uint32()
  external int uMaxAuthKeyMappingLength;
}

/// {@category Struct}
class DOT11_OFFLOAD_NETWORK extends Struct {
  external DOT11_SSID Ssid;

  @Int32()
  external int UnicastCipher;

  @Int32()
  external int AuthAlgo;

  @Array(4)
  external Array<DOT11_CHANNEL_HINT> Dot11ChannelHints;
}

/// {@category Struct}
class DOT11_OFFLOAD_NETWORK_LIST_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int ulFlags;

  @Uint32()
  external int FastScanPeriod;

  @Uint32()
  external int FastScanIterations;

  @Uint32()
  external int SlowScanPeriod;

  @Uint32()
  external int uNumOfEntries;

  @Array(1)
  external Array<DOT11_OFFLOAD_NETWORK> offloadNetworkList;
}

/// {@category Struct}
class DOT11_OFFLOAD_NETWORK_STATUS_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int Status;
}

/// {@category Struct}
class DOT11_OI extends Struct {
  @Uint16()
  external int OILength;

  @Array(5)
  external Array<Uint8> OI;
}

/// {@category Struct}
class DOT11_OPERATION_MODE_CAPABILITY extends Struct {
  @Uint32()
  external int uReserved;

  @Uint32()
  external int uMajorVersion;

  @Uint32()
  external int uMinorVersion;

  @Uint32()
  external int uNumOfTXBuffers;

  @Uint32()
  external int uNumOfRXBuffers;

  @Uint32()
  external int uOpModeCapability;
}

/// {@category Struct}
class DOT11_OPTIONAL_CAPABILITY extends Struct {
  @Uint32()
  external int uReserved;

  @Uint8()
  external int bDot11PCF;

  @Uint8()
  external int bDot11PCFMPDUTransferToPC;

  @Uint8()
  external int bStrictlyOrderedServiceClass;
}

/// {@category Struct}
class DOT11_PEER_INFO extends Struct {
  @Array(6)
  external Array<Uint8> MacAddress;

  @Uint16()
  external int usCapabilityInformation;

  @Int32()
  external int AuthAlgo;

  @Int32()
  external int UnicastCipherAlgo;

  @Int32()
  external int MulticastCipherAlgo;

  @Uint8()
  external int bWpsEnabled;

  @Uint16()
  external int usListenInterval;

  @Array(255)
  external Array<Uint8> ucSupportedRates;

  @Uint16()
  external int usAssociationID;

  @Int32()
  external int AssociationState;

  @Int32()
  external int PowerMode;

  @Int64()
  external int liAssociationUpTime;

  external DOT11_PEER_STATISTICS Statistics;
}

/// {@category Struct}
class DOT11_PEER_INFO_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_PEER_INFO> PeerInfo;
}

/// {@category Struct}
class DOT11_PEER_STATISTICS extends Struct {
  @Uint64()
  external int ullDecryptSuccessCount;

  @Uint64()
  external int ullDecryptFailureCount;

  @Uint64()
  external int ullTxPacketSuccessCount;

  @Uint64()
  external int ullTxPacketFailureCount;

  @Uint64()
  external int ullRxPacketSuccessCount;

  @Uint64()
  external int ullRxPacketFailureCount;
}

/// {@category Struct}
class DOT11_PER_MSDU_COUNTERS extends Struct {
  @Uint32()
  external int uTransmittedFragmentCount;

  @Uint32()
  external int uRetryCount;

  @Uint32()
  external int uRTSSuccessCount;

  @Uint32()
  external int uRTSFailureCount;

  @Uint32()
  external int uACKFailureCount;
}

/// {@category Struct}
class DOT11_PHY_ATTRIBUTES extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int PhyType;

  @Uint8()
  external int bHardwarePhyState;

  @Uint8()
  external int bSoftwarePhyState;

  @Uint8()
  external int bCFPollable;

  @Uint32()
  external int uMPDUMaxLength;

  @Int32()
  external int TempType;

  @Int32()
  external int DiversitySupport;

  external _DOT11_PHY_ATTRIBUTES__PhySpecificAttributes_e__Union
      PhySpecificAttributes;

  @Uint32()
  external int uNumberSupportedPowerLevels;

  @Array(8)
  external Array<Uint32> TxPowerLevels;

  @Uint32()
  external int uNumDataRateMappingEntries;

  @Array(126)
  external Array<DOT11_DATA_RATE_MAPPING_ENTRY> DataRateMappingEntries;

  external DOT11_SUPPORTED_DATA_RATES_VALUE_V2 SupportedDataRatesValue;
}

/// {@category Struct}
class _DOT11_PHY_ATTRIBUTES__PhySpecificAttributes_e__Union extends Union {
  external DOT11_HRDSSS_PHY_ATTRIBUTES HRDSSSAttributes;

  external DOT11_OFDM_PHY_ATTRIBUTES OFDMAttributes;

  external DOT11_ERP_PHY_ATTRIBUTES ERPAttributes;
}

extension DOT11_PHY_ATTRIBUTES_Extension on DOT11_PHY_ATTRIBUTES {
  DOT11_HRDSSS_PHY_ATTRIBUTES get HRDSSSAttributes =>
      this.PhySpecificAttributes.HRDSSSAttributes;
  set HRDSSSAttributes(DOT11_HRDSSS_PHY_ATTRIBUTES value) =>
      this.PhySpecificAttributes.HRDSSSAttributes = value;

  DOT11_OFDM_PHY_ATTRIBUTES get OFDMAttributes =>
      this.PhySpecificAttributes.OFDMAttributes;
  set OFDMAttributes(DOT11_OFDM_PHY_ATTRIBUTES value) =>
      this.PhySpecificAttributes.OFDMAttributes = value;

  DOT11_ERP_PHY_ATTRIBUTES get ERPAttributes =>
      this.PhySpecificAttributes.ERPAttributes;
  set ERPAttributes(DOT11_ERP_PHY_ATTRIBUTES value) =>
      this.PhySpecificAttributes.ERPAttributes = value;
}

/// {@category Struct}
class DOT11_PHY_FRAME_STATISTICS extends Struct {
  @Uint64()
  external int ullTransmittedFrameCount;

  @Uint64()
  external int ullMulticastTransmittedFrameCount;

  @Uint64()
  external int ullFailedCount;

  @Uint64()
  external int ullRetryCount;

  @Uint64()
  external int ullMultipleRetryCount;

  @Uint64()
  external int ullMaxTXLifetimeExceededCount;

  @Uint64()
  external int ullTransmittedFragmentCount;

  @Uint64()
  external int ullRTSSuccessCount;

  @Uint64()
  external int ullRTSFailureCount;

  @Uint64()
  external int ullACKFailureCount;

  @Uint64()
  external int ullReceivedFrameCount;

  @Uint64()
  external int ullMulticastReceivedFrameCount;

  @Uint64()
  external int ullPromiscuousReceivedFrameCount;

  @Uint64()
  external int ullMaxRXLifetimeExceededCount;

  @Uint64()
  external int ullFrameDuplicateCount;

  @Uint64()
  external int ullReceivedFragmentCount;

  @Uint64()
  external int ullPromiscuousReceivedFragmentCount;

  @Uint64()
  external int ullFCSErrorCount;
}

/// {@category Struct}
class DOT11_PHY_FREQUENCY_ADOPTED_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int ulPhyId;

  external _DOT11_PHY_FREQUENCY_ADOPTED_PARAMETERS__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _DOT11_PHY_FREQUENCY_ADOPTED_PARAMETERS__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int ulChannel;

  @Uint32()
  external int ulFrequency;
}

extension DOT11_PHY_FREQUENCY_ADOPTED_PARAMETERS_Extension
    on DOT11_PHY_FREQUENCY_ADOPTED_PARAMETERS {
  int get ulChannel => this.Anonymous.ulChannel;
  set ulChannel(int value) => this.Anonymous.ulChannel = value;

  int get ulFrequency => this.Anonymous.ulFrequency;
  set ulFrequency(int value) => this.Anonymous.ulFrequency = value;
}

/// {@category Struct}
class DOT11_PHY_ID_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<Uint32> dot11PhyId;
}

/// {@category Struct}
class DOT11_PHY_STATE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uPhyId;

  @Uint8()
  external int bHardwarePhyState;

  @Uint8()
  external int bSoftwarePhyState;
}

/// {@category Struct}
class DOT11_PHY_TYPE_INFO extends Struct {
  @Int32()
  external int dot11PhyType;

  @Uint8()
  external int bUseParameters;

  @Uint32()
  external int uProbeDelay;

  @Uint32()
  external int uMinChannelTime;

  @Uint32()
  external int uMaxChannelTime;

  @Int32()
  external int ChDescriptionType;

  @Uint32()
  external int uChannelListSize;

  @Array(1)
  external Array<Uint8> ucChannelListBuffer;
}

/// {@category Struct}
class DOT11_PHY_TYPE_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<Int32> dot11PhyType;
}

/// {@category Struct}
class DOT11_PMKID_CANDIDATE_LIST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uCandidateListSize;

  @Uint32()
  external int uCandidateListOffset;
}

/// {@category Struct}
class DOT11_PMKID_ENTRY extends Struct {
  @Array(6)
  external Array<Uint8> BSSID;

  @Array(16)
  external Array<Uint8> PMKID;

  @Uint32()
  external int uFlags;
}

/// {@category Struct}
class DOT11_PMKID_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_PMKID_ENTRY> PMKIDs;
}

/// {@category Struct}
class DOT11_PORT_STATE_NOTIFICATION extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerMac;

  @Uint8()
  external int bOpen;
}

/// {@category Struct}
class DOT11_POWER_MGMT_AUTO_MODE_ENABLED_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint8()
  external int bEnabled;
}

/// {@category Struct}
class DOT11_POWER_MGMT_MODE extends Struct {
  @Int32()
  external int dot11PowerMode;

  @Uint32()
  external int uPowerSaveLevel;

  @Uint16()
  external int usListenInterval;

  @Uint16()
  external int usAID;

  @Uint8()
  external int bReceiveDTIMs;
}

/// {@category Struct}
class DOT11_POWER_MGMT_MODE_STATUS_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int PowerSaveMode;

  @Uint32()
  external int uPowerSaveLevel;

  @Int32()
  external int Reason;
}

/// {@category Struct}
class DOT11_PRIVACY_EXEMPTION extends Struct {
  @Uint16()
  external int usEtherType;

  @Uint16()
  external int usExemptionActionType;

  @Uint16()
  external int usExemptionPacketType;
}

/// {@category Struct}
class DOT11_PRIVACY_EXEMPTION_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_PRIVACY_EXEMPTION> PrivacyExemptionEntries;
}

/// {@category Struct}
class DOT11_PROVISION_DISCOVERY_REQUEST_SEND_COMPLETE_PARAMETERS
    extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Array(6)
  external Array<Uint8> ReceiverAddress;

  @Uint8()
  external int DialogToken;

  @Int32()
  external int Status;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_PROVISION_DISCOVERY_RESPONSE_SEND_COMPLETE_PARAMETERS
    extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> ReceiverDeviceAddress;

  @Uint8()
  external int DialogToken;

  @Int32()
  external int Status;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_QOS_PARAMS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint8()
  external int ucEnabledQoSProtocolFlags;
}

/// {@category Struct}
class DOT11_QOS_TX_DURATION extends Struct {
  @Uint32()
  external int uNominalMSDUSize;

  @Uint32()
  external int uMinPHYRate;

  @Uint32()
  external int uDuration;
}

/// {@category Struct}
class DOT11_QOS_TX_MEDIUM_TIME extends Struct {
  @Array(6)
  external Array<Uint8> dot11PeerAddress;

  @Uint8()
  external int ucQoSPriority;

  @Uint32()
  external int uMediumTimeAdmited;
}

/// {@category Struct}
class DOT11_RATE_SET extends Struct {
  @Uint32()
  external int uRateSetLength;

  @Array(126)
  external Array<Uint8> ucRateSet;
}

/// {@category Struct}
class DOT11_RECEIVED_GO_NEGOTIATION_CONFIRMATION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Uint8()
  external int DialogToken;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_RECEIVED_GO_NEGOTIATION_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Uint8()
  external int DialogToken;

  external Pointer RequestContext;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_RECEIVED_GO_NEGOTIATION_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Uint8()
  external int DialogToken;

  external Pointer ResponseContext;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_RECEIVED_INVITATION_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> TransmitterDeviceAddress;

  @Array(6)
  external Array<Uint8> BSSID;

  @Uint8()
  external int DialogToken;

  external Pointer RequestContext;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_RECEIVED_INVITATION_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> TransmitterDeviceAddress;

  @Array(6)
  external Array<Uint8> BSSID;

  @Uint8()
  external int DialogToken;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_RECEIVED_PROVISION_DISCOVERY_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> TransmitterDeviceAddress;

  @Array(6)
  external Array<Uint8> BSSID;

  @Uint8()
  external int DialogToken;

  external Pointer RequestContext;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_RECEIVED_PROVISION_DISCOVERY_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> TransmitterDeviceAddress;

  @Array(6)
  external Array<Uint8> BSSID;

  @Uint8()
  external int DialogToken;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_RECV_EXTENSION_INFO extends Struct {
  @Uint32()
  external int uVersion;

  external Pointer pvReserved;

  @Int32()
  external int dot11PhyType;

  @Uint32()
  external int uChCenterFrequency;

  @Int32()
  external int lRSSI;

  @Int32()
  external int lRSSIMin;

  @Int32()
  external int lRSSIMax;

  @Uint32()
  external int uRSSI;

  @Uint8()
  external int ucPriority;

  @Uint8()
  external int ucDataRate;

  @Array(6)
  external Array<Uint8> ucPeerMacAddress;

  @Uint32()
  external int dwExtendedStatus;

  @IntPtr()
  external int hWEPOffloadContext;

  @IntPtr()
  external int hAuthOffloadContext;

  @Uint16()
  external int usWEPAppliedMask;

  @Uint16()
  external int usWPAMSDUPriority;

  external DOT11_IV48_COUNTER dot11LowestIV48Counter;

  @Uint16()
  external int usDot11LeftRWBitMap;

  external DOT11_IV48_COUNTER dot11HighestIV48Counter;

  @Uint16()
  external int usDot11RightRWBitMap;

  @Uint16()
  external int usNumberOfMPDUsReceived;

  @Uint16()
  external int usNumberOfFragments;

  @Array(1)
  external Array<Pointer> pNdisPackets;
}

/// {@category Struct}
class DOT11_RECV_EXTENSION_INFO_V2 extends Struct {
  @Uint32()
  external int uVersion;

  external Pointer pvReserved;

  @Int32()
  external int dot11PhyType;

  @Uint32()
  external int uChCenterFrequency;

  @Int32()
  external int lRSSI;

  @Uint32()
  external int uRSSI;

  @Uint8()
  external int ucPriority;

  @Uint8()
  external int ucDataRate;

  @Array(6)
  external Array<Uint8> ucPeerMacAddress;

  @Uint32()
  external int dwExtendedStatus;

  @IntPtr()
  external int hWEPOffloadContext;

  @IntPtr()
  external int hAuthOffloadContext;

  @Uint16()
  external int usWEPAppliedMask;

  @Uint16()
  external int usWPAMSDUPriority;

  external DOT11_IV48_COUNTER dot11LowestIV48Counter;

  @Uint16()
  external int usDot11LeftRWBitMap;

  external DOT11_IV48_COUNTER dot11HighestIV48Counter;

  @Uint16()
  external int usDot11RightRWBitMap;

  @Uint16()
  external int usNumberOfMPDUsReceived;

  @Uint16()
  external int usNumberOfFragments;

  @Array(1)
  external Array<Pointer> pNdisPackets;
}

/// {@category Struct}
class DOT11_RECV_SENSITIVITY extends Struct {
  @Uint8()
  external int ucDataRate;

  @Int32()
  external int lRSSIMin;

  @Int32()
  external int lRSSIMax;
}

/// {@category Struct}
class DOT11_RECV_SENSITIVITY_LIST extends Struct {
  external _DOT11_RECV_SENSITIVITY_LIST__Anonymous_e__Union Anonymous;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_RECV_SENSITIVITY> dot11RecvSensitivity;
}

/// {@category Struct}
class _DOT11_RECV_SENSITIVITY_LIST__Anonymous_e__Union extends Union {
  @Int32()
  external int dot11PhyType;

  @Uint32()
  external int uPhyId;
}

extension DOT11_RECV_SENSITIVITY_LIST_Extension on DOT11_RECV_SENSITIVITY_LIST {
  int get dot11PhyType => this.Anonymous.dot11PhyType;
  set dot11PhyType(int value) => this.Anonymous.dot11PhyType = value;

  int get uPhyId => this.Anonymous.uPhyId;
  set uPhyId(int value) => this.Anonymous.uPhyId = value;
}

/// {@category Struct}
class DOT11_REG_DOMAINS_SUPPORT_VALUE extends Struct {
  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_REG_DOMAIN_VALUE> dot11RegDomainValue;
}

/// {@category Struct}
class DOT11_REG_DOMAIN_VALUE extends Struct {
  @Uint32()
  external int uRegDomainsSupportIndex;

  @Uint32()
  external int uRegDomainsSupportValue;
}

/// {@category Struct}
class DOT11_RESET_REQUEST extends Struct {
  @Int32()
  external int dot11ResetType;

  @Array(6)
  external Array<Uint8> dot11MacAddress;

  @Uint8()
  external int bSetDefaultMIB;
}

/// {@category Struct}
class DOT11_ROAMING_COMPLETION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uStatus;
}

/// {@category Struct}
class DOT11_ROAMING_START_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> AdhocBSSID;

  external DOT11_SSID AdhocSSID;

  @Uint32()
  external int uRoamingReason;
}

/// {@category Struct}
class DOT11_RSSI_RANGE extends Struct {
  @Int32()
  external int dot11PhyType;

  @Uint32()
  external int uRSSIMin;

  @Uint32()
  external int uRSSIMax;
}

/// {@category Struct}
class DOT11_SCAN_REQUEST extends Struct {
  @Int32()
  external int dot11BSSType;

  @Array(6)
  external Array<Uint8> dot11BSSID;

  external DOT11_SSID dot11SSID;

  @Int32()
  external int dot11ScanType;

  @Uint8()
  external int bRestrictedScan;

  @Uint8()
  external int bUseRequestIE;

  @Uint32()
  external int uRequestIDsOffset;

  @Uint32()
  external int uNumOfRequestIDs;

  @Uint32()
  external int uPhyTypesOffset;

  @Uint32()
  external int uNumOfPhyTypes;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;

  @Array(1)
  external Array<Uint8> ucBuffer;
}

/// {@category Struct}
class DOT11_SCAN_REQUEST_V2 extends Struct {
  @Int32()
  external int dot11BSSType;

  @Array(6)
  external Array<Uint8> dot11BSSID;

  @Int32()
  external int dot11ScanType;

  @Uint8()
  external int bRestrictedScan;

  @Uint32()
  external int udot11SSIDsOffset;

  @Uint32()
  external int uNumOfdot11SSIDs;

  @Uint8()
  external int bUseRequestIE;

  @Uint32()
  external int uRequestIDsOffset;

  @Uint32()
  external int uNumOfRequestIDs;

  @Uint32()
  external int uPhyTypeInfosOffset;

  @Uint32()
  external int uNumOfPhyTypeInfos;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;

  @Array(1)
  external Array<Uint8> ucBuffer;
}

/// {@category Struct}
class DOT11_SEND_GO_NEGOTIATION_CONFIRMATION_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Uint8()
  external int DialogToken;

  external Pointer ResponseContext;

  @Uint32()
  external int uSendTimeout;

  @Uint8()
  external int Status;

  @Uint8()
  external int GroupCapability;

  external DOT11_WFD_GROUP_ID GroupID;

  @Uint8()
  external int bUseGroupID;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_SEND_GO_NEGOTIATION_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Uint8()
  external int DialogToken;

  @Uint32()
  external int uSendTimeout;

  external DOT11_WFD_GO_INTENT GroupOwnerIntent;

  external DOT11_WFD_CONFIGURATION_TIMEOUT MinimumConfigTimeout;

  @Array(6)
  external Array<Uint8> IntendedInterfaceAddress;

  @Uint8()
  external int GroupCapability;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_SEND_GO_NEGOTIATION_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Uint8()
  external int DialogToken;

  external Pointer RequestContext;

  @Uint32()
  external int uSendTimeout;

  @Uint8()
  external int Status;

  external DOT11_WFD_GO_INTENT GroupOwnerIntent;

  external DOT11_WFD_CONFIGURATION_TIMEOUT MinimumConfigTimeout;

  @Array(6)
  external Array<Uint8> IntendedInterfaceAddress;

  @Uint8()
  external int GroupCapability;

  external DOT11_WFD_GROUP_ID GroupID;

  @Uint8()
  external int bUseGroupID;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_SEND_INVITATION_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint8()
  external int DialogToken;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Uint32()
  external int uSendTimeout;

  external DOT11_WFD_CONFIGURATION_TIMEOUT MinimumConfigTimeout;

  external DOT11_WFD_INVITATION_FLAGS InvitationFlags;

  @Array(6)
  external Array<Uint8> GroupBSSID;

  @Uint8()
  external int bUseGroupBSSID;

  external DOT11_WFD_CHANNEL OperatingChannel;

  @Uint8()
  external int bUseSpecifiedOperatingChannel;

  external DOT11_WFD_GROUP_ID GroupID;

  @Uint8()
  external int bLocalGO;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_SEND_INVITATION_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> ReceiverDeviceAddress;

  @Uint8()
  external int DialogToken;

  external Pointer RequestContext;

  @Uint32()
  external int uSendTimeout;

  @Uint8()
  external int Status;

  external DOT11_WFD_CONFIGURATION_TIMEOUT MinimumConfigTimeout;

  @Array(6)
  external Array<Uint8> GroupBSSID;

  @Uint8()
  external int bUseGroupBSSID;

  external DOT11_WFD_CHANNEL OperatingChannel;

  @Uint8()
  external int bUseSpecifiedOperatingChannel;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_SEND_PROVISION_DISCOVERY_REQUEST_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint8()
  external int DialogToken;

  @Array(6)
  external Array<Uint8> PeerDeviceAddress;

  @Uint32()
  external int uSendTimeout;

  @Uint8()
  external int GroupCapability;

  external DOT11_WFD_GROUP_ID GroupID;

  @Uint8()
  external int bUseGroupID;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_SEND_PROVISION_DISCOVERY_RESPONSE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> ReceiverDeviceAddress;

  @Uint8()
  external int DialogToken;

  external Pointer RequestContext;

  @Uint32()
  external int uSendTimeout;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;
}

/// {@category Struct}
class DOT11_SSID extends Struct {
  @Uint32()
  external int uSSIDLength;

  @Array(32)
  external Array<Uint8> ucSSID;
}

/// {@category Struct}
class DOT11_SSID_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_SSID> SSIDs;
}

/// {@category Struct}
class DOT11_START_REQUEST extends Struct {
  @Uint32()
  external int uStartFailureTimeout;

  external DOT11_RATE_SET OperationalRateSet;

  @Uint32()
  external int uChCenterFrequency;

  external DOT11_BSS_DESCRIPTION dot11BSSDescription;
}

/// {@category Struct}
class DOT11_STATISTICS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint64()
  external int ullFourWayHandshakeFailures;

  @Uint64()
  external int ullTKIPCounterMeasuresInvoked;

  @Uint64()
  external int ullReserved;

  external DOT11_MAC_FRAME_STATISTICS MacUcastCounters;

  external DOT11_MAC_FRAME_STATISTICS MacMcastCounters;

  @Array(1)
  external Array<DOT11_PHY_FRAME_STATISTICS> PhyCounters;
}

/// {@category Struct}
class DOT11_STATUS_INDICATION extends Struct {
  @Uint32()
  external int uStatusType;

  @Int32()
  external int ndisStatus;
}

/// {@category Struct}
class DOT11_STOP_AP_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int ulReason;
}

/// {@category Struct}
class DOT11_SUPPORTED_ANTENNA extends Struct {
  @Uint32()
  external int uAntennaListIndex;

  @Uint8()
  external int bSupportedAntenna;
}

/// {@category Struct}
class DOT11_SUPPORTED_ANTENNA_LIST extends Struct {
  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_SUPPORTED_ANTENNA> dot11SupportedAntenna;
}

/// {@category Struct}
class DOT11_SUPPORTED_DATA_RATES_VALUE extends Struct {
  @Array(8)
  external Array<Uint8> ucSupportedTxDataRatesValue;

  @Array(8)
  external Array<Uint8> ucSupportedRxDataRatesValue;
}

/// {@category Struct}
class DOT11_SUPPORTED_DATA_RATES_VALUE_V2 extends Struct {
  @Array(255)
  external Array<Uint8> ucSupportedTxDataRatesValue;

  @Array(255)
  external Array<Uint8> ucSupportedRxDataRatesValue;
}

/// {@category Struct}
class DOT11_SUPPORTED_DSSS_CHANNEL extends Struct {
  @Uint32()
  external int uChannel;
}

/// {@category Struct}
class DOT11_SUPPORTED_DSSS_CHANNEL_LIST extends Struct {
  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_SUPPORTED_DSSS_CHANNEL> dot11SupportedDSSSChannel;
}

/// {@category Struct}
class DOT11_SUPPORTED_OFDM_FREQUENCY extends Struct {
  @Uint32()
  external int uCenterFrequency;
}

/// {@category Struct}
class DOT11_SUPPORTED_OFDM_FREQUENCY_LIST extends Struct {
  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_SUPPORTED_OFDM_FREQUENCY> dot11SupportedOFDMFrequency;
}

/// {@category Struct}
class DOT11_SUPPORTED_PHY_TYPES extends Struct {
  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<Int32> dot11PHYType;
}

/// {@category Struct}
class DOT11_SUPPORTED_POWER_LEVELS extends Struct {
  @Uint32()
  external int uNumOfSupportedPowerLevels;

  @Array(8)
  external Array<Uint32> uTxPowerLevelValues;
}

/// {@category Struct}
class DOT11_TKIPMIC_FAILURE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint8()
  external int bDefaultKeyFailure;

  @Uint32()
  external int uKeyIndex;

  @Array(6)
  external Array<Uint8> PeerMac;
}

/// {@category Struct}
class DOT11_UPDATE_IE extends Struct {
  @Int32()
  external int dot11UpdateIEOp;

  @Uint32()
  external int uBufferLength;

  @Array(1)
  external Array<Uint8> ucBuffer;
}

/// {@category Struct}
class DOT11_VENUEINFO extends Struct {
  @Uint8()
  external int VenueGroup;

  @Uint8()
  external int VenueType;
}

/// {@category Struct}
class DOT11_VWIFI_ATTRIBUTES extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_VWIFI_COMBINATION> Combinations;
}

/// {@category Struct}
class DOT11_VWIFI_COMBINATION extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumInfrastructure;

  @Uint32()
  external int uNumAdhoc;

  @Uint32()
  external int uNumSoftAP;
}

/// {@category Struct}
class DOT11_VWIFI_COMBINATION_V2 extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumInfrastructure;

  @Uint32()
  external int uNumAdhoc;

  @Uint32()
  external int uNumSoftAP;

  @Uint32()
  external int uNumVirtualStation;
}

/// {@category Struct}
class DOT11_VWIFI_COMBINATION_V3 extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumInfrastructure;

  @Uint32()
  external int uNumAdhoc;

  @Uint32()
  external int uNumSoftAP;

  @Uint32()
  external int uNumVirtualStation;

  @Uint32()
  external int uNumWFDGroup;
}

/// {@category Struct}
class DOT11_WEP_OFFLOAD extends Struct {
  @Uint32()
  external int uReserved;

  @IntPtr()
  external int hOffloadContext;

  @IntPtr()
  external int hOffload;

  @Int32()
  external int dot11OffloadType;

  @Uint32()
  external int dwAlgorithm;

  @Uint8()
  external int bRowIsOutbound;

  @Uint8()
  external int bUseDefault;

  @Uint32()
  external int uFlags;

  @Array(6)
  external Array<Uint8> ucMacAddress;

  @Uint32()
  external int uNumOfRWsOnPeer;

  @Uint32()
  external int uNumOfRWsOnMe;

  @Array(16)
  external Array<DOT11_IV48_COUNTER> dot11IV48Counters;

  @Array(16)
  external Array<Uint16> usDot11RWBitMaps;

  @Uint16()
  external int usKeyLength;

  @Array(1)
  external Array<Uint8> ucKey;
}

/// {@category Struct}
class DOT11_WEP_UPLOAD extends Struct {
  @Uint32()
  external int uReserved;

  @Int32()
  external int dot11OffloadType;

  @IntPtr()
  external int hOffload;

  @Uint32()
  external int uNumOfRWsUsed;

  @Array(16)
  external Array<DOT11_IV48_COUNTER> dot11IV48Counters;

  @Array(16)
  external Array<Uint16> usDot11RWBitMaps;
}

/// {@category Struct}
class DOT11_WFD_ADDITIONAL_IE extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uBeaconIEsOffset;

  @Uint32()
  external int uBeaconIEsLength;

  @Uint32()
  external int uProbeResponseIEsOffset;

  @Uint32()
  external int uProbeResponseIEsLength;

  @Uint32()
  external int uDefaultRequestIEsOffset;

  @Uint32()
  external int uDefaultRequestIEsLength;
}

/// {@category Struct}
class DOT11_WFD_ADVERTISED_SERVICE_DESCRIPTOR extends Struct {
  @Uint32()
  external int AdvertisementID;

  @Uint16()
  external int ConfigMethods;

  @Uint8()
  external int ServiceNameLength;

  @Array(255)
  external Array<Uint8> ServiceName;
}

/// {@category Struct}
class DOT11_WFD_ADVERTISED_SERVICE_LIST extends Struct {
  @Uint16()
  external int ServiceCount;

  @Array(1)
  external Array<DOT11_WFD_ADVERTISED_SERVICE_DESCRIPTOR> AdvertisedService;
}

/// {@category Struct}
class DOT11_WFD_ADVERTISEMENT_ID extends Struct {
  @Uint32()
  external int AdvertisementID;

  @Array(6)
  external Array<Uint8> ServiceAddress;
}

/// {@category Struct}
class DOT11_WFD_ATTRIBUTES extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumConcurrentGORole;

  @Uint32()
  external int uNumConcurrentClientRole;

  @Uint32()
  external int WPSVersionsSupported;

  @Uint8()
  external int bServiceDiscoverySupported;

  @Uint8()
  external int bClientDiscoverabilitySupported;

  @Uint8()
  external int bInfrastructureManagementSupported;

  @Uint32()
  external int uMaxSecondaryDeviceTypeListSize;

  @Array(6)
  external Array<Uint8> DeviceAddress;

  @Uint32()
  external int uInterfaceAddressListCount;

  external Pointer<Uint8> pInterfaceAddressList;

  @Uint32()
  external int uNumSupportedCountryOrRegionStrings;

  external Pointer<Uint8> pSupportedCountryOrRegionStrings;

  @Uint32()
  external int uDiscoveryFilterListSize;

  @Uint32()
  external int uGORoleClientTableSize;
}

/// {@category Struct}
class DOT11_WFD_CHANNEL extends Struct {
  @Array(3)
  external Array<Uint8> CountryRegionString;

  @Uint8()
  external int OperatingClass;

  @Uint8()
  external int ChannelNumber;
}

/// {@category Struct}
class DOT11_WFD_CONFIGURATION_TIMEOUT extends Struct {
  @Uint8()
  external int GOTimeout;

  @Uint8()
  external int ClientTimeout;
}

/// {@category Struct}
class DOT11_WFD_DEVICE_CAPABILITY_CONFIG extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint8()
  external int bServiceDiscoveryEnabled;

  @Uint8()
  external int bClientDiscoverabilityEnabled;

  @Uint8()
  external int bConcurrentOperationSupported;

  @Uint8()
  external int bInfrastructureManagementEnabled;

  @Uint8()
  external int bDeviceLimitReached;

  @Uint8()
  external int bInvitationProcedureEnabled;

  @Uint32()
  external int WPSVersionsEnabled;
}

/// {@category Struct}
class DOT11_WFD_DEVICE_ENTRY extends Struct {
  @Uint32()
  external int uPhyId;

  external DOT11_BSS_ENTRY_PHY_SPECIFIC_INFO PhySpecificInfo;

  @Array(6)
  external Array<Uint8> dot11BSSID;

  @Int32()
  external int dot11BSSType;

  @Array(6)
  external Array<Uint8> TransmitterAddress;

  @Int32()
  external int lRSSI;

  @Uint32()
  external int uLinkQuality;

  @Uint16()
  external int usBeaconPeriod;

  @Uint64()
  external int ullTimestamp;

  @Uint64()
  external int ullBeaconHostTimestamp;

  @Uint64()
  external int ullProbeResponseHostTimestamp;

  @Uint16()
  external int usCapabilityInformation;

  @Uint32()
  external int uBeaconIEsOffset;

  @Uint32()
  external int uBeaconIEsLength;

  @Uint32()
  external int uProbeResponseIEsOffset;

  @Uint32()
  external int uProbeResponseIEsLength;
}

/// {@category Struct}
class DOT11_WFD_DEVICE_INFO extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Array(6)
  external Array<Uint8> DeviceAddress;

  @Uint16()
  external int ConfigMethods;

  external DOT11_WFD_DEVICE_TYPE PrimaryDeviceType;

  external DOT11_WPS_DEVICE_NAME DeviceName;
}

/// {@category Struct}
class DOT11_WFD_DEVICE_LISTEN_CHANNEL extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint8()
  external int ChannelNumber;
}

/// {@category Struct}
class DOT11_WFD_DEVICE_TYPE extends Struct {
  @Uint16()
  external int CategoryID;

  @Uint16()
  external int SubCategoryID;

  @Array(4)
  external Array<Uint8> OUI;
}

/// {@category Struct}
class DOT11_WFD_DISCOVER_COMPLETE_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int Status;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Uint32()
  external int uListOffset;

  @Uint32()
  external int uListLength;
}

/// {@category Struct}
class DOT11_WFD_DISCOVER_DEVICE_FILTER extends Struct {
  @Array(6)
  external Array<Uint8> DeviceID;

  @Uint8()
  external int ucBitmask;

  external DOT11_SSID GroupSSID;
}

/// {@category Struct}
class DOT11_WFD_DISCOVER_REQUEST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Int32()
  external int DiscoverType;

  @Int32()
  external int ScanType;

  @Uint32()
  external int uDiscoverTimeout;

  @Uint32()
  external int uDeviceFilterListOffset;

  @Uint32()
  external int uNumDeviceFilters;

  @Uint32()
  external int uIEsOffset;

  @Uint32()
  external int uIEsLength;

  @Uint8()
  external int bForceScanLegacyNetworks;
}

/// {@category Struct}
class DOT11_WFD_GO_INTENT extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class DOT11_WFD_GROUP_ID extends Struct {
  @Array(6)
  external Array<Uint8> DeviceAddress;

  external DOT11_SSID SSID;
}

/// {@category Struct}
class DOT11_WFD_GROUP_JOIN_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  external DOT11_WFD_CHANNEL GOOperatingChannel;

  @Uint32()
  external int GOConfigTime;

  @Uint8()
  external int bInGroupFormation;

  @Uint8()
  external int bWaitForWPSReady;
}

/// {@category Struct}
class DOT11_WFD_GROUP_OWNER_CAPABILITY_CONFIG extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint8()
  external int bPersistentGroupEnabled;

  @Uint8()
  external int bIntraBSSDistributionSupported;

  @Uint8()
  external int bCrossConnectionSupported;

  @Uint8()
  external int bPersistentReconnectSupported;

  @Uint8()
  external int bGroupFormationEnabled;

  @Uint32()
  external int uMaximumGroupLimit;
}

/// {@category Struct}
class DOT11_WFD_GROUP_OWNER_CAPABILITY_CONFIG_V2 extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint8()
  external int bPersistentGroupEnabled;

  @Uint8()
  external int bIntraBSSDistributionSupported;

  @Uint8()
  external int bCrossConnectionSupported;

  @Uint8()
  external int bPersistentReconnectSupported;

  @Uint8()
  external int bGroupFormationEnabled;

  @Uint32()
  external int uMaximumGroupLimit;

  @Uint8()
  external int bEapolKeyIpAddressAllocationSupported;
}

/// {@category Struct}
class DOT11_WFD_GROUP_START_PARAMETERS extends Struct {
  external NDIS_OBJECT_HEADER Header;

  external DOT11_WFD_CHANNEL AdvertisedOperatingChannel;
}

/// {@category Struct}
class DOT11_WFD_INVITATION_FLAGS extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class DOT11_WFD_SECONDARY_DEVICE_TYPE_LIST extends Struct {
  external NDIS_OBJECT_HEADER Header;

  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_WFD_DEVICE_TYPE> SecondaryDeviceTypes;
}

/// {@category Struct}
class DOT11_WFD_SERVICE_HASH_LIST extends Struct {
  @Uint16()
  external int ServiceHashCount;

  @Array(6)
  external Array<Uint8> ServiceHash;
}

/// {@category Struct}
class DOT11_WFD_SESSION_ID extends Struct {
  @Uint32()
  external int SessionID;

  @Array(6)
  external Array<Uint8> SessionAddress;
}

/// {@category Struct}
class DOT11_WFD_SESSION_INFO extends Struct {
  @Uint16()
  external int uSessionInfoLength;

  @Array(144)
  external Array<Uint8> ucSessionInfo;
}

/// {@category Struct}
class DOT11_WME_AC_PARAMETERS extends Struct {
  @Uint8()
  external int ucAccessCategoryIndex;

  @Uint8()
  external int ucAIFSN;

  @Uint8()
  external int ucECWmin;

  @Uint8()
  external int ucECWmax;

  @Uint16()
  external int usTXOPLimit;
}

/// {@category Struct}
class DOT11_WME_UPDATE_IE extends Struct {
  @Uint32()
  external int uParamElemMinBeaconIntervals;

  @Uint32()
  external int uWMEInfoElemOffset;

  @Uint32()
  external int uWMEInfoElemLength;

  @Uint32()
  external int uWMEParamElemOffset;

  @Uint32()
  external int uWMEParamElemLength;

  @Array(1)
  external Array<Uint8> ucBuffer;
}

/// {@category Struct}
class DOT11_WPA_TSC extends Struct {
  @Uint32()
  external int uReserved;

  @Int32()
  external int dot11OffloadType;

  @IntPtr()
  external int hOffload;

  external DOT11_IV48_COUNTER dot11IV48Counter;
}

/// {@category Struct}
class DOT11_WPS_DEVICE_NAME extends Struct {
  @Uint32()
  external int uDeviceNameLength;

  @Array(32)
  external Array<Uint8> ucDeviceName;
}

/// {@category Struct}
class L2_NOTIFICATION_DATA extends Struct {
  @Uint32()
  external int NotificationSource;

  @Uint32()
  external int NotificationCode;

  external GUID InterfaceGuid;

  @Uint32()
  external int dwDataSize;

  external Pointer pData;
}

/// {@category Struct}
class ONEX_AUTH_PARAMS extends Struct {
  @Int32()
  external int fUpdatePending;

  external ONEX_VARIABLE_BLOB oneXConnProfile;

  @Int32()
  external int authIdentity;

  @Uint32()
  external int dwQuarantineState;

  @Uint32()
  external int bitfield;

  @Uint32()
  external int dwSessionId;

  @IntPtr()
  external int hUserToken;

  external ONEX_VARIABLE_BLOB OneXUserProfile;

  external ONEX_VARIABLE_BLOB Identity;

  external ONEX_VARIABLE_BLOB UserName;

  external ONEX_VARIABLE_BLOB Domain;
}

/// {@category Struct}
class ONEX_EAP_ERROR extends Struct {
  @Uint32()
  external int dwWinError;

  external EAP_METHOD_TYPE type;

  @Uint32()
  external int dwReasonCode;

  external GUID rootCauseGuid;

  external GUID repairGuid;

  external GUID helpLinkGuid;

  @Uint32()
  external int bitfield;

  external ONEX_VARIABLE_BLOB RootCauseString;

  external ONEX_VARIABLE_BLOB RepairString;
}

/// {@category Struct}
class ONEX_RESULT_UPDATE_DATA extends Struct {
  external ONEX_STATUS oneXStatus;

  @Int32()
  external int BackendSupport;

  @Int32()
  external int fBackendEngaged;

  @Uint32()
  external int bitfield;

  external ONEX_VARIABLE_BLOB authParams;

  external ONEX_VARIABLE_BLOB eapError;
}

/// {@category Struct}
class ONEX_STATUS extends Struct {
  @Int32()
  external int authStatus;

  @Uint32()
  external int dwReason;

  @Uint32()
  external int dwError;
}

/// {@category Struct}
class ONEX_USER_INFO extends Struct {
  @Int32()
  external int authIdentity;

  @Uint32()
  external int bitfield;

  external ONEX_VARIABLE_BLOB UserName;

  external ONEX_VARIABLE_BLOB DomainName;
}

/// {@category Struct}
class ONEX_VARIABLE_BLOB extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwOffset;
}

/// {@category Struct}
class WFDSVC_CONNECTION_CAPABILITY extends Struct {
  @Uint8()
  external int bNew;

  @Uint8()
  external int bClient;

  @Uint8()
  external int bGO;
}

/// {@category Struct}
class WFD_GROUP_ID extends Struct {
  @Array(6)
  external Array<Uint8> DeviceAddress;

  external DOT11_SSID GroupSSID;
}

/// {@category Struct}
class WLAN_ASSOCIATION_ATTRIBUTES extends Struct {
  external DOT11_SSID dot11Ssid;

  @Int32()
  external int dot11BssType;

  @Array(6)
  external Array<Uint8> dot11Bssid;

  @Int32()
  external int dot11PhyType;

  @Uint32()
  external int uDot11PhyIndex;

  @Uint32()
  external int wlanSignalQuality;

  @Uint32()
  external int ulRxRate;

  @Uint32()
  external int ulTxRate;
}

/// {@category Struct}
class WLAN_AUTH_CIPHER_PAIR_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Array(1)
  external Array<DOT11_AUTH_CIPHER_PAIR> pAuthCipherPairList;
}

/// {@category Struct}
class WLAN_AVAILABLE_NETWORK extends Struct {
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

  external DOT11_SSID dot11Ssid;

  @Int32()
  external int dot11BssType;

  @Uint32()
  external int uNumberOfBssids;

  @Int32()
  external int bNetworkConnectable;

  @Uint32()
  external int wlanNotConnectableReason;

  @Uint32()
  external int uNumberOfPhyTypes;

  @Array(8)
  external Array<Int32> dot11PhyTypes;

  @Int32()
  external int bMorePhyTypes;

  @Uint32()
  external int wlanSignalQuality;

  @Int32()
  external int bSecurityEnabled;

  @Int32()
  external int dot11DefaultAuthAlgorithm;

  @Int32()
  external int dot11DefaultCipherAlgorithm;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class WLAN_AVAILABLE_NETWORK_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Uint32()
  external int dwIndex;

  @Array(1)
  external Array<WLAN_AVAILABLE_NETWORK> Network;
}

/// {@category Struct}
class WLAN_AVAILABLE_NETWORK_LIST_V2 extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Uint32()
  external int dwIndex;

  @Array(1)
  external Array<WLAN_AVAILABLE_NETWORK_V2> Network;
}

/// {@category Struct}
class WLAN_AVAILABLE_NETWORK_V2 extends Struct {
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

  external DOT11_SSID dot11Ssid;

  @Int32()
  external int dot11BssType;

  @Uint32()
  external int uNumberOfBssids;

  @Int32()
  external int bNetworkConnectable;

  @Uint32()
  external int wlanNotConnectableReason;

  @Uint32()
  external int uNumberOfPhyTypes;

  @Array(8)
  external Array<Int32> dot11PhyTypes;

  @Int32()
  external int bMorePhyTypes;

  @Uint32()
  external int wlanSignalQuality;

  @Int32()
  external int bSecurityEnabled;

  @Int32()
  external int dot11DefaultAuthAlgorithm;

  @Int32()
  external int dot11DefaultCipherAlgorithm;

  @Uint32()
  external int dwFlags;

  external DOT11_ACCESSNETWORKOPTIONS AccessNetworkOptions;

  @Array(6)
  external Array<Uint8> dot11HESSID;

  external DOT11_VENUEINFO VenueInfo;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class WLAN_BSS_ENTRY extends Struct {
  external DOT11_SSID dot11Ssid;

  @Uint32()
  external int uPhyId;

  @Array(6)
  external Array<Uint8> dot11Bssid;

  @Int32()
  external int dot11BssType;

  @Int32()
  external int dot11BssPhyType;

  @Int32()
  external int lRssi;

  @Uint32()
  external int uLinkQuality;

  @Uint8()
  external int bInRegDomain;

  @Uint16()
  external int usBeaconPeriod;

  @Uint64()
  external int ullTimestamp;

  @Uint64()
  external int ullHostTimestamp;

  @Uint16()
  external int usCapabilityInformation;

  @Uint32()
  external int ulChCenterFrequency;

  external WLAN_RATE_SET wlanRateSet;

  @Uint32()
  external int ulIeOffset;

  @Uint32()
  external int ulIeSize;
}

/// {@category Struct}
class WLAN_BSS_LIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNumberOfItems;

  @Array(1)
  external Array<WLAN_BSS_ENTRY> wlanBssEntries;
}

/// {@category Struct}
class WLAN_CONNECTION_ATTRIBUTES extends Struct {
  @Int32()
  external int isState;

  @Int32()
  external int wlanConnectionMode;

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

  external WLAN_ASSOCIATION_ATTRIBUTES wlanAssociationAttributes;

  external WLAN_SECURITY_ATTRIBUTES wlanSecurityAttributes;
}

/// {@category Struct}
class WLAN_CONNECTION_NOTIFICATION_DATA extends Struct {
  @Int32()
  external int wlanConnectionMode;

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

  external DOT11_SSID dot11Ssid;

  @Int32()
  external int dot11BssType;

  @Int32()
  external int bSecurityEnabled;

  @Uint32()
  external int wlanReasonCode;

  @Uint32()
  external int dwFlags;

  @Array(1)
  external Array<Uint16> _strProfileXml;

  String get strProfileXml {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_strProfileXml[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strProfileXml(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _strProfileXml[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WLAN_CONNECTION_PARAMETERS extends Struct {
  @Int32()
  external int wlanConnectionMode;

  external Pointer<Utf16> strProfile;

  external Pointer<DOT11_SSID> pDot11Ssid;

  external Pointer<DOT11_BSSID_LIST> pDesiredBssidList;

  @Int32()
  external int dot11BssType;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class WLAN_CONNECTION_PARAMETERS_V2 extends Struct {
  @Int32()
  external int wlanConnectionMode;

  external Pointer<Utf16> strProfile;

  external Pointer<DOT11_SSID> pDot11Ssid;

  external Pointer<Uint8> pDot11Hessid;

  external Pointer<DOT11_BSSID_LIST> pDesiredBssidList;

  @Int32()
  external int dot11BssType;

  @Uint32()
  external int dwFlags;

  external Pointer<DOT11_ACCESSNETWORKOPTIONS> pDot11AccessNetworkOptions;
}

/// {@category Struct}
class WLAN_COUNTRY_OR_REGION_STRING_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Array(3)
  external Array<Uint8> pCountryOrRegionStringList;
}

/// {@category Struct}
class WLAN_DEVICE_SERVICE_GUID_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Uint32()
  external int dwIndex;

  @Array(1)
  external Array<GUID> DeviceService;
}

/// {@category Struct}
class WLAN_DEVICE_SERVICE_NOTIFICATION_DATA extends Struct {
  external GUID DeviceService;

  @Uint32()
  external int dwOpCode;

  @Uint32()
  external int dwDataSize;

  @Array(1)
  external Array<Uint8> DataBlob;
}

/// {@category Struct}
class WLAN_HOSTED_NETWORK_CONNECTION_SETTINGS extends Struct {
  external DOT11_SSID hostedNetworkSSID;

  @Uint32()
  external int dwMaxNumberOfPeers;
}

/// {@category Struct}
class WLAN_HOSTED_NETWORK_DATA_PEER_STATE_CHANGE extends Struct {
  external WLAN_HOSTED_NETWORK_PEER_STATE OldState;

  external WLAN_HOSTED_NETWORK_PEER_STATE NewState;

  @Int32()
  external int PeerStateChangeReason;
}

/// {@category Struct}
class WLAN_HOSTED_NETWORK_PEER_STATE extends Struct {
  @Array(6)
  external Array<Uint8> PeerMacAddress;

  @Int32()
  external int PeerAuthState;
}

/// {@category Struct}
class WLAN_HOSTED_NETWORK_RADIO_STATE extends Struct {
  @Int32()
  external int dot11SoftwareRadioState;

  @Int32()
  external int dot11HardwareRadioState;
}

/// {@category Struct}
class WLAN_HOSTED_NETWORK_SECURITY_SETTINGS extends Struct {
  @Int32()
  external int dot11AuthAlgo;

  @Int32()
  external int dot11CipherAlgo;
}

/// {@category Struct}
class WLAN_HOSTED_NETWORK_STATE_CHANGE extends Struct {
  @Int32()
  external int OldState;

  @Int32()
  external int NewState;

  @Int32()
  external int StateChangeReason;
}

/// {@category Struct}
class WLAN_HOSTED_NETWORK_STATUS extends Struct {
  @Int32()
  external int HostedNetworkState;

  external GUID IPDeviceID;

  @Array(6)
  external Array<Uint8> wlanHostedNetworkBSSID;

  @Int32()
  external int dot11PhyType;

  @Uint32()
  external int ulChannelFrequency;

  @Uint32()
  external int dwNumberOfPeers;

  @Array(1)
  external Array<WLAN_HOSTED_NETWORK_PEER_STATE> PeerList;
}

/// {@category Struct}
class WLAN_INTERFACE_CAPABILITY extends Struct {
  @Int32()
  external int interfaceType;

  @Int32()
  external int bDot11DSupported;

  @Uint32()
  external int dwMaxDesiredSsidListSize;

  @Uint32()
  external int dwMaxDesiredBssidListSize;

  @Uint32()
  external int dwNumberOfSupportedPhys;

  @Array(64)
  external Array<Int32> dot11PhyTypes;
}

/// {@category Struct}
class WLAN_INTERFACE_INFO extends Struct {
  external GUID InterfaceGuid;

  @Array(256)
  external Array<Uint16> _strInterfaceDescription;

  String get strInterfaceDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_strInterfaceDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set strInterfaceDescription(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _strInterfaceDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int isState;
}

/// {@category Struct}
class WLAN_INTERFACE_INFO_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Uint32()
  external int dwIndex;

  @Array(1)
  external Array<WLAN_INTERFACE_INFO> InterfaceInfo;
}

/// {@category Struct}
class WLAN_MAC_FRAME_STATISTICS extends Struct {
  @Uint64()
  external int ullTransmittedFrameCount;

  @Uint64()
  external int ullReceivedFrameCount;

  @Uint64()
  external int ullWEPExcludedCount;

  @Uint64()
  external int ullTKIPLocalMICFailures;

  @Uint64()
  external int ullTKIPReplays;

  @Uint64()
  external int ullTKIPICVErrorCount;

  @Uint64()
  external int ullCCMPReplays;

  @Uint64()
  external int ullCCMPDecryptErrors;

  @Uint64()
  external int ullWEPUndecryptableCount;

  @Uint64()
  external int ullWEPICVErrorCount;

  @Uint64()
  external int ullDecryptSuccessCount;

  @Uint64()
  external int ullDecryptFailureCount;
}

/// {@category Struct}
class WLAN_MSM_NOTIFICATION_DATA extends Struct {
  @Int32()
  external int wlanConnectionMode;

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

  external DOT11_SSID dot11Ssid;

  @Int32()
  external int dot11BssType;

  @Array(6)
  external Array<Uint8> dot11MacAddr;

  @Int32()
  external int bSecurityEnabled;

  @Int32()
  external int bFirstPeer;

  @Int32()
  external int bLastPeer;

  @Uint32()
  external int wlanReasonCode;
}

/// {@category Struct}
class WLAN_PHY_FRAME_STATISTICS extends Struct {
  @Uint64()
  external int ullTransmittedFrameCount;

  @Uint64()
  external int ullMulticastTransmittedFrameCount;

  @Uint64()
  external int ullFailedCount;

  @Uint64()
  external int ullRetryCount;

  @Uint64()
  external int ullMultipleRetryCount;

  @Uint64()
  external int ullMaxTXLifetimeExceededCount;

  @Uint64()
  external int ullTransmittedFragmentCount;

  @Uint64()
  external int ullRTSSuccessCount;

  @Uint64()
  external int ullRTSFailureCount;

  @Uint64()
  external int ullACKFailureCount;

  @Uint64()
  external int ullReceivedFrameCount;

  @Uint64()
  external int ullMulticastReceivedFrameCount;

  @Uint64()
  external int ullPromiscuousReceivedFrameCount;

  @Uint64()
  external int ullMaxRXLifetimeExceededCount;

  @Uint64()
  external int ullFrameDuplicateCount;

  @Uint64()
  external int ullReceivedFragmentCount;

  @Uint64()
  external int ullPromiscuousReceivedFragmentCount;

  @Uint64()
  external int ullFCSErrorCount;
}

/// {@category Struct}
class WLAN_PHY_RADIO_STATE extends Struct {
  @Uint32()
  external int dwPhyIndex;

  @Int32()
  external int dot11SoftwareRadioState;

  @Int32()
  external int dot11HardwareRadioState;
}

/// {@category Struct}
class WLAN_PROFILE_INFO extends Struct {
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

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class WLAN_PROFILE_INFO_LIST extends Struct {
  @Uint32()
  external int dwNumberOfItems;

  @Uint32()
  external int dwIndex;

  @Array(1)
  external Array<WLAN_PROFILE_INFO> ProfileInfo;
}

/// {@category Struct}
class WLAN_RADIO_STATE extends Struct {
  @Uint32()
  external int dwNumberOfPhys;

  @Array(64)
  external Array<WLAN_PHY_RADIO_STATE> PhyRadioState;
}

/// {@category Struct}
class WLAN_RATE_SET extends Struct {
  @Uint32()
  external int uRateSetLength;

  @Array(126)
  external Array<Uint16> usRateSet;
}

/// {@category Struct}
class WLAN_RAW_DATA extends Struct {
  @Uint32()
  external int dwDataSize;

  @Array(1)
  external Array<Uint8> DataBlob;
}

/// {@category Struct}
class WLAN_RAW_DATA_LIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNumberOfItems;

  @Array(1)
  external Array<_WLAN_RAW_DATA_LIST__Anonymous_e__Struct> DataList;
}

/// {@category Struct}
class _WLAN_RAW_DATA_LIST__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int dwDataOffset;

  @Uint32()
  external int dwDataSize;
}

/// {@category Struct}
class WLAN_SECURITY_ATTRIBUTES extends Struct {
  @Int32()
  external int bSecurityEnabled;

  @Int32()
  external int bOneXEnabled;

  @Int32()
  external int dot11AuthAlgorithm;

  @Int32()
  external int dot11CipherAlgorithm;
}

/// {@category Struct}
class WLAN_STATISTICS extends Struct {
  @Uint64()
  external int ullFourWayHandshakeFailures;

  @Uint64()
  external int ullTKIPCounterMeasuresInvoked;

  @Uint64()
  external int ullReserved;

  external WLAN_MAC_FRAME_STATISTICS MacUcastCounters;

  external WLAN_MAC_FRAME_STATISTICS MacMcastCounters;

  @Uint32()
  external int dwNumberOfPhys;

  @Array(1)
  external Array<WLAN_PHY_FRAME_STATISTICS> PhyCounters;
}

/// {@category Struct}
class DOT11_WME_AC_PARAMTERS_LIST extends Struct {
  @Uint32()
  external int uNumOfEntries;

  @Uint32()
  external int uTotalNumOfEntries;

  @Array(1)
  external Array<DOT11_WME_AC_PARAMETERS> dot11WMEACParameters;
}
