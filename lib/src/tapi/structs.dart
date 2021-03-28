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

class LINEADDRESSCAPS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwLineDeviceID;
  @Uint32() external int dwAddressSize;
  @Uint32() external int dwAddressOffset;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwDevSpecificOffset;
  @Uint32() external int dwAddressSharing;
  @Uint32() external int dwAddressStates;
  @Uint32() external int dwCallInfoStates;
  @Uint32() external int dwCallerIDFlags;
  @Uint32() external int dwCalledIDFlags;
  @Uint32() external int dwConnectedIDFlags;
  @Uint32() external int dwRedirectionIDFlags;
  @Uint32() external int dwRedirectingIDFlags;
  @Uint32() external int dwCallStates;
  @Uint32() external int dwDialToneModes;
  @Uint32() external int dwBusyModes;
  @Uint32() external int dwSpecialInfo;
  @Uint32() external int dwDisconnectModes;
  @Uint32() external int dwMaxNumActiveCalls;
  @Uint32() external int dwMaxNumOnHoldCalls;
  @Uint32() external int dwMaxNumOnHoldPendingCalls;
  @Uint32() external int dwMaxNumConference;
  @Uint32() external int dwMaxNumTransConf;
  @Uint32() external int dwAddrCapFlags;
  @Uint32() external int dwCallFeatures;
  @Uint32() external int dwRemoveFromConfCaps;
  @Uint32() external int dwRemoveFromConfState;
  @Uint32() external int dwTransferModes;
  @Uint32() external int dwParkModes;
  @Uint32() external int dwForwardModes;
  @Uint32() external int dwMaxForwardEntries;
  @Uint32() external int dwMaxSpecificEntries;
  @Uint32() external int dwMinFwdNumRings;
  @Uint32() external int dwMaxFwdNumRings;
  @Uint32() external int dwMaxCallCompletions;
  @Uint32() external int dwCallCompletionConds;
  @Uint32() external int dwCallCompletionModes;
  @Uint32() external int dwNumCompletionMessages;
  @Uint32() external int dwCompletionMsgTextEntrySize;
  @Uint32() external int dwCompletionMsgTextSize;
  @Uint32() external int dwCompletionMsgTextOffset;
  @Uint32() external int dwAddressFeatures;
  @Uint32() external int dwPredictiveAutoTransferStates;
  @Uint32() external int dwNumCallTreatments;
  @Uint32() external int dwCallTreatmentListSize;
  @Uint32() external int dwCallTreatmentListOffset;
  @Uint32() external int dwDeviceClassesSize;
  @Uint32() external int dwDeviceClassesOffset;
  @Uint32() external int dwMaxCallDataSize;
  @Uint32() external int dwCallFeatures2;
  @Uint32() external int dwMaxNoAnswerTimeout;
  @Uint32() external int dwConnectedModes;
  @Uint32() external int dwOfferingModes;
  @Uint32() external int dwAvailableMediaModes;
}

class LINEADDRESSSTATUS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumInUse;
  @Uint32() external int dwNumActiveCalls;
  @Uint32() external int dwNumOnHoldCalls;
  @Uint32() external int dwNumOnHoldPendCalls;
  @Uint32() external int dwAddressFeatures;
  @Uint32() external int dwNumRingsNoAnswer;
  @Uint32() external int dwForwardNumEntries;
  @Uint32() external int dwForwardSize;
  @Uint32() external int dwForwardOffset;
  @Uint32() external int dwTerminalModesSize;
  @Uint32() external int dwTerminalModesOffset;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwDevSpecificOffset;
}

class LINEAGENTACTIVITYENTRY extends Struct {
  @Uint32() external int dwID;
  @Uint32() external int dwNameSize;
  @Uint32() external int dwNameOffset;
}

class LINEAGENTACTIVITYLIST extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumEntries;
  @Uint32() external int dwListSize;
  @Uint32() external int dwListOffset;
}

