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
import '../../devices/tapi/structs.g.dart';
import '../../devices/tapi/callbacks.g.dart';
import '../../system/com/IStream.dart';
import '../../system/addressbook/IMessage.dart';
import '../../devices/tapi/ITnef.dart';
import '../../system/addressbook/IAddrBook.dart'; // -----------------------------------------------------------------------

// tapi32.dll
// -----------------------------------------------------------------------
final _tapi32 = DynamicLibrary.open('tapi32.dll');

int lineAccept(
  int hCall,
  Pointer<Utf8> lpsUserUserInfo,
  int dwSize,
) =>
    _lineAccept(
      hCall,
      lpsUserUserInfo,
      dwSize,
    );

late final _lineAccept = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<Utf8> lpsUserUserInfo,
  Uint32 dwSize,
),
    int Function(
  int hCall,
  Pointer<Utf8> lpsUserUserInfo,
  int dwSize,
)>('lineAccept');

int lineAddProvider(
  Pointer<Utf16> lpszProviderFilename,
  int hwndOwner,
  Pointer<Uint32> lpdwPermanentProviderID,
) =>
    _lineAddProvider(
      lpszProviderFilename,
      hwndOwner,
      lpdwPermanentProviderID,
    );

late final _lineAddProvider = _tapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszProviderFilename,
  IntPtr hwndOwner,
  Pointer<Uint32> lpdwPermanentProviderID,
),
    int Function(
  Pointer<Utf16> lpszProviderFilename,
  int hwndOwner,
  Pointer<Uint32> lpdwPermanentProviderID,
)>('lineAddProviderW');

int lineAddToConference(
  int hConfCall,
  int hConsultCall,
) =>
    _lineAddToConference(
      hConfCall,
      hConsultCall,
    );

late final _lineAddToConference = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hConfCall,
  Uint32 hConsultCall,
),
    int Function(
  int hConfCall,
  int hConsultCall,
)>('lineAddToConference');

int lineAgentSpecific(
  int hLine,
  int dwAddressID,
  int dwAgentExtensionIDIndex,
  Pointer lpParams,
  int dwSize,
) =>
    _lineAgentSpecific(
      hLine,
      dwAddressID,
      dwAgentExtensionIDIndex,
      lpParams,
      dwSize,
    );

late final _lineAgentSpecific = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Uint32 dwAgentExtensionIDIndex,
  Pointer lpParams,
  Uint32 dwSize,
),
    int Function(
  int hLine,
  int dwAddressID,
  int dwAgentExtensionIDIndex,
  Pointer lpParams,
  int dwSize,
)>('lineAgentSpecific');

int lineAnswer(
  int hCall,
  Pointer<Utf8> lpsUserUserInfo,
  int dwSize,
) =>
    _lineAnswer(
      hCall,
      lpsUserUserInfo,
      dwSize,
    );

late final _lineAnswer = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<Utf8> lpsUserUserInfo,
  Uint32 dwSize,
),
    int Function(
  int hCall,
  Pointer<Utf8> lpsUserUserInfo,
  int dwSize,
)>('lineAnswer');

int lineBlindTransfer(
  int hCall,
  Pointer<Utf16> lpszDestAddressW,
  int dwCountryCode,
) =>
    _lineBlindTransfer(
      hCall,
      lpszDestAddressW,
      dwCountryCode,
    );

late final _lineBlindTransfer = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<Utf16> lpszDestAddressW,
  Uint32 dwCountryCode,
),
    int Function(
  int hCall,
  Pointer<Utf16> lpszDestAddressW,
  int dwCountryCode,
)>('lineBlindTransferW');

int lineClose(
  int hLine,
) =>
    _lineClose(
      hLine,
    );

late final _lineClose = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
),
    int Function(
  int hLine,
)>('lineClose');

int lineCompleteCall(
  int hCall,
  Pointer<Uint32> lpdwCompletionID,
  int dwCompletionMode,
  int dwMessageID,
) =>
    _lineCompleteCall(
      hCall,
      lpdwCompletionID,
      dwCompletionMode,
      dwMessageID,
    );

late final _lineCompleteCall = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<Uint32> lpdwCompletionID,
  Uint32 dwCompletionMode,
  Uint32 dwMessageID,
),
    int Function(
  int hCall,
  Pointer<Uint32> lpdwCompletionID,
  int dwCompletionMode,
  int dwMessageID,
)>('lineCompleteCall');

int lineCompleteTransfer(
  int hCall,
  int hConsultCall,
  Pointer<Uint32> lphConfCall,
  int dwTransferMode,
) =>
    _lineCompleteTransfer(
      hCall,
      hConsultCall,
      lphConfCall,
      dwTransferMode,
    );

late final _lineCompleteTransfer = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 hConsultCall,
  Pointer<Uint32> lphConfCall,
  Uint32 dwTransferMode,
),
    int Function(
  int hCall,
  int hConsultCall,
  Pointer<Uint32> lphConfCall,
  int dwTransferMode,
)>('lineCompleteTransfer');

int lineConfigDialogEdit(
  int dwDeviceID,
  int hwndOwner,
  Pointer<Utf16> lpszDeviceClass,
  Pointer lpDeviceConfigIn,
  int dwSize,
  Pointer<VARSTRING> lpDeviceConfigOut,
) =>
    _lineConfigDialogEdit(
      dwDeviceID,
      hwndOwner,
      lpszDeviceClass,
      lpDeviceConfigIn,
      dwSize,
      lpDeviceConfigOut,
    );

late final _lineConfigDialogEdit = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 dwDeviceID,
  IntPtr hwndOwner,
  Pointer<Utf16> lpszDeviceClass,
  Pointer lpDeviceConfigIn,
  Uint32 dwSize,
  Pointer<VARSTRING> lpDeviceConfigOut,
),
    int Function(
  int dwDeviceID,
  int hwndOwner,
  Pointer<Utf16> lpszDeviceClass,
  Pointer lpDeviceConfigIn,
  int dwSize,
  Pointer<VARSTRING> lpDeviceConfigOut,
)>('lineConfigDialogEditW');

int lineConfigDialog(
  int dwDeviceID,
  int hwndOwner,
  Pointer<Utf16> lpszDeviceClass,
) =>
    _lineConfigDialog(
      dwDeviceID,
      hwndOwner,
      lpszDeviceClass,
    );

late final _lineConfigDialog = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 dwDeviceID,
  IntPtr hwndOwner,
  Pointer<Utf16> lpszDeviceClass,
),
    int Function(
  int dwDeviceID,
  int hwndOwner,
  Pointer<Utf16> lpszDeviceClass,
)>('lineConfigDialogW');

int lineConfigProvider(
  int hwndOwner,
  int dwPermanentProviderID,
) =>
    _lineConfigProvider(
      hwndOwner,
      dwPermanentProviderID,
    );

late final _lineConfigProvider = _tapi32.lookupFunction<
    Int32 Function(
  IntPtr hwndOwner,
  Uint32 dwPermanentProviderID,
),
    int Function(
  int hwndOwner,
  int dwPermanentProviderID,
)>('lineConfigProvider');

int lineCreateAgentSession(
  int hLine,
  int hAgent,
  Pointer<Utf16> lpszAgentPIN,
  int dwWorkingAddressID,
  Pointer<GUID> lpGroupID,
  Pointer<Uint32> lphAgentSession,
) =>
    _lineCreateAgentSession(
      hLine,
      hAgent,
      lpszAgentPIN,
      dwWorkingAddressID,
      lpGroupID,
      lphAgentSession,
    );

late final _lineCreateAgentSession = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 hAgent,
  Pointer<Utf16> lpszAgentPIN,
  Uint32 dwWorkingAddressID,
  Pointer<GUID> lpGroupID,
  Pointer<Uint32> lphAgentSession,
),
    int Function(
  int hLine,
  int hAgent,
  Pointer<Utf16> lpszAgentPIN,
  int dwWorkingAddressID,
  Pointer<GUID> lpGroupID,
  Pointer<Uint32> lphAgentSession,
)>('lineCreateAgentSessionW');

int lineCreateAgent(
  int hLine,
  Pointer<Utf16> lpszAgentID,
  Pointer<Utf16> lpszAgentPIN,
  Pointer<Uint32> lphAgent,
) =>
    _lineCreateAgent(
      hLine,
      lpszAgentID,
      lpszAgentPIN,
      lphAgent,
    );

late final _lineCreateAgent = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Pointer<Utf16> lpszAgentID,
  Pointer<Utf16> lpszAgentPIN,
  Pointer<Uint32> lphAgent,
),
    int Function(
  int hLine,
  Pointer<Utf16> lpszAgentID,
  Pointer<Utf16> lpszAgentPIN,
  Pointer<Uint32> lphAgent,
)>('lineCreateAgentW');

int lineDeallocateCall(
  int hCall,
) =>
    _lineDeallocateCall(
      hCall,
    );

late final _lineDeallocateCall = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
),
    int Function(
  int hCall,
)>('lineDeallocateCall');

int lineDevSpecific(
  int hLine,
  int dwAddressID,
  int hCall,
  Pointer lpParams,
  int dwSize,
) =>
    _lineDevSpecific(
      hLine,
      dwAddressID,
      hCall,
      lpParams,
      dwSize,
    );

late final _lineDevSpecific = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Uint32 hCall,
  Pointer lpParams,
  Uint32 dwSize,
),
    int Function(
  int hLine,
  int dwAddressID,
  int hCall,
  Pointer lpParams,
  int dwSize,
)>('lineDevSpecific');

int lineDevSpecificFeature(
  int hLine,
  int dwFeature,
  Pointer lpParams,
  int dwSize,
) =>
    _lineDevSpecificFeature(
      hLine,
      dwFeature,
      lpParams,
      dwSize,
    );

late final _lineDevSpecificFeature = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwFeature,
  Pointer lpParams,
  Uint32 dwSize,
),
    int Function(
  int hLine,
  int dwFeature,
  Pointer lpParams,
  int dwSize,
)>('lineDevSpecificFeature');

int lineDial(
  int hCall,
  Pointer<Utf16> lpszDestAddress,
  int dwCountryCode,
) =>
    _lineDial(
      hCall,
      lpszDestAddress,
      dwCountryCode,
    );

late final _lineDial = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<Utf16> lpszDestAddress,
  Uint32 dwCountryCode,
),
    int Function(
  int hCall,
  Pointer<Utf16> lpszDestAddress,
  int dwCountryCode,
)>('lineDialW');

int lineDrop(
  int hCall,
  Pointer<Utf8> lpsUserUserInfo,
  int dwSize,
) =>
    _lineDrop(
      hCall,
      lpsUserUserInfo,
      dwSize,
    );

late final _lineDrop = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<Utf8> lpsUserUserInfo,
  Uint32 dwSize,
),
    int Function(
  int hCall,
  Pointer<Utf8> lpsUserUserInfo,
  int dwSize,
)>('lineDrop');

int lineForward(
  int hLine,
  int bAllAddresses,
  int dwAddressID,
  Pointer<LINEFORWARDLIST> lpForwardList,
  int dwNumRingsNoAnswer,
  Pointer<Uint32> lphConsultCall,
  Pointer<LINECALLPARAMS> lpCallParams,
) =>
    _lineForward(
      hLine,
      bAllAddresses,
      dwAddressID,
      lpForwardList,
      dwNumRingsNoAnswer,
      lphConsultCall,
      lpCallParams,
    );

