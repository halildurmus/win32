// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _winscard = DynamicLibrary.open('winscard.dll');

/// The SCardAccessStartedEvent function returns an event handle when an
/// event signals that the smart card resource manager is started. The
/// event-object handle can be specified in a call to one of the wait
/// functions.
///
/// ```c
/// HANDLE SCardAccessStartedEvent();
/// ```
/// {@category winscard}
int SCardAccessStartedEvent() {
  final _SCardAccessStartedEvent =
      _winscard.lookupFunction<IntPtr Function(), int Function()>(
          'SCardAccessStartedEvent');
  return _SCardAccessStartedEvent();
}

/// The SCardAddReaderToGroup function adds a reader to a reader group.
///
/// ```c
/// LONG SCardAddReaderToGroupW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szReaderName,
///   LPCWSTR      szGroupName
/// );
/// ```
/// {@category winscard}
int SCardAddReaderToGroup(
    int hContext, Pointer<Utf16> szReaderName, Pointer<Utf16> szGroupName) {
  final _SCardAddReaderToGroup = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName,
          Pointer<Utf16> szGroupName),
      int Function(int hContext, Pointer<Utf16> szReaderName,
          Pointer<Utf16> szGroupName)>('SCardAddReaderToGroupW');
  return _SCardAddReaderToGroup(hContext, szReaderName, szGroupName);
}

/// The SCardAudit function writes event messages to the Windows
/// application log Microsoft-Windows-SmartCard-Audit/Authentication.
///
/// ```c
/// LONG SCardAudit(
///   SCARDCONTEXT hContext,
///   DWORD        dwEvent
/// );
/// ```
/// {@category winscard}
int SCardAudit(int hContext, int dwEvent) {
  final _SCardAudit = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Uint32 dwEvent),
      int Function(int hContext, int dwEvent)>('SCardAudit');
  return _SCardAudit(hContext, dwEvent);
}

/// The SCardBeginTransaction function starts a transaction. The function
/// waits for the completion of all other transactions before it begins.
/// After the transaction starts, all other applications are blocked from
/// accessing the smart card while the transaction is in progress.
///
/// ```c
/// LONG SCardBeginTransaction(
///   SCARDHANDLE hCard
/// );
/// ```
/// {@category winscard}
int SCardBeginTransaction(int hCard) {
  final _SCardBeginTransaction = _winscard.lookupFunction<
      Int32 Function(IntPtr hCard),
      int Function(int hCard)>('SCardBeginTransaction');
  return _SCardBeginTransaction(hCard);
}

/// The SCardCancel function terminates all outstanding actions within a
/// specific resource manager context. The only requests that you can
/// cancel are those that require waiting for external action by the smart
/// card or user. Any such outstanding action requests will terminate with
/// a status indication that the action was canceled. This is especially
/// useful to force outstanding SCardGetStatusChange calls to terminate.
///
/// ```c
/// LONG SCardCancel(
///   SCARDCONTEXT hContext
/// );
/// ```
/// {@category winscard}
int SCardCancel(int hContext) {
  final _SCardCancel = _winscard.lookupFunction<Int32 Function(IntPtr hContext),
      int Function(int hContext)>('SCardCancel');
  return _SCardCancel(hContext);
}

/// The SCardConnect function establishes a connection (using a specific
/// resource manager context) between the calling application and a smart
/// card contained by a specific reader. If no card exists in the specified
/// reader, an error is returned.
///
/// ```c
/// LONG SCardConnectW(
///   SCARDCONTEXT  hContext,
///   LPCWSTR       szReader,
///   DWORD         dwShareMode,
///   DWORD         dwPreferredProtocols,
///   LPSCARDHANDLE phCard,
///   LPDWORD       pdwActiveProtocol
/// );
/// ```
/// {@category winscard}
int SCardConnect(
    int hContext,
    Pointer<Utf16> szReader,
    int dwShareMode,
    int dwPreferredProtocols,
    Pointer<IntPtr> phCard,
    Pointer<Uint32> pdwActiveProtocol) {
  final _SCardConnect = _winscard.lookupFunction<
      Int32 Function(
          IntPtr hContext,
          Pointer<Utf16> szReader,
          Uint32 dwShareMode,
          Uint32 dwPreferredProtocols,
          Pointer<IntPtr> phCard,
          Pointer<Uint32> pdwActiveProtocol),
      int Function(
          int hContext,
          Pointer<Utf16> szReader,
          int dwShareMode,
          int dwPreferredProtocols,
          Pointer<IntPtr> phCard,
          Pointer<Uint32> pdwActiveProtocol)>('SCardConnectW');
  return _SCardConnect(hContext, szReader, dwShareMode, dwPreferredProtocols,
      phCard, pdwActiveProtocol);
}

