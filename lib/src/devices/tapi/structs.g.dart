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
import '../../system/com/structs.g.dart';
import '../../devices/tapi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/ITTerminal.dart';
import '../../devices/tapi/ITStream.dart';
import '../../system/com/IDispatch.dart';
import '../../devices/tapi/ITFileTrack.dart';

/// {@category Struct}
class HDRVCALL__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class HDRVDIALOGINSTANCE__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class HDRVLINE__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class HDRVMSPLINE__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class HDRVPHONE__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class HPROVIDER__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class HTAPICALL__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class HTAPILINE__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class HTAPIPHONE__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
@Packed(1)
class LINEADDRESSCAPS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwLineDeviceID;

  @Uint32()
  external int dwAddressSize;

  @Uint32()
  external int dwAddressOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwAddressSharing;

  @Uint32()
  external int dwAddressStates;

  @Uint32()
  external int dwCallInfoStates;

  @Uint32()
  external int dwCallerIDFlags;

  @Uint32()
  external int dwCalledIDFlags;

  @Uint32()
  external int dwConnectedIDFlags;

  @Uint32()
  external int dwRedirectionIDFlags;

  @Uint32()
  external int dwRedirectingIDFlags;

  @Uint32()
  external int dwCallStates;

  @Uint32()
  external int dwDialToneModes;

  @Uint32()
  external int dwBusyModes;

  @Uint32()
  external int dwSpecialInfo;

  @Uint32()
  external int dwDisconnectModes;

  @Uint32()
  external int dwMaxNumActiveCalls;

  @Uint32()
  external int dwMaxNumOnHoldCalls;

  @Uint32()
  external int dwMaxNumOnHoldPendingCalls;

  @Uint32()
  external int dwMaxNumConference;

  @Uint32()
  external int dwMaxNumTransConf;

  @Uint32()
  external int dwAddrCapFlags;

  @Uint32()
  external int dwCallFeatures;

  @Uint32()
  external int dwRemoveFromConfCaps;

  @Uint32()
  external int dwRemoveFromConfState;

  @Uint32()
  external int dwTransferModes;

  @Uint32()
  external int dwParkModes;

  @Uint32()
  external int dwForwardModes;

  @Uint32()
  external int dwMaxForwardEntries;

  @Uint32()
  external int dwMaxSpecificEntries;

  @Uint32()
  external int dwMinFwdNumRings;

  @Uint32()
  external int dwMaxFwdNumRings;

  @Uint32()
  external int dwMaxCallCompletions;

  @Uint32()
  external int dwCallCompletionConds;

  @Uint32()
  external int dwCallCompletionModes;

  @Uint32()
  external int dwNumCompletionMessages;

  @Uint32()
  external int dwCompletionMsgTextEntrySize;

  @Uint32()
  external int dwCompletionMsgTextSize;

  @Uint32()
  external int dwCompletionMsgTextOffset;

  @Uint32()
  external int dwAddressFeatures;

  @Uint32()
  external int dwPredictiveAutoTransferStates;

  @Uint32()
  external int dwNumCallTreatments;

  @Uint32()
  external int dwCallTreatmentListSize;

  @Uint32()
  external int dwCallTreatmentListOffset;

  @Uint32()
  external int dwDeviceClassesSize;

  @Uint32()
  external int dwDeviceClassesOffset;

  @Uint32()
  external int dwMaxCallDataSize;

  @Uint32()
  external int dwCallFeatures2;

  @Uint32()
  external int dwMaxNoAnswerTimeout;

  @Uint32()
  external int dwConnectedModes;

  @Uint32()
  external int dwOfferingModes;

  @Uint32()
  external int dwAvailableMediaModes;
}

/// {@category Struct}
@Packed(1)
class LINEADDRESSSTATUS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumInUse;

  @Uint32()
  external int dwNumActiveCalls;

  @Uint32()
  external int dwNumOnHoldCalls;

  @Uint32()
  external int dwNumOnHoldPendCalls;

  @Uint32()
  external int dwAddressFeatures;

  @Uint32()
  external int dwNumRingsNoAnswer;

  @Uint32()
  external int dwForwardNumEntries;

  @Uint32()
  external int dwForwardSize;

  @Uint32()
  external int dwForwardOffset;

  @Uint32()
  external int dwTerminalModesSize;

  @Uint32()
  external int dwTerminalModesOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwDevSpecificOffset;
}

/// {@category Struct}
@Packed(1)
class LINEAGENTACTIVITYENTRY extends Struct {
  @Uint32()
  external int dwID;

  @Uint32()
  external int dwNameSize;

  @Uint32()
  external int dwNameOffset;
}

/// {@category Struct}
@Packed(1)
class LINEAGENTACTIVITYLIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumEntries;

  @Uint32()
  external int dwListSize;

  @Uint32()
  external int dwListOffset;
}

/// {@category Struct}
class LINEAGENTCAPS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwAgentHandlerInfoSize;

  @Uint32()
  external int dwAgentHandlerInfoOffset;

  @Uint32()
  external int dwCapsVersion;

  @Uint32()
  external int dwFeatures;

  @Uint32()
  external int dwStates;

  @Uint32()
  external int dwNextStates;

  @Uint32()
  external int dwMaxNumGroupEntries;

  @Uint32()
  external int dwAgentStatusMessages;

  @Uint32()
  external int dwNumAgentExtensionIDs;

  @Uint32()
  external int dwAgentExtensionIDListSize;

  @Uint32()
  external int dwAgentExtensionIDListOffset;

  external GUID ProxyGUID;
}

/// {@category Struct}
@Packed(1)
class LINEAGENTENTRY extends Struct {
  @Uint32()
  external int hAgent;

  @Uint32()
  external int dwNameSize;

  @Uint32()
  external int dwNameOffset;

  @Uint32()
  external int dwIDSize;

  @Uint32()
  external int dwIDOffset;

  @Uint32()
  external int dwPINSize;

  @Uint32()
  external int dwPINOffset;
}

/// {@category Struct}
@Packed(1)
class LINEAGENTGROUPENTRY extends Struct {
  external _LINEAGENTGROUPENTRY__GroupID_e__Struct GroupID;

  @Uint32()
  external int dwNameSize;

  @Uint32()
  external int dwNameOffset;
}

/// {@category Struct}
@Packed(1)
class _LINEAGENTGROUPENTRY__GroupID_e__Struct extends Struct {
  @Uint32()
  external int dwGroupID1;

  @Uint32()
  external int dwGroupID2;

  @Uint32()
  external int dwGroupID3;

  @Uint32()
  external int dwGroupID4;
}

extension LINEAGENTGROUPENTRY_Extension on LINEAGENTGROUPENTRY {
  int get dwGroupID1 => this.GroupID.dwGroupID1;
  set dwGroupID1(int value) => this.GroupID.dwGroupID1 = value;

  int get dwGroupID2 => this.GroupID.dwGroupID2;
  set dwGroupID2(int value) => this.GroupID.dwGroupID2 = value;

  int get dwGroupID3 => this.GroupID.dwGroupID3;
  set dwGroupID3(int value) => this.GroupID.dwGroupID3 = value;

  int get dwGroupID4 => this.GroupID.dwGroupID4;
  set dwGroupID4(int value) => this.GroupID.dwGroupID4 = value;
}

/// {@category Struct}
@Packed(1)
class LINEAGENTGROUPLIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumEntries;

  @Uint32()
  external int dwListSize;

  @Uint32()
  external int dwListOffset;
}

/// {@category Struct}
class LINEAGENTINFO extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwAgentState;

  @Uint32()
  external int dwNextAgentState;

  @Uint32()
  external int dwMeasurementPeriod;

  external CY cyOverallCallRate;

  @Uint32()
  external int dwNumberOfACDCalls;

  @Uint32()
  external int dwNumberOfIncomingCalls;

  @Uint32()
  external int dwNumberOfOutgoingCalls;

  @Uint32()
  external int dwTotalACDTalkTime;

  @Uint32()
  external int dwTotalACDCallTime;

  @Uint32()
  external int dwTotalACDWrapUpTime;
}

/// {@category Struct}
@Packed(1)
class LINEAGENTLIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumEntries;

  @Uint32()
  external int dwListSize;

  @Uint32()
  external int dwListOffset;
}

/// {@category Struct}
class LINEAGENTSESSIONENTRY extends Struct {
  @Uint32()
  external int hAgentSession;

  @Uint32()
  external int hAgent;

  external GUID GroupID;

  @Uint32()
  external int dwWorkingAddressID;
}

/// {@category Struct}
class LINEAGENTSESSIONINFO extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwAgentSessionState;

  @Uint32()
  external int dwNextAgentSessionState;

  @Double()
  external double dateSessionStartTime;

  @Uint32()
  external int dwSessionDuration;

  @Uint32()
  external int dwNumberOfCalls;

  @Uint32()
  external int dwTotalTalkTime;

  @Uint32()
  external int dwAverageTalkTime;

  @Uint32()
  external int dwTotalCallTime;

  @Uint32()
  external int dwAverageCallTime;

  @Uint32()
  external int dwTotalWrapUpTime;

  @Uint32()
  external int dwAverageWrapUpTime;

  external CY cyACDCallRate;

  @Uint32()
  external int dwLongestTimeToAnswer;

  @Uint32()
  external int dwAverageTimeToAnswer;
}

/// {@category Struct}
@Packed(1)
class LINEAGENTSESSIONLIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumEntries;

  @Uint32()
  external int dwListSize;

  @Uint32()
  external int dwListOffset;
}

/// {@category Struct}
@Packed(1)
class LINEAGENTSTATUS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumEntries;

  @Uint32()
  external int dwGroupListSize;

  @Uint32()
  external int dwGroupListOffset;

  @Uint32()
  external int dwState;

  @Uint32()
  external int dwNextState;

  @Uint32()
  external int dwActivityID;

  @Uint32()
  external int dwActivitySize;

  @Uint32()
  external int dwActivityOffset;

  @Uint32()
  external int dwAgentFeatures;

  @Uint32()
  external int dwValidStates;

  @Uint32()
  external int dwValidNextStates;
}

/// {@category Struct}
@Packed(1)
class LINEAPPINFO extends Struct {
  @Uint32()
  external int dwMachineNameSize;