late final _lineForward = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 bAllAddresses,
  Uint32 dwAddressID,
  Pointer<LINEFORWARDLIST> lpForwardList,
  Uint32 dwNumRingsNoAnswer,
  Pointer<Uint32> lphConsultCall,
  Pointer<LINECALLPARAMS> lpCallParams,
),
    int Function(
  int hLine,
  int bAllAddresses,
  int dwAddressID,
  Pointer<LINEFORWARDLIST> lpForwardList,
  int dwNumRingsNoAnswer,
  Pointer<Uint32> lphConsultCall,
  Pointer<LINECALLPARAMS> lpCallParams,
)>('lineForwardW');

int lineGatherDigits(
  int hCall,
  int dwDigitModes,
  Pointer<Utf16> lpsDigits,
  int dwNumDigits,
  Pointer<Utf16> lpszTerminationDigits,
  int dwFirstDigitTimeout,
  int dwInterDigitTimeout,
) =>
    _lineGatherDigits(
      hCall,
      dwDigitModes,
      lpsDigits,
      dwNumDigits,
      lpszTerminationDigits,
      dwFirstDigitTimeout,
      dwInterDigitTimeout,
    );

late final _lineGatherDigits = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 dwDigitModes,
  Pointer<Utf16> lpsDigits,
  Uint32 dwNumDigits,
  Pointer<Utf16> lpszTerminationDigits,
  Uint32 dwFirstDigitTimeout,
  Uint32 dwInterDigitTimeout,
),
    int Function(
  int hCall,
  int dwDigitModes,
  Pointer<Utf16> lpsDigits,
  int dwNumDigits,
  Pointer<Utf16> lpszTerminationDigits,
  int dwFirstDigitTimeout,
  int dwInterDigitTimeout,
)>('lineGatherDigitsW');

int lineGenerateDigits(
  int hCall,
  int dwDigitMode,
  Pointer<Utf16> lpszDigits,
  int dwDuration,
) =>
    _lineGenerateDigits(
      hCall,
      dwDigitMode,
      lpszDigits,
      dwDuration,
    );

late final _lineGenerateDigits = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 dwDigitMode,
  Pointer<Utf16> lpszDigits,
  Uint32 dwDuration,
),
    int Function(
  int hCall,
  int dwDigitMode,
  Pointer<Utf16> lpszDigits,
  int dwDuration,
)>('lineGenerateDigitsW');

int lineGenerateTone(
  int hCall,
  int dwToneMode,
  int dwDuration,
  int dwNumTones,
  Pointer<LINEGENERATETONE> lpTones,
) =>
    _lineGenerateTone(
      hCall,
      dwToneMode,
      dwDuration,
      dwNumTones,
      lpTones,
    );

late final _lineGenerateTone = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 dwToneMode,
  Uint32 dwDuration,
  Uint32 dwNumTones,
  Pointer<LINEGENERATETONE> lpTones,
),
    int Function(
  int hCall,
  int dwToneMode,
  int dwDuration,
  int dwNumTones,
  Pointer<LINEGENERATETONE> lpTones,
)>('lineGenerateTone');

int lineGetAddressCaps(
  int hLineApp,
  int dwDeviceID,
  int dwAddressID,
  int dwAPIVersion,
  int dwExtVersion,
  Pointer<LINEADDRESSCAPS> lpAddressCaps,
) =>
    _lineGetAddressCaps(
      hLineApp,
      dwDeviceID,
      dwAddressID,
      dwAPIVersion,
      dwExtVersion,
      lpAddressCaps,
    );

late final _lineGetAddressCaps = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwDeviceID,
  Uint32 dwAddressID,
  Uint32 dwAPIVersion,
  Uint32 dwExtVersion,
  Pointer<LINEADDRESSCAPS> lpAddressCaps,
),
    int Function(
  int hLineApp,
  int dwDeviceID,
  int dwAddressID,
  int dwAPIVersion,
  int dwExtVersion,
  Pointer<LINEADDRESSCAPS> lpAddressCaps,
)>('lineGetAddressCapsW');

int lineGetAddressID(
  int hLine,
  Pointer<Uint32> lpdwAddressID,
  int dwAddressMode,
  Pointer<Utf16> lpsAddress,
  int dwSize,
) =>
    _lineGetAddressID(
      hLine,
      lpdwAddressID,
      dwAddressMode,
      lpsAddress,
      dwSize,
    );

late final _lineGetAddressID = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Pointer<Uint32> lpdwAddressID,
  Uint32 dwAddressMode,
  Pointer<Utf16> lpsAddress,
  Uint32 dwSize,
),
    int Function(
  int hLine,
  Pointer<Uint32> lpdwAddressID,
  int dwAddressMode,
  Pointer<Utf16> lpsAddress,
  int dwSize,
)>('lineGetAddressIDW');

int lineGetAddressStatus(
  int hLine,
  int dwAddressID,
  Pointer<LINEADDRESSSTATUS> lpAddressStatus,
) =>
    _lineGetAddressStatus(
      hLine,
      dwAddressID,
      lpAddressStatus,
    );

late final _lineGetAddressStatus = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Pointer<LINEADDRESSSTATUS> lpAddressStatus,
),
    int Function(
  int hLine,
  int dwAddressID,
  Pointer<LINEADDRESSSTATUS> lpAddressStatus,
)>('lineGetAddressStatusW');

int lineGetAgentActivityList(
  int hLine,
  int dwAddressID,
  Pointer<LINEAGENTACTIVITYLIST> lpAgentActivityList,
) =>
    _lineGetAgentActivityList(
      hLine,
      dwAddressID,
      lpAgentActivityList,
    );

late final _lineGetAgentActivityList = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Pointer<LINEAGENTACTIVITYLIST> lpAgentActivityList,
),
    int Function(
  int hLine,
  int dwAddressID,
  Pointer<LINEAGENTACTIVITYLIST> lpAgentActivityList,
)>('lineGetAgentActivityListW');

int lineGetAgentCaps(
  int hLineApp,
  int dwDeviceID,
  int dwAddressID,
  int dwAppAPIVersion,
  Pointer<LINEAGENTCAPS> lpAgentCaps,
) =>
    _lineGetAgentCaps(
      hLineApp,
      dwDeviceID,
      dwAddressID,
      dwAppAPIVersion,
      lpAgentCaps,
    );

late final _lineGetAgentCaps = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwDeviceID,
  Uint32 dwAddressID,
  Uint32 dwAppAPIVersion,
  Pointer<LINEAGENTCAPS> lpAgentCaps,
),
    int Function(
  int hLineApp,
  int dwDeviceID,
  int dwAddressID,
  int dwAppAPIVersion,
  Pointer<LINEAGENTCAPS> lpAgentCaps,
)>('lineGetAgentCapsW');

int lineGetAgentGroupList(
  int hLine,
  int dwAddressID,
  Pointer<LINEAGENTGROUPLIST> lpAgentGroupList,
) =>
    _lineGetAgentGroupList(
      hLine,
      dwAddressID,
      lpAgentGroupList,
    );

late final _lineGetAgentGroupList = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Pointer<LINEAGENTGROUPLIST> lpAgentGroupList,
),
    int Function(
  int hLine,
  int dwAddressID,
  Pointer<LINEAGENTGROUPLIST> lpAgentGroupList,
)>('lineGetAgentGroupListW');

int lineGetAgentInfo(
  int hLine,
  int hAgent,
  Pointer<LINEAGENTINFO> lpAgentInfo,
) =>
    _lineGetAgentInfo(
      hLine,
      hAgent,
      lpAgentInfo,
    );

late final _lineGetAgentInfo = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 hAgent,
  Pointer<LINEAGENTINFO> lpAgentInfo,
),
    int Function(
  int hLine,
  int hAgent,
  Pointer<LINEAGENTINFO> lpAgentInfo,
)>('lineGetAgentInfo');

int lineGetAgentSessionInfo(
  int hLine,
  int hAgentSession,
  Pointer<LINEAGENTSESSIONINFO> lpAgentSessionInfo,
) =>
    _lineGetAgentSessionInfo(
      hLine,
      hAgentSession,
      lpAgentSessionInfo,
    );

late final _lineGetAgentSessionInfo = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 hAgentSession,
  Pointer<LINEAGENTSESSIONINFO> lpAgentSessionInfo,
),
    int Function(
  int hLine,
  int hAgentSession,
  Pointer<LINEAGENTSESSIONINFO> lpAgentSessionInfo,
)>('lineGetAgentSessionInfo');

int lineGetAgentSessionList(
  int hLine,
  int hAgent,
  Pointer<LINEAGENTSESSIONLIST> lpAgentSessionList,
) =>
    _lineGetAgentSessionList(
      hLine,
      hAgent,
      lpAgentSessionList,
    );

late final _lineGetAgentSessionList = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 hAgent,
  Pointer<LINEAGENTSESSIONLIST> lpAgentSessionList,
),
    int Function(
  int hLine,
  int hAgent,
  Pointer<LINEAGENTSESSIONLIST> lpAgentSessionList,
)>('lineGetAgentSessionList');

int lineGetAgentStatus(
  int hLine,
  int dwAddressID,
  Pointer<LINEAGENTSTATUS> lpAgentStatus,
) =>
    _lineGetAgentStatus(
      hLine,
      dwAddressID,
      lpAgentStatus,
    );

late final _lineGetAgentStatus = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Pointer<LINEAGENTSTATUS> lpAgentStatus,
),
    int Function(
  int hLine,
  int dwAddressID,
  Pointer<LINEAGENTSTATUS> lpAgentStatus,
)>('lineGetAgentStatusW');

int lineGetAppPriority(
  Pointer<Utf16> lpszAppFilename,
  int dwMediaMode,
  Pointer<LINEEXTENSIONID> lpExtensionID,
  int dwRequestMode,
  Pointer<VARSTRING> lpExtensionName,
  Pointer<Uint32> lpdwPriority,
) =>
    _lineGetAppPriority(
      lpszAppFilename,
      dwMediaMode,
      lpExtensionID,
      dwRequestMode,
      lpExtensionName,
      lpdwPriority,
    );

late final _lineGetAppPriority = _tapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszAppFilename,
  Uint32 dwMediaMode,
  Pointer<LINEEXTENSIONID> lpExtensionID,
  Uint32 dwRequestMode,
  Pointer<VARSTRING> lpExtensionName,
  Pointer<Uint32> lpdwPriority,
),
    int Function(
  Pointer<Utf16> lpszAppFilename,
  int dwMediaMode,
  Pointer<LINEEXTENSIONID> lpExtensionID,
  int dwRequestMode,
  Pointer<VARSTRING> lpExtensionName,
  Pointer<Uint32> lpdwPriority,
)>('lineGetAppPriorityW');

int lineGetCallInfo(
  int hCall,
  Pointer<LINECALLINFO> lpCallInfo,
) =>
    _lineGetCallInfo(
      hCall,
      lpCallInfo,
    );

late final _lineGetCallInfo = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<LINECALLINFO> lpCallInfo,
),
    int Function(
  int hCall,
  Pointer<LINECALLINFO> lpCallInfo,
)>('lineGetCallInfoW');

int lineGetCallStatus(
  int hCall,
  Pointer<LINECALLSTATUS> lpCallStatus,
) =>
    _lineGetCallStatus(
      hCall,
      lpCallStatus,
    );

late final _lineGetCallStatus = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<LINECALLSTATUS> lpCallStatus,
),
    int Function(
  int hCall,
  Pointer<LINECALLSTATUS> lpCallStatus,
)>('lineGetCallStatus');

int lineGetConfRelatedCalls(
  int hCall,
  Pointer<LINECALLLIST> lpCallList,
) =>
    _lineGetConfRelatedCalls(
      hCall,
      lpCallList,
    );

