// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _winscard = DynamicLibrary.open('winscard.dll');

/// Returns an event handle when an event signals that the smart card resource
/// manager is started.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardaccessstartedevent>.
///
/// {@category winscard}
Win32Result<HANDLE> SCardAccessStartedEvent() {
  resolveGetLastError();
  final result_ = _SCardAccessStartedEvent();
  return .new(value: .new(result_), error: GetLastError());
}

final _SCardAccessStartedEvent = _winscard
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'SCardAccessStartedEvent',
    );

/// Adds a reader to a reader group.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardaddreadertogroupw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardAddReaderToGroup(
  int hContext,
  PCWSTR szReaderName,
  PCWSTR szGroupName,
) => _SCardAddReaderToGroup(hContext, szReaderName, szGroupName);

final _SCardAddReaderToGroup = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>)
    >('SCardAddReaderToGroupW');

/// Writes event messages to the Windows application log
/// Microsoft-Windows-SmartCard-Audit/Authentication.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardaudit>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardAudit(int hContext, int dwEvent) => _SCardAudit(hContext, dwEvent);

final _SCardAudit = _winscard
    .lookupFunction<Int32 Function(IntPtr, Uint32), int Function(int, int)>(
      'SCardAudit',
    );

/// Starts a transaction.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardbegintransaction>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardBeginTransaction(int hCard) => _SCardBeginTransaction(hCard);

final _SCardBeginTransaction = _winscard
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'SCardBeginTransaction',
    );

/// Terminates all outstanding actions within a specific resource manager
/// context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardcancel>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardCancel(int hContext) => _SCardCancel(hContext);

final _SCardCancel = _winscard
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>('SCardCancel');

/// Establishes a connection (using a specific resource manager context) between
/// the calling application and a smart card contained by a specific reader.
///
/// If no card exists in the specified reader, an error is returned.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardconnectw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardConnect(
  int hContext,
  PCWSTR szReader,
  int dwShareMode,
  int dwPreferredProtocols,
  Pointer<IntPtr> phCard,
  Pointer<Uint32> pdwActiveProtocol,
) => _SCardConnect(
  hContext,
  szReader,
  dwShareMode,
  dwPreferredProtocols,
  phCard,
  pdwActiveProtocol,
);

final _SCardConnect = _winscard
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<IntPtr>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<Utf16>,
        int,
        int,
        Pointer<IntPtr>,
        Pointer<Uint32>,
      )
    >('SCardConnectW');

/// Gives you direct control of the reader.
///
/// You can call it any time after a successful call to SCardConnect and before
/// a successful call to SCardDisconnect.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardcontrol>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardControl(
  int hCard,
  int dwControlCode,
  Pointer lpInBuffer,
  int cbInBufferSize,
  Pointer lpOutBuffer,
  int cbOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
) => _SCardControl(
  hCard,
  dwControlCode,
  lpInBuffer,
  cbInBufferSize,
  lpOutBuffer,
  cbOutBufferSize,
  lpBytesReturned,
);

final _SCardControl = _winscard
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Uint32,
        Pointer,
        Uint32,
        Pointer,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(int, int, Pointer, int, Pointer, int, Pointer<Uint32>)
    >('SCardControl');

/// Terminates a connection previously opened between the calling application
/// and a smart card in the target reader.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scarddisconnect>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardDisconnect(int hCard, int dwDisposition) =>
    _SCardDisconnect(hCard, dwDisposition);

final _SCardDisconnect = _winscard
    .lookupFunction<Int32 Function(IntPtr, Uint32), int Function(int, int)>(
      'SCardDisconnect',
    );

/// Completes a previously declared transaction, allowing other applications to
/// resume interactions with the card.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardendtransaction>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardEndTransaction(int hCard, int dwDisposition) =>
    _SCardEndTransaction(hCard, dwDisposition);