  @Uint32()
  external int dwMachineNameOffset;

  @Uint32()
  external int dwUserNameSize;

  @Uint32()
  external int dwUserNameOffset;

  @Uint32()
  external int dwModuleFilenameSize;

  @Uint32()
  external int dwModuleFilenameOffset;

  @Uint32()
  external int dwFriendlyNameSize;

  @Uint32()
  external int dwFriendlyNameOffset;

  @Uint32()
  external int dwMediaModes;

  @Uint32()
  external int dwAddressID;
}

/// {@category Struct}
@Packed(1)
class LINECALLINFO extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int hLine;

  @Uint32()
  external int dwLineDeviceID;

  @Uint32()
  external int dwAddressID;

  @Uint32()
  external int dwBearerMode;

  @Uint32()
  external int dwRate;

  @Uint32()
  external int dwMediaMode;

  @Uint32()
  external int dwAppSpecific;

  @Uint32()
  external int dwCallID;

  @Uint32()
  external int dwRelatedCallID;

  @Uint32()
  external int dwCallParamFlags;

  @Uint32()
  external int dwCallStates;

  @Uint32()
  external int dwMonitorDigitModes;

  @Uint32()
  external int dwMonitorMediaModes;

  external LINEDIALPARAMS DialParams;

  @Uint32()
  external int dwOrigin;

  @Uint32()
  external int dwReason;

  @Uint32()
  external int dwCompletionID;

  @Uint32()
  external int dwNumOwners;

  @Uint32()
  external int dwNumMonitors;

  @Uint32()
  external int dwCountryCode;

  @Uint32()
  external int dwTrunk;

  @Uint32()
  external int dwCallerIDFlags;

  @Uint32()
  external int dwCallerIDSize;

  @Uint32()
  external int dwCallerIDOffset;

  @Uint32()
  external int dwCallerIDNameSize;

  @Uint32()
  external int dwCallerIDNameOffset;

  @Uint32()
  external int dwCalledIDFlags;

  @Uint32()
  external int dwCalledIDSize;

  @Uint32()
  external int dwCalledIDOffset;

  @Uint32()
  external int dwCalledIDNameSize;

  @Uint32()
  external int dwCalledIDNameOffset;

  @Uint32()
  external int dwConnectedIDFlags;

  @Uint32()
  external int dwConnectedIDSize;

  @Uint32()
  external int dwConnectedIDOffset;

  @Uint32()
  external int dwConnectedIDNameSize;

  @Uint32()
  external int dwConnectedIDNameOffset;

  @Uint32()
  external int dwRedirectionIDFlags;

  @Uint32()
  external int dwRedirectionIDSize;

  @Uint32()
  external int dwRedirectionIDOffset;

  @Uint32()
  external int dwRedirectionIDNameSize;

  @Uint32()
  external int dwRedirectionIDNameOffset;

  @Uint32()
  external int dwRedirectingIDFlags;

  @Uint32()
  external int dwRedirectingIDSize;

  @Uint32()
  external int dwRedirectingIDOffset;

  @Uint32()
  external int dwRedirectingIDNameSize;

  @Uint32()
  external int dwRedirectingIDNameOffset;

  @Uint32()
  external int dwAppNameSize;

  @Uint32()
  external int dwAppNameOffset;

  @Uint32()
  external int dwDisplayableAddressSize;

  @Uint32()
  external int dwDisplayableAddressOffset;

  @Uint32()
  external int dwCalledPartySize;

  @Uint32()
  external int dwCalledPartyOffset;

  @Uint32()
  external int dwCommentSize;

  @Uint32()
  external int dwCommentOffset;

  @Uint32()
  external int dwDisplaySize;

  @Uint32()
  external int dwDisplayOffset;

  @Uint32()
  external int dwUserUserInfoSize;

  @Uint32()
  external int dwUserUserInfoOffset;

  @Uint32()
  external int dwHighLevelCompSize;

  @Uint32()
  external int dwHighLevelCompOffset;

  @Uint32()
  external int dwLowLevelCompSize;

  @Uint32()
  external int dwLowLevelCompOffset;

  @Uint32()
  external int dwChargingInfoSize;

  @Uint32()
  external int dwChargingInfoOffset;

  @Uint32()
  external int dwTerminalModesSize;

  @Uint32()
  external int dwTerminalModesOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwCallTreatment;

  @Uint32()
  external int dwCallDataSize;

  @Uint32()
  external int dwCallDataOffset;

  @Uint32()
  external int dwSendingFlowspecSize;

  @Uint32()
  external int dwSendingFlowspecOffset;

  @Uint32()
  external int dwReceivingFlowspecSize;

  @Uint32()
  external int dwReceivingFlowspecOffset;
}

/// {@category Struct}
@Packed(1)
class LINECALLLIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwCallsNumEntries;

  @Uint32()
  external int dwCallsSize;

  @Uint32()
  external int dwCallsOffset;
}

/// {@category Struct}
@Packed(1)
class LINECALLPARAMS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwBearerMode;

  @Uint32()
  external int dwMinRate;

  @Uint32()
  external int dwMaxRate;

  @Uint32()
  external int dwMediaMode;

  @Uint32()
  external int dwCallParamFlags;

  @Uint32()
  external int dwAddressMode;

  @Uint32()
  external int dwAddressID;

  external LINEDIALPARAMS DialParams;

  @Uint32()
  external int dwOrigAddressSize;

  @Uint32()
  external int dwOrigAddressOffset;

  @Uint32()
  external int dwDisplayableAddressSize;

  @Uint32()
  external int dwDisplayableAddressOffset;

  @Uint32()
  external int dwCalledPartySize;

  @Uint32()
  external int dwCalledPartyOffset;

  @Uint32()
  external int dwCommentSize;

  @Uint32()
  external int dwCommentOffset;

  @Uint32()
  external int dwUserUserInfoSize;

  @Uint32()
  external int dwUserUserInfoOffset;

  @Uint32()
  external int dwHighLevelCompSize;

  @Uint32()
  external int dwHighLevelCompOffset;

  @Uint32()
  external int dwLowLevelCompSize;

  @Uint32()
  external int dwLowLevelCompOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwPredictiveAutoTransferStates;

  @Uint32()
  external int dwTargetAddressSize;

  @Uint32()
  external int dwTargetAddressOffset;

  @Uint32()
  external int dwSendingFlowspecSize;

  @Uint32()
  external int dwSendingFlowspecOffset;

  @Uint32()
  external int dwReceivingFlowspecSize;

  @Uint32()
  external int dwReceivingFlowspecOffset;

  @Uint32()
  external int dwDeviceClassSize;

  @Uint32()
  external int dwDeviceClassOffset;

  @Uint32()
  external int dwDeviceConfigSize;

  @Uint32()
  external int dwDeviceConfigOffset;

  @Uint32()
  external int dwCallDataSize;

  @Uint32()
  external int dwCallDataOffset;

  @Uint32()
  external int dwNoAnswerTimeout;

  @Uint32()
  external int dwCallingPartyIDSize;

  @Uint32()
  external int dwCallingPartyIDOffset;
}

/// {@category Struct}
class LINECALLSTATUS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwCallState;

  @Uint32()
  external int dwCallStateMode;

  @Uint32()
  external int dwCallPrivilege;

  @Uint32()
  external int dwCallFeatures;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwCallFeatures2;

  external SYSTEMTIME tStateEntryTime;
}

/// {@category Struct}
@Packed(1)
class LINECALLTREATMENTENTRY extends Struct {
  @Uint32()
  external int dwCallTreatmentID;

  @Uint32()
  external int dwCallTreatmentNameSize;

  @Uint32()
  external int dwCallTreatmentNameOffset;
}

/// {@category Struct}
@Packed(1)
class LINECARDENTRY extends Struct {
  @Uint32()
  external int dwPermanentCardID;

  @Uint32()
  external int dwCardNameSize;

  @Uint32()
  external int dwCardNameOffset;

  @Uint32()
  external int dwCardNumberDigits;

  @Uint32()
  external int dwSameAreaRuleSize;

  @Uint32()
  external int dwSameAreaRuleOffset;

  @Uint32()
  external int dwLongDistanceRuleSize;

  @Uint32()
  external int dwLongDistanceRuleOffset;

  @Uint32()
  external int dwInternationalRuleSize;

  @Uint32()
  external int dwInternationalRuleOffset;

  @Uint32()
  external int dwOptions;
}

/// {@category Struct}
@Packed(1)
class LINECOUNTRYENTRY extends Struct {
  @Uint32()
  external int dwCountryID;

  @Uint32()
  external int dwCountryCode;

  @Uint32()
  external int dwNextCountryID;

  @Uint32()
  external int dwCountryNameSize;

  @Uint32()
  external int dwCountryNameOffset;

  @Uint32()
  external int dwSameAreaRuleSize;

  @Uint32()
  external int dwSameAreaRuleOffset;

  @Uint32()
  external int dwLongDistanceRuleSize;

  @Uint32()
  external int dwLongDistanceRuleOffset;

  @Uint32()
  external int dwInternationalRuleSize;

  @Uint32()
  external int dwInternationalRuleOffset;
}

/// {@category Struct}
@Packed(1)
class LINECOUNTRYLIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumCountries;

  @Uint32()
  external int dwCountryListSize;

  @Uint32()
  external int dwCountryListOffset;
}