late final _lineGetConfRelatedCalls = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<LINECALLLIST> lpCallList,
),
    int Function(
  int hCall,
  Pointer<LINECALLLIST> lpCallList,
)>('lineGetConfRelatedCalls');

int lineGetCountry(
  int dwCountryID,
  int dwAPIVersion,
  Pointer<LINECOUNTRYLIST> lpLineCountryList,
) =>
    _lineGetCountry(
      dwCountryID,
      dwAPIVersion,
      lpLineCountryList,
    );

late final _lineGetCountry = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 dwCountryID,
  Uint32 dwAPIVersion,
  Pointer<LINECOUNTRYLIST> lpLineCountryList,
),
    int Function(
  int dwCountryID,
  int dwAPIVersion,
  Pointer<LINECOUNTRYLIST> lpLineCountryList,
)>('lineGetCountryW');

int lineGetDevCaps(
  int hLineApp,
  int dwDeviceID,
  int dwAPIVersion,
  int dwExtVersion,
  Pointer<LINEDEVCAPS> lpLineDevCaps,
) =>
    _lineGetDevCaps(
      hLineApp,
      dwDeviceID,
      dwAPIVersion,
      dwExtVersion,
      lpLineDevCaps,
    );

late final _lineGetDevCaps = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwDeviceID,
  Uint32 dwAPIVersion,
  Uint32 dwExtVersion,
  Pointer<LINEDEVCAPS> lpLineDevCaps,
),
    int Function(
  int hLineApp,
  int dwDeviceID,
  int dwAPIVersion,
  int dwExtVersion,
  Pointer<LINEDEVCAPS> lpLineDevCaps,
)>('lineGetDevCapsW');

int lineGetDevConfig(
  int dwDeviceID,
  Pointer<VARSTRING> lpDeviceConfig,
  Pointer<Utf16> lpszDeviceClass,
) =>
    _lineGetDevConfig(
      dwDeviceID,
      lpDeviceConfig,
      lpszDeviceClass,
    );

late final _lineGetDevConfig = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 dwDeviceID,
  Pointer<VARSTRING> lpDeviceConfig,
  Pointer<Utf16> lpszDeviceClass,
),
    int Function(
  int dwDeviceID,
  Pointer<VARSTRING> lpDeviceConfig,
  Pointer<Utf16> lpszDeviceClass,
)>('lineGetDevConfigW');

int lineGetGroupList(
  int hLine,
  Pointer<LINEAGENTGROUPLIST> lpGroupList,
) =>
    _lineGetGroupList(
      hLine,
      lpGroupList,
    );

late final _lineGetGroupList = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Pointer<LINEAGENTGROUPLIST> lpGroupList,
),
    int Function(
  int hLine,
  Pointer<LINEAGENTGROUPLIST> lpGroupList,
)>('lineGetGroupListW');

int lineGetID(
  int hLine,
  int dwAddressID,
  int hCall,
  int dwSelect,
  Pointer<VARSTRING> lpDeviceID,
  Pointer<Utf16> lpszDeviceClass,
) =>
    _lineGetID(
      hLine,
      dwAddressID,
      hCall,
      dwSelect,
      lpDeviceID,
      lpszDeviceClass,
    );

late final _lineGetID = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Uint32 hCall,
  Uint32 dwSelect,
  Pointer<VARSTRING> lpDeviceID,
  Pointer<Utf16> lpszDeviceClass,
),
    int Function(
  int hLine,
  int dwAddressID,
  int hCall,
  int dwSelect,
  Pointer<VARSTRING> lpDeviceID,
  Pointer<Utf16> lpszDeviceClass,
)>('lineGetIDW');

int lineGetIcon(
  int dwDeviceID,
  Pointer<Utf16> lpszDeviceClass,
  Pointer<IntPtr> lphIcon,
) =>
    _lineGetIcon(
      dwDeviceID,
      lpszDeviceClass,
      lphIcon,
    );

late final _lineGetIcon = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 dwDeviceID,
  Pointer<Utf16> lpszDeviceClass,
  Pointer<IntPtr> lphIcon,
),
    int Function(
  int dwDeviceID,
  Pointer<Utf16> lpszDeviceClass,
  Pointer<IntPtr> lphIcon,
)>('lineGetIconW');

int lineGetLineDevStatus(
  int hLine,
  Pointer<LINEDEVSTATUS> lpLineDevStatus,
) =>
    _lineGetLineDevStatus(
      hLine,
      lpLineDevStatus,
    );

late final _lineGetLineDevStatus = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Pointer<LINEDEVSTATUS> lpLineDevStatus,
),
    int Function(
  int hLine,
  Pointer<LINEDEVSTATUS> lpLineDevStatus,
)>('lineGetLineDevStatusW');

int lineGetMessage(
  int hLineApp,
  Pointer<LINEMESSAGE> lpMessage,
  int dwTimeout,
) =>
    _lineGetMessage(
      hLineApp,
      lpMessage,
      dwTimeout,
    );

late final _lineGetMessage = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Pointer<LINEMESSAGE> lpMessage,
  Uint32 dwTimeout,
),
    int Function(
  int hLineApp,
  Pointer<LINEMESSAGE> lpMessage,
  int dwTimeout,
)>('lineGetMessage');

int lineGetNewCalls(
  int hLine,
  int dwAddressID,
  int dwSelect,
  Pointer<LINECALLLIST> lpCallList,
) =>
    _lineGetNewCalls(
      hLine,
      dwAddressID,
      dwSelect,
      lpCallList,
    );

late final _lineGetNewCalls = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Uint32 dwSelect,
  Pointer<LINECALLLIST> lpCallList,
),
    int Function(
  int hLine,
  int dwAddressID,
  int dwSelect,
  Pointer<LINECALLLIST> lpCallList,
)>('lineGetNewCalls');

int lineGetNumRings(
  int hLine,
  int dwAddressID,
  Pointer<Uint32> lpdwNumRings,
) =>
    _lineGetNumRings(
      hLine,
      dwAddressID,
      lpdwNumRings,
    );

late final _lineGetNumRings = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Pointer<Uint32> lpdwNumRings,
),
    int Function(
  int hLine,
  int dwAddressID,
  Pointer<Uint32> lpdwNumRings,
)>('lineGetNumRings');

int lineGetProviderList(
  int dwAPIVersion,
  Pointer<LINEPROVIDERLIST> lpProviderList,
) =>
    _lineGetProviderList(
      dwAPIVersion,
      lpProviderList,
    );

late final _lineGetProviderList = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 dwAPIVersion,
  Pointer<LINEPROVIDERLIST> lpProviderList,
),
    int Function(
  int dwAPIVersion,
  Pointer<LINEPROVIDERLIST> lpProviderList,
)>('lineGetProviderListW');

int lineGetProxyStatus(
  int hLineApp,
  int dwDeviceID,
  int dwAppAPIVersion,
  Pointer<LINEPROXYREQUESTLIST> lpLineProxyReqestList,
) =>
    _lineGetProxyStatus(
      hLineApp,
      dwDeviceID,
      dwAppAPIVersion,
      lpLineProxyReqestList,
    );

late final _lineGetProxyStatus = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwDeviceID,
  Uint32 dwAppAPIVersion,
  Pointer<LINEPROXYREQUESTLIST> lpLineProxyReqestList,
),
    int Function(
  int hLineApp,
  int dwDeviceID,
  int dwAppAPIVersion,
  Pointer<LINEPROXYREQUESTLIST> lpLineProxyReqestList,
)>('lineGetProxyStatus');

int lineGetQueueInfo(
  int hLine,
  int dwQueueID,
  Pointer<LINEQUEUEINFO> lpLineQueueInfo,
) =>
    _lineGetQueueInfo(
      hLine,
      dwQueueID,
      lpLineQueueInfo,
    );

late final _lineGetQueueInfo = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwQueueID,
  Pointer<LINEQUEUEINFO> lpLineQueueInfo,
),
    int Function(
  int hLine,
  int dwQueueID,
  Pointer<LINEQUEUEINFO> lpLineQueueInfo,
)>('lineGetQueueInfo');

int lineGetQueueList(
  int hLine,
  Pointer<GUID> lpGroupID,
  Pointer<LINEQUEUELIST> lpQueueList,
) =>
    _lineGetQueueList(
      hLine,
      lpGroupID,
      lpQueueList,
    );

late final _lineGetQueueList = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Pointer<GUID> lpGroupID,
  Pointer<LINEQUEUELIST> lpQueueList,
),
    int Function(
  int hLine,
  Pointer<GUID> lpGroupID,
  Pointer<LINEQUEUELIST> lpQueueList,
)>('lineGetQueueListW');

int lineGetRequest(
  int hLineApp,
  int dwRequestMode,
  Pointer lpRequestBuffer,
) =>
    _lineGetRequest(
      hLineApp,
      dwRequestMode,
      lpRequestBuffer,
    );

late final _lineGetRequest = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwRequestMode,
  Pointer lpRequestBuffer,
),
    int Function(
  int hLineApp,
  int dwRequestMode,
  Pointer lpRequestBuffer,
)>('lineGetRequestW');

int lineGetStatusMessages(
  int hLine,
  Pointer<Uint32> lpdwLineStates,
  Pointer<Uint32> lpdwAddressStates,
) =>
    _lineGetStatusMessages(
      hLine,
      lpdwLineStates,
      lpdwAddressStates,
    );

late final _lineGetStatusMessages = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Pointer<Uint32> lpdwLineStates,
  Pointer<Uint32> lpdwAddressStates,
),
    int Function(
  int hLine,
  Pointer<Uint32> lpdwLineStates,
  Pointer<Uint32> lpdwAddressStates,
)>('lineGetStatusMessages');

int lineGetTranslateCaps(
  int hLineApp,
  int dwAPIVersion,
  Pointer<LINETRANSLATECAPS> lpTranslateCaps,
) =>
    _lineGetTranslateCaps(
      hLineApp,
      dwAPIVersion,
      lpTranslateCaps,
    );

late final _lineGetTranslateCaps = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwAPIVersion,
  Pointer<LINETRANSLATECAPS> lpTranslateCaps,
),
    int Function(
  int hLineApp,
  int dwAPIVersion,
  Pointer<LINETRANSLATECAPS> lpTranslateCaps,
)>('lineGetTranslateCapsW');

int lineHandoff(
  int hCall,
  Pointer<Utf16> lpszFileName,
  int dwMediaMode,
) =>
    _lineHandoff(
      hCall,
      lpszFileName,
      dwMediaMode,
    );

late final _lineHandoff = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<Utf16> lpszFileName,
  Uint32 dwMediaMode,
),
    int Function(
  int hCall,
  Pointer<Utf16> lpszFileName,
  int dwMediaMode,
)>('lineHandoffW');

int lineHold(
  int hCall,
) =>
    _lineHold(
      hCall,
    );

late final _lineHold = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
),
    int Function(
  int hCall,
)>('lineHold');

int lineInitialize(
  Pointer<Uint32> lphLineApp,
  int hInstance,
  Pointer<NativeFunction<LINECALLBACK>> lpfnCallback,
  Pointer<Utf8> lpszAppName,
  Pointer<Uint32> lpdwNumDevs,
) =>
    _lineInitialize(
      lphLineApp,
      hInstance,
      lpfnCallback,
      lpszAppName,
      lpdwNumDevs,
    );