/// The SCardControl function gives you direct control of the reader. You
/// can call it any time after a successful call to SCardConnect and before
/// a successful call to SCardDisconnect. The effect on the state of the
/// reader depends on the control code.
///
/// ```c
/// LONG SCardControl(
///  SCARDHANDLE hCard,
///  DWORD       dwControlCode,
///  LPCVOID     lpInBuffer,
///  DWORD       cbInBufferSize,
///  LPVOID      lpOutBuffer,
///  DWORD       cbOutBufferSize,
///  LPDWORD     lpBytesReturned
/// );
/// ```
/// {@category winscard}
int SCardControl(
    int hCard,
    int dwControlCode,
    Pointer lpInBuffer,
    int cbInBufferSize,
    Pointer lpOutBuffer,
    int cbOutBufferSize,
    Pointer<Uint32> lpBytesReturned) {
  final _SCardControl = _winscard.lookupFunction<
      Int32 Function(
          IntPtr hCard,
          Uint32 dwControlCode,
          Pointer lpInBuffer,
          Uint32 cbInBufferSize,
          Pointer lpOutBuffer,
          Uint32 cbOutBufferSize,
          Pointer<Uint32> lpBytesReturned),
      int Function(
          int hCard,
          int dwControlCode,
          Pointer lpInBuffer,
          int cbInBufferSize,
          Pointer lpOutBuffer,
          int cbOutBufferSize,
          Pointer<Uint32> lpBytesReturned)>('SCardControl');
  return _SCardControl(hCard, dwControlCode, lpInBuffer, cbInBufferSize,
      lpOutBuffer, cbOutBufferSize, lpBytesReturned);
}

/// The SCardDisconnect function terminates a connection previously opened
/// between the calling application and a smart card in the target reader.
///
/// ```c
/// LONG SCardDisconnect(
///   SCARDHANDLE hCard,
///   DWORD       dwDisposition
/// );
/// ```
/// {@category winscard}
int SCardDisconnect(int hCard, int dwDisposition) {
  final _SCardDisconnect = _winscard.lookupFunction<
      Int32 Function(IntPtr hCard, Uint32 dwDisposition),
      int Function(int hCard, int dwDisposition)>('SCardDisconnect');
  return _SCardDisconnect(hCard, dwDisposition);
}

/// The SCardEndTransaction function completes a previously declared
/// transaction, allowing other applications to resume interactions with
/// the card.
///
/// ```c
/// LONG SCardEndTransaction(
///   SCARDHANDLE hCard,
///   DWORD       dwDisposition
/// );
/// ```
/// {@category winscard}
int SCardEndTransaction(int hCard, int dwDisposition) {
  final _SCardEndTransaction = _winscard.lookupFunction<
      Int32 Function(IntPtr hCard, Uint32 dwDisposition),
      int Function(int hCard, int dwDisposition)>('SCardEndTransaction');
  return _SCardEndTransaction(hCard, dwDisposition);
}

/// The SCardEstablishContext function establishes the resource manager
/// context (the scope) within which database operations are performed.
///
/// ```c
/// LONG SCardEstablishContext(
///   DWORD          dwScope,
///   LPCVOID        pvReserved1,
///   LPCVOID        pvReserved2,
///   LPSCARDCONTEXT phContext
/// );
/// ```
/// {@category winscard}
int SCardEstablishContext(int dwScope, Pointer pvReserved1, Pointer pvReserved2,
    Pointer<IntPtr> phContext) {
  final _SCardEstablishContext = _winscard.lookupFunction<
      Int32 Function(Uint32 dwScope, Pointer pvReserved1, Pointer pvReserved2,
          Pointer<IntPtr> phContext),
      int Function(int dwScope, Pointer pvReserved1, Pointer pvReserved2,
          Pointer<IntPtr> phContext)>('SCardEstablishContext');
  return _SCardEstablishContext(dwScope, pvReserved1, pvReserved2, phContext);
}

/// The SCardForgetCardType function removes an introduced smart card from
/// the smart card subsystem.
///
/// ```c
/// LONG SCardForgetCardTypeW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szCardName
/// );
/// ```
/// {@category winscard}
int SCardForgetCardType(int hContext, Pointer<Utf16> szCardName) {
  final _SCardForgetCardType = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szCardName),
      int Function(
          int hContext, Pointer<Utf16> szCardName)>('SCardForgetCardTypeW');
  return _SCardForgetCardType(hContext, szCardName);
}

/// The SCardForgetReader function removes a previously introduced reader
/// from control by the smart card subsystem. It is removed from the smart
/// card database, including from any reader group that it may have been
/// added to.
///
/// ```c
/// LONG SCardForgetReaderW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szReaderName
/// );
/// ```
/// {@category winscard}
int SCardForgetReader(int hContext, Pointer<Utf16> szReaderName) {
  final _SCardForgetReader = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName),
      int Function(
          int hContext, Pointer<Utf16> szReaderName)>('SCardForgetReaderW');
  return _SCardForgetReader(hContext, szReaderName);
}

/// The SCardForgetReaderGroup function removes a previously introduced
/// smart card reader group from the smart card subsystem. Although this
/// function automatically clears all readers from the group, it does not
/// affect the existence of the individual readers in the database.
///
/// ```c
/// LONG SCardForgetReaderGroupW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szGroupName
/// );
/// ```
/// {@category winscard}
int SCardForgetReaderGroup(int hContext, Pointer<Utf16> szGroupName) {
  final _SCardForgetReaderGroup = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szGroupName),
      int Function(
          int hContext, Pointer<Utf16> szGroupName)>('SCardForgetReaderGroupW');
  return _SCardForgetReaderGroup(hContext, szGroupName);
}

/// The SCardFreeMemory function releases memory that has been returned
/// from the resource manager using the SCARD_AUTOALLOCATE length
/// designator.
///
/// ```c
/// LONG SCardFreeMemory(
///   SCARDCONTEXT hContext,
///   LPCVOID      pvMem
/// );
/// ```
/// {@category winscard}
int SCardFreeMemory(int hContext, Pointer pvMem) {
  final _SCardFreeMemory = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer pvMem),
      int Function(int hContext, Pointer pvMem)>('SCardFreeMemory');
  return _SCardFreeMemory(hContext, pvMem);
}