/// {@category Struct}
class LINEDEVCAPS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwProviderInfoSize;

  @Uint32()
  external int dwProviderInfoOffset;

  @Uint32()
  external int dwSwitchInfoSize;

  @Uint32()
  external int dwSwitchInfoOffset;

  @Uint32()
  external int dwPermanentLineID;

  @Uint32()
  external int dwLineNameSize;

  @Uint32()
  external int dwLineNameOffset;

  @Uint32()
  external int dwStringFormat;

  @Uint32()
  external int dwAddressModes;

  @Uint32()
  external int dwNumAddresses;

  @Uint32()
  external int dwBearerModes;

  @Uint32()
  external int dwMaxRate;

  @Uint32()
  external int dwMediaModes;

  @Uint32()
  external int dwGenerateToneModes;

  @Uint32()
  external int dwGenerateToneMaxNumFreq;

  @Uint32()
  external int dwGenerateDigitModes;

  @Uint32()
  external int dwMonitorToneMaxNumFreq;

  @Uint32()
  external int dwMonitorToneMaxNumEntries;

  @Uint32()
  external int dwMonitorDigitModes;

  @Uint32()
  external int dwGatherDigitsMinTimeout;

  @Uint32()
  external int dwGatherDigitsMaxTimeout;

  @Uint32()
  external int dwMedCtlDigitMaxListSize;

  @Uint32()
  external int dwMedCtlMediaMaxListSize;

  @Uint32()
  external int dwMedCtlToneMaxListSize;

  @Uint32()
  external int dwMedCtlCallStateMaxListSize;

  @Uint32()
  external int dwDevCapFlags;

  @Uint32()
  external int dwMaxNumActiveCalls;

  @Uint32()
  external int dwAnswerMode;

  @Uint32()
  external int dwRingModes;

  @Uint32()
  external int dwLineStates;

  @Uint32()
  external int dwUUIAcceptSize;

  @Uint32()
  external int dwUUIAnswerSize;

  @Uint32()
  external int dwUUIMakeCallSize;

  @Uint32()
  external int dwUUIDropSize;

  @Uint32()
  external int dwUUISendUserUserInfoSize;

  @Uint32()
  external int dwUUICallInfoSize;

  external LINEDIALPARAMS MinDialParams;

  external LINEDIALPARAMS MaxDialParams;

  external LINEDIALPARAMS DefaultDialParams;

  @Uint32()
  external int dwNumTerminals;

  @Uint32()
  external int dwTerminalCapsSize;

  @Uint32()
  external int dwTerminalCapsOffset;

  @Uint32()
  external int dwTerminalTextEntrySize;

  @Uint32()
  external int dwTerminalTextSize;

  @Uint32()
  external int dwTerminalTextOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwLineFeatures;

  @Uint32()
  external int dwSettableDevStatus;

  @Uint32()
  external int dwDeviceClassesSize;

  @Uint32()
  external int dwDeviceClassesOffset;

  external GUID PermanentLineGuid;
}

/// {@category Struct}
@Packed(1)
class LINEDEVSTATUS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumOpens;

  @Uint32()
  external int dwOpenMediaModes;

  @Uint32()
  external int dwNumActiveCalls;

  @Uint32()
  external int dwNumOnHoldCalls;

  @Uint32()
  external int dwNumOnHoldPendCalls;

  @Uint32()
  external int dwLineFeatures;

  @Uint32()
  external int dwNumCallCompletions;

  @Uint32()
  external int dwRingMode;

  @Uint32()
  external int dwSignalLevel;

  @Uint32()
  external int dwBatteryLevel;

  @Uint32()
  external int dwRoamMode;

  @Uint32()
  external int dwDevStatusFlags;

  @Uint32()
  external int dwTerminalModesSize;

  @Uint32()
  external int dwTerminalModesOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwAvailableMediaModes;

  @Uint32()
  external int dwAppInfoSize;

  @Uint32()
  external int dwAppInfoOffset;
}

/// {@category Struct}
@Packed(1)
class LINEDIALPARAMS extends Struct {
  @Uint32()
  external int dwDialPause;

  @Uint32()
  external int dwDialSpeed;

  @Uint32()
  external int dwDigitDuration;

  @Uint32()
  external int dwWaitForDialtone;
}

/// {@category Struct}
@Packed(1)
class LINEEXTENSIONID extends Struct {
  @Uint32()
  external int dwExtensionID0;

  @Uint32()
  external int dwExtensionID1;

  @Uint32()
  external int dwExtensionID2;

  @Uint32()
  external int dwExtensionID3;
}

/// {@category Struct}
@Packed(1)
class LINEFORWARD extends Struct {
  @Uint32()
  external int dwForwardMode;

  @Uint32()
  external int dwCallerAddressSize;

  @Uint32()
  external int dwCallerAddressOffset;

  @Uint32()
  external int dwDestCountryCode;

  @Uint32()
  external int dwDestAddressSize;

  @Uint32()
  external int dwDestAddressOffset;
}

/// {@category Struct}
@Packed(1)
class LINEFORWARDLIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNumEntries;

  @Array(1)
  external Array<LINEFORWARD> ForwardList;
}

/// {@category Struct}
@Packed(1)
class LINEGENERATETONE extends Struct {
  @Uint32()
  external int dwFrequency;

  @Uint32()
  external int dwCadenceOn;

  @Uint32()
  external int dwCadenceOff;

  @Uint32()
  external int dwVolume;
}

/// {@category Struct}
class LINEINITIALIZEEXPARAMS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwOptions;

  external _LINEINITIALIZEEXPARAMS__Handles_e__Union Handles;

  @Uint32()
  external int dwCompletionKey;
}

/// {@category Struct}
class _LINEINITIALIZEEXPARAMS__Handles_e__Union extends Union {
  @IntPtr()
  external int hEvent;

  @IntPtr()
  external int hCompletionPort;
}

extension LINEINITIALIZEEXPARAMS_Extension on LINEINITIALIZEEXPARAMS {
  int get hEvent => this.Handles.hEvent;
  set hEvent(int value) => this.Handles.hEvent = value;

  int get hCompletionPort => this.Handles.hCompletionPort;
  set hCompletionPort(int value) => this.Handles.hCompletionPort = value;
}

/// {@category Struct}
@Packed(1)
class LINELOCATIONENTRY extends Struct {
  @Uint32()
  external int dwPermanentLocationID;

  @Uint32()
  external int dwLocationNameSize;

  @Uint32()
  external int dwLocationNameOffset;

  @Uint32()
  external int dwCountryCode;

  @Uint32()
  external int dwCityCodeSize;

  @Uint32()
  external int dwCityCodeOffset;

  @Uint32()
  external int dwPreferredCardID;

  @Uint32()
  external int dwLocalAccessCodeSize;

  @Uint32()
  external int dwLocalAccessCodeOffset;

  @Uint32()
  external int dwLongDistanceAccessCodeSize;

  @Uint32()
  external int dwLongDistanceAccessCodeOffset;

  @Uint32()
  external int dwTollPrefixListSize;

  @Uint32()
  external int dwTollPrefixListOffset;

  @Uint32()
  external int dwCountryID;

  @Uint32()
  external int dwOptions;

  @Uint32()
  external int dwCancelCallWaitingSize;

  @Uint32()
  external int dwCancelCallWaitingOffset;
}

/// {@category Struct}
@Packed(1)
class LINEMEDIACONTROLCALLSTATE extends Struct {
  @Uint32()
  external int dwCallStates;

  @Uint32()
  external int dwMediaControl;
}

/// {@category Struct}
@Packed(1)
class LINEMEDIACONTROLDIGIT extends Struct {
  @Uint32()
  external int dwDigit;

  @Uint32()
  external int dwDigitModes;

  @Uint32()
  external int dwMediaControl;
}

/// {@category Struct}
@Packed(1)
class LINEMEDIACONTROLMEDIA extends Struct {
  @Uint32()
  external int dwMediaModes;

  @Uint32()
  external int dwDuration;

  @Uint32()
  external int dwMediaControl;
}

/// {@category Struct}
@Packed(1)
class LINEMEDIACONTROLTONE extends Struct {
  @Uint32()
  external int dwAppSpecific;

  @Uint32()
  external int dwDuration;

  @Uint32()
  external int dwFrequency1;

  @Uint32()
  external int dwFrequency2;

  @Uint32()
  external int dwFrequency3;

  @Uint32()
  external int dwMediaControl;
}

/// {@category Struct}
@Packed(1)
class LINEMESSAGE extends Struct {
  @Uint32()
  external int hDevice;

  @Uint32()
  external int dwMessageID;

  @IntPtr()
  external int dwCallbackInstance;

  @IntPtr()
  external int dwParam1;

  @IntPtr()
  external int dwParam2;

  @IntPtr()
  external int dwParam3;
}

/// {@category Struct}
@Packed(1)
class LINEMONITORTONE extends Struct {
  @Uint32()
  external int dwAppSpecific;

  @Uint32()
  external int dwDuration;

  @Uint32()
  external int dwFrequency1;

  @Uint32()
  external int dwFrequency2;

  @Uint32()
  external int dwFrequency3;
}

/// {@category Struct}
@Packed(1)
class LINEPROVIDERENTRY extends Struct {
  @Uint32()
  external int dwPermanentProviderID;

  @Uint32()
  external int dwProviderFilenameSize;

  @Uint32()
  external int dwProviderFilenameOffset;
}

/// {@category Struct}
@Packed(1)
class LINEPROVIDERLIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumProviders;

  @Uint32()
  external int dwProviderListSize;

  @Uint32()
  external int dwProviderListOffset;
}

