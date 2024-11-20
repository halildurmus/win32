// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/src/_internal/winscard.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('winscard.dll', () {
    test('SCardAccessStartedEvent can be instantiated', () {
      check(SCardAccessStartedEvent_Wrapper).isA<Function>();
    });
    test('SCardAddReaderToGroup can be instantiated', () {
      check(_SCardAddReaderToGroup).isA<Function>();
    });
    test('SCardAudit can be instantiated', () {
      check(_SCardAudit).isA<Function>();
    });
    test('SCardBeginTransaction can be instantiated', () {
      check(_SCardBeginTransaction).isA<Function>();
    });
    test('SCardCancel can be instantiated', () {
      check(_SCardCancel).isA<Function>();
    });
    test('SCardConnect can be instantiated', () {
      check(_SCardConnect).isA<Function>();
    });
    test('SCardControl can be instantiated', () {
      check(_SCardControl).isA<Function>();
    });
    test('SCardDisconnect can be instantiated', () {
      check(_SCardDisconnect).isA<Function>();
    });
    test('SCardEndTransaction can be instantiated', () {
      check(_SCardEndTransaction).isA<Function>();
    });
    test('SCardEstablishContext can be instantiated', () {
      check(_SCardEstablishContext).isA<Function>();
    });
    test('SCardForgetCardType can be instantiated', () {
      check(_SCardForgetCardType).isA<Function>();
    });
    test('SCardForgetReader can be instantiated', () {
      check(_SCardForgetReader).isA<Function>();
    });
    test('SCardForgetReaderGroup can be instantiated', () {
      check(_SCardForgetReaderGroup).isA<Function>();
    });
    test('SCardFreeMemory can be instantiated', () {
      check(_SCardFreeMemory).isA<Function>();
    });
    test('SCardGetAttrib can be instantiated', () {
      check(_SCardGetAttrib).isA<Function>();
    });
    test('SCardGetCardTypeProviderName can be instantiated', () {
      check(_SCardGetCardTypeProviderName).isA<Function>();
    });
    test('SCardGetDeviceTypeId can be instantiated', () {
      check(_SCardGetDeviceTypeId).isA<Function>();
    });
    test('SCardGetProviderId can be instantiated', () {
      check(_SCardGetProviderId).isA<Function>();
    });
    test('SCardGetReaderDeviceInstanceId can be instantiated', () {
      check(_SCardGetReaderDeviceInstanceId).isA<Function>();
    });
    test('SCardGetReaderIcon can be instantiated', () {
      check(_SCardGetReaderIcon).isA<Function>();
    });
    test('SCardGetStatusChange can be instantiated', () {
      check(_SCardGetStatusChange).isA<Function>();
    });
    test('SCardGetTransmitCount can be instantiated', () {
      check(_SCardGetTransmitCount).isA<Function>();
    });
    test('SCardIntroduceCardType can be instantiated', () {
      check(_SCardIntroduceCardType).isA<Function>();
    });
    test('SCardIntroduceReader can be instantiated', () {
      check(_SCardIntroduceReader).isA<Function>();
    });
    test('SCardIntroduceReaderGroup can be instantiated', () {
      check(_SCardIntroduceReaderGroup).isA<Function>();
    });
    test('SCardIsValidContext can be instantiated', () {
      check(_SCardIsValidContext).isA<Function>();
    });
    test('SCardListCards can be instantiated', () {
      check(_SCardListCards).isA<Function>();
    });
    test('SCardListInterfaces can be instantiated', () {
      check(_SCardListInterfaces).isA<Function>();
    });
    test('SCardListReaderGroups can be instantiated', () {
      check(_SCardListReaderGroups).isA<Function>();
    });
    test('SCardListReaders can be instantiated', () {
      check(_SCardListReaders).isA<Function>();
    });
    test('SCardListReadersWithDeviceInstanceId can be instantiated', () {
      check(_SCardListReadersWithDeviceInstanceId).isA<Function>();
    });
    test('SCardLocateCards can be instantiated', () {
      check(_SCardLocateCards).isA<Function>();
    });
    test('SCardLocateCardsByATR can be instantiated', () {
      check(_SCardLocateCardsByATR).isA<Function>();
    });
    test('SCardReadCache can be instantiated', () {
      check(_SCardReadCache).isA<Function>();
    });
    test('SCardReconnect can be instantiated', () {
      check(_SCardReconnect).isA<Function>();
    });
    test('SCardReleaseContext can be instantiated', () {
      check(_SCardReleaseContext).isA<Function>();
    });
    test('SCardReleaseStartedEvent can be instantiated', () {
      check(_SCardReleaseStartedEvent).isA<Function>();
    });
    test('SCardRemoveReaderFromGroup can be instantiated', () {
      check(_SCardRemoveReaderFromGroup).isA<Function>();
    });
    test('SCardSetAttrib can be instantiated', () {
      check(_SCardSetAttrib).isA<Function>();
    });
    test('SCardSetCardTypeProviderName can be instantiated', () {
      check(_SCardSetCardTypeProviderName).isA<Function>();
    });
    test('SCardStatus can be instantiated', () {
      check(_SCardStatus).isA<Function>();
    });
    test('SCardTransmit can be instantiated', () {
      check(_SCardTransmit).isA<Function>();
    });
    test('SCardWriteCache can be instantiated', () {
      check(_SCardWriteCache).isA<Function>();
    });
  });
}