/// The SCardGetAttrib function retrieves the current reader attributes for
/// the given handle. It does not affect the state of the reader, driver,
/// or card.
///
/// ```c
/// LONG SCardGetAttrib(
///   SCARDHANDLE hCard,
///   DWORD       dwAttrId,
///   LPBYTE      pbAttr,
///   LPDWORD     pcbAttrLen
/// );
/// ```
/// {@category winscard}
int SCardGetAttrib(int hCard, int dwAttrId, Pointer<Uint8> pbAttr,
    Pointer<Uint32> pcbAttrLen) {
  final _SCardGetAttrib = _winscard.lookupFunction<
      Int32 Function(IntPtr hCard, Uint32 dwAttrId, Pointer<Uint8> pbAttr,
          Pointer<Uint32> pcbAttrLen),
      int Function(int hCard, int dwAttrId, Pointer<Uint8> pbAttr,
          Pointer<Uint32> pcbAttrLen)>('SCardGetAttrib');
  return _SCardGetAttrib(hCard, dwAttrId, pbAttr, pcbAttrLen);
}

/// The SCardGetCardTypeProviderName function returns the name of the
/// module (dynamic link library) that contains the provider for a given
/// card name and provider type.
///
/// ```c
/// LONG SCardGetCardTypeProviderNameW(
///  SCARDCONTEXT hContext,
///  LPCWSTR      szCardName,
///  DWORD        dwProviderId,
///  WCHAR        *szProvider,
///  LPDWORD      pcchProvider
/// );
/// ```
/// {@category winscard}
int SCardGetCardTypeProviderName(int hContext, Pointer<Utf16> szCardName,
    int dwProviderId, Pointer<Utf16> szProvider, Pointer<Uint32> pcchProvider) {
  final _SCardGetCardTypeProviderName = _winscard.lookupFunction<
      Int32 Function(
          IntPtr hContext,
          Pointer<Utf16> szCardName,
          Uint32 dwProviderId,
          Pointer<Utf16> szProvider,
          Pointer<Uint32> pcchProvider),
      int Function(
          int hContext,
          Pointer<Utf16> szCardName,
          int dwProviderId,
          Pointer<Utf16> szProvider,
          Pointer<Uint32> pcchProvider)>('SCardGetCardTypeProviderNameW');
  return _SCardGetCardTypeProviderName(
      hContext, szCardName, dwProviderId, szProvider, pcchProvider);
}

/// The SCardGetDeviceTypeId function gets the device type identifier of
/// the card reader for the given reader name. This function does not
/// affect the state of the reader.
///
/// ```c
/// LONG SCardGetDeviceTypeIdW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szReaderName,
///   LPDWORD      pdwDeviceTypeId
/// );
/// ```
/// {@category winscard}
int SCardGetDeviceTypeId(int hContext, Pointer<Utf16> szReaderName,
    Pointer<Uint32> pdwDeviceTypeId) {
  final _SCardGetDeviceTypeId = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName,
          Pointer<Uint32> pdwDeviceTypeId),
      int Function(int hContext, Pointer<Utf16> szReaderName,
          Pointer<Uint32> pdwDeviceTypeId)>('SCardGetDeviceTypeIdW');
  return _SCardGetDeviceTypeId(hContext, szReaderName, pdwDeviceTypeId);
}

/// The SCardGetProviderId function returns the identifier (GUID) of the
/// primary service provider for a given card. The caller supplies the name
/// of a smart card (previously introduced to the system) and receives the
/// registered identifier of the primary service provider GUID, if one
/// exists.
///
/// ```c
/// LONG SCardGetProviderIdW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szCard,
///   LPGUID       pguidProviderId
/// );
/// ```
/// {@category winscard}
int SCardGetProviderId(
    int hContext, Pointer<Utf16> szCard, Pointer<GUID> pguidProviderId) {
  final _SCardGetProviderId = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szCard,
          Pointer<GUID> pguidProviderId),
      int Function(int hContext, Pointer<Utf16> szCard,
          Pointer<GUID> pguidProviderId)>('SCardGetProviderIdW');
  return _SCardGetProviderId(hContext, szCard, pguidProviderId);
}

/// The SCardGetReaderDeviceInstanceId function gets the device instance
/// identifier of the card reader for the given reader name. This function
/// does not affect the state of the reader.
///
/// ```c
/// LONG SCardGetReaderDeviceInstanceIdW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szReaderName,
///   LPWSTR       szDeviceInstanceId,
///   LPDWORD      pcchDeviceInstanceId
/// );
/// ```
/// {@category winscard}
int SCardGetReaderDeviceInstanceId(int hContext, Pointer<Utf16> szReaderName,
    Pointer<Utf16> szDeviceInstanceId, Pointer<Uint32> pcchDeviceInstanceId) {
  final _SCardGetReaderDeviceInstanceId = _winscard.lookupFunction<
          Int32 Function(
              IntPtr hContext,
              Pointer<Utf16> szReaderName,
              Pointer<Utf16> szDeviceInstanceId,
              Pointer<Uint32> pcchDeviceInstanceId),
          int Function(
              int hContext,
              Pointer<Utf16> szReaderName,
              Pointer<Utf16> szDeviceInstanceId,
              Pointer<Uint32> pcchDeviceInstanceId)>(
      'SCardGetReaderDeviceInstanceIdW');
  return _SCardGetReaderDeviceInstanceId(
      hContext, szReaderName, szDeviceInstanceId, pcchDeviceInstanceId);
}