/// {@category Struct}
class LINEPROXYREQUEST extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwClientMachineNameSize;

  @Uint32()
  external int dwClientMachineNameOffset;

  @Uint32()
  external int dwClientUserNameSize;

  @Uint32()
  external int dwClientUserNameOffset;

  @Uint32()
  external int dwClientAppAPIVersion;

  @Uint32()
  external int dwRequestType;

  external _LINEPROXYREQUEST__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _LINEPROXYREQUEST__Anonymous_e__Union extends Union {
  external _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentGroup_e__Struct
      SetAgentGroup;

  external _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentState_e__Struct
      SetAgentState;

  external _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentActivity_e__Struct
      SetAgentActivity;

  external _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentCaps_e__Struct
      GetAgentCaps;

  external _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentStatus_e__Struct
      GetAgentStatus;

  external _LINEPROXYREQUEST__Anonymous_e__Union__AgentSpecific_e__Struct
      AgentSpecific;

  external _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentActivityList_e__Struct
      GetAgentActivityList;

  external _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentGroupList_e__Struct
      GetAgentGroupList;

  external _LINEPROXYREQUEST__Anonymous_e__Union__CreateAgent_e__Struct
      CreateAgent;

  external _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentStateEx_e__Struct
      SetAgentStateEx;

  external _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentMeasurementPeriod_e__Struct
      SetAgentMeasurementPeriod;

  external _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentInfo_e__Struct
      GetAgentInfo;

  external _LINEPROXYREQUEST__Anonymous_e__Union__CreateAgentSession_e__Struct
      CreateAgentSession;

  external _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentSessionList_e__Struct
      GetAgentSessionList;

  external _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentSessionInfo_e__Struct
      GetAgentSessionInfo;

  external _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentSessionState_e__Struct
      SetAgentSessionState;

  external _LINEPROXYREQUEST__Anonymous_e__Union__GetQueueList_e__Struct
      GetQueueList;

  external _LINEPROXYREQUEST__Anonymous_e__Union__SetQueueMeasurementPeriod_e__Struct
      SetQueueMeasurementPeriod;

  external _LINEPROXYREQUEST__Anonymous_e__Union__GetQueueInfo_e__Struct
      GetQueueInfo;

  external _LINEPROXYREQUEST__Anonymous_e__Union__GetGroupList_e__Struct
      GetGroupList;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentGroup_e__Struct
    extends Struct {
  @Uint32()
  external int dwAddressID;

  external LINEAGENTGROUPLIST GroupList;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension on LINEPROXYREQUEST {
  int get dwAddressID => this.Anonymous.SetAgentGroup.dwAddressID;
  set dwAddressID(int value) =>
      this.Anonymous.SetAgentGroup.dwAddressID = value;

  LINEAGENTGROUPLIST get GroupList => this.Anonymous.SetAgentGroup.GroupList;
  set GroupList(LINEAGENTGROUPLIST value) =>
      this.Anonymous.SetAgentGroup.GroupList = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentState_e__Struct
    extends Struct {
  @Uint32()
  external int dwAddressID;

  @Uint32()
  external int dwAgentState;

  @Uint32()
  external int dwNextAgentState;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_1 on LINEPROXYREQUEST {
  int get dwAddressID => this.Anonymous.SetAgentState.dwAddressID;
  set dwAddressID(int value) =>
      this.Anonymous.SetAgentState.dwAddressID = value;

  int get dwAgentState => this.Anonymous.SetAgentState.dwAgentState;
  set dwAgentState(int value) =>
      this.Anonymous.SetAgentState.dwAgentState = value;

  int get dwNextAgentState => this.Anonymous.SetAgentState.dwNextAgentState;
  set dwNextAgentState(int value) =>
      this.Anonymous.SetAgentState.dwNextAgentState = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentActivity_e__Struct
    extends Struct {
  @Uint32()
  external int dwAddressID;

  @Uint32()
  external int dwActivityID;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_2 on LINEPROXYREQUEST {
  int get dwAddressID => this.Anonymous.SetAgentActivity.dwAddressID;
  set dwAddressID(int value) =>
      this.Anonymous.SetAgentActivity.dwAddressID = value;

  int get dwActivityID => this.Anonymous.SetAgentActivity.dwActivityID;
  set dwActivityID(int value) =>
      this.Anonymous.SetAgentActivity.dwActivityID = value;
}

/// {@category Struct}
class _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentCaps_e__Struct
    extends Struct {
  @Uint32()
  external int dwAddressID;

  external LINEAGENTCAPS AgentCaps;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_3 on LINEPROXYREQUEST {
  int get dwAddressID => this.Anonymous.GetAgentCaps.dwAddressID;
  set dwAddressID(int value) => this.Anonymous.GetAgentCaps.dwAddressID = value;

  LINEAGENTCAPS get AgentCaps => this.Anonymous.GetAgentCaps.AgentCaps;
  set AgentCaps(LINEAGENTCAPS value) =>
      this.Anonymous.GetAgentCaps.AgentCaps = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentStatus_e__Struct
    extends Struct {
  @Uint32()
  external int dwAddressID;

  external LINEAGENTSTATUS AgentStatus;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_4 on LINEPROXYREQUEST {
  int get dwAddressID => this.Anonymous.GetAgentStatus.dwAddressID;
  set dwAddressID(int value) =>
      this.Anonymous.GetAgentStatus.dwAddressID = value;

  LINEAGENTSTATUS get AgentStatus => this.Anonymous.GetAgentStatus.AgentStatus;
  set AgentStatus(LINEAGENTSTATUS value) =>
      this.Anonymous.GetAgentStatus.AgentStatus = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__AgentSpecific_e__Struct
    extends Struct {
  @Uint32()
  external int dwAddressID;

  @Uint32()
  external int dwAgentExtensionIDIndex;

  @Uint32()
  external int dwSize;

  @Array(1)
  external Array<Uint8> Params;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_5 on LINEPROXYREQUEST {
  int get dwAddressID => this.Anonymous.AgentSpecific.dwAddressID;
  set dwAddressID(int value) =>
      this.Anonymous.AgentSpecific.dwAddressID = value;

  int get dwAgentExtensionIDIndex =>
      this.Anonymous.AgentSpecific.dwAgentExtensionIDIndex;
  set dwAgentExtensionIDIndex(int value) =>
      this.Anonymous.AgentSpecific.dwAgentExtensionIDIndex = value;

  int get dwSize => this.Anonymous.AgentSpecific.dwSize;
  set dwSize(int value) => this.Anonymous.AgentSpecific.dwSize = value;

  Array<Uint8> get Params => this.Anonymous.AgentSpecific.Params;
  set Params(Array<Uint8> value) => this.Anonymous.AgentSpecific.Params = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentActivityList_e__Struct
    extends Struct {
  @Uint32()
  external int dwAddressID;

  external LINEAGENTACTIVITYLIST ActivityList;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_6 on LINEPROXYREQUEST {
  int get dwAddressID => this.Anonymous.GetAgentActivityList.dwAddressID;
  set dwAddressID(int value) =>
      this.Anonymous.GetAgentActivityList.dwAddressID = value;

  LINEAGENTACTIVITYLIST get ActivityList =>
      this.Anonymous.GetAgentActivityList.ActivityList;
  set ActivityList(LINEAGENTACTIVITYLIST value) =>
      this.Anonymous.GetAgentActivityList.ActivityList = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentGroupList_e__Struct
    extends Struct {
  @Uint32()
  external int dwAddressID;

  external LINEAGENTGROUPLIST GroupList;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_7 on LINEPROXYREQUEST {
  int get dwAddressID => this.Anonymous.GetAgentGroupList.dwAddressID;
  set dwAddressID(int value) =>
      this.Anonymous.GetAgentGroupList.dwAddressID = value;

  LINEAGENTGROUPLIST get GroupList =>
      this.Anonymous.GetAgentGroupList.GroupList;
  set GroupList(LINEAGENTGROUPLIST value) =>
      this.Anonymous.GetAgentGroupList.GroupList = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__CreateAgent_e__Struct
    extends Struct {
  @Uint32()
  external int hAgent;

  @Uint32()
  external int dwAgentIDSize;

  @Uint32()
  external int dwAgentIDOffset;

  @Uint32()
  external int dwAgentPINSize;

  @Uint32()
  external int dwAgentPINOffset;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_8 on LINEPROXYREQUEST {
  int get hAgent => this.Anonymous.CreateAgent.hAgent;
  set hAgent(int value) => this.Anonymous.CreateAgent.hAgent = value;

  int get dwAgentIDSize => this.Anonymous.CreateAgent.dwAgentIDSize;
  set dwAgentIDSize(int value) =>
      this.Anonymous.CreateAgent.dwAgentIDSize = value;

  int get dwAgentIDOffset => this.Anonymous.CreateAgent.dwAgentIDOffset;
  set dwAgentIDOffset(int value) =>
      this.Anonymous.CreateAgent.dwAgentIDOffset = value;

  int get dwAgentPINSize => this.Anonymous.CreateAgent.dwAgentPINSize;
  set dwAgentPINSize(int value) =>
      this.Anonymous.CreateAgent.dwAgentPINSize = value;

  int get dwAgentPINOffset => this.Anonymous.CreateAgent.dwAgentPINOffset;
  set dwAgentPINOffset(int value) =>
      this.Anonymous.CreateAgent.dwAgentPINOffset = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentStateEx_e__Struct
    extends Struct {
  @Uint32()
  external int hAgent;

  @Uint32()
  external int dwAgentState;

  @Uint32()
  external int dwNextAgentState;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_9 on LINEPROXYREQUEST {
  int get hAgent => this.Anonymous.SetAgentStateEx.hAgent;
  set hAgent(int value) => this.Anonymous.SetAgentStateEx.hAgent = value;

  int get dwAgentState => this.Anonymous.SetAgentStateEx.dwAgentState;
  set dwAgentState(int value) =>
      this.Anonymous.SetAgentStateEx.dwAgentState = value;

  int get dwNextAgentState => this.Anonymous.SetAgentStateEx.dwNextAgentState;
  set dwNextAgentState(int value) =>
      this.Anonymous.SetAgentStateEx.dwNextAgentState = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentMeasurementPeriod_e__Struct
    extends Struct {
  @Uint32()
  external int hAgent;

  @Uint32()
  external int dwMeasurementPeriod;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_10
    on LINEPROXYREQUEST {
  int get hAgent => this.Anonymous.SetAgentMeasurementPeriod.hAgent;
  set hAgent(int value) =>
      this.Anonymous.SetAgentMeasurementPeriod.hAgent = value;

  int get dwMeasurementPeriod =>
      this.Anonymous.SetAgentMeasurementPeriod.dwMeasurementPeriod;
  set dwMeasurementPeriod(int value) =>
      this.Anonymous.SetAgentMeasurementPeriod.dwMeasurementPeriod = value;
}

/// {@category Struct}
class _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentInfo_e__Struct
    extends Struct {
  @Uint32()
  external int hAgent;

  external LINEAGENTINFO AgentInfo;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_11
    on LINEPROXYREQUEST {
  int get hAgent => this.Anonymous.GetAgentInfo.hAgent;
  set hAgent(int value) => this.Anonymous.GetAgentInfo.hAgent = value;

  LINEAGENTINFO get AgentInfo => this.Anonymous.GetAgentInfo.AgentInfo;
  set AgentInfo(LINEAGENTINFO value) =>
      this.Anonymous.GetAgentInfo.AgentInfo = value;
}

/// {@category Struct}
class _LINEPROXYREQUEST__Anonymous_e__Union__CreateAgentSession_e__Struct
    extends Struct {
  @Uint32()
  external int hAgentSession;

  @Uint32()
  external int dwAgentPINSize;

  @Uint32()
  external int dwAgentPINOffset;

  @Uint32()
  external int hAgent;

  external GUID GroupID;

  @Uint32()
  external int dwWorkingAddressID;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_12
    on LINEPROXYREQUEST {
  int get hAgentSession => this.Anonymous.CreateAgentSession.hAgentSession;
  set hAgentSession(int value) =>
      this.Anonymous.CreateAgentSession.hAgentSession = value;

  int get dwAgentPINSize => this.Anonymous.CreateAgentSession.dwAgentPINSize;
  set dwAgentPINSize(int value) =>
      this.Anonymous.CreateAgentSession.dwAgentPINSize = value;

  int get dwAgentPINOffset =>
      this.Anonymous.CreateAgentSession.dwAgentPINOffset;
  set dwAgentPINOffset(int value) =>
      this.Anonymous.CreateAgentSession.dwAgentPINOffset = value;

  int get hAgent => this.Anonymous.CreateAgentSession.hAgent;
  set hAgent(int value) => this.Anonymous.CreateAgentSession.hAgent = value;

  GUID get GroupID => this.Anonymous.CreateAgentSession.GroupID;
  set GroupID(GUID value) => this.Anonymous.CreateAgentSession.GroupID = value;

  int get dwWorkingAddressID =>
      this.Anonymous.CreateAgentSession.dwWorkingAddressID;
  set dwWorkingAddressID(int value) =>
      this.Anonymous.CreateAgentSession.dwWorkingAddressID = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentSessionList_e__Struct
    extends Struct {
  @Uint32()
  external int hAgent;

  external LINEAGENTSESSIONLIST SessionList;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_13
    on LINEPROXYREQUEST {
  int get hAgent => this.Anonymous.GetAgentSessionList.hAgent;
  set hAgent(int value) => this.Anonymous.GetAgentSessionList.hAgent = value;

  LINEAGENTSESSIONLIST get SessionList =>
      this.Anonymous.GetAgentSessionList.SessionList;
  set SessionList(LINEAGENTSESSIONLIST value) =>
      this.Anonymous.GetAgentSessionList.SessionList = value;
}

/// {@category Struct}
class _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentSessionInfo_e__Struct
    extends Struct {
  @Uint32()
  external int hAgentSession;

  external LINEAGENTSESSIONINFO SessionInfo;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_14
    on LINEPROXYREQUEST {
  int get hAgentSession => this.Anonymous.GetAgentSessionInfo.hAgentSession;
  set hAgentSession(int value) =>
      this.Anonymous.GetAgentSessionInfo.hAgentSession = value;

  LINEAGENTSESSIONINFO get SessionInfo =>
      this.Anonymous.GetAgentSessionInfo.SessionInfo;
  set SessionInfo(LINEAGENTSESSIONINFO value) =>
      this.Anonymous.GetAgentSessionInfo.SessionInfo = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentSessionState_e__Struct
    extends Struct {
  @Uint32()
  external int hAgentSession;

  @Uint32()
  external int dwAgentSessionState;

  @Uint32()
  external int dwNextAgentSessionState;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_15
    on LINEPROXYREQUEST {
  int get hAgentSession => this.Anonymous.SetAgentSessionState.hAgentSession;
  set hAgentSession(int value) =>
      this.Anonymous.SetAgentSessionState.hAgentSession = value;

  int get dwAgentSessionState =>
      this.Anonymous.SetAgentSessionState.dwAgentSessionState;
  set dwAgentSessionState(int value) =>
      this.Anonymous.SetAgentSessionState.dwAgentSessionState = value;

  int get dwNextAgentSessionState =>
      this.Anonymous.SetAgentSessionState.dwNextAgentSessionState;
  set dwNextAgentSessionState(int value) =>
      this.Anonymous.SetAgentSessionState.dwNextAgentSessionState = value;
}

/// {@category Struct}
class _LINEPROXYREQUEST__Anonymous_e__Union__GetQueueList_e__Struct
    extends Struct {
  external GUID GroupID;

  external LINEQUEUELIST QueueList;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_16
    on LINEPROXYREQUEST {
  GUID get GroupID => this.Anonymous.GetQueueList.GroupID;
  set GroupID(GUID value) => this.Anonymous.GetQueueList.GroupID = value;

  LINEQUEUELIST get QueueList => this.Anonymous.GetQueueList.QueueList;
  set QueueList(LINEQUEUELIST value) =>
      this.Anonymous.GetQueueList.QueueList = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__SetQueueMeasurementPeriod_e__Struct
    extends Struct {
  @Uint32()
  external int dwQueueID;

  @Uint32()
  external int dwMeasurementPeriod;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_17
    on LINEPROXYREQUEST {
  int get dwQueueID => this.Anonymous.SetQueueMeasurementPeriod.dwQueueID;
  set dwQueueID(int value) =>
      this.Anonymous.SetQueueMeasurementPeriod.dwQueueID = value;

  int get dwMeasurementPeriod =>
      this.Anonymous.SetQueueMeasurementPeriod.dwMeasurementPeriod;
  set dwMeasurementPeriod(int value) =>
      this.Anonymous.SetQueueMeasurementPeriod.dwMeasurementPeriod = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__GetQueueInfo_e__Struct
    extends Struct {
  @Uint32()
  external int dwQueueID;

  external LINEQUEUEINFO QueueInfo;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_18
    on LINEPROXYREQUEST {
  int get dwQueueID => this.Anonymous.GetQueueInfo.dwQueueID;
  set dwQueueID(int value) => this.Anonymous.GetQueueInfo.dwQueueID = value;

  LINEQUEUEINFO get QueueInfo => this.Anonymous.GetQueueInfo.QueueInfo;
  set QueueInfo(LINEQUEUEINFO value) =>
      this.Anonymous.GetQueueInfo.QueueInfo = value;
}

/// {@category Struct}
@Packed(1)
class _LINEPROXYREQUEST__Anonymous_e__Union__GetGroupList_e__Struct
    extends Struct {
  external LINEAGENTGROUPLIST GroupList;
}

extension LINEPROXYREQUEST__Anonymous_e__Union_Extension_19
    on LINEPROXYREQUEST {
  LINEAGENTGROUPLIST get GroupList => this.Anonymous.GetGroupList.GroupList;
  set GroupList(LINEAGENTGROUPLIST value) =>
      this.Anonymous.GetGroupList.GroupList = value;
}

extension LINEPROXYREQUEST_Extension on LINEPROXYREQUEST {
  _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentGroup_e__Struct
      get SetAgentGroup => this.Anonymous.SetAgentGroup;
  set SetAgentGroup(
          _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentGroup_e__Struct
              value) =>
      this.Anonymous.SetAgentGroup = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentState_e__Struct
      get SetAgentState => this.Anonymous.SetAgentState;
  set SetAgentState(
          _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentState_e__Struct
              value) =>
      this.Anonymous.SetAgentState = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentActivity_e__Struct
      get SetAgentActivity => this.Anonymous.SetAgentActivity;
  set SetAgentActivity(
          _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentActivity_e__Struct
              value) =>
      this.Anonymous.SetAgentActivity = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentCaps_e__Struct
      get GetAgentCaps => this.Anonymous.GetAgentCaps;
  set GetAgentCaps(
          _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentCaps_e__Struct
              value) =>
      this.Anonymous.GetAgentCaps = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentStatus_e__Struct
      get GetAgentStatus => this.Anonymous.GetAgentStatus;
  set GetAgentStatus(
          _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentStatus_e__Struct
              value) =>
      this.Anonymous.GetAgentStatus = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__AgentSpecific_e__Struct
      get AgentSpecific => this.Anonymous.AgentSpecific;
  set AgentSpecific(
          _LINEPROXYREQUEST__Anonymous_e__Union__AgentSpecific_e__Struct
              value) =>
      this.Anonymous.AgentSpecific = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentActivityList_e__Struct
      get GetAgentActivityList => this.Anonymous.GetAgentActivityList;
  set GetAgentActivityList(
          _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentActivityList_e__Struct
              value) =>
      this.Anonymous.GetAgentActivityList = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentGroupList_e__Struct
      get GetAgentGroupList => this.Anonymous.GetAgentGroupList;
  set GetAgentGroupList(
          _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentGroupList_e__Struct
              value) =>
      this.Anonymous.GetAgentGroupList = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__CreateAgent_e__Struct
      get CreateAgent => this.Anonymous.CreateAgent;
  set CreateAgent(
          _LINEPROXYREQUEST__Anonymous_e__Union__CreateAgent_e__Struct value) =>
      this.Anonymous.CreateAgent = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentStateEx_e__Struct
      get SetAgentStateEx => this.Anonymous.SetAgentStateEx;
  set SetAgentStateEx(
          _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentStateEx_e__Struct
              value) =>
      this.Anonymous.SetAgentStateEx = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentMeasurementPeriod_e__Struct
      get SetAgentMeasurementPeriod => this.Anonymous.SetAgentMeasurementPeriod;
  set SetAgentMeasurementPeriod(
          _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentMeasurementPeriod_e__Struct
              value) =>
      this.Anonymous.SetAgentMeasurementPeriod = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentInfo_e__Struct
      get GetAgentInfo => this.Anonymous.GetAgentInfo;
  set GetAgentInfo(
          _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentInfo_e__Struct
              value) =>
      this.Anonymous.GetAgentInfo = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__CreateAgentSession_e__Struct
      get CreateAgentSession => this.Anonymous.CreateAgentSession;
  set CreateAgentSession(
          _LINEPROXYREQUEST__Anonymous_e__Union__CreateAgentSession_e__Struct
              value) =>
      this.Anonymous.CreateAgentSession = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentSessionList_e__Struct
      get GetAgentSessionList => this.Anonymous.GetAgentSessionList;
  set GetAgentSessionList(
          _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentSessionList_e__Struct
              value) =>
      this.Anonymous.GetAgentSessionList = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentSessionInfo_e__Struct
      get GetAgentSessionInfo => this.Anonymous.GetAgentSessionInfo;
  set GetAgentSessionInfo(
          _LINEPROXYREQUEST__Anonymous_e__Union__GetAgentSessionInfo_e__Struct
              value) =>
      this.Anonymous.GetAgentSessionInfo = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentSessionState_e__Struct
      get SetAgentSessionState => this.Anonymous.SetAgentSessionState;
  set SetAgentSessionState(
          _LINEPROXYREQUEST__Anonymous_e__Union__SetAgentSessionState_e__Struct
              value) =>
      this.Anonymous.SetAgentSessionState = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__GetQueueList_e__Struct
      get GetQueueList => this.Anonymous.GetQueueList;
  set GetQueueList(
          _LINEPROXYREQUEST__Anonymous_e__Union__GetQueueList_e__Struct
              value) =>
      this.Anonymous.GetQueueList = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__SetQueueMeasurementPeriod_e__Struct
      get SetQueueMeasurementPeriod => this.Anonymous.SetQueueMeasurementPeriod;
  set SetQueueMeasurementPeriod(
          _LINEPROXYREQUEST__Anonymous_e__Union__SetQueueMeasurementPeriod_e__Struct
              value) =>
      this.Anonymous.SetQueueMeasurementPeriod = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__GetQueueInfo_e__Struct
      get GetQueueInfo => this.Anonymous.GetQueueInfo;
  set GetQueueInfo(
          _LINEPROXYREQUEST__Anonymous_e__Union__GetQueueInfo_e__Struct
              value) =>
      this.Anonymous.GetQueueInfo = value;

  _LINEPROXYREQUEST__Anonymous_e__Union__GetGroupList_e__Struct
      get GetGroupList => this.Anonymous.GetGroupList;
  set GetGroupList(
          _LINEPROXYREQUEST__Anonymous_e__Union__GetGroupList_e__Struct
              value) =>
      this.Anonymous.GetGroupList = value;
}

/// {@category Struct}
@Packed(1)
class LINEPROXYREQUESTLIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumEntries;

  @Uint32()
  external int dwListSize;

  @Uint32()
  external int dwListOffset;
}

/// {@category Struct}
@Packed(1)
class LINEQUEUEENTRY extends Struct {
  @Uint32()
  external int dwQueueID;

  @Uint32()
  external int dwNameSize;

  @Uint32()
  external int dwNameOffset;
}

/// {@category Struct}
@Packed(1)
class LINEQUEUEINFO extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwMeasurementPeriod;

  @Uint32()
  external int dwTotalCallsQueued;

  @Uint32()
  external int dwCurrentCallsQueued;

  @Uint32()
  external int dwTotalCallsAbandoned;

  @Uint32()
  external int dwTotalCallsFlowedIn;

  @Uint32()
  external int dwTotalCallsFlowedOut;

  @Uint32()
  external int dwLongestEverWaitTime;

  @Uint32()
  external int dwCurrentLongestWaitTime;

  @Uint32()
  external int dwAverageWaitTime;

  @Uint32()
  external int dwFinalDisposition;
}

/// {@category Struct}
@Packed(1)
class LINEQUEUELIST extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumEntries;

  @Uint32()
  external int dwListSize;

  @Uint32()
  external int dwListOffset;
}

/// {@category Struct}
class LINEREQMAKECALL extends Struct {
  @Array(80)
  external Array<Uint8> szDestAddress;

  @Array(40)
  external Array<Uint8> szAppName;

  @Array(40)
  external Array<Uint8> szCalledParty;

  @Array(80)
  external Array<Uint8> szComment;
}

/// {@category Struct}
class LINEREQMEDIACALL extends Struct {
  @IntPtr()
  external int hWnd;

  @IntPtr()
  external int wRequestID;

  @Array(40)
  external Array<Uint8> szDeviceClass;

  @Array(40)
  external Array<Uint8> ucDeviceID;

  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwSecure;

  @Array(80)
  external Array<Uint8> szDestAddress;

  @Array(40)
  external Array<Uint8> szAppName;

  @Array(40)
  external Array<Uint8> szCalledParty;

  @Array(80)
  external Array<Uint8> szComment;
}

/// {@category Struct}
@Packed(1)
class LINETERMCAPS extends Struct {
  @Uint32()
  external int dwTermDev;

  @Uint32()
  external int dwTermModes;

  @Uint32()
  external int dwTermSharing;
}

/// {@category Struct}
@Packed(1)
class LINETRANSLATECAPS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwNumLocations;

  @Uint32()
  external int dwLocationListSize;

  @Uint32()
  external int dwLocationListOffset;

  @Uint32()
  external int dwCurrentLocationID;

  @Uint32()
  external int dwNumCards;

  @Uint32()
  external int dwCardListSize;

  @Uint32()
  external int dwCardListOffset;

  @Uint32()
  external int dwCurrentPreferredCardID;
}

/// {@category Struct}
@Packed(1)
class LINETRANSLATEOUTPUT extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwDialableStringSize;

  @Uint32()
  external int dwDialableStringOffset;

  @Uint32()
  external int dwDisplayableStringSize;

  @Uint32()
  external int dwDisplayableStringOffset;

  @Uint32()
  external int dwCurrentCountry;

  @Uint32()
  external int dwDestCountry;

  @Uint32()
  external int dwTranslateResults;
}

/// {@category Struct}
class MSP_EVENT_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int Event;

  external Pointer<Int32> hCall;

  external _MSP_EVENT_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MSP_EVENT_INFO__Anonymous_e__Union extends Union {
  external _MSP_EVENT_INFO__Anonymous_e__Union__MSP_ADDRESS_EVENT_INFO_e__Struct
      MSP_ADDRESS_EVENT_INFO;

  external _MSP_EVENT_INFO__Anonymous_e__Union__MSP_CALL_EVENT_INFO_e__Struct
      MSP_CALL_EVENT_INFO;

  external _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TSP_DATA_e__Struct
      MSP_TSP_DATA;

  external _MSP_EVENT_INFO__Anonymous_e__Union__MSP_PRIVATE_EVENT_INFO_e__Struct
      MSP_PRIVATE_EVENT_INFO;

  external _MSP_EVENT_INFO__Anonymous_e__Union__MSP_FILE_TERMINAL_EVENT_INFO_e__Struct
      MSP_FILE_TERMINAL_EVENT_INFO;

  external _MSP_EVENT_INFO__Anonymous_e__Union__MSP_ASR_TERMINAL_EVENT_INFO_e__Struct
      MSP_ASR_TERMINAL_EVENT_INFO;

  external _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TTS_TERMINAL_EVENT_INFO_e__Struct
      MSP_TTS_TERMINAL_EVENT_INFO;

  external _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TONE_TERMINAL_EVENT_INFO_e__Struct
      MSP_TONE_TERMINAL_EVENT_INFO;
}

/// {@category Struct}
class _MSP_EVENT_INFO__Anonymous_e__Union__MSP_ADDRESS_EVENT_INFO_e__Struct
    extends Struct {
  @Int32()
  external int Type;

  external Pointer<COMObject> pTerminal;
}

extension MSP_EVENT_INFO__Anonymous_e__Union_Extension on MSP_EVENT_INFO {
  int get Type => this.Anonymous.MSP_ADDRESS_EVENT_INFO.Type;
  set Type(int value) => this.Anonymous.MSP_ADDRESS_EVENT_INFO.Type = value;

  Pointer<COMObject> get pTerminal =>
      this.Anonymous.MSP_ADDRESS_EVENT_INFO.pTerminal;
  set pTerminal(Pointer<COMObject> value) =>
      this.Anonymous.MSP_ADDRESS_EVENT_INFO.pTerminal = value;
}

/// {@category Struct}
class _MSP_EVENT_INFO__Anonymous_e__Union__MSP_CALL_EVENT_INFO_e__Struct
    extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int Cause;

  external Pointer<COMObject> pStream;

  external Pointer<COMObject> pTerminal;

  @Int32()
  external int hrError;
}

extension MSP_EVENT_INFO__Anonymous_e__Union_Extension_1 on MSP_EVENT_INFO {
  int get Type => this.Anonymous.MSP_CALL_EVENT_INFO.Type;
  set Type(int value) => this.Anonymous.MSP_CALL_EVENT_INFO.Type = value;

  int get Cause => this.Anonymous.MSP_CALL_EVENT_INFO.Cause;
  set Cause(int value) => this.Anonymous.MSP_CALL_EVENT_INFO.Cause = value;

  Pointer<COMObject> get pStream => this.Anonymous.MSP_CALL_EVENT_INFO.pStream;
  set pStream(Pointer<COMObject> value) =>
      this.Anonymous.MSP_CALL_EVENT_INFO.pStream = value;

  Pointer<COMObject> get pTerminal =>
      this.Anonymous.MSP_CALL_EVENT_INFO.pTerminal;
  set pTerminal(Pointer<COMObject> value) =>
      this.Anonymous.MSP_CALL_EVENT_INFO.pTerminal = value;

  int get hrError => this.Anonymous.MSP_CALL_EVENT_INFO.hrError;
  set hrError(int value) => this.Anonymous.MSP_CALL_EVENT_INFO.hrError = value;
}

/// {@category Struct}
class _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TSP_DATA_e__Struct
    extends Struct {
  @Uint32()
  external int dwBufferSize;

  @Array(1)
  external Array<Uint8> pBuffer;
}

extension MSP_EVENT_INFO__Anonymous_e__Union_Extension_2 on MSP_EVENT_INFO {
  int get dwBufferSize => this.Anonymous.MSP_TSP_DATA.dwBufferSize;
  set dwBufferSize(int value) =>
      this.Anonymous.MSP_TSP_DATA.dwBufferSize = value;

  Array<Uint8> get pBuffer => this.Anonymous.MSP_TSP_DATA.pBuffer;
  set pBuffer(Array<Uint8> value) =>
      this.Anonymous.MSP_TSP_DATA.pBuffer = value;
}

/// {@category Struct}
class _MSP_EVENT_INFO__Anonymous_e__Union__MSP_PRIVATE_EVENT_INFO_e__Struct
    extends Struct {
  external Pointer<COMObject> pEvent;

  @Int32()
  external int lEventCode;
}

extension MSP_EVENT_INFO__Anonymous_e__Union_Extension_3 on MSP_EVENT_INFO {
  Pointer<COMObject> get pEvent => this.Anonymous.MSP_PRIVATE_EVENT_INFO.pEvent;
  set pEvent(Pointer<COMObject> value) =>
      this.Anonymous.MSP_PRIVATE_EVENT_INFO.pEvent = value;

  int get lEventCode => this.Anonymous.MSP_PRIVATE_EVENT_INFO.lEventCode;
  set lEventCode(int value) =>
      this.Anonymous.MSP_PRIVATE_EVENT_INFO.lEventCode = value;
}

/// {@category Struct}
class _MSP_EVENT_INFO__Anonymous_e__Union__MSP_FILE_TERMINAL_EVENT_INFO_e__Struct
    extends Struct {
  external Pointer<COMObject> pParentFileTerminal;

  external Pointer<COMObject> pFileTrack;

  @Int32()
  external int TerminalMediaState;

  @Int32()
  external int ftecEventCause;

  @Int32()
  external int hrErrorCode;
}

extension MSP_EVENT_INFO__Anonymous_e__Union_Extension_4 on MSP_EVENT_INFO {
  Pointer<COMObject> get pParentFileTerminal =>
      this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO.pParentFileTerminal;
  set pParentFileTerminal(Pointer<COMObject> value) =>
      this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO.pParentFileTerminal = value;

  Pointer<COMObject> get pFileTrack =>
      this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO.pFileTrack;
  set pFileTrack(Pointer<COMObject> value) =>
      this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO.pFileTrack = value;

  int get TerminalMediaState =>
      this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO.TerminalMediaState;
  set TerminalMediaState(int value) =>
      this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO.TerminalMediaState = value;

  int get ftecEventCause =>
      this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO.ftecEventCause;
  set ftecEventCause(int value) =>
      this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO.ftecEventCause = value;

  int get hrErrorCode =>
      this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO.hrErrorCode;
  set hrErrorCode(int value) =>
      this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO.hrErrorCode = value;
}

/// {@category Struct}
class _MSP_EVENT_INFO__Anonymous_e__Union__MSP_ASR_TERMINAL_EVENT_INFO_e__Struct
    extends Struct {
  external Pointer<COMObject> pASRTerminal;

  @Int32()
  external int hrErrorCode;
}

extension MSP_EVENT_INFO__Anonymous_e__Union_Extension_5 on MSP_EVENT_INFO {
  Pointer<COMObject> get pASRTerminal =>
      this.Anonymous.MSP_ASR_TERMINAL_EVENT_INFO.pASRTerminal;
  set pASRTerminal(Pointer<COMObject> value) =>
      this.Anonymous.MSP_ASR_TERMINAL_EVENT_INFO.pASRTerminal = value;

  int get hrErrorCode => this.Anonymous.MSP_ASR_TERMINAL_EVENT_INFO.hrErrorCode;
  set hrErrorCode(int value) =>
      this.Anonymous.MSP_ASR_TERMINAL_EVENT_INFO.hrErrorCode = value;
}

/// {@category Struct}
class _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TTS_TERMINAL_EVENT_INFO_e__Struct
    extends Struct {
  external Pointer<COMObject> pTTSTerminal;

  @Int32()
  external int hrErrorCode;
}

extension MSP_EVENT_INFO__Anonymous_e__Union_Extension_6 on MSP_EVENT_INFO {
  Pointer<COMObject> get pTTSTerminal =>
      this.Anonymous.MSP_TTS_TERMINAL_EVENT_INFO.pTTSTerminal;
  set pTTSTerminal(Pointer<COMObject> value) =>
      this.Anonymous.MSP_TTS_TERMINAL_EVENT_INFO.pTTSTerminal = value;

  int get hrErrorCode => this.Anonymous.MSP_TTS_TERMINAL_EVENT_INFO.hrErrorCode;
  set hrErrorCode(int value) =>
      this.Anonymous.MSP_TTS_TERMINAL_EVENT_INFO.hrErrorCode = value;
}

/// {@category Struct}
class _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TONE_TERMINAL_EVENT_INFO_e__Struct
    extends Struct {
  external Pointer<COMObject> pToneTerminal;

  @Int32()
  external int hrErrorCode;
}

extension MSP_EVENT_INFO__Anonymous_e__Union_Extension_7 on MSP_EVENT_INFO {
  Pointer<COMObject> get pToneTerminal =>
      this.Anonymous.MSP_TONE_TERMINAL_EVENT_INFO.pToneTerminal;
  set pToneTerminal(Pointer<COMObject> value) =>
      this.Anonymous.MSP_TONE_TERMINAL_EVENT_INFO.pToneTerminal = value;

  int get hrErrorCode =>
      this.Anonymous.MSP_TONE_TERMINAL_EVENT_INFO.hrErrorCode;
  set hrErrorCode(int value) =>
      this.Anonymous.MSP_TONE_TERMINAL_EVENT_INFO.hrErrorCode = value;
}

extension MSP_EVENT_INFO_Extension on MSP_EVENT_INFO {
  _MSP_EVENT_INFO__Anonymous_e__Union__MSP_ADDRESS_EVENT_INFO_e__Struct
      get MSP_ADDRESS_EVENT_INFO => this.Anonymous.MSP_ADDRESS_EVENT_INFO;
  set MSP_ADDRESS_EVENT_INFO(
          _MSP_EVENT_INFO__Anonymous_e__Union__MSP_ADDRESS_EVENT_INFO_e__Struct
              value) =>
      this.Anonymous.MSP_ADDRESS_EVENT_INFO = value;

  _MSP_EVENT_INFO__Anonymous_e__Union__MSP_CALL_EVENT_INFO_e__Struct
      get MSP_CALL_EVENT_INFO => this.Anonymous.MSP_CALL_EVENT_INFO;
  set MSP_CALL_EVENT_INFO(
          _MSP_EVENT_INFO__Anonymous_e__Union__MSP_CALL_EVENT_INFO_e__Struct
              value) =>
      this.Anonymous.MSP_CALL_EVENT_INFO = value;

  _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TSP_DATA_e__Struct
      get MSP_TSP_DATA => this.Anonymous.MSP_TSP_DATA;
  set MSP_TSP_DATA(
          _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TSP_DATA_e__Struct value) =>
      this.Anonymous.MSP_TSP_DATA = value;

  _MSP_EVENT_INFO__Anonymous_e__Union__MSP_PRIVATE_EVENT_INFO_e__Struct
      get MSP_PRIVATE_EVENT_INFO => this.Anonymous.MSP_PRIVATE_EVENT_INFO;
  set MSP_PRIVATE_EVENT_INFO(
          _MSP_EVENT_INFO__Anonymous_e__Union__MSP_PRIVATE_EVENT_INFO_e__Struct
              value) =>
      this.Anonymous.MSP_PRIVATE_EVENT_INFO = value;

  _MSP_EVENT_INFO__Anonymous_e__Union__MSP_FILE_TERMINAL_EVENT_INFO_e__Struct
      get MSP_FILE_TERMINAL_EVENT_INFO =>
          this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO;
  set MSP_FILE_TERMINAL_EVENT_INFO(
          _MSP_EVENT_INFO__Anonymous_e__Union__MSP_FILE_TERMINAL_EVENT_INFO_e__Struct
              value) =>
      this.Anonymous.MSP_FILE_TERMINAL_EVENT_INFO = value;

  _MSP_EVENT_INFO__Anonymous_e__Union__MSP_ASR_TERMINAL_EVENT_INFO_e__Struct
      get MSP_ASR_TERMINAL_EVENT_INFO =>
          this.Anonymous.MSP_ASR_TERMINAL_EVENT_INFO;
  set MSP_ASR_TERMINAL_EVENT_INFO(
          _MSP_EVENT_INFO__Anonymous_e__Union__MSP_ASR_TERMINAL_EVENT_INFO_e__Struct
              value) =>
      this.Anonymous.MSP_ASR_TERMINAL_EVENT_INFO = value;

  _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TTS_TERMINAL_EVENT_INFO_e__Struct
      get MSP_TTS_TERMINAL_EVENT_INFO =>
          this.Anonymous.MSP_TTS_TERMINAL_EVENT_INFO;
  set MSP_TTS_TERMINAL_EVENT_INFO(
          _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TTS_TERMINAL_EVENT_INFO_e__Struct
              value) =>
      this.Anonymous.MSP_TTS_TERMINAL_EVENT_INFO = value;

  _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TONE_TERMINAL_EVENT_INFO_e__Struct
      get MSP_TONE_TERMINAL_EVENT_INFO =>
          this.Anonymous.MSP_TONE_TERMINAL_EVENT_INFO;
  set MSP_TONE_TERMINAL_EVENT_INFO(
          _MSP_EVENT_INFO__Anonymous_e__Union__MSP_TONE_TERMINAL_EVENT_INFO_e__Struct
              value) =>
      this.Anonymous.MSP_TONE_TERMINAL_EVENT_INFO = value;
}

/// {@category Struct}
class NSID extends Struct {
  @Uint32()
  external int dwSize;

  @Array(16)
  external Array<Uint8> uchType;

  @Uint32()
  external int xtype;

  @Int32()
  external int lTime;

  external _NSID__address_e__Union address;
}

/// {@category Struct}
class _NSID__address_e__Union extends Union {
  external ADDR_ALIAS alias;

  @Array(1)
  external Array<Uint8> rgchInterNet;
}

extension NSID_Extension on NSID {
  ADDR_ALIAS get alias => this.address.alias;
  set alias(ADDR_ALIAS value) => this.address.alias = value;

  Array<Uint8> get rgchInterNet => this.address.rgchInterNet;
  set rgchInterNet(Array<Uint8> value) => this.address.rgchInterNet = value;
}

/// {@category Struct}
@Packed(1)
class PHONEBUTTONINFO extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwButtonMode;

  @Uint32()
  external int dwButtonFunction;

  @Uint32()
  external int dwButtonTextSize;

  @Uint32()
  external int dwButtonTextOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwButtonState;
}

/// {@category Struct}
class PHONECAPS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwProviderInfoSize;

  @Uint32()
  external int dwProviderInfoOffset;

  @Uint32()
  external int dwPhoneInfoSize;

  @Uint32()
  external int dwPhoneInfoOffset;

  @Uint32()
  external int dwPermanentPhoneID;

  @Uint32()
  external int dwPhoneNameSize;

  @Uint32()
  external int dwPhoneNameOffset;

  @Uint32()
  external int dwStringFormat;

  @Uint32()
  external int dwPhoneStates;

  @Uint32()
  external int dwHookSwitchDevs;

  @Uint32()
  external int dwHandsetHookSwitchModes;

  @Uint32()
  external int dwSpeakerHookSwitchModes;

  @Uint32()
  external int dwHeadsetHookSwitchModes;

  @Uint32()
  external int dwVolumeFlags;

  @Uint32()
  external int dwGainFlags;

  @Uint32()
  external int dwDisplayNumRows;

  @Uint32()
  external int dwDisplayNumColumns;

  @Uint32()
  external int dwNumRingModes;

  @Uint32()
  external int dwNumButtonLamps;

  @Uint32()
  external int dwButtonModesSize;

  @Uint32()
  external int dwButtonModesOffset;

  @Uint32()
  external int dwButtonFunctionsSize;

  @Uint32()
  external int dwButtonFunctionsOffset;

  @Uint32()
  external int dwLampModesSize;

  @Uint32()
  external int dwLampModesOffset;

  @Uint32()
  external int dwNumSetData;

  @Uint32()
  external int dwSetDataSize;

  @Uint32()
  external int dwSetDataOffset;

  @Uint32()
  external int dwNumGetData;

  @Uint32()
  external int dwGetDataSize;

  @Uint32()
  external int dwGetDataOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwDeviceClassesSize;

  @Uint32()
  external int dwDeviceClassesOffset;

  @Uint32()
  external int dwPhoneFeatures;

  @Uint32()
  external int dwSettableHandsetHookSwitchModes;

  @Uint32()
  external int dwSettableSpeakerHookSwitchModes;

  @Uint32()
  external int dwSettableHeadsetHookSwitchModes;

  @Uint32()
  external int dwMonitoredHandsetHookSwitchModes;

  @Uint32()
  external int dwMonitoredSpeakerHookSwitchModes;

  @Uint32()
  external int dwMonitoredHeadsetHookSwitchModes;

  external GUID PermanentPhoneGuid;
}

/// {@category Struct}
@Packed(1)
class PHONEEXTENSIONID extends Struct {
  @Uint32()
  external int dwExtensionID0;

  @Uint32()
  external int dwExtensionID1;

  @Uint32()
  external int dwExtensionID2;

  @Uint32()
  external int dwExtensionID3;
}

/// {@category Struct}
class PHONEINITIALIZEEXPARAMS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwOptions;

  external _PHONEINITIALIZEEXPARAMS__Handles_e__Union Handles;

  @Uint32()
  external int dwCompletionKey;
}

/// {@category Struct}
class _PHONEINITIALIZEEXPARAMS__Handles_e__Union extends Union {
  @IntPtr()
  external int hEvent;

  @IntPtr()
  external int hCompletionPort;
}

extension PHONEINITIALIZEEXPARAMS_Extension on PHONEINITIALIZEEXPARAMS {
  int get hEvent => this.Handles.hEvent;
  set hEvent(int value) => this.Handles.hEvent = value;

  int get hCompletionPort => this.Handles.hCompletionPort;
  set hCompletionPort(int value) => this.Handles.hCompletionPort = value;
}

/// {@category Struct}
@Packed(1)
class PHONEMESSAGE extends Struct {
  @Uint32()
  external int hDevice;

  @Uint32()
  external int dwMessageID;

  @IntPtr()
  external int dwCallbackInstance;

  @IntPtr()
  external int dwParam1;

  @IntPtr()
  external int dwParam2;

  @IntPtr()
  external int dwParam3;
}

/// {@category Struct}
@Packed(1)
class PHONESTATUS extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwStatusFlags;

  @Uint32()
  external int dwNumOwners;

  @Uint32()
  external int dwNumMonitors;

  @Uint32()
  external int dwRingMode;

  @Uint32()
  external int dwRingVolume;

  @Uint32()
  external int dwHandsetHookSwitchMode;

  @Uint32()
  external int dwHandsetVolume;

  @Uint32()
  external int dwHandsetGain;

  @Uint32()
  external int dwSpeakerHookSwitchMode;

  @Uint32()
  external int dwSpeakerVolume;

  @Uint32()
  external int dwSpeakerGain;

  @Uint32()
  external int dwHeadsetHookSwitchMode;

  @Uint32()
  external int dwHeadsetVolume;

  @Uint32()
  external int dwHeadsetGain;

  @Uint32()
  external int dwDisplaySize;

  @Uint32()
  external int dwDisplayOffset;

  @Uint32()
  external int dwLampModesSize;

  @Uint32()
  external int dwLampModesOffset;

  @Uint32()
  external int dwOwnerNameSize;

  @Uint32()
  external int dwOwnerNameOffset;

  @Uint32()
  external int dwDevSpecificSize;

  @Uint32()
  external int dwDevSpecificOffset;

  @Uint32()
  external int dwPhoneFeatures;
}

/// {@category Struct}
class STnefProblem extends Struct {
  @Uint32()
  external int ulComponent;

  @Uint32()
  external int ulAttribute;

  @Uint32()
  external int ulPropTag;

  @Int32()
  external int scode;
}

/// {@category Struct}
class STnefProblemArray extends Struct {
  @Uint32()
  external int cProblem;

  @Array(1)
  external Array<STnefProblem> aProblem;
}

/// {@category Struct}
class TAPI_CUSTOMTONE extends Struct {
  @Uint32()
  external int dwFrequency;

  @Uint32()
  external int dwCadenceOn;

  @Uint32()
  external int dwCadenceOff;

  @Uint32()
  external int dwVolume;
}

/// {@category Struct}
class TAPI_DETECTTONE extends Struct {
  @Uint32()
  external int dwAppSpecific;

  @Uint32()
  external int dwDuration;

  @Uint32()
  external int dwFrequency1;

  @Uint32()
  external int dwFrequency2;

  @Uint32()
  external int dwFrequency3;
}

/// {@category Struct}
class TUISPICREATEDIALOGINSTANCEPARAMS extends Struct {
  @Uint32()
  external int dwRequestID;

  external Pointer<HDRVDIALOGINSTANCE__> hdDlgInst;

  @Uint32()
  external int htDlgInst;

  external Pointer<Utf16> lpszUIDLLName;

  external Pointer lpParams;

  @Uint32()
  external int dwSize;
}

/// {@category Struct}
@Packed(1)
class VARSTRING extends Struct {
  @Uint32()
  external int dwTotalSize;

  @Uint32()
  external int dwNeededSize;

  @Uint32()
  external int dwUsedSize;

  @Uint32()
  external int dwStringFormat;

  @Uint32()
  external int dwStringSize;

  @Uint32()
  external int dwStringOffset;
}

/// {@category Struct}
class ADDR_ALIAS extends Struct {
  @Array(41)
  external Array<Uint8> rgchName;

  @Array(11)
  external Array<Uint8> rgchEName;

  @Array(12)
  external Array<Uint8> rgchSrvr;

  @Uint32()
  external int dibDetail;

  @Uint16()
  external int type;
}

/// {@category Struct}
@Packed(1)
class dtr extends Struct {
  @Uint16()
  external int wYear;

  @Uint16()
  external int wMonth;

  @Uint16()
  external int wDay;

  @Uint16()
  external int wHour;

  @Uint16()
  external int wMinute;

  @Uint16()
  external int wSecond;

  @Uint16()
  external int wDayOfWeek;
}

/// {@category Struct}
@Packed(1)
class renddata extends Struct {
  @Uint16()
  external int atyp;

  @Uint32()
  external int ulPosition;

  @Uint16()
  external int dxWidth;

  @Uint16()
  external int dyHeight;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class trp extends Struct {
  @Uint16()
  external int trpid;

  @Uint16()
  external int cbgrtrp;

  @Uint16()
  external int cch;

  @Uint16()
  external int cbRgb;
}

/// {@category Struct}
@Packed(1)
class linereqmakecallW_tag extends Struct {
  @Array(80)
  external Array<Uint16> _szDestAddress;

  String get szDestAddress {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_szDestAddress[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDestAddress(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _szDestAddress[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(40)
  external Array<Uint16> _szAppName;

  String get szAppName {
    final charCodes = <int>[];
    for (var i = 0; i < 40; i++) {
      charCodes.add(_szAppName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szAppName(String value) {
    final stringToStore = value.padRight(40, '\x00');
    for (var i = 0; i < 40; i++) {
      _szAppName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(40)
  external Array<Uint16> _szCalledParty;

  String get szCalledParty {
    final charCodes = <int>[];
    for (var i = 0; i < 40; i++) {
      charCodes.add(_szCalledParty[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCalledParty(String value) {
    final stringToStore = value.padRight(40, '\x00');
    for (var i = 0; i < 40; i++) {
      _szCalledParty[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(80)
  external Array<Uint16> _szComment;

  String get szComment {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_szComment[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szComment(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _szComment[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class linereqmediacallW_tag extends Struct {
  @IntPtr()
  external int hWnd;

  @IntPtr()
  external int wRequestID;

  @Array(40)
  external Array<Uint16> _szDeviceClass;

  String get szDeviceClass {
    final charCodes = <int>[];
    for (var i = 0; i < 40; i++) {
      charCodes.add(_szDeviceClass[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDeviceClass(String value) {
    final stringToStore = value.padRight(40, '\x00');
    for (var i = 0; i < 40; i++) {
      _szDeviceClass[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(40)
  external Array<Uint8> ucDeviceID;

  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwSecure;

  @Array(80)
  external Array<Uint16> _szDestAddress;

  String get szDestAddress {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_szDestAddress[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDestAddress(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _szDestAddress[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(40)
  external Array<Uint16> _szAppName;

  String get szAppName {
    final charCodes = <int>[];
    for (var i = 0; i < 40; i++) {
      charCodes.add(_szAppName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szAppName(String value) {
    final stringToStore = value.padRight(40, '\x00');
    for (var i = 0; i < 40; i++) {
      _szAppName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(40)
  external Array<Uint16> _szCalledParty;

  String get szCalledParty {
    final charCodes = <int>[];
    for (var i = 0; i < 40; i++) {
      charCodes.add(_szCalledParty[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCalledParty(String value) {
    final stringToStore = value.padRight(40, '\x00');
    for (var i = 0; i < 40; i++) {
      _szCalledParty[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(80)
  external Array<Uint16> _szComment;

  String get szComment {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_szComment[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szComment(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _szComment[i] = stringToStore.codeUnitAt(i);
    }
  }
}