late final _lineInitialize = _tapi32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lphLineApp,
  IntPtr hInstance,
  Pointer<NativeFunction<LINECALLBACK>> lpfnCallback,
  Pointer<Utf8> lpszAppName,
  Pointer<Uint32> lpdwNumDevs,
),
    int Function(
  Pointer<Uint32> lphLineApp,
  int hInstance,
  Pointer<NativeFunction<LINECALLBACK>> lpfnCallback,
  Pointer<Utf8> lpszAppName,
  Pointer<Uint32> lpdwNumDevs,
)>('lineInitialize');

int lineInitializeEx(
  Pointer<Uint32> lphLineApp,
  int hInstance,
  Pointer<NativeFunction<LINECALLBACK>> lpfnCallback,
  Pointer<Utf16> lpszFriendlyAppName,
  Pointer<Uint32> lpdwNumDevs,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<LINEINITIALIZEEXPARAMS> lpLineInitializeExParams,
) =>
    _lineInitializeEx(
      lphLineApp,
      hInstance,
      lpfnCallback,
      lpszFriendlyAppName,
      lpdwNumDevs,
      lpdwAPIVersion,
      lpLineInitializeExParams,
    );

late final _lineInitializeEx = _tapi32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lphLineApp,
  IntPtr hInstance,
  Pointer<NativeFunction<LINECALLBACK>> lpfnCallback,
  Pointer<Utf16> lpszFriendlyAppName,
  Pointer<Uint32> lpdwNumDevs,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<LINEINITIALIZEEXPARAMS> lpLineInitializeExParams,
),
    int Function(
  Pointer<Uint32> lphLineApp,
  int hInstance,
  Pointer<NativeFunction<LINECALLBACK>> lpfnCallback,
  Pointer<Utf16> lpszFriendlyAppName,
  Pointer<Uint32> lpdwNumDevs,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<LINEINITIALIZEEXPARAMS> lpLineInitializeExParams,
)>('lineInitializeExW');

int lineMakeCall(
  int hLine,
  Pointer<Uint32> lphCall,
  Pointer<Utf16> lpszDestAddress,
  int dwCountryCode,
  Pointer<LINECALLPARAMS> lpCallParams,
) =>
    _lineMakeCall(
      hLine,
      lphCall,
      lpszDestAddress,
      dwCountryCode,
      lpCallParams,
    );

late final _lineMakeCall = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Pointer<Uint32> lphCall,
  Pointer<Utf16> lpszDestAddress,
  Uint32 dwCountryCode,
  Pointer<LINECALLPARAMS> lpCallParams,
),
    int Function(
  int hLine,
  Pointer<Uint32> lphCall,
  Pointer<Utf16> lpszDestAddress,
  int dwCountryCode,
  Pointer<LINECALLPARAMS> lpCallParams,
)>('lineMakeCallW');

int lineMonitorDigits(
  int hCall,
  int dwDigitModes,
) =>
    _lineMonitorDigits(
      hCall,
      dwDigitModes,
    );

late final _lineMonitorDigits = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 dwDigitModes,
),
    int Function(
  int hCall,
  int dwDigitModes,
)>('lineMonitorDigits');

int lineMonitorMedia(
  int hCall,
  int dwMediaModes,
) =>
    _lineMonitorMedia(
      hCall,
      dwMediaModes,
    );

late final _lineMonitorMedia = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 dwMediaModes,
),
    int Function(
  int hCall,
  int dwMediaModes,
)>('lineMonitorMedia');

int lineMonitorTones(
  int hCall,
  Pointer<LINEMONITORTONE> lpToneList,
  int dwNumEntries,
) =>
    _lineMonitorTones(
      hCall,
      lpToneList,
      dwNumEntries,
    );

late final _lineMonitorTones = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<LINEMONITORTONE> lpToneList,
  Uint32 dwNumEntries,
),
    int Function(
  int hCall,
  Pointer<LINEMONITORTONE> lpToneList,
  int dwNumEntries,
)>('lineMonitorTones');

int lineNegotiateAPIVersion(
  int hLineApp,
  int dwDeviceID,
  int dwAPILowVersion,
  int dwAPIHighVersion,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<LINEEXTENSIONID> lpExtensionID,
) =>
    _lineNegotiateAPIVersion(
      hLineApp,
      dwDeviceID,
      dwAPILowVersion,
      dwAPIHighVersion,
      lpdwAPIVersion,
      lpExtensionID,
    );

late final _lineNegotiateAPIVersion = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwDeviceID,
  Uint32 dwAPILowVersion,
  Uint32 dwAPIHighVersion,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<LINEEXTENSIONID> lpExtensionID,
),
    int Function(
  int hLineApp,
  int dwDeviceID,
  int dwAPILowVersion,
  int dwAPIHighVersion,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<LINEEXTENSIONID> lpExtensionID,
)>('lineNegotiateAPIVersion');

int lineNegotiateExtVersion(
  int hLineApp,
  int dwDeviceID,
  int dwAPIVersion,
  int dwExtLowVersion,
  int dwExtHighVersion,
  Pointer<Uint32> lpdwExtVersion,
) =>
    _lineNegotiateExtVersion(
      hLineApp,
      dwDeviceID,
      dwAPIVersion,
      dwExtLowVersion,
      dwExtHighVersion,
      lpdwExtVersion,
    );

late final _lineNegotiateExtVersion = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwDeviceID,
  Uint32 dwAPIVersion,
  Uint32 dwExtLowVersion,
  Uint32 dwExtHighVersion,
  Pointer<Uint32> lpdwExtVersion,
),
    int Function(
  int hLineApp,
  int dwDeviceID,
  int dwAPIVersion,
  int dwExtLowVersion,
  int dwExtHighVersion,
  Pointer<Uint32> lpdwExtVersion,
)>('lineNegotiateExtVersion');

int lineOpen(
  int hLineApp,
  int dwDeviceID,
  Pointer<Uint32> lphLine,
  int dwAPIVersion,
  int dwExtVersion,
  int dwCallbackInstance,
  int dwPrivileges,
  int dwMediaModes,
  Pointer<LINECALLPARAMS> lpCallParams,
) =>
    _lineOpen(
      hLineApp,
      dwDeviceID,
      lphLine,
      dwAPIVersion,
      dwExtVersion,
      dwCallbackInstance,
      dwPrivileges,
      dwMediaModes,
      lpCallParams,
    );

late final _lineOpen = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwDeviceID,
  Pointer<Uint32> lphLine,
  Uint32 dwAPIVersion,
  Uint32 dwExtVersion,
  IntPtr dwCallbackInstance,
  Uint32 dwPrivileges,
  Uint32 dwMediaModes,
  Pointer<LINECALLPARAMS> lpCallParams,
),
    int Function(
  int hLineApp,
  int dwDeviceID,
  Pointer<Uint32> lphLine,
  int dwAPIVersion,
  int dwExtVersion,
  int dwCallbackInstance,
  int dwPrivileges,
  int dwMediaModes,
  Pointer<LINECALLPARAMS> lpCallParams,
)>('lineOpenW');

int linePark(
  int hCall,
  int dwParkMode,
  Pointer<Utf16> lpszDirAddress,
  Pointer<VARSTRING> lpNonDirAddress,
) =>
    _linePark(
      hCall,
      dwParkMode,
      lpszDirAddress,
      lpNonDirAddress,
    );

late final _linePark = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 dwParkMode,
  Pointer<Utf16> lpszDirAddress,
  Pointer<VARSTRING> lpNonDirAddress,
),
    int Function(
  int hCall,
  int dwParkMode,
  Pointer<Utf16> lpszDirAddress,
  Pointer<VARSTRING> lpNonDirAddress,
)>('lineParkW');

int linePickup(
  int hLine,
  int dwAddressID,
  Pointer<Uint32> lphCall,
  Pointer<Utf16> lpszDestAddress,
  Pointer<Utf16> lpszGroupID,
) =>
    _linePickup(
      hLine,
      dwAddressID,
      lphCall,
      lpszDestAddress,
      lpszGroupID,
    );

late final _linePickup = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Pointer<Uint32> lphCall,
  Pointer<Utf16> lpszDestAddress,
  Pointer<Utf16> lpszGroupID,
),
    int Function(
  int hLine,
  int dwAddressID,
  Pointer<Uint32> lphCall,
  Pointer<Utf16> lpszDestAddress,
  Pointer<Utf16> lpszGroupID,
)>('linePickupW');

int linePrepareAddToConference(
  int hConfCall,
  Pointer<Uint32> lphConsultCall,
  Pointer<LINECALLPARAMS> lpCallParams,
) =>
    _linePrepareAddToConference(
      hConfCall,
      lphConsultCall,
      lpCallParams,
    );

late final _linePrepareAddToConference = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hConfCall,
  Pointer<Uint32> lphConsultCall,
  Pointer<LINECALLPARAMS> lpCallParams,
),
    int Function(
  int hConfCall,
  Pointer<Uint32> lphConsultCall,
  Pointer<LINECALLPARAMS> lpCallParams,
)>('linePrepareAddToConferenceW');

int lineProxyMessage(
  int hLine,
  int hCall,
  int dwMsg,
  int dwParam1,
  int dwParam2,
  int dwParam3,
) =>
    _lineProxyMessage(
      hLine,
      hCall,
      dwMsg,
      dwParam1,
      dwParam2,
      dwParam3,
    );

late final _lineProxyMessage = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 hCall,
  Uint32 dwMsg,
  Uint32 dwParam1,
  Uint32 dwParam2,
  Uint32 dwParam3,
),
    int Function(
  int hLine,
  int hCall,
  int dwMsg,
  int dwParam1,
  int dwParam2,
  int dwParam3,
)>('lineProxyMessage');

int lineProxyResponse(
  int hLine,
  Pointer<LINEPROXYREQUEST> lpProxyRequest,
  int dwResult,
) =>
    _lineProxyResponse(
      hLine,
      lpProxyRequest,
      dwResult,
    );

late final _lineProxyResponse = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Pointer<LINEPROXYREQUEST> lpProxyRequest,
  Uint32 dwResult,
),
    int Function(
  int hLine,
  Pointer<LINEPROXYREQUEST> lpProxyRequest,
  int dwResult,
)>('lineProxyResponse');

int lineRedirect(
  int hCall,
  Pointer<Utf16> lpszDestAddress,
  int dwCountryCode,
) =>
    _lineRedirect(
      hCall,
      lpszDestAddress,
      dwCountryCode,
    );

late final _lineRedirect = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<Utf16> lpszDestAddress,
  Uint32 dwCountryCode,
),
    int Function(
  int hCall,
  Pointer<Utf16> lpszDestAddress,
  int dwCountryCode,
)>('lineRedirectW');

int lineRegisterRequestRecipient(
  int hLineApp,
  int dwRegistrationInstance,
  int dwRequestMode,
  int bEnable,
) =>
    _lineRegisterRequestRecipient(
      hLineApp,
      dwRegistrationInstance,
      dwRequestMode,
      bEnable,
    );

late final _lineRegisterRequestRecipient = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwRegistrationInstance,
  Uint32 dwRequestMode,
  Uint32 bEnable,
),
    int Function(
  int hLineApp,
  int dwRegistrationInstance,
  int dwRequestMode,
  int bEnable,
)>('lineRegisterRequestRecipient');

int lineReleaseUserUserInfo(
  int hCall,
) =>
    _lineReleaseUserUserInfo(
      hCall,
    );

late final _lineReleaseUserUserInfo = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
),
    int Function(
  int hCall,
)>('lineReleaseUserUserInfo');

int lineRemoveFromConference(
  int hCall,
) =>
    _lineRemoveFromConference(
      hCall,
    );

late final _lineRemoveFromConference = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
),
    int Function(
  int hCall,
)>('lineRemoveFromConference');