class LINEAGENTCAPS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwAgentHandlerInfoSize;
  @Uint32() external int dwAgentHandlerInfoOffset;
  @Uint32() external int dwCapsVersion;
  @Uint32() external int dwFeatures;
  @Uint32() external int dwStates;
  @Uint32() external int dwNextStates;
  @Uint32() external int dwMaxNumGroupEntries;
  @Uint32() external int dwAgentStatusMessages;
  @Uint32() external int dwNumAgentExtensionIDs;
  @Uint32() external int dwAgentExtensionIDListSize;
  @Uint32() external int dwAgentExtensionIDListOffset;
  external GUID ProxyGUID;
}

class LINEAGENTGROUPENTRY extends Struct {
  @Uint32() external int GroupID;
  @Uint32() external int dwNameSize;
  @Uint32() external int dwNameOffset;
}

class LINEAGENTGROUPLIST extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumEntries;
  @Uint32() external int dwListSize;
  @Uint32() external int dwListOffset;
}

class LINEAGENTSTATUS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumEntries;
  @Uint32() external int dwGroupListSize;
  @Uint32() external int dwGroupListOffset;
  @Uint32() external int dwState;
  @Uint32() external int dwNextState;
  @Uint32() external int dwActivityID;
  @Uint32() external int dwActivitySize;
  @Uint32() external int dwActivityOffset;
  @Uint32() external int dwAgentFeatures;
  @Uint32() external int dwValidStates;
  @Uint32() external int dwValidNextStates;
}

class LINEAPPINFO extends Struct {
  @Uint32() external int dwMachineNameSize;
  @Uint32() external int dwMachineNameOffset;
  @Uint32() external int dwUserNameSize;
  @Uint32() external int dwUserNameOffset;
  @Uint32() external int dwModuleFilenameSize;
  @Uint32() external int dwModuleFilenameOffset;
  @Uint32() external int dwFriendlyNameSize;
  @Uint32() external int dwFriendlyNameOffset;
  @Uint32() external int dwMediaModes;
  @Uint32() external int dwAddressID;
}

class LINEAGENTENTRY extends Struct {
  @Uint32() external int hAgent;
  @Uint32() external int dwNameSize;
  @Uint32() external int dwNameOffset;
  @Uint32() external int dwIDSize;
  @Uint32() external int dwIDOffset;
  @Uint32() external int dwPINSize;
  @Uint32() external int dwPINOffset;
}

class LINEAGENTLIST extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumEntries;
  @Uint32() external int dwListSize;
  @Uint32() external int dwListOffset;
}

class LINEAGENTINFO extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwAgentState;
  @Uint32() external int dwNextAgentState;
  @Uint32() external int dwMeasurementPeriod;
  external CY cyOverallCallRate;
  @Uint32() external int dwNumberOfACDCalls;
  @Uint32() external int dwNumberOfIncomingCalls;
  @Uint32() external int dwNumberOfOutgoingCalls;
  @Uint32() external int dwTotalACDTalkTime;
  @Uint32() external int dwTotalACDCallTime;
  @Uint32() external int dwTotalACDWrapUpTime;
}

class LINEAGENTSESSIONENTRY extends Struct {
  @Uint32() external int hAgentSession;
  @Uint32() external int hAgent;
  external GUID GroupID;
  @Uint32() external int dwWorkingAddressID;
}

class LINEAGENTSESSIONLIST extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumEntries;
  @Uint32() external int dwListSize;
  @Uint32() external int dwListOffset;
}

class LINEAGENTSESSIONINFO extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwAgentSessionState;
  @Uint32() external int dwNextAgentSessionState;
  @Double() external double dateSessionStartTime;
  @Uint32() external int dwSessionDuration;
  @Uint32() external int dwNumberOfCalls;
  @Uint32() external int dwTotalTalkTime;
  @Uint32() external int dwAverageTalkTime;
  @Uint32() external int dwTotalCallTime;
  @Uint32() external int dwAverageCallTime;
  @Uint32() external int dwTotalWrapUpTime;
  @Uint32() external int dwAverageWrapUpTime;
  external CY cyACDCallRate;
  @Uint32() external int dwLongestTimeToAnswer;
  @Uint32() external int dwAverageTimeToAnswer;
}

class LINEQUEUEENTRY extends Struct {
  @Uint32() external int dwQueueID;
  @Uint32() external int dwNameSize;
  @Uint32() external int dwNameOffset;
}