@Native<Int32 Function(IntPtr, PCWSTR, PCWSTR)>(
  symbol: 'SCardAddReaderToGroupW',
)
external int _SCardAddReaderToGroup(
  int hContext,
  PCWSTR szReaderName,
  PCWSTR szGroupName,
);

@Native<Int32 Function(IntPtr, Uint32)>(symbol: 'SCardAudit')
external int _SCardAudit(int hContext, int dwEvent);

@Native<Int32 Function(IntPtr)>(symbol: 'SCardBeginTransaction')
external int _SCardBeginTransaction(int hCard);

@Native<Int32 Function(IntPtr)>(symbol: 'SCardCancel')
external int _SCardCancel(int hContext);

@Native<
  Int32 Function(
    IntPtr,
    PCWSTR,
    Uint32,
    Uint32,
    Pointer<IntPtr>,
    Pointer<Uint32>,
  )
>(symbol: 'SCardConnectW')
external int _SCardConnect(
  int hContext,
  PCWSTR szReader,
  int dwShareMode,
  int dwPreferredProtocols,
  Pointer<IntPtr> phCard,
  Pointer<Uint32> pdwActiveProtocol,
);

@Native<
  Int32 Function(
    IntPtr,
    Uint32,
    Pointer,
    Uint32,
    Pointer,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'SCardControl')
external int _SCardControl(
  int hCard,
  int dwControlCode,
  Pointer lpInBuffer,
  int cbInBufferSize,
  Pointer lpOutBuffer,
  int cbOutBufferSize,
  Pointer<Uint32> lpBytesReturned,
);

@Native<Int32 Function(IntPtr, Uint32)>(symbol: 'SCardDisconnect')
external int _SCardDisconnect(int hCard, int dwDisposition);

@Native<Int32 Function(IntPtr, Uint32)>(symbol: 'SCardEndTransaction')
external int _SCardEndTransaction(int hCard, int dwDisposition);

@Native<Int32 Function(Uint32, Pointer, Pointer, Pointer<IntPtr>)>(
  symbol: 'SCardEstablishContext',
)
external int _SCardEstablishContext(
  int dwScope,
  Pointer pvReserved1,
  Pointer pvReserved2,
  Pointer<IntPtr> phContext,
);

@Native<Int32 Function(IntPtr, PCWSTR)>(symbol: 'SCardForgetCardTypeW')
external int _SCardForgetCardType(int hContext, PCWSTR szCardName);

@Native<Int32 Function(IntPtr, PCWSTR)>(symbol: 'SCardForgetReaderW')
external int _SCardForgetReader(int hContext, PCWSTR szReaderName);

@Native<Int32 Function(IntPtr, PCWSTR)>(symbol: 'SCardForgetReaderGroupW')
external int _SCardForgetReaderGroup(int hContext, PCWSTR szGroupName);

@Native<Int32 Function(IntPtr, Pointer)>(symbol: 'SCardFreeMemory')
external int _SCardFreeMemory(int hContext, Pointer pvMem);

@Native<Int32 Function(IntPtr, Uint32, Pointer<Uint8>, Pointer<Uint32>)>(
  symbol: 'SCardGetAttrib',
)
external int _SCardGetAttrib(
  int hCard,
  int dwAttrId,
  Pointer<Uint8> pbAttr,
  Pointer<Uint32> pcbAttrLen,
);

@Native<Int32 Function(IntPtr, PCWSTR, Uint32, PWSTR, Pointer<Uint32>)>(
  symbol: 'SCardGetCardTypeProviderNameW',
)
external int _SCardGetCardTypeProviderName(
  int hContext,
  PCWSTR szCardName,
  int dwProviderId,
  PWSTR szProvider,
  Pointer<Uint32> pcchProvider,
);