int lineRemoveProvider(
  int dwPermanentProviderID,
  int hwndOwner,
) =>
    _lineRemoveProvider(
      dwPermanentProviderID,
      hwndOwner,
    );

late final _lineRemoveProvider = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 dwPermanentProviderID,
  IntPtr hwndOwner,
),
    int Function(
  int dwPermanentProviderID,
  int hwndOwner,
)>('lineRemoveProvider');

int lineSecureCall(
  int hCall,
) =>
    _lineSecureCall(
      hCall,
    );

late final _lineSecureCall = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
),
    int Function(
  int hCall,
)>('lineSecureCall');

int lineSendUserUserInfo(
  int hCall,
  Pointer<Utf8> lpsUserUserInfo,
  int dwSize,
) =>
    _lineSendUserUserInfo(
      hCall,
      lpsUserUserInfo,
      dwSize,
    );

late final _lineSendUserUserInfo = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<Utf8> lpsUserUserInfo,
  Uint32 dwSize,
),
    int Function(
  int hCall,
  Pointer<Utf8> lpsUserUserInfo,
  int dwSize,
)>('lineSendUserUserInfo');

int lineSetAgentActivity(
  int hLine,
  int dwAddressID,
  int dwActivityID,
) =>
    _lineSetAgentActivity(
      hLine,
      dwAddressID,
      dwActivityID,
    );

late final _lineSetAgentActivity = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Uint32 dwActivityID,
),
    int Function(
  int hLine,
  int dwAddressID,
  int dwActivityID,
)>('lineSetAgentActivity');

int lineSetAgentGroup(
  int hLine,
  int dwAddressID,
  Pointer<LINEAGENTGROUPLIST> lpAgentGroupList,
) =>
    _lineSetAgentGroup(
      hLine,
      dwAddressID,
      lpAgentGroupList,
    );

late final _lineSetAgentGroup = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Pointer<LINEAGENTGROUPLIST> lpAgentGroupList,
),
    int Function(
  int hLine,
  int dwAddressID,
  Pointer<LINEAGENTGROUPLIST> lpAgentGroupList,
)>('lineSetAgentGroup');

int lineSetAgentMeasurementPeriod(
  int hLine,
  int hAgent,
  int dwMeasurementPeriod,
) =>
    _lineSetAgentMeasurementPeriod(
      hLine,
      hAgent,
      dwMeasurementPeriod,
    );

late final _lineSetAgentMeasurementPeriod = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 hAgent,
  Uint32 dwMeasurementPeriod,
),
    int Function(
  int hLine,
  int hAgent,
  int dwMeasurementPeriod,
)>('lineSetAgentMeasurementPeriod');

int lineSetAgentSessionState(
  int hLine,
  int hAgentSession,
  int dwAgentSessionState,
  int dwNextAgentSessionState,
) =>
    _lineSetAgentSessionState(
      hLine,
      hAgentSession,
      dwAgentSessionState,
      dwNextAgentSessionState,
    );

late final _lineSetAgentSessionState = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 hAgentSession,
  Uint32 dwAgentSessionState,
  Uint32 dwNextAgentSessionState,
),
    int Function(
  int hLine,
  int hAgentSession,
  int dwAgentSessionState,
  int dwNextAgentSessionState,
)>('lineSetAgentSessionState');

int lineSetAgentState(
  int hLine,
  int dwAddressID,
  int dwAgentState,
  int dwNextAgentState,
) =>
    _lineSetAgentState(
      hLine,
      dwAddressID,
      dwAgentState,
      dwNextAgentState,
    );

late final _lineSetAgentState = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Uint32 dwAgentState,
  Uint32 dwNextAgentState,
),
    int Function(
  int hLine,
  int dwAddressID,
  int dwAgentState,
  int dwNextAgentState,
)>('lineSetAgentState');

int lineSetAgentStateEx(
  int hLine,
  int hAgent,
  int dwAgentState,
  int dwNextAgentState,
) =>
    _lineSetAgentStateEx(
      hLine,
      hAgent,
      dwAgentState,
      dwNextAgentState,
    );

late final _lineSetAgentStateEx = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 hAgent,
  Uint32 dwAgentState,
  Uint32 dwNextAgentState,
),
    int Function(
  int hLine,
  int hAgent,
  int dwAgentState,
  int dwNextAgentState,
)>('lineSetAgentStateEx');

int lineSetAppPriority(
  Pointer<Utf16> lpszAppFilename,
  int dwMediaMode,
  Pointer<LINEEXTENSIONID> lpExtensionID,
  int dwRequestMode,
  Pointer<Utf16> lpszExtensionName,
  int dwPriority,
) =>
    _lineSetAppPriority(
      lpszAppFilename,
      dwMediaMode,
      lpExtensionID,
      dwRequestMode,
      lpszExtensionName,
      dwPriority,
    );

late final _lineSetAppPriority = _tapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszAppFilename,
  Uint32 dwMediaMode,
  Pointer<LINEEXTENSIONID> lpExtensionID,
  Uint32 dwRequestMode,
  Pointer<Utf16> lpszExtensionName,
  Uint32 dwPriority,
),
    int Function(
  Pointer<Utf16> lpszAppFilename,
  int dwMediaMode,
  Pointer<LINEEXTENSIONID> lpExtensionID,
  int dwRequestMode,
  Pointer<Utf16> lpszExtensionName,
  int dwPriority,
)>('lineSetAppPriorityW');

int lineSetAppSpecific(
  int hCall,
  int dwAppSpecific,
) =>
    _lineSetAppSpecific(
      hCall,
      dwAppSpecific,
    );

late final _lineSetAppSpecific = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 dwAppSpecific,
),
    int Function(
  int hCall,
  int dwAppSpecific,
)>('lineSetAppSpecific');

int lineSetCallData(
  int hCall,
  Pointer lpCallData,
  int dwSize,
) =>
    _lineSetCallData(
      hCall,
      lpCallData,
      dwSize,
    );

late final _lineSetCallData = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer lpCallData,
  Uint32 dwSize,
),
    int Function(
  int hCall,
  Pointer lpCallData,
  int dwSize,
)>('lineSetCallData');

int lineSetCallParams(
  int hCall,
  int dwBearerMode,
  int dwMinRate,
  int dwMaxRate,
  Pointer<LINEDIALPARAMS> lpDialParams,
) =>
    _lineSetCallParams(
      hCall,
      dwBearerMode,
      dwMinRate,
      dwMaxRate,
      lpDialParams,
    );

late final _lineSetCallParams = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 dwBearerMode,
  Uint32 dwMinRate,
  Uint32 dwMaxRate,
  Pointer<LINEDIALPARAMS> lpDialParams,
),
    int Function(
  int hCall,
  int dwBearerMode,
  int dwMinRate,
  int dwMaxRate,
  Pointer<LINEDIALPARAMS> lpDialParams,
)>('lineSetCallParams');

int lineSetCallPrivilege(
  int hCall,
  int dwCallPrivilege,
) =>
    _lineSetCallPrivilege(
      hCall,
      dwCallPrivilege,
    );

late final _lineSetCallPrivilege = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 dwCallPrivilege,
),
    int Function(
  int hCall,
  int dwCallPrivilege,
)>('lineSetCallPrivilege');

int lineSetCallQualityOfService(
  int hCall,
  Pointer lpSendingFlowspec,
  int dwSendingFlowspecSize,
  Pointer lpReceivingFlowspec,
  int dwReceivingFlowspecSize,
) =>
    _lineSetCallQualityOfService(
      hCall,
      lpSendingFlowspec,
      dwSendingFlowspecSize,
      lpReceivingFlowspec,
      dwReceivingFlowspecSize,
    );

late final _lineSetCallQualityOfService = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer lpSendingFlowspec,
  Uint32 dwSendingFlowspecSize,
  Pointer lpReceivingFlowspec,
  Uint32 dwReceivingFlowspecSize,
),
    int Function(
  int hCall,
  Pointer lpSendingFlowspec,
  int dwSendingFlowspecSize,
  Pointer lpReceivingFlowspec,
  int dwReceivingFlowspecSize,
)>('lineSetCallQualityOfService');

int lineSetCallTreatment(
  int hCall,
  int dwTreatment,
) =>
    _lineSetCallTreatment(
      hCall,
      dwTreatment,
    );

late final _lineSetCallTreatment = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 dwTreatment,
),
    int Function(
  int hCall,
  int dwTreatment,
)>('lineSetCallTreatment');

int lineSetCurrentLocation(
  int hLineApp,
  int dwLocation,
) =>
    _lineSetCurrentLocation(
      hLineApp,
      dwLocation,
    );

late final _lineSetCurrentLocation = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwLocation,
),
    int Function(
  int hLineApp,
  int dwLocation,
)>('lineSetCurrentLocation');

int lineSetDevConfig(
  int dwDeviceID,
  Pointer lpDeviceConfig,
  int dwSize,
  Pointer<Utf16> lpszDeviceClass,
) =>
    _lineSetDevConfig(
      dwDeviceID,
      lpDeviceConfig,
      dwSize,
      lpszDeviceClass,
    );

late final _lineSetDevConfig = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 dwDeviceID,
  Pointer lpDeviceConfig,
  Uint32 dwSize,
  Pointer<Utf16> lpszDeviceClass,
),
    int Function(
  int dwDeviceID,
  Pointer lpDeviceConfig,
  int dwSize,
  Pointer<Utf16> lpszDeviceClass,
)>('lineSetDevConfigW');

int lineSetLineDevStatus(
  int hLine,
  int dwStatusToChange,
  int fStatus,
) =>
    _lineSetLineDevStatus(
      hLine,
      dwStatusToChange,
      fStatus,
    );

late final _lineSetLineDevStatus = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwStatusToChange,
  Uint32 fStatus,
),
    int Function(
  int hLine,
  int dwStatusToChange,
  int fStatus,
)>('lineSetLineDevStatus');

int lineSetMediaControl(
  int hLine,
  int dwAddressID,
  int hCall,
  int dwSelect,
  Pointer<LINEMEDIACONTROLDIGIT> lpDigitList,
  int dwDigitNumEntries,
  Pointer<LINEMEDIACONTROLMEDIA> lpMediaList,
  int dwMediaNumEntries,
  Pointer<LINEMEDIACONTROLTONE> lpToneList,
  int dwToneNumEntries,
  Pointer<LINEMEDIACONTROLCALLSTATE> lpCallStateList,
  int dwCallStateNumEntries,
) =>
    _lineSetMediaControl(
      hLine,
      dwAddressID,
      hCall,
      dwSelect,
      lpDigitList,
      dwDigitNumEntries,
      lpMediaList,
      dwMediaNumEntries,
      lpToneList,
      dwToneNumEntries,
      lpCallStateList,
      dwCallStateNumEntries,
    );

late final _lineSetMediaControl = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Uint32 hCall,
  Uint32 dwSelect,
  Pointer<LINEMEDIACONTROLDIGIT> lpDigitList,
  Uint32 dwDigitNumEntries,
  Pointer<LINEMEDIACONTROLMEDIA> lpMediaList,
  Uint32 dwMediaNumEntries,
  Pointer<LINEMEDIACONTROLTONE> lpToneList,
  Uint32 dwToneNumEntries,
  Pointer<LINEMEDIACONTROLCALLSTATE> lpCallStateList,
  Uint32 dwCallStateNumEntries,
),
    int Function(
  int hLine,
  int dwAddressID,
  int hCall,
  int dwSelect,
  Pointer<LINEMEDIACONTROLDIGIT> lpDigitList,
  int dwDigitNumEntries,
  Pointer<LINEMEDIACONTROLMEDIA> lpMediaList,
  int dwMediaNumEntries,
  Pointer<LINEMEDIACONTROLTONE> lpToneList,
  int dwToneNumEntries,
  Pointer<LINEMEDIACONTROLCALLSTATE> lpCallStateList,
  int dwCallStateNumEntries,
)>('lineSetMediaControl');