class LINEQUEUELIST extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumEntries;
  @Uint32() external int dwListSize;
  @Uint32() external int dwListOffset;
}

class LINEQUEUEINFO extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwMeasurementPeriod;
  @Uint32() external int dwTotalCallsQueued;
  @Uint32() external int dwCurrentCallsQueued;
  @Uint32() external int dwTotalCallsAbandoned;
  @Uint32() external int dwTotalCallsFlowedIn;
  @Uint32() external int dwTotalCallsFlowedOut;
  @Uint32() external int dwLongestEverWaitTime;
  @Uint32() external int dwCurrentLongestWaitTime;
  @Uint32() external int dwAverageWaitTime;
  @Uint32() external int dwFinalDisposition;
}

class LINEPROXYREQUESTLIST extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumEntries;
  @Uint32() external int dwListSize;
  @Uint32() external int dwListOffset;
}

class LINEDIALPARAMS extends Struct {
  @Uint32() external int dwDialPause;
  @Uint32() external int dwDialSpeed;
  @Uint32() external int dwDigitDuration;
  @Uint32() external int dwWaitForDialtone;
}

class LINECALLINFO extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int hLine;
  @Uint32() external int dwLineDeviceID;
  @Uint32() external int dwAddressID;
  @Uint32() external int dwBearerMode;
  @Uint32() external int dwRate;
  @Uint32() external int dwMediaMode;
  @Uint32() external int dwAppSpecific;
  @Uint32() external int dwCallID;
  @Uint32() external int dwRelatedCallID;
  @Uint32() external int dwCallParamFlags;
  @Uint32() external int dwCallStates;
  @Uint32() external int dwMonitorDigitModes;
  @Uint32() external int dwMonitorMediaModes;
  external LINEDIALPARAMS DialParams;
  @Uint32() external int dwOrigin;
  @Uint32() external int dwReason;
  @Uint32() external int dwCompletionID;
  @Uint32() external int dwNumOwners;
  @Uint32() external int dwNumMonitors;
  @Uint32() external int dwCountryCode;
  @Uint32() external int dwTrunk;
  @Uint32() external int dwCallerIDFlags;
  @Uint32() external int dwCallerIDSize;
  @Uint32() external int dwCallerIDOffset;
  @Uint32() external int dwCallerIDNameSize;
  @Uint32() external int dwCallerIDNameOffset;
  @Uint32() external int dwCalledIDFlags;
  @Uint32() external int dwCalledIDSize;
  @Uint32() external int dwCalledIDOffset;
  @Uint32() external int dwCalledIDNameSize;
  @Uint32() external int dwCalledIDNameOffset;
  @Uint32() external int dwConnectedIDFlags;
  @Uint32() external int dwConnectedIDSize;
  @Uint32() external int dwConnectedIDOffset;
  @Uint32() external int dwConnectedIDNameSize;
  @Uint32() external int dwConnectedIDNameOffset;
  @Uint32() external int dwRedirectionIDFlags;
  @Uint32() external int dwRedirectionIDSize;
  @Uint32() external int dwRedirectionIDOffset;
  @Uint32() external int dwRedirectionIDNameSize;
  @Uint32() external int dwRedirectionIDNameOffset;
  @Uint32() external int dwRedirectingIDFlags;
  @Uint32() external int dwRedirectingIDSize;
  @Uint32() external int dwRedirectingIDOffset;
  @Uint32() external int dwRedirectingIDNameSize;
  @Uint32() external int dwRedirectingIDNameOffset;
  @Uint32() external int dwAppNameSize;
  @Uint32() external int dwAppNameOffset;
  @Uint32() external int dwDisplayableAddressSize;
  @Uint32() external int dwDisplayableAddressOffset;
  @Uint32() external int dwCalledPartySize;
  @Uint32() external int dwCalledPartyOffset;
  @Uint32() external int dwCommentSize;
  @Uint32() external int dwCommentOffset;
  @Uint32() external int dwDisplaySize;
  @Uint32() external int dwDisplayOffset;
  @Uint32() external int dwUserUserInfoSize;
  @Uint32() external int dwUserUserInfoOffset;
  @Uint32() external int dwHighLevelCompSize;
  @Uint32() external int dwHighLevelCompOffset;
  @Uint32() external int dwLowLevelCompSize;
  @Uint32() external int dwLowLevelCompOffset;
  @Uint32() external int dwChargingInfoSize;
  @Uint32() external int dwChargingInfoOffset;
  @Uint32() external int dwTerminalModesSize;
  @Uint32() external int dwTerminalModesOffset;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwDevSpecificOffset;
  @Uint32() external int dwCallTreatment;
  @Uint32() external int dwCallDataSize;
  @Uint32() external int dwCallDataOffset;
  @Uint32() external int dwSendingFlowspecSize;
  @Uint32() external int dwSendingFlowspecOffset;
  @Uint32() external int dwReceivingFlowspecSize;
  @Uint32() external int dwReceivingFlowspecOffset;
}