@Native<Int32 Function(IntPtr, PCWSTR, Pointer<Uint32>)>(
  symbol: 'SCardGetDeviceTypeIdW',
)
external int _SCardGetDeviceTypeId(
  int hContext,
  PCWSTR szReaderName,
  Pointer<Uint32> pdwDeviceTypeId,
);

@Native<Int32 Function(IntPtr, PCWSTR, Pointer<GUID>)>(
  symbol: 'SCardGetProviderIdW',
)
external int _SCardGetProviderId(
  int hContext,
  PCWSTR szCard,
  Pointer<GUID> pguidProviderId,
);

@Native<Int32 Function(IntPtr, PCWSTR, PWSTR, Pointer<Uint32>)>(
  symbol: 'SCardGetReaderDeviceInstanceIdW',
)
external int _SCardGetReaderDeviceInstanceId(
  int hContext,
  PCWSTR szReaderName,
  PWSTR szDeviceInstanceId,
  Pointer<Uint32> pcchDeviceInstanceId,
);

@Native<Int32 Function(IntPtr, PCWSTR, Pointer<Uint8>, Pointer<Uint32>)>(
  symbol: 'SCardGetReaderIconW',
)
external int _SCardGetReaderIcon(
  int hContext,
  PCWSTR szReaderName,
  Pointer<Uint8> pbIcon,
  Pointer<Uint32> pcbIcon,
);

@Native<Int32 Function(IntPtr, Uint32, Pointer<SCARD_READERSTATE>, Uint32)>(
  symbol: 'SCardGetStatusChangeW',
)
external int _SCardGetStatusChange(
  int hContext,
  int dwTimeout,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
);

@Native<Int32 Function(IntPtr, Pointer<Uint32>)>(
  symbol: 'SCardGetTransmitCount',
)
external int _SCardGetTransmitCount(int hCard, Pointer<Uint32> pcTransmitCount);

@Native<
  Int32 Function(
    IntPtr,
    PCWSTR,
    Pointer<GUID>,
    Pointer<GUID>,
    Uint32,
    Pointer<Uint8>,
    Pointer<Uint8>,
    Uint32,
  )
>(symbol: 'SCardIntroduceCardTypeW')
external int _SCardIntroduceCardType(
  int hContext,
  PCWSTR szCardName,
  Pointer<GUID> pguidPrimaryProvider,
  Pointer<GUID> rgguidInterfaces,
  int dwInterfaceCount,
  Pointer<Uint8> pbAtr,
  Pointer<Uint8> pbAtrMask,
  int cbAtrLen,
);

@Native<Int32 Function(IntPtr, PCWSTR, PCWSTR)>(symbol: 'SCardIntroduceReaderW')
external int _SCardIntroduceReader(
  int hContext,
  PCWSTR szReaderName,
  PCWSTR szDeviceName,
);

@Native<Int32 Function(IntPtr, PCWSTR)>(symbol: 'SCardIntroduceReaderGroupW')
external int _SCardIntroduceReaderGroup(int hContext, PCWSTR szGroupName);

@Native<Int32 Function(IntPtr)>(symbol: 'SCardIsValidContext')
external int _SCardIsValidContext(int hContext);

@Native<
  Int32 Function(
    IntPtr,
    Pointer<Uint8>,
    Pointer<GUID>,
    Uint32,
    PWSTR,
    Pointer<Uint32>,
  )
>(symbol: 'SCardListCardsW')
external int _SCardListCards(
  int hContext,
  Pointer<Uint8> pbAtr,
  Pointer<GUID> rgquidInterfaces,
  int cguidInterfaceCount,
  PWSTR mszCards,
  Pointer<Uint32> pcchCards,
);

@Native<Int32 Function(IntPtr, PCWSTR, Pointer<GUID>, Pointer<Uint32>)>(
  symbol: 'SCardListInterfacesW',
)
external int _SCardListInterfaces(
  int hContext,
  PCWSTR szCard,
  Pointer<GUID> pguidInterfaces,
  Pointer<Uint32> pcguidInterfaces,
);

@Native<Int32 Function(IntPtr, PWSTR, Pointer<Uint32>)>(
  symbol: 'SCardListReaderGroupsW',
)
external int _SCardListReaderGroups(
  int hContext,
  PWSTR mszGroups,
  Pointer<Uint32> pcchGroups,
);

@Native<Int32 Function(IntPtr, PCWSTR, PWSTR, Pointer<Uint32>)>(
  symbol: 'SCardListReadersW',
)
external int _SCardListReaders(
  int hContext,
  PCWSTR mszGroups,
  PWSTR mszReaders,
  Pointer<Uint32> pcchReaders,
);