int lineSetMediaMode(
  int hCall,
  int dwMediaModes,
) =>
    _lineSetMediaMode(
      hCall,
      dwMediaModes,
    );

late final _lineSetMediaMode = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 dwMediaModes,
),
    int Function(
  int hCall,
  int dwMediaModes,
)>('lineSetMediaMode');

int lineSetNumRings(
  int hLine,
  int dwAddressID,
  int dwNumRings,
) =>
    _lineSetNumRings(
      hLine,
      dwAddressID,
      dwNumRings,
    );

late final _lineSetNumRings = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Uint32 dwNumRings,
),
    int Function(
  int hLine,
  int dwAddressID,
  int dwNumRings,
)>('lineSetNumRings');

int lineSetQueueMeasurementPeriod(
  int hLine,
  int dwQueueID,
  int dwMeasurementPeriod,
) =>
    _lineSetQueueMeasurementPeriod(
      hLine,
      dwQueueID,
      dwMeasurementPeriod,
    );

late final _lineSetQueueMeasurementPeriod = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwQueueID,
  Uint32 dwMeasurementPeriod,
),
    int Function(
  int hLine,
  int dwQueueID,
  int dwMeasurementPeriod,
)>('lineSetQueueMeasurementPeriod');

int lineSetStatusMessages(
  int hLine,
  int dwLineStates,
  int dwAddressStates,
) =>
    _lineSetStatusMessages(
      hLine,
      dwLineStates,
      dwAddressStates,
    );

late final _lineSetStatusMessages = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwLineStates,
  Uint32 dwAddressStates,
),
    int Function(
  int hLine,
  int dwLineStates,
  int dwAddressStates,
)>('lineSetStatusMessages');

int lineSetTerminal(
  int hLine,
  int dwAddressID,
  int hCall,
  int dwSelect,
  int dwTerminalModes,
  int dwTerminalID,
  int bEnable,
) =>
    _lineSetTerminal(
      hLine,
      dwAddressID,
      hCall,
      dwSelect,
      dwTerminalModes,
      dwTerminalID,
      bEnable,
    );

late final _lineSetTerminal = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Uint32 hCall,
  Uint32 dwSelect,
  Uint32 dwTerminalModes,
  Uint32 dwTerminalID,
  Uint32 bEnable,
),
    int Function(
  int hLine,
  int dwAddressID,
  int hCall,
  int dwSelect,
  int dwTerminalModes,
  int dwTerminalID,
  int bEnable,
)>('lineSetTerminal');

int lineSetTollList(
  int hLineApp,
  int dwDeviceID,
  Pointer<Utf16> lpszAddressInW,
  int dwTollListOption,
) =>
    _lineSetTollList(
      hLineApp,
      dwDeviceID,
      lpszAddressInW,
      dwTollListOption,
    );

late final _lineSetTollList = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwDeviceID,
  Pointer<Utf16> lpszAddressInW,
  Uint32 dwTollListOption,
),
    int Function(
  int hLineApp,
  int dwDeviceID,
  Pointer<Utf16> lpszAddressInW,
  int dwTollListOption,
)>('lineSetTollListW');

int lineSetupConference(
  int hCall,
  int hLine,
  Pointer<Uint32> lphConfCall,
  Pointer<Uint32> lphConsultCall,
  int dwNumParties,
  Pointer<LINECALLPARAMS> lpCallParams,
) =>
    _lineSetupConference(
      hCall,
      hLine,
      lphConfCall,
      lphConsultCall,
      dwNumParties,
      lpCallParams,
    );

late final _lineSetupConference = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Uint32 hLine,
  Pointer<Uint32> lphConfCall,
  Pointer<Uint32> lphConsultCall,
  Uint32 dwNumParties,
  Pointer<LINECALLPARAMS> lpCallParams,
),
    int Function(
  int hCall,
  int hLine,
  Pointer<Uint32> lphConfCall,
  Pointer<Uint32> lphConsultCall,
  int dwNumParties,
  Pointer<LINECALLPARAMS> lpCallParams,
)>('lineSetupConferenceW');

int lineSetupTransfer(
  int hCall,
  Pointer<Uint32> lphConsultCall,
  Pointer<LINECALLPARAMS> lpCallParams,
) =>
    _lineSetupTransfer(
      hCall,
      lphConsultCall,
      lpCallParams,
    );

late final _lineSetupTransfer = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
  Pointer<Uint32> lphConsultCall,
  Pointer<LINECALLPARAMS> lpCallParams,
),
    int Function(
  int hCall,
  Pointer<Uint32> lphConsultCall,
  Pointer<LINECALLPARAMS> lpCallParams,
)>('lineSetupTransferW');

int lineShutdown(
  int hLineApp,
) =>
    _lineShutdown(
      hLineApp,
    );

late final _lineShutdown = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
),
    int Function(
  int hLineApp,
)>('lineShutdown');

int lineSwapHold(
  int hActiveCall,
  int hHeldCall,
) =>
    _lineSwapHold(
      hActiveCall,
      hHeldCall,
    );

late final _lineSwapHold = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hActiveCall,
  Uint32 hHeldCall,
),
    int Function(
  int hActiveCall,
  int hHeldCall,
)>('lineSwapHold');

int lineTranslateAddress(
  int hLineApp,
  int dwDeviceID,
  int dwAPIVersion,
  Pointer<Utf16> lpszAddressIn,
  int dwCard,
  int dwTranslateOptions,
  Pointer<LINETRANSLATEOUTPUT> lpTranslateOutput,
) =>
    _lineTranslateAddress(
      hLineApp,
      dwDeviceID,
      dwAPIVersion,
      lpszAddressIn,
      dwCard,
      dwTranslateOptions,
      lpTranslateOutput,
    );

late final _lineTranslateAddress = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwDeviceID,
  Uint32 dwAPIVersion,
  Pointer<Utf16> lpszAddressIn,
  Uint32 dwCard,
  Uint32 dwTranslateOptions,
  Pointer<LINETRANSLATEOUTPUT> lpTranslateOutput,
),
    int Function(
  int hLineApp,
  int dwDeviceID,
  int dwAPIVersion,
  Pointer<Utf16> lpszAddressIn,
  int dwCard,
  int dwTranslateOptions,
  Pointer<LINETRANSLATEOUTPUT> lpTranslateOutput,
)>('lineTranslateAddressW');

int lineTranslateDialog(
  int hLineApp,
  int dwDeviceID,
  int dwAPIVersion,
  int hwndOwner,
  Pointer<Utf16> lpszAddressIn,
) =>
    _lineTranslateDialog(
      hLineApp,
      dwDeviceID,
      dwAPIVersion,
      hwndOwner,
      lpszAddressIn,
    );

late final _lineTranslateDialog = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLineApp,
  Uint32 dwDeviceID,
  Uint32 dwAPIVersion,
  IntPtr hwndOwner,
  Pointer<Utf16> lpszAddressIn,
),
    int Function(
  int hLineApp,
  int dwDeviceID,
  int dwAPIVersion,
  int hwndOwner,
  Pointer<Utf16> lpszAddressIn,
)>('lineTranslateDialogW');

int lineUncompleteCall(
  int hLine,
  int dwCompletionID,
) =>
    _lineUncompleteCall(
      hLine,
      dwCompletionID,
    );

late final _lineUncompleteCall = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwCompletionID,
),
    int Function(
  int hLine,
  int dwCompletionID,
)>('lineUncompleteCall');

int lineUnhold(
  int hCall,
) =>
    _lineUnhold(
      hCall,
    );

late final _lineUnhold = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hCall,
),
    int Function(
  int hCall,
)>('lineUnhold');

int lineUnpark(
  int hLine,
  int dwAddressID,
  Pointer<Uint32> lphCall,
  Pointer<Utf16> lpszDestAddress,
) =>
    _lineUnpark(
      hLine,
      dwAddressID,
      lphCall,
      lpszDestAddress,
    );

late final _lineUnpark = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hLine,
  Uint32 dwAddressID,
  Pointer<Uint32> lphCall,
  Pointer<Utf16> lpszDestAddress,
),
    int Function(
  int hLine,
  int dwAddressID,
  Pointer<Uint32> lphCall,
  Pointer<Utf16> lpszDestAddress,
)>('lineUnparkW');

int phoneClose(
  int hPhone,
) =>
    _phoneClose(
      hPhone,
    );

late final _phoneClose = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
),
    int Function(
  int hPhone,
)>('phoneClose');

int phoneConfigDialog(
  int dwDeviceID,
  int hwndOwner,
  Pointer<Utf16> lpszDeviceClass,
) =>
    _phoneConfigDialog(
      dwDeviceID,
      hwndOwner,
      lpszDeviceClass,
    );

late final _phoneConfigDialog = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 dwDeviceID,
  IntPtr hwndOwner,
  Pointer<Utf16> lpszDeviceClass,
),
    int Function(
  int dwDeviceID,
  int hwndOwner,
  Pointer<Utf16> lpszDeviceClass,
)>('phoneConfigDialogW');

int phoneDevSpecific(
  int hPhone,
  Pointer lpParams,
  int dwSize,
) =>
    _phoneDevSpecific(
      hPhone,
      lpParams,
      dwSize,
    );

late final _phoneDevSpecific = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Pointer lpParams,
  Uint32 dwSize,
),
    int Function(
  int hPhone,
  Pointer lpParams,
  int dwSize,
)>('phoneDevSpecific');

int phoneGetButtonInfo(
  int hPhone,
  int dwButtonLampID,
  Pointer<PHONEBUTTONINFO> lpButtonInfo,
) =>
    _phoneGetButtonInfo(
      hPhone,
      dwButtonLampID,
      lpButtonInfo,
    );

late final _phoneGetButtonInfo = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwButtonLampID,
  Pointer<PHONEBUTTONINFO> lpButtonInfo,
),
    int Function(
  int hPhone,
  int dwButtonLampID,
  Pointer<PHONEBUTTONINFO> lpButtonInfo,
)>('phoneGetButtonInfoW');

int phoneGetData(
  int hPhone,
  int dwDataID,
  Pointer lpData,
  int dwSize,
) =>
    _phoneGetData(
      hPhone,
      dwDataID,
      lpData,
      dwSize,
    );

late final _phoneGetData = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwDataID,
  Pointer lpData,
  Uint32 dwSize,
),
    int Function(
  int hPhone,
  int dwDataID,
  Pointer lpData,
  int dwSize,
)>('phoneGetData');

int phoneGetDevCaps(
  int hPhoneApp,
  int dwDeviceID,
  int dwAPIVersion,
  int dwExtVersion,
  Pointer<PHONECAPS> lpPhoneCaps,
) =>
    _phoneGetDevCaps(
      hPhoneApp,
      dwDeviceID,
      dwAPIVersion,
      dwExtVersion,
      lpPhoneCaps,
    );

late final _phoneGetDevCaps = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhoneApp,
  Uint32 dwDeviceID,
  Uint32 dwAPIVersion,
  Uint32 dwExtVersion,
  Pointer<PHONECAPS> lpPhoneCaps,
),
    int Function(
  int hPhoneApp,
  int dwDeviceID,
  int dwAPIVersion,
  int dwExtVersion,
  Pointer<PHONECAPS> lpPhoneCaps,
)>('phoneGetDevCapsW');