final _SCardEndTransaction = _winscard
    .lookupFunction<Int32 Function(IntPtr, Uint32), int Function(int, int)>(
      'SCardEndTransaction',
    );

/// Establishes the resource manager context (the scope) within which database
/// operations are performed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardestablishcontext>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardEstablishContext(SCARD_SCOPE dwScope, Pointer<IntPtr> phContext) =>
    _SCardEstablishContext(dwScope, nullptr, nullptr, phContext);

final _SCardEstablishContext = _winscard
    .lookupFunction<
      Int32 Function(Uint32, Pointer, Pointer, Pointer<IntPtr>),
      int Function(int, Pointer, Pointer, Pointer<IntPtr>)
    >('SCardEstablishContext');

/// Removes an introduced smart card from the smart card subsystem.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardforgetcardtypew>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardForgetCardType(int hContext, PCWSTR szCardName) =>
    _SCardForgetCardType(hContext, szCardName);

final _SCardForgetCardType = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('SCardForgetCardTypeW');

/// Removes a previously introduced reader from control by the smart card
/// subsystem.
///
/// It is removed from the smart card database, including from any reader group
/// that it may have been added to.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardforgetreaderw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardForgetReader(int hContext, PCWSTR szReaderName) =>
    _SCardForgetReader(hContext, szReaderName);

final _SCardForgetReader = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('SCardForgetReaderW');

/// Removes a previously introduced smart card reader group from the smart card
/// subsystem.
///
/// Although this function automatically clears all readers from the group, it
/// does not affect the existence of the individual readers in the database.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardforgetreadergroupw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardForgetReaderGroup(int hContext, PCWSTR szGroupName) =>
    _SCardForgetReaderGroup(hContext, szGroupName);

final _SCardForgetReaderGroup = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('SCardForgetReaderGroupW');

/// Releases memory that has been returned from the resource manager using the
/// SCARD_AUTOALLOCATE length designator.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardfreememory>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardFreeMemory(int hContext, Pointer pvMem) =>
    _SCardFreeMemory(hContext, pvMem);

final _SCardFreeMemory = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer),
      int Function(int, Pointer)
    >('SCardFreeMemory');

/// Retrieves the current reader attributes for the given handle.
///
/// It does not affect the state of the reader, driver, or card.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetattrib>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardGetAttrib(
  int hCard,
  int dwAttrId,
  Pointer<Uint8>? pbAttr,
  Pointer<Uint32> pcbAttrLen,
) => _SCardGetAttrib(hCard, dwAttrId, pbAttr ?? nullptr, pcbAttrLen);

final _SCardGetAttrib = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Uint32, Pointer<Uint8>, Pointer<Uint32>),
      int Function(int, int, Pointer<Uint8>, Pointer<Uint32>)
    >('SCardGetAttrib');

/// Returns the name of the module (dynamic link library) that contains the
/// provider for a given card name and provider type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetcardtypeprovidernamew>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardGetCardTypeProviderName(
  int hContext,
  PCWSTR szCardName,
  int dwProviderId,
  PWSTR szProvider,
  Pointer<Uint32> pcchProvider,
) => _SCardGetCardTypeProviderName(
  hContext,
  szCardName,
  dwProviderId,
  szProvider,
  pcchProvider,
);

final _SCardGetCardTypeProviderName = _winscard
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<Utf16>,
        Uint32,
        Pointer<Utf16>,
        Pointer<Uint32>,
      ),
      int Function(int, Pointer<Utf16>, int, Pointer<Utf16>, Pointer<Uint32>)
    >('SCardGetCardTypeProviderNameW');

/// Gets the device type identifier of the card reader for the given reader
/// name.
///
/// This function does not affect the state of the reader.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetdevicetypeidw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardGetDeviceTypeId(
  int hContext,
  PCWSTR szReaderName,
  Pointer<Uint32> pdwDeviceTypeId,
) => _SCardGetDeviceTypeId(hContext, szReaderName, pdwDeviceTypeId);