/// The SCardGetReaderIcon function gets an icon of the smart card reader
/// for a given reader's name. This function does not affect the state of
/// the card reader.
///
/// ```c
/// LONG SCardGetReaderIconW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szReaderName,
///   LPBYTE       pbIcon,
///   LPDWORD      pcbIcon
/// );
/// ```
/// {@category winscard}
int SCardGetReaderIcon(int hContext, Pointer<Utf16> szReaderName,
    Pointer<Uint8> pbIcon, Pointer<Uint32> pcbIcon) {
  final _SCardGetReaderIcon = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName,
          Pointer<Uint8> pbIcon, Pointer<Uint32> pcbIcon),
      int Function(
          int hContext,
          Pointer<Utf16> szReaderName,
          Pointer<Uint8> pbIcon,
          Pointer<Uint32> pcbIcon)>('SCardGetReaderIconW');
  return _SCardGetReaderIcon(hContext, szReaderName, pbIcon, pcbIcon);
}

/// The SCardGetStatusChange function blocks execution until the current
/// availability of the cards in a specific set of readers changes. The
/// caller supplies a list of readers to be monitored by an
/// SCARD_READERSTATE array and the maximum amount of time (in
/// milliseconds) that it is willing to wait for an action to occur on one
/// of the listed readers. Note that SCardGetStatusChange uses the
/// user-supplied value in the dwCurrentState members of the
/// rgReaderStatesSCARD_READERSTATE array as the definition of the current
/// state of the readers. The function returns when there is a change in
/// availability, having filled in the dwEventState members of
/// rgReaderStates appropriately.
///
/// ```c
/// LONG SCardGetStatusChangeW(
///   SCARDCONTEXT         hContext,
///   DWORD                dwTimeout,
///   LPSCARD_READERSTATEW rgReaderStates,
///   DWORD                cReaders
/// );
/// ```
/// {@category winscard}
int SCardGetStatusChange(int hContext, int dwTimeout,
    Pointer<SCARD_READERSTATE> rgReaderStates, int cReaders) {
  final _SCardGetStatusChange = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Uint32 dwTimeout,
          Pointer<SCARD_READERSTATE> rgReaderStates, Uint32 cReaders),
      int Function(
          int hContext,
          int dwTimeout,
          Pointer<SCARD_READERSTATE> rgReaderStates,
          int cReaders)>('SCardGetStatusChangeW');
  return _SCardGetStatusChange(hContext, dwTimeout, rgReaderStates, cReaders);
}

/// The SCardGetTransmitCount function retrieves the number of transmit
/// operations that have completed since the specified card reader was
/// inserted.
///
/// ```c
/// LONG SCardGetTransmitCount(
///   SCARDHANDLE hCard,
///   LPDWORD     pcTransmitCount
/// );
/// ```
/// {@category winscard}
int SCardGetTransmitCount(int hCard, Pointer<Uint32> pcTransmitCount) {
  final _SCardGetTransmitCount = _winscard.lookupFunction<
      Int32 Function(IntPtr hCard, Pointer<Uint32> pcTransmitCount),
      int Function(
          int hCard, Pointer<Uint32> pcTransmitCount)>('SCardGetTransmitCount');
  return _SCardGetTransmitCount(hCard, pcTransmitCount);
}

/// The SCardIntroduceCardType function introduces a smart card to the
/// smart card subsystem (for the active user) by adding it to the smart
/// card database.
///
/// ```c
/// LONG SCardIntroduceCardTypeW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szCardName,
///   LPCGUID      pguidPrimaryProvider,
///   LPCGUID      rgguidInterfaces,
///   DWORD        dwInterfaceCount,
///   LPCBYTE      pbAtr,
///   LPCBYTE      pbAtrMask,
///   DWORD        cbAtrLen
/// );
/// ```
/// {@category winscard}
int SCardIntroduceCardType(
    int hContext,
    Pointer<Utf16> szCardName,
    Pointer<GUID> pguidPrimaryProvider,
    Pointer<GUID> rgguidInterfaces,
    int dwInterfaceCount,
    Pointer<Uint8> pbAtr,
    Pointer<Uint8> pbAtrMask,
    int cbAtrLen) {
  final _SCardIntroduceCardType = _winscard.lookupFunction<
      Int32 Function(
          IntPtr hContext,
          Pointer<Utf16> szCardName,
          Pointer<GUID> pguidPrimaryProvider,
          Pointer<GUID> rgguidInterfaces,
          Uint32 dwInterfaceCount,
          Pointer<Uint8> pbAtr,
          Pointer<Uint8> pbAtrMask,
          Uint32 cbAtrLen),
      int Function(
          int hContext,
          Pointer<Utf16> szCardName,
          Pointer<GUID> pguidPrimaryProvider,
          Pointer<GUID> rgguidInterfaces,
          int dwInterfaceCount,
          Pointer<Uint8> pbAtr,
          Pointer<Uint8> pbAtrMask,
          int cbAtrLen)>('SCardIntroduceCardTypeW');
  return _SCardIntroduceCardType(hContext, szCardName, pguidPrimaryProvider,
      rgguidInterfaces, dwInterfaceCount, pbAtr, pbAtrMask, cbAtrLen);
}