@Native<Int32 Function(IntPtr, PCWSTR, PWSTR, Pointer<Uint32>)>(
  symbol: 'SCardListReadersWithDeviceInstanceIdW',
)
external int _SCardListReadersWithDeviceInstanceId(
  int hContext,
  PCWSTR szDeviceInstanceId,
  PWSTR mszReaders,
  Pointer<Uint32> pcchReaders,
);

@Native<Int32 Function(IntPtr, PCWSTR, Pointer<SCARD_READERSTATE>, Uint32)>(
  symbol: 'SCardLocateCardsW',
)
external int _SCardLocateCards(
  int hContext,
  PCWSTR mszCards,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
);

@Native<
  Int32 Function(
    IntPtr,
    Pointer<SCARD_ATRMASK>,
    Uint32,
    Pointer<SCARD_READERSTATE>,
    Uint32,
  )
>(symbol: 'SCardLocateCardsByATRW')
external int _SCardLocateCardsByATR(
  int hContext,
  Pointer<SCARD_ATRMASK> rgAtrMasks,
  int cAtrs,
  Pointer<SCARD_READERSTATE> rgReaderStates,
  int cReaders,
);

@Native<
  Int32 Function(
    IntPtr,
    Pointer<GUID>,
    Uint32,
    PCWSTR,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>(symbol: 'SCardReadCacheW')
external int _SCardReadCache(
  int hContext,
  Pointer<GUID> cardIdentifier,
  int freshnessCounter,
  PCWSTR lookupName,
  Pointer<Uint8> data,
  Pointer<Uint32> dataLen,
);

@Native<Int32 Function(IntPtr, Uint32, Uint32, Uint32, Pointer<Uint32>)>(
  symbol: 'SCardReconnect',
)
external int _SCardReconnect(
  int hCard,
  int dwShareMode,
  int dwPreferredProtocols,
  int dwInitialization,
  Pointer<Uint32> pdwActiveProtocol,
);

@Native<Int32 Function(IntPtr)>(symbol: 'SCardReleaseContext')
external int _SCardReleaseContext(int hContext);

@Native<Void Function()>(symbol: 'SCardReleaseStartedEvent')
external void _SCardReleaseStartedEvent();

@Native<Int32 Function(IntPtr, PCWSTR, PCWSTR)>(
  symbol: 'SCardRemoveReaderFromGroupW',
)
external int _SCardRemoveReaderFromGroup(
  int hContext,
  PCWSTR szReaderName,
  PCWSTR szGroupName,
);

@Native<Int32 Function(IntPtr, Uint32, Pointer<Uint8>, Uint32)>(
  symbol: 'SCardSetAttrib',
)
external int _SCardSetAttrib(
  int hCard,
  int dwAttrId,
  Pointer<Uint8> pbAttr,
  int cbAttrLen,
);

@Native<Int32 Function(IntPtr, PCWSTR, Uint32, PCWSTR)>(
  symbol: 'SCardSetCardTypeProviderNameW',
)
external int _SCardSetCardTypeProviderName(
  int hContext,
  PCWSTR szCardName,
  int dwProviderId,
  PCWSTR szProvider,
);

@Native<
  Int32 Function(
    IntPtr,
    PWSTR,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>(symbol: 'SCardStatusW')
external int _SCardStatus(
  int hCard,
  PWSTR mszReaderNames,
  Pointer<Uint32> pcchReaderLen,
  Pointer<Uint32> pdwState,
  Pointer<Uint32> pdwProtocol,
  Pointer<Uint8> pbAtr,
  Pointer<Uint32> pcbAtrLen,
);

@Native<
  Int32 Function(
    IntPtr,
    Pointer<SCARD_IO_REQUEST>,
    Pointer<Uint8>,
    Uint32,
    Pointer<SCARD_IO_REQUEST>,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>(symbol: 'SCardTransmit')
external int _SCardTransmit(
  int hCard,
  Pointer<SCARD_IO_REQUEST> pioSendPci,
  Pointer<Uint8> pbSendBuffer,
  int cbSendLength,
  Pointer<SCARD_IO_REQUEST> pioRecvPci,
  Pointer<Uint8> pbRecvBuffer,
  Pointer<Uint32> pcbRecvLength,
);

@Native<
  Int32 Function(IntPtr, Pointer<GUID>, Uint32, PCWSTR, Pointer<Uint8>, Uint32)
>(symbol: 'SCardWriteCacheW')
external int _SCardWriteCache(
  int hContext,
  Pointer<GUID> cardIdentifier,
  int freshnessCounter,
  PCWSTR lookupName,
  Pointer<Uint8> data,
  int dataLen,
);