final _SCardGetDeviceTypeId = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint32>)
    >('SCardGetDeviceTypeIdW');

/// Returns the identifier (GUID) of the primary service provider for a given
/// card.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetprovideridw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardGetProviderId(
  int hContext,
  PCWSTR szCard,
  Pointer<GUID> pguidProviderId,
) => _SCardGetProviderId(hContext, szCard, pguidProviderId);

final _SCardGetProviderId = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<GUID>),
      int Function(int, Pointer<Utf16>, Pointer<GUID>)
    >('SCardGetProviderIdW');

/// Gets the device instance identifier of the card reader for the given reader
/// name.
///
/// This function does not affect the state of the reader.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetreaderdeviceinstanceidw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardGetReaderDeviceInstanceId(
  int hContext,
  PCWSTR szReaderName,
  PWSTR? szDeviceInstanceId,
  Pointer<Uint32> pcchDeviceInstanceId,
) => _SCardGetReaderDeviceInstanceId(
  hContext,
  szReaderName,
  szDeviceInstanceId ?? nullptr,
  pcchDeviceInstanceId,
);

final _SCardGetReaderDeviceInstanceId = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('SCardGetReaderDeviceInstanceIdW');

/// Gets an icon of the smart card reader for a given reader's name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetreadericonw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardGetReaderIcon(
  int hContext,
  PCWSTR szReaderName,
  Pointer<Uint8> pbIcon,
  Pointer<Uint32> pcbIcon,
) => _SCardGetReaderIcon(hContext, szReaderName, pbIcon, pcbIcon);

final _SCardGetReaderIcon = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Uint8>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint8>, Pointer<Uint32>)
    >('SCardGetReaderIconW');

/// Blocks execution until the current availability of the cards in a specific
/// set of readers changes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgetstatuschangew>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardGetStatusChange(
  int hContext,
  int dwTimeout,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
) => _SCardGetStatusChange(hContext, dwTimeout, rgReaderStates, cReaders);

final _SCardGetStatusChange = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Uint32, Pointer<SCARD_READERSTATE>, Uint32),
      int Function(int, int, Pointer<SCARD_READERSTATE>, int)
    >('SCardGetStatusChangeW');

/// Retrieves the number of transmit operations that have completed since the
/// specified card reader was inserted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardgettransmitcount>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardGetTransmitCount(int hCard, Pointer<Uint32> pcTransmitCount) =>
    _SCardGetTransmitCount(hCard, pcTransmitCount);

final _SCardGetTransmitCount = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Uint32>),
      int Function(int, Pointer<Uint32>)
    >('SCardGetTransmitCount');

/// Introduces a smart card to the smart card subsystem (for the active user) by
/// adding it to the smart card database.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardintroducecardtypew>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardIntroduceCardType(
  int hContext,
  PCWSTR szCardName,
  Pointer<GUID>? pguidPrimaryProvider,
  Pointer<GUID>? rgguidInterfaces,
  int dwInterfaceCount,
  Pointer<Uint8> pbAtr,
  Pointer<Uint8> pbAtrMask,
  int cbAtrLen,
) => _SCardIntroduceCardType(
  hContext,
  szCardName,
  pguidPrimaryProvider ?? nullptr,
  rgguidInterfaces ?? nullptr,
  dwInterfaceCount,
  pbAtr,
  pbAtrMask,
  cbAtrLen,
);

final _SCardIntroduceCardType = _winscard
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<Utf16>,
        Pointer<GUID>,
        Pointer<GUID>,
        Uint32,
        Pointer<Uint8>,
        Pointer<Uint8>,
        Uint32,
      ),
      int Function(
        int,
        Pointer<Utf16>,
        Pointer<GUID>,
        Pointer<GUID>,
        int,
        Pointer<Uint8>,
        Pointer<Uint8>,
        int,
      )
    >('SCardIntroduceCardTypeW');