/// The SCardIntroduceReader function introduces a new name for an existing
/// smart card reader.
///
/// ```c
/// LONG SCardIntroduceReaderW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szReaderName,
///   LPCWSTR      szDeviceName
/// );
/// ```
/// {@category winscard}
int SCardIntroduceReader(
    int hContext, Pointer<Utf16> szReaderName, Pointer<Utf16> szDeviceName) {
  final _SCardIntroduceReader = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName,
          Pointer<Utf16> szDeviceName),
      int Function(int hContext, Pointer<Utf16> szReaderName,
          Pointer<Utf16> szDeviceName)>('SCardIntroduceReaderW');
  return _SCardIntroduceReader(hContext, szReaderName, szDeviceName);
}

/// The SCardIntroduceReaderGroup function introduces a reader group to the
/// smart card subsystem. However, the reader group is not created until
/// the group is specified when adding a reader to the smart card database.
///
/// ```c
/// LONG SCardIntroduceReaderGroupW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szGroupName
/// );
/// ```
/// {@category winscard}
int SCardIntroduceReaderGroup(int hContext, Pointer<Utf16> szGroupName) {
  final _SCardIntroduceReaderGroup = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szGroupName),
      int Function(int hContext,
          Pointer<Utf16> szGroupName)>('SCardIntroduceReaderGroupW');
  return _SCardIntroduceReaderGroup(hContext, szGroupName);
}

/// The SCardIsValidContext function determines whether a smart card
/// context handle is valid.
///
/// ```c
/// LONG SCardIsValidContext(
///   SCARDCONTEXT hContext
/// );
/// ```
/// {@category winscard}
int SCardIsValidContext(int hContext) {
  final _SCardIsValidContext = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext),
      int Function(int hContext)>('SCardIsValidContext');
  return _SCardIsValidContext(hContext);
}

/// The SCardListCards function searches the smart card database and
/// provides a list of named cards previously introduced to the system by
/// the user. The caller specifies an ATR string, a set of interface
/// identifiers (GUIDs), or both. If both an ATR string and an identifier
/// array are supplied, the cards returned will match the ATR string
/// supplied and support the interfaces specified.
///
/// ```c
/// LONG SCardListCardsW(
///   SCARDCONTEXT hContext,
///   LPCBYTE      pbAtr,
///   LPCGUID      rgquidInterfaces,
///   DWORD        cguidInterfaceCount,
///   WCHAR        *mszCards,
///   LPDWORD      pcchCards
/// );
/// ```
/// {@category winscard}
int SCardListCards(
    int hContext,
    Pointer<Uint8> pbAtr,
    Pointer<GUID> rgquidInterfaces,
    int cguidInterfaceCount,
    Pointer<Utf16> mszCards,
    Pointer<Uint32> pcchCards) {
  final _SCardListCards = _winscard.lookupFunction<
      Int32 Function(
          IntPtr hContext,
          Pointer<Uint8> pbAtr,
          Pointer<GUID> rgquidInterfaces,
          Uint32 cguidInterfaceCount,
          Pointer<Utf16> mszCards,
          Pointer<Uint32> pcchCards),
      int Function(
          int hContext,
          Pointer<Uint8> pbAtr,
          Pointer<GUID> rgquidInterfaces,
          int cguidInterfaceCount,
          Pointer<Utf16> mszCards,
          Pointer<Uint32> pcchCards)>('SCardListCardsW');
  return _SCardListCards(hContext, pbAtr, rgquidInterfaces, cguidInterfaceCount,
      mszCards, pcchCards);
}

/// The SCardListInterfaces function provides a list of interfaces supplied
/// by a given card. The caller supplies the name of a smart card
/// previously introduced to the subsystem, and receives the list of
/// interfaces supported by the card.
///
/// ```c
/// LONG SCardListInterfacesW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szCard,
///   LPGUID       pguidInterfaces,
///   LPDWORD      pcguidInterfaces
/// );
/// ```
/// {@category winscard}
int SCardListInterfaces(int hContext, Pointer<Utf16> szCard,
    Pointer<GUID> pguidInterfaces, Pointer<Uint32> pcguidInterfaces) {
  final _SCardListInterfaces = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szCard,
          Pointer<GUID> pguidInterfaces, Pointer<Uint32> pcguidInterfaces),
      int Function(
          int hContext,
          Pointer<Utf16> szCard,
          Pointer<GUID> pguidInterfaces,
          Pointer<Uint32> pcguidInterfaces)>('SCardListInterfacesW');
  return _SCardListInterfaces(
      hContext, szCard, pguidInterfaces, pcguidInterfaces);
}

/// The SCardListReaderGroups function provides the list of reader groups
/// that have previously been introduced to the system.
///
/// ```c
/// LONG SCardListReaderGroupsW(
///   SCARDCONTEXT hContext,
///   LPWSTR       mszGroups,
///   LPDWORD      pcchGroups
/// );
/// ```
/// {@category winscard}
int SCardListReaderGroups(
    int hContext, Pointer<Utf16> mszGroups, Pointer<Uint32> pcchGroups) {
  final _SCardListReaderGroups = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> mszGroups,
          Pointer<Uint32> pcchGroups),
      int Function(int hContext, Pointer<Utf16> mszGroups,
          Pointer<Uint32> pcchGroups)>('SCardListReaderGroupsW');
  return _SCardListReaderGroups(hContext, mszGroups, pcchGroups);
}