class LINECALLLIST extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwCallsNumEntries;
  @Uint32() external int dwCallsSize;
  @Uint32() external int dwCallsOffset;
}

class LINECALLPARAMS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwBearerMode;
  @Uint32() external int dwMinRate;
  @Uint32() external int dwMaxRate;
  @Uint32() external int dwMediaMode;
  @Uint32() external int dwCallParamFlags;
  @Uint32() external int dwAddressMode;
  @Uint32() external int dwAddressID;
  external LINEDIALPARAMS DialParams;
  @Uint32() external int dwOrigAddressSize;
  @Uint32() external int dwOrigAddressOffset;
  @Uint32() external int dwDisplayableAddressSize;
  @Uint32() external int dwDisplayableAddressOffset;
  @Uint32() external int dwCalledPartySize;
  @Uint32() external int dwCalledPartyOffset;
  @Uint32() external int dwCommentSize;
  @Uint32() external int dwCommentOffset;
  @Uint32() external int dwUserUserInfoSize;
  @Uint32() external int dwUserUserInfoOffset;
  @Uint32() external int dwHighLevelCompSize;
  @Uint32() external int dwHighLevelCompOffset;
  @Uint32() external int dwLowLevelCompSize;
  @Uint32() external int dwLowLevelCompOffset;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwDevSpecificOffset;
  @Uint32() external int dwPredictiveAutoTransferStates;
  @Uint32() external int dwTargetAddressSize;
  @Uint32() external int dwTargetAddressOffset;
  @Uint32() external int dwSendingFlowspecSize;
  @Uint32() external int dwSendingFlowspecOffset;
  @Uint32() external int dwReceivingFlowspecSize;
  @Uint32() external int dwReceivingFlowspecOffset;
  @Uint32() external int dwDeviceClassSize;
  @Uint32() external int dwDeviceClassOffset;
  @Uint32() external int dwDeviceConfigSize;
  @Uint32() external int dwDeviceConfigOffset;
  @Uint32() external int dwCallDataSize;
  @Uint32() external int dwCallDataOffset;
  @Uint32() external int dwNoAnswerTimeout;
  @Uint32() external int dwCallingPartyIDSize;
  @Uint32() external int dwCallingPartyIDOffset;
}

class LINECALLSTATUS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwCallState;
  @Uint32() external int dwCallStateMode;
  @Uint32() external int dwCallPrivilege;
  @Uint32() external int dwCallFeatures;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwDevSpecificOffset;
  @Uint32() external int dwCallFeatures2;
  external SYSTEMTIME tStateEntryTime;
}

class LINECALLTREATMENTENTRY extends Struct {
  @Uint32() external int dwCallTreatmentID;
  @Uint32() external int dwCallTreatmentNameSize;
  @Uint32() external int dwCallTreatmentNameOffset;
}

class LINECARDENTRY extends Struct {
  @Uint32() external int dwPermanentCardID;
  @Uint32() external int dwCardNameSize;
  @Uint32() external int dwCardNameOffset;
  @Uint32() external int dwCardNumberDigits;
  @Uint32() external int dwSameAreaRuleSize;
  @Uint32() external int dwSameAreaRuleOffset;
  @Uint32() external int dwLongDistanceRuleSize;
  @Uint32() external int dwLongDistanceRuleOffset;
  @Uint32() external int dwInternationalRuleSize;
  @Uint32() external int dwInternationalRuleOffset;
  @Uint32() external int dwOptions;
}