int phoneGetDisplay(
  int hPhone,
  Pointer<VARSTRING> lpDisplay,
) =>
    _phoneGetDisplay(
      hPhone,
      lpDisplay,
    );

late final _phoneGetDisplay = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Pointer<VARSTRING> lpDisplay,
),
    int Function(
  int hPhone,
  Pointer<VARSTRING> lpDisplay,
)>('phoneGetDisplay');

int phoneGetGain(
  int hPhone,
  int dwHookSwitchDev,
  Pointer<Uint32> lpdwGain,
) =>
    _phoneGetGain(
      hPhone,
      dwHookSwitchDev,
      lpdwGain,
    );

late final _phoneGetGain = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwHookSwitchDev,
  Pointer<Uint32> lpdwGain,
),
    int Function(
  int hPhone,
  int dwHookSwitchDev,
  Pointer<Uint32> lpdwGain,
)>('phoneGetGain');

int phoneGetHookSwitch(
  int hPhone,
  Pointer<Uint32> lpdwHookSwitchDevs,
) =>
    _phoneGetHookSwitch(
      hPhone,
      lpdwHookSwitchDevs,
    );

late final _phoneGetHookSwitch = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Pointer<Uint32> lpdwHookSwitchDevs,
),
    int Function(
  int hPhone,
  Pointer<Uint32> lpdwHookSwitchDevs,
)>('phoneGetHookSwitch');

int phoneGetID(
  int hPhone,
  Pointer<VARSTRING> lpDeviceID,
  Pointer<Utf16> lpszDeviceClass,
) =>
    _phoneGetID(
      hPhone,
      lpDeviceID,
      lpszDeviceClass,
    );

late final _phoneGetID = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Pointer<VARSTRING> lpDeviceID,
  Pointer<Utf16> lpszDeviceClass,
),
    int Function(
  int hPhone,
  Pointer<VARSTRING> lpDeviceID,
  Pointer<Utf16> lpszDeviceClass,
)>('phoneGetIDW');

int phoneGetIcon(
  int dwDeviceID,
  Pointer<Utf16> lpszDeviceClass,
  Pointer<IntPtr> lphIcon,
) =>
    _phoneGetIcon(
      dwDeviceID,
      lpszDeviceClass,
      lphIcon,
    );

late final _phoneGetIcon = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 dwDeviceID,
  Pointer<Utf16> lpszDeviceClass,
  Pointer<IntPtr> lphIcon,
),
    int Function(
  int dwDeviceID,
  Pointer<Utf16> lpszDeviceClass,
  Pointer<IntPtr> lphIcon,
)>('phoneGetIconW');

int phoneGetLamp(
  int hPhone,
  int dwButtonLampID,
  Pointer<Uint32> lpdwLampMode,
) =>
    _phoneGetLamp(
      hPhone,
      dwButtonLampID,
      lpdwLampMode,
    );

late final _phoneGetLamp = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwButtonLampID,
  Pointer<Uint32> lpdwLampMode,
),
    int Function(
  int hPhone,
  int dwButtonLampID,
  Pointer<Uint32> lpdwLampMode,
)>('phoneGetLamp');

int phoneGetMessage(
  int hPhoneApp,
  Pointer<PHONEMESSAGE> lpMessage,
  int dwTimeout,
) =>
    _phoneGetMessage(
      hPhoneApp,
      lpMessage,
      dwTimeout,
    );

late final _phoneGetMessage = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhoneApp,
  Pointer<PHONEMESSAGE> lpMessage,
  Uint32 dwTimeout,
),
    int Function(
  int hPhoneApp,
  Pointer<PHONEMESSAGE> lpMessage,
  int dwTimeout,
)>('phoneGetMessage');

int phoneGetRing(
  int hPhone,
  Pointer<Uint32> lpdwRingMode,
  Pointer<Uint32> lpdwVolume,
) =>
    _phoneGetRing(
      hPhone,
      lpdwRingMode,
      lpdwVolume,
    );

late final _phoneGetRing = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Pointer<Uint32> lpdwRingMode,
  Pointer<Uint32> lpdwVolume,
),
    int Function(
  int hPhone,
  Pointer<Uint32> lpdwRingMode,
  Pointer<Uint32> lpdwVolume,
)>('phoneGetRing');

int phoneGetStatusMessages(
  int hPhone,
  Pointer<Uint32> lpdwPhoneStates,
  Pointer<Uint32> lpdwButtonModes,
  Pointer<Uint32> lpdwButtonStates,
) =>
    _phoneGetStatusMessages(
      hPhone,
      lpdwPhoneStates,
      lpdwButtonModes,
      lpdwButtonStates,
    );

late final _phoneGetStatusMessages = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Pointer<Uint32> lpdwPhoneStates,
  Pointer<Uint32> lpdwButtonModes,
  Pointer<Uint32> lpdwButtonStates,
),
    int Function(
  int hPhone,
  Pointer<Uint32> lpdwPhoneStates,
  Pointer<Uint32> lpdwButtonModes,
  Pointer<Uint32> lpdwButtonStates,
)>('phoneGetStatusMessages');

int phoneGetStatus(
  int hPhone,
  Pointer<PHONESTATUS> lpPhoneStatus,
) =>
    _phoneGetStatus(
      hPhone,
      lpPhoneStatus,
    );

late final _phoneGetStatus = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Pointer<PHONESTATUS> lpPhoneStatus,
),
    int Function(
  int hPhone,
  Pointer<PHONESTATUS> lpPhoneStatus,
)>('phoneGetStatusW');

int phoneGetVolume(
  int hPhone,
  int dwHookSwitchDev,
  Pointer<Uint32> lpdwVolume,
) =>
    _phoneGetVolume(
      hPhone,
      dwHookSwitchDev,
      lpdwVolume,
    );

late final _phoneGetVolume = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwHookSwitchDev,
  Pointer<Uint32> lpdwVolume,
),
    int Function(
  int hPhone,
  int dwHookSwitchDev,
  Pointer<Uint32> lpdwVolume,
)>('phoneGetVolume');

int phoneInitialize(
  Pointer<Uint32> lphPhoneApp,
  int hInstance,
  Pointer<NativeFunction<PHONECALLBACK>> lpfnCallback,
  Pointer<Utf8> lpszAppName,
  Pointer<Uint32> lpdwNumDevs,
) =>
    _phoneInitialize(
      lphPhoneApp,
      hInstance,
      lpfnCallback,
      lpszAppName,
      lpdwNumDevs,
    );

late final _phoneInitialize = _tapi32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lphPhoneApp,
  IntPtr hInstance,
  Pointer<NativeFunction<PHONECALLBACK>> lpfnCallback,
  Pointer<Utf8> lpszAppName,
  Pointer<Uint32> lpdwNumDevs,
),
    int Function(
  Pointer<Uint32> lphPhoneApp,
  int hInstance,
  Pointer<NativeFunction<PHONECALLBACK>> lpfnCallback,
  Pointer<Utf8> lpszAppName,
  Pointer<Uint32> lpdwNumDevs,
)>('phoneInitialize');

int phoneInitializeEx(
  Pointer<Uint32> lphPhoneApp,
  int hInstance,
  Pointer<NativeFunction<PHONECALLBACK>> lpfnCallback,
  Pointer<Utf16> lpszFriendlyAppName,
  Pointer<Uint32> lpdwNumDevs,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<PHONEINITIALIZEEXPARAMS> lpPhoneInitializeExParams,
) =>
    _phoneInitializeEx(
      lphPhoneApp,
      hInstance,
      lpfnCallback,
      lpszFriendlyAppName,
      lpdwNumDevs,
      lpdwAPIVersion,
      lpPhoneInitializeExParams,
    );

late final _phoneInitializeEx = _tapi32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lphPhoneApp,
  IntPtr hInstance,
  Pointer<NativeFunction<PHONECALLBACK>> lpfnCallback,
  Pointer<Utf16> lpszFriendlyAppName,
  Pointer<Uint32> lpdwNumDevs,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<PHONEINITIALIZEEXPARAMS> lpPhoneInitializeExParams,
),
    int Function(
  Pointer<Uint32> lphPhoneApp,
  int hInstance,
  Pointer<NativeFunction<PHONECALLBACK>> lpfnCallback,
  Pointer<Utf16> lpszFriendlyAppName,
  Pointer<Uint32> lpdwNumDevs,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<PHONEINITIALIZEEXPARAMS> lpPhoneInitializeExParams,
)>('phoneInitializeExW');

int phoneNegotiateAPIVersion(
  int hPhoneApp,
  int dwDeviceID,
  int dwAPILowVersion,
  int dwAPIHighVersion,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<PHONEEXTENSIONID> lpExtensionID,
) =>
    _phoneNegotiateAPIVersion(
      hPhoneApp,
      dwDeviceID,
      dwAPILowVersion,
      dwAPIHighVersion,
      lpdwAPIVersion,
      lpExtensionID,
    );

late final _phoneNegotiateAPIVersion = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhoneApp,
  Uint32 dwDeviceID,
  Uint32 dwAPILowVersion,
  Uint32 dwAPIHighVersion,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<PHONEEXTENSIONID> lpExtensionID,
),
    int Function(
  int hPhoneApp,
  int dwDeviceID,
  int dwAPILowVersion,
  int dwAPIHighVersion,
  Pointer<Uint32> lpdwAPIVersion,
  Pointer<PHONEEXTENSIONID> lpExtensionID,
)>('phoneNegotiateAPIVersion');

int phoneNegotiateExtVersion(
  int hPhoneApp,
  int dwDeviceID,
  int dwAPIVersion,
  int dwExtLowVersion,
  int dwExtHighVersion,
  Pointer<Uint32> lpdwExtVersion,
) =>
    _phoneNegotiateExtVersion(
      hPhoneApp,
      dwDeviceID,
      dwAPIVersion,
      dwExtLowVersion,
      dwExtHighVersion,
      lpdwExtVersion,
    );

late final _phoneNegotiateExtVersion = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhoneApp,
  Uint32 dwDeviceID,
  Uint32 dwAPIVersion,
  Uint32 dwExtLowVersion,
  Uint32 dwExtHighVersion,
  Pointer<Uint32> lpdwExtVersion,
),
    int Function(
  int hPhoneApp,
  int dwDeviceID,
  int dwAPIVersion,
  int dwExtLowVersion,
  int dwExtHighVersion,
  Pointer<Uint32> lpdwExtVersion,
)>('phoneNegotiateExtVersion');

int phoneOpen(
  int hPhoneApp,
  int dwDeviceID,
  Pointer<Uint32> lphPhone,
  int dwAPIVersion,
  int dwExtVersion,
  int dwCallbackInstance,
  int dwPrivilege,
) =>
    _phoneOpen(
      hPhoneApp,
      dwDeviceID,
      lphPhone,
      dwAPIVersion,
      dwExtVersion,
      dwCallbackInstance,
      dwPrivilege,
    );

late final _phoneOpen = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhoneApp,
  Uint32 dwDeviceID,
  Pointer<Uint32> lphPhone,
  Uint32 dwAPIVersion,
  Uint32 dwExtVersion,
  IntPtr dwCallbackInstance,
  Uint32 dwPrivilege,
),
    int Function(
  int hPhoneApp,
  int dwDeviceID,
  Pointer<Uint32> lphPhone,
  int dwAPIVersion,
  int dwExtVersion,
  int dwCallbackInstance,
  int dwPrivilege,
)>('phoneOpen');