/// The SCardListReaders function provides the list of readers within a set
/// of named reader groups, eliminating duplicates. The caller supplies a
/// list of reader groups, and receives the list of readers within the
/// named groups. Unrecognized group names are ignored. This function only
/// returns readers within the named groups that are currently attached to
/// the system and available for use.
///
/// ```c
/// LONG SCardListReadersW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      mszGroups,
///   LPWSTR       mszReaders,
///   LPDWORD      pcchReaders
/// );
/// ```
/// {@category winscard}
int SCardListReaders(int hContext, Pointer<Utf16> mszGroups,
    Pointer<Utf16> mszReaders, Pointer<Uint32> pcchReaders) {
  final _SCardListReaders = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> mszGroups,
          Pointer<Utf16> mszReaders, Pointer<Uint32> pcchReaders),
      int Function(
          int hContext,
          Pointer<Utf16> mszGroups,
          Pointer<Utf16> mszReaders,
          Pointer<Uint32> pcchReaders)>('SCardListReadersW');
  return _SCardListReaders(hContext, mszGroups, mszReaders, pcchReaders);
}

/// The SCardListReadersWithDeviceInstanceId function gets the list of
/// readers that have provided a device instance identifier. This function
/// does not affect the state of the reader.
///
/// ```c
/// LONG SCardListReadersWithDeviceInstanceIdW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szDeviceInstanceId,
///   LPWSTR       mszReaders,
///   LPDWORD      pcchReaders
/// );
/// ```
/// {@category winscard}
int SCardListReadersWithDeviceInstanceId(
    int hContext,
    Pointer<Utf16> szDeviceInstanceId,
    Pointer<Utf16> mszReaders,
    Pointer<Uint32> pcchReaders) {
  final _SCardListReadersWithDeviceInstanceId = _winscard.lookupFunction<
          Int32 Function(IntPtr hContext, Pointer<Utf16> szDeviceInstanceId,
              Pointer<Utf16> mszReaders, Pointer<Uint32> pcchReaders),
          int Function(int hContext, Pointer<Utf16> szDeviceInstanceId,
              Pointer<Utf16> mszReaders, Pointer<Uint32> pcchReaders)>(
      'SCardListReadersWithDeviceInstanceIdW');
  return _SCardListReadersWithDeviceInstanceId(
      hContext, szDeviceInstanceId, mszReaders, pcchReaders);
}

/// The SCardLocateCards function searches the readers listed in the
/// rgReaderStates parameter for a card with an ATR string that matches one
/// of the card names specified in mszCards, returning immediately with the
/// result.
///
/// ```c
/// LONG SCardLocateCardsW(
///   SCARDCONTEXT         hContext,
///   LPCWSTR              mszCards,
///   LPSCARD_READERSTATEW rgReaderStates,
///   DWORD                cReaders
/// );
/// ```
/// {@category winscard}
int SCardLocateCards(int hContext, Pointer<Utf16> mszCards,
    Pointer<SCARD_READERSTATE> rgReaderStates, int cReaders) {
  final _SCardLocateCards = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> mszCards,
          Pointer<SCARD_READERSTATE> rgReaderStates, Uint32 cReaders),
      int Function(
          int hContext,
          Pointer<Utf16> mszCards,
          Pointer<SCARD_READERSTATE> rgReaderStates,
          int cReaders)>('SCardLocateCardsW');
  return _SCardLocateCards(hContext, mszCards, rgReaderStates, cReaders);
}

/// The SCardLocateCardsByATR function searches the readers listed in the
/// rgReaderStates parameter for a card with a name that matches one of the
/// card names contained in one of the SCARD_ATRMASK structures specified
/// by the rgAtrMasks parameter.
///
/// ```c
/// LONG SCardLocateCardsByATRW(
///   SCARDCONTEXT         hContext,
///   LPSCARD_ATRMASK      rgAtrMasks,
///   DWORD                cAtrs,
///   LPSCARD_READERSTATEW rgReaderStates,
///   DWORD                cReaders
/// );
/// ```
/// {@category winscard}
int SCardLocateCardsByATR(int hContext, Pointer<SCARD_ATRMASK> rgAtrMasks,
    int cAtrs, Pointer<SCARD_READERSTATE> rgReaderStates, int cReaders) {
  final _SCardLocateCardsByATR = _winscard.lookupFunction<
      Int32 Function(
          IntPtr hContext,
          Pointer<SCARD_ATRMASK> rgAtrMasks,
          Uint32 cAtrs,
          Pointer<SCARD_READERSTATE> rgReaderStates,
          Uint32 cReaders),
      int Function(
          int hContext,
          Pointer<SCARD_ATRMASK> rgAtrMasks,
          int cAtrs,
          Pointer<SCARD_READERSTATE> rgReaderStates,
          int cReaders)>('SCardLocateCardsByATRW');
  return _SCardLocateCardsByATR(
      hContext, rgAtrMasks, cAtrs, rgReaderStates, cReaders);
}

/// The SCardReadCache function retrieves the value portion of a name-value
/// pair from the global cache maintained by the Smart Card Resource
/// Manager.
///
/// ```c
/// LONG SCardReadCacheW(
///   SCARDCONTEXT hContext,
///   UUID         *CardIdentifier,
///   DWORD        FreshnessCounter,
///   LPWSTR       LookupName,
///   PBYTE        Data,
///   DWORD        *DataLen
/// );
/// ```
/// {@category winscard}
int SCardReadCache(
    int hContext,
    Pointer<GUID> CardIdentifier,
    int FreshnessCounter,
    Pointer<Utf16> LookupName,
    Pointer<Uint8> Data,
    Pointer<Uint32> DataLen) {
  final _SCardReadCache = _winscard.lookupFunction<
      Int32 Function(
          IntPtr hContext,
          Pointer<GUID> CardIdentifier,
          Uint32 FreshnessCounter,
          Pointer<Utf16> LookupName,
          Pointer<Uint8> Data,
          Pointer<Uint32> DataLen),
      int Function(
          int hContext,
          Pointer<GUID> CardIdentifier,
          int FreshnessCounter,
          Pointer<Utf16> LookupName,
          Pointer<Uint8> Data,
          Pointer<Uint32> DataLen)>('SCardReadCacheW');
  return _SCardReadCache(
      hContext, CardIdentifier, FreshnessCounter, LookupName, Data, DataLen);
}