class LINECOUNTRYENTRY extends Struct {
  @Uint32() external int dwCountryID;
  @Uint32() external int dwCountryCode;
  @Uint32() external int dwNextCountryID;
  @Uint32() external int dwCountryNameSize;
  @Uint32() external int dwCountryNameOffset;
  @Uint32() external int dwSameAreaRuleSize;
  @Uint32() external int dwSameAreaRuleOffset;
  @Uint32() external int dwLongDistanceRuleSize;
  @Uint32() external int dwLongDistanceRuleOffset;
  @Uint32() external int dwInternationalRuleSize;
  @Uint32() external int dwInternationalRuleOffset;
}

class LINECOUNTRYLIST extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumCountries;
  @Uint32() external int dwCountryListSize;
  @Uint32() external int dwCountryListOffset;
}

class LINEDEVCAPS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwProviderInfoSize;
  @Uint32() external int dwProviderInfoOffset;
  @Uint32() external int dwSwitchInfoSize;
  @Uint32() external int dwSwitchInfoOffset;
  @Uint32() external int dwPermanentLineID;
  @Uint32() external int dwLineNameSize;
  @Uint32() external int dwLineNameOffset;
  @Uint32() external int dwStringFormat;
  @Uint32() external int dwAddressModes;
  @Uint32() external int dwNumAddresses;
  @Uint32() external int dwBearerModes;
  @Uint32() external int dwMaxRate;
  @Uint32() external int dwMediaModes;
  @Uint32() external int dwGenerateToneModes;
  @Uint32() external int dwGenerateToneMaxNumFreq;
  @Uint32() external int dwGenerateDigitModes;
  @Uint32() external int dwMonitorToneMaxNumFreq;
  @Uint32() external int dwMonitorToneMaxNumEntries;
  @Uint32() external int dwMonitorDigitModes;
  @Uint32() external int dwGatherDigitsMinTimeout;
  @Uint32() external int dwGatherDigitsMaxTimeout;
  @Uint32() external int dwMedCtlDigitMaxListSize;
  @Uint32() external int dwMedCtlMediaMaxListSize;
  @Uint32() external int dwMedCtlToneMaxListSize;
  @Uint32() external int dwMedCtlCallStateMaxListSize;
  @Uint32() external int dwDevCapFlags;
  @Uint32() external int dwMaxNumActiveCalls;
  @Uint32() external int dwAnswerMode;
  @Uint32() external int dwRingModes;
  @Uint32() external int dwLineStates;
  @Uint32() external int dwUUIAcceptSize;
  @Uint32() external int dwUUIAnswerSize;
  @Uint32() external int dwUUIMakeCallSize;
  @Uint32() external int dwUUIDropSize;
  @Uint32() external int dwUUISendUserUserInfoSize;
  @Uint32() external int dwUUICallInfoSize;
  external LINEDIALPARAMS MinDialParams;
  external LINEDIALPARAMS MaxDialParams;
  external LINEDIALPARAMS DefaultDialParams;
  @Uint32() external int dwNumTerminals;
  @Uint32() external int dwTerminalCapsSize;
  @Uint32() external int dwTerminalCapsOffset;
  @Uint32() external int dwTerminalTextEntrySize;
  @Uint32() external int dwTerminalTextSize;
  @Uint32() external int dwTerminalTextOffset;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwDevSpecificOffset;
  @Uint32() external int dwLineFeatures;
  @Uint32() external int dwSettableDevStatus;
  @Uint32() external int dwDeviceClassesSize;
  @Uint32() external int dwDeviceClassesOffset;
  external GUID PermanentLineGuid;
}

class LINEDEVSTATUS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumOpens;
  @Uint32() external int dwOpenMediaModes;
  @Uint32() external int dwNumActiveCalls;
  @Uint32() external int dwNumOnHoldCalls;
  @Uint32() external int dwNumOnHoldPendCalls;
  @Uint32() external int dwLineFeatures;
  @Uint32() external int dwNumCallCompletions;
  @Uint32() external int dwRingMode;
  @Uint32() external int dwSignalLevel;
  @Uint32() external int dwBatteryLevel;
  @Uint32() external int dwRoamMode;
  @Uint32() external int dwDevStatusFlags;
  @Uint32() external int dwTerminalModesSize;
  @Uint32() external int dwTerminalModesOffset;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwDevSpecificOffset;
  @Uint32() external int dwAvailableMediaModes;
  @Uint32() external int dwAppInfoSize;
  @Uint32() external int dwAppInfoOffset;
}

