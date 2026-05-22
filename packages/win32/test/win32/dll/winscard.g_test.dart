// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('winscard.dll', () {
    test('SCardAccessStartedEvent can be instantiated', () {
      check(_SCardAccessStartedEvent).isA<Function>();
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

final _winscard = DynamicLibrary.open('winscard.dll');

final _SCardAccessStartedEvent = _winscard
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'SCardAccessStartedEvent',
    );

final _SCardAddReaderToGroup = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>)
    >('SCardAddReaderToGroupW');

final _SCardAudit = _winscard
    .lookupFunction<Int32 Function(IntPtr, Uint32), int Function(int, int)>(
      'SCardAudit',
    );

final _SCardBeginTransaction = _winscard
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'SCardBeginTransaction',
    );

final _SCardCancel = _winscard
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>('SCardCancel');

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

final _SCardDisconnect = _winscard
    .lookupFunction<Int32 Function(IntPtr, Uint32), int Function(int, int)>(
      'SCardDisconnect',
    );

final _SCardEndTransaction = _winscard
    .lookupFunction<Int32 Function(IntPtr, Uint32), int Function(int, int)>(
      'SCardEndTransaction',
    );

final _SCardEstablishContext = _winscard
    .lookupFunction<
      Int32 Function(Uint32, Pointer, Pointer, Pointer<IntPtr>),
      int Function(int, Pointer, Pointer, Pointer<IntPtr>)
    >('SCardEstablishContext');

final _SCardForgetCardType = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('SCardForgetCardTypeW');

final _SCardForgetReader = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('SCardForgetReaderW');

final _SCardForgetReaderGroup = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('SCardForgetReaderGroupW');

final _SCardFreeMemory = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer),
      int Function(int, Pointer)
    >('SCardFreeMemory');

final _SCardGetAttrib = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Uint32, Pointer<Uint8>, Pointer<Uint32>),
      int Function(int, int, Pointer<Uint8>, Pointer<Uint32>)
    >('SCardGetAttrib');

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

final _SCardGetDeviceTypeId = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint32>)
    >('SCardGetDeviceTypeIdW');

final _SCardGetProviderId = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<GUID>),
      int Function(int, Pointer<Utf16>, Pointer<GUID>)
    >('SCardGetProviderIdW');

final _SCardGetReaderDeviceInstanceId = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('SCardGetReaderDeviceInstanceIdW');

final _SCardGetReaderIcon = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Uint8>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint8>, Pointer<Uint32>)
    >('SCardGetReaderIconW');

final _SCardGetStatusChange = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Uint32, Pointer<SCARD_READERSTATE>, Uint32),
      int Function(int, int, Pointer<SCARD_READERSTATE>, int)
    >('SCardGetStatusChangeW');

final _SCardGetTransmitCount = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Uint32>),
      int Function(int, Pointer<Uint32>)
    >('SCardGetTransmitCount');

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

final _SCardIntroduceReader = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>)
    >('SCardIntroduceReaderW');

final _SCardIntroduceReaderGroup = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('SCardIntroduceReaderGroupW');

final _SCardIsValidContext = _winscard
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'SCardIsValidContext',
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

final _SCardListInterfaces = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<GUID>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<GUID>, Pointer<Uint32>)
    >('SCardListInterfacesW');

final _SCardListReaderGroups = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Uint32>)
    >('SCardListReaderGroupsW');

final _SCardListReaders = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('SCardListReadersW');

final _SCardListReadersWithDeviceInstanceId = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>, Pointer<Uint32>)
    >('SCardListReadersWithDeviceInstanceIdW');

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

final _SCardReconnect = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Uint32, Uint32, Uint32, Pointer<Uint32>),
      int Function(int, int, int, int, Pointer<Uint32>)
    >('SCardReconnect');

final _SCardReleaseContext = _winscard
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'SCardReleaseContext',
    );

final _SCardReleaseStartedEvent = _winscard
    .lookupFunction<Void Function(), void Function()>(
      'SCardReleaseStartedEvent',
    );

final _SCardRemoveReaderFromGroup = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>, Pointer<Utf16>)
    >('SCardRemoveReaderFromGroupW');

final _SCardSetAttrib = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Uint32, Pointer<Uint8>, Uint32),
      int Function(int, int, Pointer<Uint8>, int)
    >('SCardSetAttrib');

final _SCardSetCardTypeProviderName = _winscard
    .lookupFunction<
      Int32 Function(IntPtr, Pointer<Utf16>, Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>, int, Pointer<Utf16>)
    >('SCardSetCardTypeProviderNameW');

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