/// Introduces a new name for an existing smart card reader.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardintroducereaderw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardIntroduceReader(
  int hContext,
  PCWSTR szReaderName,
  PCWSTR szDeviceName,
) => _SCardIntroduceReader(hContext, szReaderName, szDeviceName);

final _SCardIntroduceReader = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>)
    >('SCardIntroduceReaderW');

/// Introduces a reader group to the smart card subsystem.
///
/// However, the reader group is not created until the group is specified when
/// adding a reader to the smart card database.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardintroducereadergroupw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardIntroduceReaderGroup(int hContext, PCWSTR szGroupName) =>
    _SCardIntroduceReaderGroup(hContext, szGroupName);

final _SCardIntroduceReaderGroup = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('SCardIntroduceReaderGroupW');

/// Determines whether a smart card context handle is valid.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardisvalidcontext>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardIsValidContext(int hContext) => _SCardIsValidContext(hContext);

final _SCardIsValidContext = _winscard
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'SCardIsValidContext',
    );

/// Searches the smart card database and provides a list of named cards
/// previously introduced to the system by the user.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlistcardsw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardListCards(
  int hContext,
  Pointer<Uint8>? pbAtr,
  Pointer<GUID>? rgquidInterfaces,
  int cguidInterfaceCount,
  PWSTR? mszCards,
  Pointer<Uint32> pcchCards,
) => _SCardListCards(
  hContext,
  pbAtr ?? nullptr,
  rgquidInterfaces ?? nullptr,
  cguidInterfaceCount,
  mszCards ?? nullptr,
  pcchCards,
);

final _SCardListCards = _winscard
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<Uint8>,
        Pointer<GUID>,
        Uint32,
        Pointer<Utf16>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<Uint8>,
        Pointer<GUID>,
        int,
        Pointer<Utf16>,
        Pointer<Uint32>,
      )
    >('SCardListCardsW');

/// Provides a list of interfaces supplied by a given card.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlistinterfacesw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardListInterfaces(
  int hContext,
  PCWSTR szCard,
  Pointer<GUID> pguidInterfaces,
  Pointer<Uint32> pcguidInterfaces,
) => _SCardListInterfaces(hContext, szCard, pguidInterfaces, pcguidInterfaces);

final _SCardListInterfaces = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<GUID>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<GUID>, Pointer<Uint32>)
    >('SCardListInterfacesW');

/// Provides the list of reader groups that have previously been introduced to
/// the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlistreadergroupsw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardListReaderGroups(
  int hContext,
  PWSTR? mszGroups,
  Pointer<Uint32> pcchGroups,
) => _SCardListReaderGroups(hContext, mszGroups ?? nullptr, pcchGroups);

final _SCardListReaderGroups = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint32>)
    >('SCardListReaderGroupsW');

/// Provides the list of readers within a set of named reader groups,
/// eliminating duplicates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlistreadersw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardListReaders(
  int hContext,
  PCWSTR? mszGroups,
  PWSTR? mszReaders,
  Pointer<Uint32> pcchReaders,
) => _SCardListReaders(
  hContext,
  mszGroups ?? nullptr,
  mszReaders ?? nullptr,
  pcchReaders,
);

final _SCardListReaders = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('SCardListReadersW');

/// Gets the list of readers that have provided a device instance identifier.
///
/// This function does not affect the state of the reader.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlistreaderswithdeviceinstanceidw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardListReadersWithDeviceInstanceId(
  int hContext,
  PCWSTR szDeviceInstanceId,
  PWSTR? mszReaders,
  Pointer<Uint32> pcchReaders,
) => _SCardListReadersWithDeviceInstanceId(
  hContext,
  szDeviceInstanceId,
  mszReaders ?? nullptr,
  pcchReaders,
);

final _SCardListReadersWithDeviceInstanceId = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('SCardListReadersWithDeviceInstanceIdW');