/// The SCardReconnect function reestablishes an existing connection
/// between the calling application and a smart card. This function moves a
/// card handle from direct access to general access, or acknowledges and
/// clears an error condition that is preventing further access to the
/// card.
///
/// ```c
/// LONG SCardReconnect(
///   SCARDHANDLE hCard,
///   DWORD       dwShareMode,
///   DWORD       dwPreferredProtocols,
///   DWORD       dwInitialization,
///   LPDWORD     pdwActiveProtocol
/// );
/// ```
/// {@category winscard}
int SCardReconnect(int hCard, int dwShareMode, int dwPreferredProtocols,
    int dwInitialization, Pointer<Uint32> pdwActiveProtocol) {
  final _SCardReconnect = _winscard.lookupFunction<
      Int32 Function(
          IntPtr hCard,
          Uint32 dwShareMode,
          Uint32 dwPreferredProtocols,
          Uint32 dwInitialization,
          Pointer<Uint32> pdwActiveProtocol),
      int Function(
          int hCard,
          int dwShareMode,
          int dwPreferredProtocols,
          int dwInitialization,
          Pointer<Uint32> pdwActiveProtocol)>('SCardReconnect');
  return _SCardReconnect(hCard, dwShareMode, dwPreferredProtocols,
      dwInitialization, pdwActiveProtocol);
}

/// The SCardReleaseContext function closes an established resource manager
/// context, freeing any resources allocated under that context, including
/// SCARDHANDLE objects and memory allocated using the SCARD_AUTOALLOCATE
/// length designator.
///
/// ```c
/// LONG SCardReleaseContext(
/// SCARDCONTEXT hContext);
/// ```
/// {@category winscard}
int SCardReleaseContext(int hContext) {
  final _SCardReleaseContext = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext),
      int Function(int hContext)>('SCardReleaseContext');
  return _SCardReleaseContext(hContext);
}

/// The SCardReleaseStartedEvent function decrements the reference count
/// for a handle acquired by a previous call to the SCardAccessStartedEvent
/// function.
///
/// ```c
/// void SCardReleaseStartedEvent();
/// ```
/// {@category winscard}
void SCardReleaseStartedEvent() {
  final _SCardReleaseStartedEvent =
      _winscard.lookupFunction<Void Function(), void Function()>(
          'SCardReleaseStartedEvent');
  return _SCardReleaseStartedEvent();
}

/// The SCardRemoveReaderFromGroup function removes a reader from an
/// existing reader group. This function has no effect on the reader.
///
/// ```c
/// LONG SCardRemoveReaderFromGroupW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szReaderName,
///   LPCWSTR      szGroupName
/// );
/// ```
/// {@category winscard}
int SCardRemoveReaderFromGroup(
    int hContext, Pointer<Utf16> szReaderName, Pointer<Utf16> szGroupName) {
  final _SCardRemoveReaderFromGroup = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szReaderName,
          Pointer<Utf16> szGroupName),
      int Function(int hContext, Pointer<Utf16> szReaderName,
          Pointer<Utf16> szGroupName)>('SCardRemoveReaderFromGroupW');
  return _SCardRemoveReaderFromGroup(hContext, szReaderName, szGroupName);
}

/// The SCardSetAttrib function sets the given reader attribute for the
/// given handle. It does not affect the state of the reader, reader
/// driver, or smart card. Not all attributes are supported by all readers
/// (nor can they be set at all times) as many of the attributes are under
/// direct control of the transport protocol.
///
/// ```c
/// LONG SCardSetAttrib(
///   SCARDHANDLE hCard,
///   DWORD       dwAttrId,
///   LPCBYTE     pbAttr,
///   DWORD       cbAttrLen
/// );
/// ```
/// {@category winscard}
int SCardSetAttrib(
    int hCard, int dwAttrId, Pointer<Uint8> pbAttr, int cbAttrLen) {
  final _SCardSetAttrib = _winscard.lookupFunction<
      Int32 Function(IntPtr hCard, Uint32 dwAttrId, Pointer<Uint8> pbAttr,
          Uint32 cbAttrLen),
      int Function(int hCard, int dwAttrId, Pointer<Uint8> pbAttr,
          int cbAttrLen)>('SCardSetAttrib');
  return _SCardSetAttrib(hCard, dwAttrId, pbAttr, cbAttrLen);
}

/// The SCardSetCardTypeProviderName function specifies the name of the
/// module (dynamic link library) containing the provider for a given card
/// name and provider type.
///
/// ```c
/// LONG SCardSetCardTypeProviderNameW(
///   SCARDCONTEXT hContext,
///   LPCWSTR      szCardName,
///   DWORD        dwProviderId,
///   LPCWSTR      szProvider
/// );
/// ```
/// {@category winscard}
int SCardSetCardTypeProviderName(int hContext, Pointer<Utf16> szCardName,
    int dwProviderId, Pointer<Utf16> szProvider) {
  final _SCardSetCardTypeProviderName = _winscard.lookupFunction<
      Int32 Function(IntPtr hContext, Pointer<Utf16> szCardName,
          Uint32 dwProviderId, Pointer<Utf16> szProvider),
      int Function(int hContext, Pointer<Utf16> szCardName, int dwProviderId,
          Pointer<Utf16> szProvider)>('SCardSetCardTypeProviderNameW');
  return _SCardSetCardTypeProviderName(
      hContext, szCardName, dwProviderId, szProvider);
}