class LINEEXTENSIONID extends Struct {
  @Uint32() external int dwExtensionID0;
  @Uint32() external int dwExtensionID1;
  @Uint32() external int dwExtensionID2;
  @Uint32() external int dwExtensionID3;
}

class LINEFORWARD extends Struct {
  @Uint32() external int dwForwardMode;
  @Uint32() external int dwCallerAddressSize;
  @Uint32() external int dwCallerAddressOffset;
  @Uint32() external int dwDestCountryCode;
  @Uint32() external int dwDestAddressSize;
  @Uint32() external int dwDestAddressOffset;
}

class LINEFORWARDLIST extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNumEntries;
  external LINEFORWARD ForwardList;
}

class LINEGENERATETONE extends Struct {
  @Uint32() external int dwFrequency;
  @Uint32() external int dwCadenceOn;
  @Uint32() external int dwCadenceOff;
  @Uint32() external int dwVolume;
}

class LINEINITIALIZEEXPARAMS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwOptions;
  @Uint32() external int Handles;
  @Uint32() external int dwCompletionKey;
}

class LINELOCATIONENTRY extends Struct {
  @Uint32() external int dwPermanentLocationID;
  @Uint32() external int dwLocationNameSize;
  @Uint32() external int dwLocationNameOffset;
  @Uint32() external int dwCountryCode;
  @Uint32() external int dwCityCodeSize;
  @Uint32() external int dwCityCodeOffset;
  @Uint32() external int dwPreferredCardID;
  @Uint32() external int dwLocalAccessCodeSize;
  @Uint32() external int dwLocalAccessCodeOffset;
  @Uint32() external int dwLongDistanceAccessCodeSize;
  @Uint32() external int dwLongDistanceAccessCodeOffset;
  @Uint32() external int dwTollPrefixListSize;
  @Uint32() external int dwTollPrefixListOffset;
  @Uint32() external int dwCountryID;
  @Uint32() external int dwOptions;
  @Uint32() external int dwCancelCallWaitingSize;
  @Uint32() external int dwCancelCallWaitingOffset;
}

class LINEMEDIACONTROLCALLSTATE extends Struct {
  @Uint32() external int dwCallStates;
  @Uint32() external int dwMediaControl;
}

class LINEMEDIACONTROLDIGIT extends Struct {
  @Uint32() external int dwDigit;
  @Uint32() external int dwDigitModes;
  @Uint32() external int dwMediaControl;
}

class LINEMEDIACONTROLMEDIA extends Struct {
  @Uint32() external int dwMediaModes;
  @Uint32() external int dwDuration;
  @Uint32() external int dwMediaControl;
}

class LINEMEDIACONTROLTONE extends Struct {
  @Uint32() external int dwAppSpecific;
  @Uint32() external int dwDuration;
  @Uint32() external int dwFrequency1;
  @Uint32() external int dwFrequency2;
  @Uint32() external int dwFrequency3;
  @Uint32() external int dwMediaControl;
}

class LINEMESSAGE extends Struct {
  @Uint32() external int hDevice;
  @Uint32() external int dwMessageID;
  @IntPtr() external int dwCallbackInstance;
  @IntPtr() external int dwParam1;
  @IntPtr() external int dwParam2;
  @IntPtr() external int dwParam3;
}

class LINEMONITORTONE extends Struct {
  @Uint32() external int dwAppSpecific;
  @Uint32() external int dwDuration;
  @Uint32() external int dwFrequency1;
  @Uint32() external int dwFrequency2;
  @Uint32() external int dwFrequency3;
}

class LINEPROVIDERENTRY extends Struct {
  @Uint32() external int dwPermanentProviderID;
  @Uint32() external int dwProviderFilenameSize;
  @Uint32() external int dwProviderFilenameOffset;
}

class LINEPROVIDERLIST extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumProviders;
  @Uint32() external int dwProviderListSize;
  @Uint32() external int dwProviderListOffset;
}