/// Searches the readers listed in the rgReaderStates parameter for a card with
/// an ATR string that matches one of the card names specified in mszCards,
/// returning immediately with the result.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlocatecardsw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardLocateCards(
  int hContext,
  PCWSTR mszCards,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
) => _SCardLocateCards(hContext, mszCards, rgReaderStates, cReaders);

final _SCardLocateCards = _winscard
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<Utf16>,
        Pointer<SCARD_READERSTATE>,
        Uint32,
      ),
      int Function(int, Pointer<Utf16>, Pointer<SCARD_READERSTATE>, int)
    >('SCardLocateCardsW');

/// Searches the readers listed in the rgReaderStates parameter for a card with
/// a name that matches one of the card names contained in one of the
/// SCARD_ATRMASK structures specified by the rgAtrMasks parameter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardlocatecardsbyatrw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardLocateCardsByATR(
  int hContext,
  Pointer<SCARD_ATRMASK> rgAtrMasks,
  int cAtrs,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
) => _SCardLocateCardsByATR(
  hContext,
  rgAtrMasks,
  cAtrs,
  rgReaderStates,
  cReaders,
);

final _SCardLocateCardsByATR = _winscard
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<SCARD_ATRMASK>,
        Uint32,
        Pointer<SCARD_READERSTATE>,
        Uint32,
      ),
      int Function(
        int,
        Pointer<SCARD_ATRMASK>,
        int,
        Pointer<SCARD_READERSTATE>,
        int,
      )
    >('SCardLocateCardsByATRW');

/// Retrieves the value portion of a name-value pair from the global cache
/// maintained by the Smart Card Resource Manager.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardreadcachew>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardReadCache(
  int hContext,
  Pointer<GUID> cardIdentifier,
  int freshnessCounter,
  PCWSTR lookupName,
  Pointer<Uint8> data,
  Pointer<Uint32> dataLen,
) => _SCardReadCache(
  hContext,
  cardIdentifier,
  freshnessCounter,
  lookupName,
  data,
  dataLen,
);

final _SCardReadCache = _winscard
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<GUID>,
        Uint32,
        Pointer<Utf16>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<GUID>,
        int,
        Pointer<Utf16>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      )
    >('SCardReadCacheW');

/// Reestablishes an existing connection between the calling application and a
/// smart card.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardreconnect>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardReconnect(
  int hCard,
  int dwShareMode,
  int dwPreferredProtocols,
  int dwInitialization,
  Pointer<Uint32>? pdwActiveProtocol,
) => _SCardReconnect(
  hCard,
  dwShareMode,
  dwPreferredProtocols,
  dwInitialization,
  pdwActiveProtocol ?? nullptr,
);

final _SCardReconnect = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Uint32, Uint32, Uint32, Pointer<Uint32>),
      int Function(int, int, int, int, Pointer<Uint32>)
    >('SCardReconnect');

/// Closes an established resource manager context, freeing any resources
/// allocated under that context, including SCARDHANDLE objects and memory
/// allocated using the SCARD_AUTOALLOCATE length designator.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardreleasecontext>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardReleaseContext(int hContext) => _SCardReleaseContext(hContext);

final _SCardReleaseContext = _winscard
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'SCardReleaseContext',
    );

/// Decrements the reference count for a handle acquired by a previous call to
/// the SCardAccessStartedEvent function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardreleasestartedevent>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
void SCardReleaseStartedEvent() => _SCardReleaseStartedEvent();

final _SCardReleaseStartedEvent = _winscard
    .lookupFunction<Void Function(), void Function()>(
      'SCardReleaseStartedEvent',
    );

/// Removes a reader from an existing reader group.
///
/// This function has no effect on the reader.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardremovereaderfromgroupw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardRemoveReaderFromGroup(
  int hContext,
  PCWSTR szReaderName,
  PCWSTR szGroupName,
) => _SCardRemoveReaderFromGroup(hContext, szReaderName, szGroupName);