/// The SCardStatus function provides the current status of a smart card in
/// a reader. You can call it any time after a successful call to
/// SCardConnect and before a successful call to SCardDisconnect. It does
/// not affect the state of the reader or reader driver.
///
/// ```c
/// LONG SCardStatusW(
///   SCARDHANDLE hCard,
///   LPWSTR      mszReaderNames,
///   LPDWORD     pcchReaderLen,
///   LPDWORD     pdwState,
///   LPDWORD     pdwProtocol,
///   LPBYTE      pbAtr,
///   LPDWORD     pcbAtrLen
/// );
/// ```
/// {@category winscard}
int SCardStatus(
    int hCard,
    Pointer<Utf16> mszReaderNames,
    Pointer<Uint32> pcchReaderLen,
    Pointer<Uint32> pdwState,
    Pointer<Uint32> pdwProtocol,
    Pointer<Uint8> pbAtr,
    Pointer<Uint32> pcbAtrLen) {
  final _SCardStatus = _winscard.lookupFunction<
      Int32 Function(
          IntPtr hCard,
          Pointer<Utf16> mszReaderNames,
          Pointer<Uint32> pcchReaderLen,
          Pointer<Uint32> pdwState,
          Pointer<Uint32> pdwProtocol,
          Pointer<Uint8> pbAtr,
          Pointer<Uint32> pcbAtrLen),
      int Function(
          int hCard,
          Pointer<Utf16> mszReaderNames,
          Pointer<Uint32> pcchReaderLen,
          Pointer<Uint32> pdwState,
          Pointer<Uint32> pdwProtocol,
          Pointer<Uint8> pbAtr,
          Pointer<Uint32> pcbAtrLen)>('SCardStatusW');
  return _SCardStatus(hCard, mszReaderNames, pcchReaderLen, pdwState,
      pdwProtocol, pbAtr, pcbAtrLen);
}

/// The SCardTransmit function sends a service request to the smart card
/// and expects to receive data back from the card.
///
/// ```c
/// LONG SCardTransmit(
///   SCARDHANDLE         hCard,
///   LPCSCARD_IO_REQUEST pioSendPci,
///   LPCBYTE             pbSendBuffer,
///   DWORD               cbSendLength,
///   LPSCARD_IO_REQUEST  pioRecvPci,
///   LPBYTE              pbRecvBuffer,
///   LPDWORD             pcbRecvLength
/// );
/// ```
/// {@category winscard}
int SCardTransmit(
    int hCard,
    Pointer<SCARD_IO_REQUEST> pioSendPci,
    Pointer<Uint8> pbSendBuffer,
    int cbSendLength,
    Pointer<SCARD_IO_REQUEST> pioRecvPci,
    Pointer<Uint8> pbRecvBuffer,
    Pointer<Uint32> pcbRecvLength) {
  final _SCardTransmit = _winscard.lookupFunction<
      Int32 Function(
          IntPtr hCard,
          Pointer<SCARD_IO_REQUEST> pioSendPci,
          Pointer<Uint8> pbSendBuffer,
          Uint32 cbSendLength,
          Pointer<SCARD_IO_REQUEST> pioRecvPci,
          Pointer<Uint8> pbRecvBuffer,
          Pointer<Uint32> pcbRecvLength),
      int Function(
          int hCard,
          Pointer<SCARD_IO_REQUEST> pioSendPci,
          Pointer<Uint8> pbSendBuffer,
          int cbSendLength,
          Pointer<SCARD_IO_REQUEST> pioRecvPci,
          Pointer<Uint8> pbRecvBuffer,
          Pointer<Uint32> pcbRecvLength)>('SCardTransmit');
  return _SCardTransmit(hCard, pioSendPci, pbSendBuffer, cbSendLength,
      pioRecvPci, pbRecvBuffer, pcbRecvLength);
}

/// The SCardWriteCache function writes a name-value pair from a smart card
/// to the global cache maintained by the Smart Card Resource Manager.
///
/// ```c
/// LONG SCardWriteCacheW(
///   SCARDCONTEXT hContext,
///   UUID         *CardIdentifier,
///   DWORD        FreshnessCounter,
///   LPWSTR       LookupName,
///   PBYTE        Data,
///   DWORD        DataLen
/// );
/// ```
/// {@category winscard}
int SCardWriteCache(
    int hContext,
    Pointer<GUID> CardIdentifier,
    int FreshnessCounter,
    Pointer<Utf16> LookupName,
    Pointer<Uint8> Data,
    int DataLen) {
  final _SCardWriteCache = _winscard.lookupFunction<
      Int32 Function(
          IntPtr hContext,
          Pointer<GUID> CardIdentifier,
          Uint32 FreshnessCounter,
          Pointer<Utf16> LookupName,
          Pointer<Uint8> Data,
          Uint32 DataLen),
      int Function(
          int hContext,
          Pointer<GUID> CardIdentifier,
          int FreshnessCounter,
          Pointer<Utf16> LookupName,
          Pointer<Uint8> Data,
          int DataLen)>('SCardWriteCacheW');
  return _SCardWriteCache(
      hContext, CardIdentifier, FreshnessCounter, LookupName, Data, DataLen);
}