class LINEPROXYREQUEST extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwClientMachineNameSize;
  @Uint32() external int dwClientMachineNameOffset;
  @Uint32() external int dwClientUserNameSize;
  @Uint32() external int dwClientUserNameOffset;
  @Uint32() external int dwClientAppAPIVersion;
  @Uint32() external int dwRequestType;
  @Uint32() external int Anonymous;
}

class LINEREQMAKECALL extends Struct {
  external __byte__ szDestAddress;
  external __byte__ szAppName;
  external __byte__ szCalledParty;
  external __byte__ szComment;
}

class linereqmakecallW_tag extends Struct {
  external __ushort__ szDestAddress;
  external __ushort__ szAppName;
  external __ushort__ szCalledParty;
  external __ushort__ szComment;
}

class LINEREQMEDIACALL extends Struct {
  @IntPtr() external int hWnd;
  @IntPtr() external int wRequestID;
  external __byte__ szDeviceClass;
  external __ubyte__ ucDeviceID;
  @Uint32() external int dwSize;
  @Uint32() external int dwSecure;
  external __byte__ szDestAddress;
  external __byte__ szAppName;
  external __byte__ szCalledParty;
  external __byte__ szComment;
}

class linereqmediacallW_tag extends Struct {
  @IntPtr() external int hWnd;
  @IntPtr() external int wRequestID;
  external __ushort__ szDeviceClass;
  external __ubyte__ ucDeviceID;
  @Uint32() external int dwSize;
  @Uint32() external int dwSecure;
  external __ushort__ szDestAddress;
  external __ushort__ szAppName;
  external __ushort__ szCalledParty;
  external __ushort__ szComment;
}

class LINETERMCAPS extends Struct {
  @Uint32() external int dwTermDev;
  @Uint32() external int dwTermModes;
  @Uint32() external int dwTermSharing;
}

class LINETRANSLATECAPS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwNumLocations;
  @Uint32() external int dwLocationListSize;
  @Uint32() external int dwLocationListOffset;
  @Uint32() external int dwCurrentLocationID;
  @Uint32() external int dwNumCards;
  @Uint32() external int dwCardListSize;
  @Uint32() external int dwCardListOffset;
  @Uint32() external int dwCurrentPreferredCardID;
}

class LINETRANSLATEOUTPUT extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwDialableStringSize;
  @Uint32() external int dwDialableStringOffset;
  @Uint32() external int dwDisplayableStringSize;
  @Uint32() external int dwDisplayableStringOffset;
  @Uint32() external int dwCurrentCountry;
  @Uint32() external int dwDestCountry;
  @Uint32() external int dwTranslateResults;
}

class PHONEBUTTONINFO extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwButtonMode;
  @Uint32() external int dwButtonFunction;
  @Uint32() external int dwButtonTextSize;
  @Uint32() external int dwButtonTextOffset;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwDevSpecificOffset;
  @Uint32() external int dwButtonState;
}

class PHONECAPS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwProviderInfoSize;
  @Uint32() external int dwProviderInfoOffset;
  @Uint32() external int dwPhoneInfoSize;
  @Uint32() external int dwPhoneInfoOffset;
  @Uint32() external int dwPermanentPhoneID;
  @Uint32() external int dwPhoneNameSize;
  @Uint32() external int dwPhoneNameOffset;
  @Uint32() external int dwStringFormat;
  @Uint32() external int dwPhoneStates;
  @Uint32() external int dwHookSwitchDevs;
  @Uint32() external int dwHandsetHookSwitchModes;
  @Uint32() external int dwSpeakerHookSwitchModes;
  @Uint32() external int dwHeadsetHookSwitchModes;
  @Uint32() external int dwVolumeFlags;
  @Uint32() external int dwGainFlags;
  @Uint32() external int dwDisplayNumRows;
  @Uint32() external int dwDisplayNumColumns;
  @Uint32() external int dwNumRingModes;
  @Uint32() external int dwNumButtonLamps;
  @Uint32() external int dwButtonModesSize;
  @Uint32() external int dwButtonModesOffset;
  @Uint32() external int dwButtonFunctionsSize;
  @Uint32() external int dwButtonFunctionsOffset;
  @Uint32() external int dwLampModesSize;
  @Uint32() external int dwLampModesOffset;
  @Uint32() external int dwNumSetData;
  @Uint32() external int dwSetDataSize;
  @Uint32() external int dwSetDataOffset;
  @Uint32() external int dwNumGetData;
  @Uint32() external int dwGetDataSize;
  @Uint32() external int dwGetDataOffset;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwDevSpecificOffset;
  @Uint32() external int dwDeviceClassesSize;
  @Uint32() external int dwDeviceClassesOffset;
  @Uint32() external int dwPhoneFeatures;
  @Uint32() external int dwSettableHandsetHookSwitchModes;
  @Uint32() external int dwSettableSpeakerHookSwitchModes;
  @Uint32() external int dwSettableHeadsetHookSwitchModes;
  @Uint32() external int dwMonitoredHandsetHookSwitchModes;
  @Uint32() external int dwMonitoredSpeakerHookSwitchModes;
  @Uint32() external int dwMonitoredHeadsetHookSwitchModes;
  external GUID PermanentPhoneGuid;
}