final _SCardRemoveReaderFromGroup = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>)
    >('SCardRemoveReaderFromGroupW');

/// Sets the given reader attribute for the given handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardsetattrib>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardSetAttrib(
  int hCard,
  int dwAttrId,
  Pointer<Uint8> pbAttr,
  int cbAttrLen,
) => _SCardSetAttrib(hCard, dwAttrId, pbAttr, cbAttrLen);

final _SCardSetAttrib = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Uint32, Pointer<Uint8>, Uint32),
      int Function(int, int, Pointer<Uint8>, int)
    >('SCardSetAttrib');

/// Specifies the name of the module (dynamic link library) containing the
/// provider for a given card name and provider type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardsetcardtypeprovidernamew>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardSetCardTypeProviderName(
  int hContext,
  PCWSTR szCardName,
  int dwProviderId,
  PCWSTR szProvider,
) => _SCardSetCardTypeProviderName(
  hContext,
  szCardName,
  dwProviderId,
  szProvider,
);

final _SCardSetCardTypeProviderName = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>, int, Pointer<Utf16>)
    >('SCardSetCardTypeProviderNameW');

/// Provides the current status of a smart card in a reader.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardstatusw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardStatus(
  int hCard,
  PWSTR? mszReaderNames,
  Pointer<Uint32>? pcchReaderLen,
  Pointer<Uint32>? pdwState,
  Pointer<Uint32>? pdwProtocol,
  Pointer<Uint8>? pbAtr,
  Pointer<Uint32>? pcbAtrLen,
) => _SCardStatus(
  hCard,
  mszReaderNames ?? nullptr,
  pcchReaderLen ?? nullptr,
  pdwState ?? nullptr,
  pdwProtocol ?? nullptr,
  pbAtr ?? nullptr,
  pcbAtrLen ?? nullptr,
);

final _SCardStatus = _winscard
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      )
    >('SCardStatusW');

/// Sends a service request to the smart card and expects to receive data back
/// from the card.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardtransmit>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardTransmit(
  int hCard,
  Pointer<SCARD_IO_REQUEST> pioSendPci,
  Pointer<Uint8> pbSendBuffer,
  int cbSendLength,
  Pointer<SCARD_IO_REQUEST>? pioRecvPci,
  Pointer<Uint8> pbRecvBuffer,
  Pointer<Uint32> pcbRecvLength,
) => _SCardTransmit(
  hCard,
  pioSendPci,
  pbSendBuffer,
  cbSendLength,
  pioRecvPci ?? nullptr,
  pbRecvBuffer,
  pcbRecvLength,
);

final _SCardTransmit = _winscard
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<SCARD_IO_REQUEST>,
        Pointer<Uint8>,
        Uint32,
        Pointer<SCARD_IO_REQUEST>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<SCARD_IO_REQUEST>,
        Pointer<Uint8>,
        int,
        Pointer<SCARD_IO_REQUEST>,
        Pointer<Uint8>,
        Pointer<Uint32>,
      )
    >('SCardTransmit');

/// Writes a name-value pair from a smart card to the global cache maintained by
/// the Smart Card Resource Manager.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scardwritecachew>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardWriteCache(
  int hContext,
  Pointer<GUID> cardIdentifier,
  int freshnessCounter,
  PCWSTR lookupName,
  Pointer<Uint8> data,
  int dataLen,
) => _SCardWriteCache(
  hContext,
  cardIdentifier,
  freshnessCounter,
  lookupName,
  data,
  dataLen,
);

final _SCardWriteCache = _winscard
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer<GUID>,
        Uint32,
        Pointer<Utf16>,
        Pointer<Uint8>,
        Uint32,
      ),
      int Function(int, Pointer<GUID>, int, Pointer<Utf16>, Pointer<Uint8>, int)
    >('SCardWriteCacheW');