int phoneSetButtonInfo(
  int hPhone,
  int dwButtonLampID,
  Pointer<PHONEBUTTONINFO> lpButtonInfo,
) =>
    _phoneSetButtonInfo(
      hPhone,
      dwButtonLampID,
      lpButtonInfo,
    );

late final _phoneSetButtonInfo = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwButtonLampID,
  Pointer<PHONEBUTTONINFO> lpButtonInfo,
),
    int Function(
  int hPhone,
  int dwButtonLampID,
  Pointer<PHONEBUTTONINFO> lpButtonInfo,
)>('phoneSetButtonInfoW');

int phoneSetData(
  int hPhone,
  int dwDataID,
  Pointer lpData,
  int dwSize,
) =>
    _phoneSetData(
      hPhone,
      dwDataID,
      lpData,
      dwSize,
    );

late final _phoneSetData = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwDataID,
  Pointer lpData,
  Uint32 dwSize,
),
    int Function(
  int hPhone,
  int dwDataID,
  Pointer lpData,
  int dwSize,
)>('phoneSetData');

int phoneSetDisplay(
  int hPhone,
  int dwRow,
  int dwColumn,
  Pointer<Utf8> lpsDisplay,
  int dwSize,
) =>
    _phoneSetDisplay(
      hPhone,
      dwRow,
      dwColumn,
      lpsDisplay,
      dwSize,
    );

late final _phoneSetDisplay = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwRow,
  Uint32 dwColumn,
  Pointer<Utf8> lpsDisplay,
  Uint32 dwSize,
),
    int Function(
  int hPhone,
  int dwRow,
  int dwColumn,
  Pointer<Utf8> lpsDisplay,
  int dwSize,
)>('phoneSetDisplay');

int phoneSetGain(
  int hPhone,
  int dwHookSwitchDev,
  int dwGain,
) =>
    _phoneSetGain(
      hPhone,
      dwHookSwitchDev,
      dwGain,
    );

late final _phoneSetGain = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwHookSwitchDev,
  Uint32 dwGain,
),
    int Function(
  int hPhone,
  int dwHookSwitchDev,
  int dwGain,
)>('phoneSetGain');

int phoneSetHookSwitch(
  int hPhone,
  int dwHookSwitchDevs,
  int dwHookSwitchMode,
) =>
    _phoneSetHookSwitch(
      hPhone,
      dwHookSwitchDevs,
      dwHookSwitchMode,
    );

late final _phoneSetHookSwitch = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwHookSwitchDevs,
  Uint32 dwHookSwitchMode,
),
    int Function(
  int hPhone,
  int dwHookSwitchDevs,
  int dwHookSwitchMode,
)>('phoneSetHookSwitch');

int phoneSetLamp(
  int hPhone,
  int dwButtonLampID,
  int dwLampMode,
) =>
    _phoneSetLamp(
      hPhone,
      dwButtonLampID,
      dwLampMode,
    );

late final _phoneSetLamp = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwButtonLampID,
  Uint32 dwLampMode,
),
    int Function(
  int hPhone,
  int dwButtonLampID,
  int dwLampMode,
)>('phoneSetLamp');

int phoneSetRing(
  int hPhone,
  int dwRingMode,
  int dwVolume,
) =>
    _phoneSetRing(
      hPhone,
      dwRingMode,
      dwVolume,
    );

late final _phoneSetRing = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwRingMode,
  Uint32 dwVolume,
),
    int Function(
  int hPhone,
  int dwRingMode,
  int dwVolume,
)>('phoneSetRing');

int phoneSetStatusMessages(
  int hPhone,
  int dwPhoneStates,
  int dwButtonModes,
  int dwButtonStates,
) =>
    _phoneSetStatusMessages(
      hPhone,
      dwPhoneStates,
      dwButtonModes,
      dwButtonStates,
    );

late final _phoneSetStatusMessages = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwPhoneStates,
  Uint32 dwButtonModes,
  Uint32 dwButtonStates,
),
    int Function(
  int hPhone,
  int dwPhoneStates,
  int dwButtonModes,
  int dwButtonStates,
)>('phoneSetStatusMessages');

int phoneSetVolume(
  int hPhone,
  int dwHookSwitchDev,
  int dwVolume,
) =>
    _phoneSetVolume(
      hPhone,
      dwHookSwitchDev,
      dwVolume,
    );

late final _phoneSetVolume = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhone,
  Uint32 dwHookSwitchDev,
  Uint32 dwVolume,
),
    int Function(
  int hPhone,
  int dwHookSwitchDev,
  int dwVolume,
)>('phoneSetVolume');

int phoneShutdown(
  int hPhoneApp,
) =>
    _phoneShutdown(
      hPhoneApp,
    );

late final _phoneShutdown = _tapi32.lookupFunction<
    Int32 Function(
  Uint32 hPhoneApp,
),
    int Function(
  int hPhoneApp,
)>('phoneShutdown');

int tapiGetLocationInfo(
  Pointer<Utf16> lpszCountryCodeW,
  Pointer<Utf16> lpszCityCodeW,
) =>
    _tapiGetLocationInfo(
      lpszCountryCodeW,
      lpszCityCodeW,
    );

late final _tapiGetLocationInfo = _tapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszCountryCodeW,
  Pointer<Utf16> lpszCityCodeW,
),
    int Function(
  Pointer<Utf16> lpszCountryCodeW,
  Pointer<Utf16> lpszCityCodeW,
)>('tapiGetLocationInfoW');

int tapiRequestDrop(
  int hwnd,
  int wRequestID,
) =>
    _tapiRequestDrop(
      hwnd,
      wRequestID,
    );

late final _tapiRequestDrop = _tapi32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr wRequestID,
),
    int Function(
  int hwnd,
  int wRequestID,
)>('tapiRequestDrop');

int tapiRequestMakeCall(
  Pointer<Utf16> lpszDestAddress,
  Pointer<Utf16> lpszAppName,
  Pointer<Utf16> lpszCalledParty,
  Pointer<Utf16> lpszComment,
) =>
    _tapiRequestMakeCall(
      lpszDestAddress,
      lpszAppName,
      lpszCalledParty,
      lpszComment,
    );

late final _tapiRequestMakeCall = _tapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszDestAddress,
  Pointer<Utf16> lpszAppName,
  Pointer<Utf16> lpszCalledParty,
  Pointer<Utf16> lpszComment,
),
    int Function(
  Pointer<Utf16> lpszDestAddress,
  Pointer<Utf16> lpszAppName,
  Pointer<Utf16> lpszCalledParty,
  Pointer<Utf16> lpszComment,
)>('tapiRequestMakeCallW');

int tapiRequestMediaCall(
  int hwnd,
  int wRequestID,
  Pointer<Utf16> lpszDeviceClass,
  Pointer<Utf16> lpDeviceID,
  int dwSize,
  int dwSecure,
  Pointer<Utf16> lpszDestAddress,
  Pointer<Utf16> lpszAppName,
  Pointer<Utf16> lpszCalledParty,
  Pointer<Utf16> lpszComment,
) =>
    _tapiRequestMediaCall(
      hwnd,
      wRequestID,
      lpszDeviceClass,
      lpDeviceID,
      dwSize,
      dwSecure,
      lpszDestAddress,
      lpszAppName,
      lpszCalledParty,
      lpszComment,
    );

late final _tapiRequestMediaCall = _tapi32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr wRequestID,
  Pointer<Utf16> lpszDeviceClass,
  Pointer<Utf16> lpDeviceID,
  Uint32 dwSize,
  Uint32 dwSecure,
  Pointer<Utf16> lpszDestAddress,
  Pointer<Utf16> lpszAppName,
  Pointer<Utf16> lpszCalledParty,
  Pointer<Utf16> lpszComment,
),
    int Function(
  int hwnd,
  int wRequestID,
  Pointer<Utf16> lpszDeviceClass,
  Pointer<Utf16> lpDeviceID,
  int dwSize,
  int dwSecure,
  Pointer<Utf16> lpszDestAddress,
  Pointer<Utf16> lpszAppName,
  Pointer<Utf16> lpszCalledParty,
  Pointer<Utf16> lpszComment,
)>('tapiRequestMediaCallW');

// -----------------------------------------------------------------------
// mapi32.dll
// -----------------------------------------------------------------------
final _mapi32 = DynamicLibrary.open('mapi32.dll');

int GetTnefStreamCodepage(
  Pointer<COMObject> lpStream,
  Pointer<Uint32> lpulCodepage,
  Pointer<Uint32> lpulSubCodepage,
) =>
    _GetTnefStreamCodepage(
      lpStream,
      lpulCodepage,
      lpulSubCodepage,
    );

late final _GetTnefStreamCodepage = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lpStream,
  Pointer<Uint32> lpulCodepage,
  Pointer<Uint32> lpulSubCodepage,
),
    int Function(
  Pointer<COMObject> lpStream,
  Pointer<Uint32> lpulCodepage,
  Pointer<Uint32> lpulSubCodepage,
)>('GetTnefStreamCodepage');

int OpenTnefStream(
  Pointer lpvSupport,
  Pointer<COMObject> lpStream,
  Pointer<Int8> lpszStreamName,
  int ulFlags,
  Pointer<COMObject> lpMessage,
  int wKeyVal,
  Pointer<Pointer<COMObject>> lppTNEF,
) =>
    _OpenTnefStream(
      lpvSupport,
      lpStream,
      lpszStreamName,
      ulFlags,
      lpMessage,
      wKeyVal,
      lppTNEF,
    );

late final _OpenTnefStream = _mapi32.lookupFunction<
    Int32 Function(
  Pointer lpvSupport,
  Pointer<COMObject> lpStream,
  Pointer<Int8> lpszStreamName,
  Uint32 ulFlags,
  Pointer<COMObject> lpMessage,
  Uint16 wKeyVal,
  Pointer<Pointer<COMObject>> lppTNEF,
),
    int Function(
  Pointer lpvSupport,
  Pointer<COMObject> lpStream,
  Pointer<Int8> lpszStreamName,
  int ulFlags,
  Pointer<COMObject> lpMessage,
  int wKeyVal,
  Pointer<Pointer<COMObject>> lppTNEF,
)>('OpenTnefStream');

int OpenTnefStreamEx(
  Pointer lpvSupport,
  Pointer<COMObject> lpStream,
  Pointer<Int8> lpszStreamName,
  int ulFlags,
  Pointer<COMObject> lpMessage,
  int wKeyVal,
  Pointer<COMObject> lpAdressBook,
  Pointer<Pointer<COMObject>> lppTNEF,
) =>
    _OpenTnefStreamEx(
      lpvSupport,
      lpStream,
      lpszStreamName,
      ulFlags,
      lpMessage,
      wKeyVal,
      lpAdressBook,
      lppTNEF,
    );

late final _OpenTnefStreamEx = _mapi32.lookupFunction<
    Int32 Function(
  Pointer lpvSupport,
  Pointer<COMObject> lpStream,
  Pointer<Int8> lpszStreamName,
  Uint32 ulFlags,
  Pointer<COMObject> lpMessage,
  Uint16 wKeyVal,
  Pointer<COMObject> lpAdressBook,
  Pointer<Pointer<COMObject>> lppTNEF,
),
    int Function(
  Pointer lpvSupport,
  Pointer<COMObject> lpStream,
  Pointer<Int8> lpszStreamName,
  int ulFlags,
  Pointer<COMObject> lpMessage,
  int wKeyVal,
  Pointer<COMObject> lpAdressBook,
  Pointer<Pointer<COMObject>> lppTNEF,
)>('OpenTnefStreamEx');