class PHONEEXTENSIONID extends Struct {
  @Uint32() external int dwExtensionID0;
  @Uint32() external int dwExtensionID1;
  @Uint32() external int dwExtensionID2;
  @Uint32() external int dwExtensionID3;
}

class PHONEINITIALIZEEXPARAMS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwOptions;
  @Uint32() external int Handles;
  @Uint32() external int dwCompletionKey;
}

class PHONEMESSAGE extends Struct {
  @Uint32() external int hDevice;
  @Uint32() external int dwMessageID;
  @IntPtr() external int dwCallbackInstance;
  @IntPtr() external int dwParam1;
  @IntPtr() external int dwParam2;
  @IntPtr() external int dwParam3;
}

class PHONESTATUS extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwStatusFlags;
  @Uint32() external int dwNumOwners;
  @Uint32() external int dwNumMonitors;
  @Uint32() external int dwRingMode;
  @Uint32() external int dwRingVolume;
  @Uint32() external int dwHandsetHookSwitchMode;
  @Uint32() external int dwHandsetVolume;
  @Uint32() external int dwHandsetGain;
  @Uint32() external int dwSpeakerHookSwitchMode;
  @Uint32() external int dwSpeakerVolume;
  @Uint32() external int dwSpeakerGain;
  @Uint32() external int dwHeadsetHookSwitchMode;
  @Uint32() external int dwHeadsetVolume;
  @Uint32() external int dwHeadsetGain;
  @Uint32() external int dwDisplaySize;
  @Uint32() external int dwDisplayOffset;
  @Uint32() external int dwLampModesSize;
  @Uint32() external int dwLampModesOffset;
  @Uint32() external int dwOwnerNameSize;
  @Uint32() external int dwOwnerNameOffset;
  @Uint32() external int dwDevSpecificSize;
  @Uint32() external int dwDevSpecificOffset;
  @Uint32() external int dwPhoneFeatures;
}

class VARSTRING extends Struct {
  @Uint32() external int dwTotalSize;
  @Uint32() external int dwNeededSize;
  @Uint32() external int dwUsedSize;
  @Uint32() external int dwStringFormat;
  @Uint32() external int dwStringSize;
  @Uint32() external int dwStringOffset;
}

class TAPI extends Struct {
}

class DispatchMapper extends Struct {
}

class RequestMakeCall extends Struct {
}

class TAPI_CUSTOMTONE extends Struct {
  @Uint32() external int dwFrequency;
  @Uint32() external int dwCadenceOn;
  @Uint32() external int dwCadenceOff;
  @Uint32() external int dwVolume;
}

class TAPI_DETECTTONE extends Struct {
  @Uint32() external int dwAppSpecific;
  @Uint32() external int dwDuration;
  @Uint32() external int dwFrequency1;
  @Uint32() external int dwFrequency2;
  @Uint32() external int dwFrequency3;
}

class MSP_EVENT_INFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int Event;
  external Pointer<Int32> hCall;
  @Uint32() external int Anonymous;
}

class Rendezvous extends Struct {
}

class McastAddressAllocation extends Struct {
}

