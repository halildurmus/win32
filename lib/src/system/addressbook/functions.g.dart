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
import '../../system/addressbook/callbacks.g.dart';
import '../../system/addressbook/structs.g.dart';
import '../../system/addressbook/ITableData.dart';
import '../../system/com/IMalloc.dart';
import '../../foundation/structs.g.dart';
import '../../system/addressbook/IMAPITable.dart';
import '../../system/addressbook/IPropData.dart';
import '../../system/addressbook/IMAPIProp.dart';
import '../../system/addressbook/IMAPIAdviseSink.dart';
import '../../system/com/IUnknown.dart';
import '../../system/com/structuredstorage/IStorage.dart';
import '../../system/com/IStream.dart';
import '../../system/addressbook/IMessage.dart'; // -----------------------------------------------------------------------

// rtm.dll
// -----------------------------------------------------------------------
final _rtm = DynamicLibrary.open('rtm.dll');

int CreateTable(
  Pointer<GUID> lpInterface,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer lpvReserved,
  int ulTableType,
  int ulPropTagIndexColumn,
  Pointer<SPropTagArray> lpSPropTagArrayColumns,
  Pointer<Pointer<COMObject>> lppTableData,
) =>
    _CreateTable(
      lpInterface,
      lpAllocateBuffer,
      lpAllocateMore,
      lpFreeBuffer,
      lpvReserved,
      ulTableType,
      ulPropTagIndexColumn,
      lpSPropTagArrayColumns,
      lppTableData,
    );

late final _CreateTable = _rtm.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpInterface,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer lpvReserved,
  Uint32 ulTableType,
  Uint32 ulPropTagIndexColumn,
  Pointer<SPropTagArray> lpSPropTagArrayColumns,
  Pointer<Pointer<COMObject>> lppTableData,
),
    int Function(
  Pointer<GUID> lpInterface,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer lpvReserved,
  int ulTableType,
  int ulPropTagIndexColumn,
  Pointer<SPropTagArray> lpSPropTagArrayColumns,
  Pointer<Pointer<COMObject>> lppTableData,
)>('CreateTable');

// -----------------------------------------------------------------------
// mapi32.dll
// -----------------------------------------------------------------------
final _mapi32 = DynamicLibrary.open('mapi32.dll');

int BuildDisplayTable(
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer<COMObject> lpMalloc,
  int hInstance,
  int cPages,
  Pointer<DTPAGE> lpPage,
  int ulFlags,
  Pointer<Pointer<COMObject>> lppTable,
  Pointer<Pointer<COMObject>> lppTblData,
) =>
    _BuildDisplayTable(
      lpAllocateBuffer,
      lpAllocateMore,
      lpFreeBuffer,
      lpMalloc,
      hInstance,
      cPages,
      lpPage,
      ulFlags,
      lppTable,
      lppTblData,
    );

late final _BuildDisplayTable = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer<COMObject> lpMalloc,
  IntPtr hInstance,
  Uint32 cPages,
  Pointer<DTPAGE> lpPage,
  Uint32 ulFlags,
  Pointer<Pointer<COMObject>> lppTable,
  Pointer<Pointer<COMObject>> lppTblData,
),
    int Function(
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer<COMObject> lpMalloc,
  int hInstance,
  int cPages,
  Pointer<DTPAGE> lpPage,
  int ulFlags,
  Pointer<Pointer<COMObject>> lppTable,
  Pointer<Pointer<COMObject>> lppTblData,
)>('BuildDisplayTable');

void ChangeIdleRoutine(
  Pointer ftg,
  Pointer<NativeFunction<PFNIDLE>> lpfnIdle,
  Pointer lpvIdleParam,
  int priIdle,
  int csecIdle,
  int iroIdle,
  int ircIdle,
) =>
    _ChangeIdleRoutine(
      ftg,
      lpfnIdle,
      lpvIdleParam,
      priIdle,
      csecIdle,
      iroIdle,
      ircIdle,
    );

late final _ChangeIdleRoutine = _mapi32.lookupFunction<
    Void Function(
  Pointer ftg,
  Pointer<NativeFunction<PFNIDLE>> lpfnIdle,
  Pointer lpvIdleParam,
  Int16 priIdle,
  Uint32 csecIdle,
  Uint16 iroIdle,
  Uint16 ircIdle,
),
    void Function(
  Pointer ftg,
  Pointer<NativeFunction<PFNIDLE>> lpfnIdle,
  Pointer lpvIdleParam,
  int priIdle,
  int csecIdle,
  int iroIdle,
  int ircIdle,
)>('ChangeIdleRoutine');

int CreateIProp(
  Pointer<GUID> lpInterface,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer lpvReserved,
  Pointer<Pointer<COMObject>> lppPropData,
) =>
    _CreateIProp(
      lpInterface,
      lpAllocateBuffer,
      lpAllocateMore,
      lpFreeBuffer,
      lpvReserved,
      lppPropData,
    );

late final _CreateIProp = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<GUID> lpInterface,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer lpvReserved,
  Pointer<Pointer<COMObject>> lppPropData,
),
    int Function(
  Pointer<GUID> lpInterface,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpAllocateMore,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Pointer lpvReserved,
  Pointer<Pointer<COMObject>> lppPropData,
)>('CreateIProp');

void DeinitMapiUtil() => _DeinitMapiUtil();

late final _DeinitMapiUtil =
    _mapi32.lookupFunction<Void Function(), void Function()>('DeinitMapiUtil');

void DeregisterIdleRoutine(
  Pointer ftg,
) =>
    _DeregisterIdleRoutine(
      ftg,
    );

late final _DeregisterIdleRoutine = _mapi32.lookupFunction<
    Void Function(
  Pointer ftg,
),
    void Function(
  Pointer ftg,
)>('DeregisterIdleRoutine');

void EnableIdleRoutine(
  Pointer ftg,
  int fEnable,
) =>
    _EnableIdleRoutine(
      ftg,
      fEnable,
    );

late final _EnableIdleRoutine = _mapi32.lookupFunction<
    Void Function(
  Pointer ftg,
  Int32 fEnable,
),
    void Function(
  Pointer ftg,
  int fEnable,
)>('EnableIdleRoutine');

int FEqualNames(
  Pointer<MAPINAMEID> lpName1,
  Pointer<MAPINAMEID> lpName2,
) =>
    _FEqualNames(
      lpName1,
      lpName2,
    );

late final _FEqualNames = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<MAPINAMEID> lpName1,
  Pointer<MAPINAMEID> lpName2,
),
    int Function(
  Pointer<MAPINAMEID> lpName1,
  Pointer<MAPINAMEID> lpName2,
)>('FEqualNames');

int FPropCompareProp(
  Pointer<SPropValue> lpSPropValue1,
  int ulRelOp,
  Pointer<SPropValue> lpSPropValue2,
) =>
    _FPropCompareProp(
      lpSPropValue1,
      ulRelOp,
      lpSPropValue2,
    );

late final _FPropCompareProp = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<SPropValue> lpSPropValue1,
  Uint32 ulRelOp,
  Pointer<SPropValue> lpSPropValue2,
),
    int Function(
  Pointer<SPropValue> lpSPropValue1,
  int ulRelOp,
  Pointer<SPropValue> lpSPropValue2,
)>('FPropCompareProp');

int FPropContainsProp(
  Pointer<SPropValue> lpSPropValueDst,
  Pointer<SPropValue> lpSPropValueSrc,
  int ulFuzzyLevel,
) =>
    _FPropContainsProp(
      lpSPropValueDst,
      lpSPropValueSrc,
      ulFuzzyLevel,
    );

late final _FPropContainsProp = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<SPropValue> lpSPropValueDst,
  Pointer<SPropValue> lpSPropValueSrc,
  Uint32 ulFuzzyLevel,
),
    int Function(
  Pointer<SPropValue> lpSPropValueDst,
  Pointer<SPropValue> lpSPropValueSrc,
  int ulFuzzyLevel,
)>('FPropContainsProp');

int FPropExists(
  Pointer<COMObject> lpMapiProp,
  int ulPropTag,
) =>
    _FPropExists(
      lpMapiProp,
      ulPropTag,
    );

late final _FPropExists = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lpMapiProp,
  Uint32 ulPropTag,
),
    int Function(
  Pointer<COMObject> lpMapiProp,
  int ulPropTag,
)>('FPropExists');

void FreePadrlist(
  Pointer<ADRLIST> lpAdrlist,
) =>
    _FreePadrlist(
      lpAdrlist,
    );

late final _FreePadrlist = _mapi32.lookupFunction<
    Void Function(
  Pointer<ADRLIST> lpAdrlist,
),
    void Function(
  Pointer<ADRLIST> lpAdrlist,
)>('FreePadrlist');

void FreeProws(
  Pointer<SRowSet> lpRows,
) =>
    _FreeProws(
      lpRows,
    );

late final _FreeProws = _mapi32.lookupFunction<
    Void Function(
  Pointer<SRowSet> lpRows,
),
    void Function(
  Pointer<SRowSet> lpRows,
)>('FreeProws');

FILETIME FtAddFt(
  FILETIME ftAddend1,
  FILETIME ftAddend2,
) =>
    _FtAddFt(
      ftAddend1,
      ftAddend2,
    );

late final _FtAddFt = _mapi32.lookupFunction<
    FILETIME Function(
  FILETIME ftAddend1,
  FILETIME ftAddend2,
),
    FILETIME Function(
  FILETIME ftAddend1,
  FILETIME ftAddend2,
)>('FtAddFt');

FILETIME FtMulDw(
  int ftMultiplier,
  FILETIME ftMultiplicand,
) =>
    _FtMulDw(
      ftMultiplier,
      ftMultiplicand,
    );

late final _FtMulDw = _mapi32.lookupFunction<
    FILETIME Function(
  Uint32 ftMultiplier,
  FILETIME ftMultiplicand,
),
    FILETIME Function(
  int ftMultiplier,
  FILETIME ftMultiplicand,
)>('FtMulDw');

FILETIME FtMulDwDw(
  int ftMultiplicand,
  int ftMultiplier,
) =>
    _FtMulDwDw(
      ftMultiplicand,
      ftMultiplier,
    );

late final _FtMulDwDw = _mapi32.lookupFunction<
    FILETIME Function(
  Uint32 ftMultiplicand,
  Uint32 ftMultiplier,
),
    FILETIME Function(
  int ftMultiplicand,
  int ftMultiplier,
)>('FtMulDwDw');

FILETIME FtNegFt(
  FILETIME ft,
) =>
    _FtNegFt(
      ft,
    );

late final _FtNegFt = _mapi32.lookupFunction<
    FILETIME Function(
  FILETIME ft,
),
    FILETIME Function(
  FILETIME ft,
)>('FtNegFt');

FILETIME FtSubFt(
  FILETIME ftMinuend,
  FILETIME ftSubtrahend,
) =>
    _FtSubFt(
      ftMinuend,
      ftSubtrahend,
    );

late final _FtSubFt = _mapi32.lookupFunction<
    FILETIME Function(
  FILETIME ftMinuend,
  FILETIME ftSubtrahend,
),
    FILETIME Function(
  FILETIME ftMinuend,
  FILETIME ftSubtrahend,
)>('FtSubFt');

Pointer FtgRegisterIdleRoutine(
  Pointer<NativeFunction<PFNIDLE>> lpfnIdle,
  Pointer lpvIdleParam,
  int priIdle,
  int csecIdle,
  int iroIdle,
) =>
    _FtgRegisterIdleRoutine(
      lpfnIdle,
      lpvIdleParam,
      priIdle,
      csecIdle,
      iroIdle,
    );

late final _FtgRegisterIdleRoutine = _mapi32.lookupFunction<
    Pointer Function(
  Pointer<NativeFunction<PFNIDLE>> lpfnIdle,
  Pointer lpvIdleParam,
  Int16 priIdle,
  Uint32 csecIdle,
  Uint16 iroIdle,
),
    Pointer Function(
  Pointer<NativeFunction<PFNIDLE>> lpfnIdle,
  Pointer lpvIdleParam,
  int priIdle,
  int csecIdle,
  int iroIdle,
)>('FtgRegisterIdleRoutine');

int HrAddColumns(
  Pointer<COMObject> lptbl,
  Pointer<SPropTagArray> lpproptagColumnsNew,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
) =>
    _HrAddColumns(
      lptbl,
      lpproptagColumnsNew,
      lpAllocateBuffer,
      lpFreeBuffer,
    );

late final _HrAddColumns = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lptbl,
  Pointer<SPropTagArray> lpproptagColumnsNew,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
),
    int Function(
  Pointer<COMObject> lptbl,
  Pointer<SPropTagArray> lpproptagColumnsNew,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
)>('HrAddColumns');

int HrAddColumnsEx(
  Pointer<COMObject> lptbl,
  Pointer<SPropTagArray> lpproptagColumnsNew,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  int lpfnFilterColumns,
) =>
    _HrAddColumnsEx(
      lptbl,
      lpproptagColumnsNew,
      lpAllocateBuffer,
      lpFreeBuffer,
      lpfnFilterColumns,
    );

late final _HrAddColumnsEx = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lptbl,
  Pointer<SPropTagArray> lpproptagColumnsNew,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  IntPtr lpfnFilterColumns,
),
    int Function(
  Pointer<COMObject> lptbl,
  Pointer<SPropTagArray> lpproptagColumnsNew,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  int lpfnFilterColumns,
)>('HrAddColumnsEx');

int HrAllocAdviseSink(
  Pointer<NativeFunction<LPNOTIFCALLBACK>> lpfnCallback,
  Pointer lpvContext,
  Pointer<Pointer<COMObject>> lppAdviseSink,
) =>
    _HrAllocAdviseSink(
      lpfnCallback,
      lpvContext,
      lppAdviseSink,
    );

late final _HrAllocAdviseSink = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LPNOTIFCALLBACK>> lpfnCallback,
  Pointer lpvContext,
  Pointer<Pointer<COMObject>> lppAdviseSink,
),
    int Function(
  Pointer<NativeFunction<LPNOTIFCALLBACK>> lpfnCallback,
  Pointer lpvContext,
  Pointer<Pointer<COMObject>> lppAdviseSink,
)>('HrAllocAdviseSink');

int HrDispatchNotifications(
  int ulFlags,
) =>
    _HrDispatchNotifications(
      ulFlags,
    );

late final _HrDispatchNotifications = _mapi32.lookupFunction<
    Int32 Function(
  Uint32 ulFlags,
),
    int Function(
  int ulFlags,
)>('HrDispatchNotifications');

int HrGetOneProp(
  Pointer<COMObject> lpMapiProp,
  int ulPropTag,
  Pointer<Pointer<SPropValue>> lppProp,
) =>
    _HrGetOneProp(
      lpMapiProp,
      ulPropTag,
      lppProp,
    );

late final _HrGetOneProp = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lpMapiProp,
  Uint32 ulPropTag,
  Pointer<Pointer<SPropValue>> lppProp,
),
    int Function(
  Pointer<COMObject> lpMapiProp,
  int ulPropTag,
  Pointer<Pointer<SPropValue>> lppProp,
)>('HrGetOneProp');

int HrIStorageFromStream(
  Pointer<COMObject> lpUnkIn,
  Pointer<GUID> lpInterface,
  int ulFlags,
  Pointer<Pointer<COMObject>> lppStorageOut,
) =>
    _HrIStorageFromStream(
      lpUnkIn,
      lpInterface,
      ulFlags,
      lppStorageOut,
    );

late final _HrIStorageFromStream = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lpUnkIn,
  Pointer<GUID> lpInterface,
  Uint32 ulFlags,
  Pointer<Pointer<COMObject>> lppStorageOut,
),
    int Function(
  Pointer<COMObject> lpUnkIn,
  Pointer<GUID> lpInterface,
  int ulFlags,
  Pointer<Pointer<COMObject>> lppStorageOut,
)>('HrIStorageFromStream');

int HrQueryAllRows(
  Pointer<COMObject> lpTable,
  Pointer<SPropTagArray> lpPropTags,
  Pointer<SRestriction> lpRestriction,
  Pointer<SSortOrderSet> lpSortOrderSet,
  int crowsMax,
  Pointer<Pointer<SRowSet>> lppRows,
) =>
    _HrQueryAllRows(
      lpTable,
      lpPropTags,
      lpRestriction,
      lpSortOrderSet,
      crowsMax,
      lppRows,
    );

late final _HrQueryAllRows = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lpTable,
  Pointer<SPropTagArray> lpPropTags,
  Pointer<SRestriction> lpRestriction,
  Pointer<SSortOrderSet> lpSortOrderSet,
  Int32 crowsMax,
  Pointer<Pointer<SRowSet>> lppRows,
),
    int Function(
  Pointer<COMObject> lpTable,
  Pointer<SPropTagArray> lpPropTags,
  Pointer<SRestriction> lpRestriction,
  Pointer<SSortOrderSet> lpSortOrderSet,
  int crowsMax,
  Pointer<Pointer<SRowSet>> lppRows,
)>('HrQueryAllRows');

int HrSetOneProp(
  Pointer<COMObject> lpMapiProp,
  Pointer<SPropValue> lpProp,
) =>
    _HrSetOneProp(
      lpMapiProp,
      lpProp,
    );

late final _HrSetOneProp = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lpMapiProp,
  Pointer<SPropValue> lpProp,
),
    int Function(
  Pointer<COMObject> lpMapiProp,
  Pointer<SPropValue> lpProp,
)>('HrSetOneProp');

int HrThisThreadAdviseSink(
  Pointer<COMObject> lpAdviseSink,
  Pointer<Pointer<COMObject>> lppAdviseSink,
) =>
    _HrThisThreadAdviseSink(
      lpAdviseSink,
      lppAdviseSink,
    );

late final _HrThisThreadAdviseSink = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lpAdviseSink,
  Pointer<Pointer<COMObject>> lppAdviseSink,
),
    int Function(
  Pointer<COMObject> lpAdviseSink,
  Pointer<Pointer<COMObject>> lppAdviseSink,
)>('HrThisThreadAdviseSink');

int LPropCompareProp(
  Pointer<SPropValue> lpSPropValueA,
  Pointer<SPropValue> lpSPropValueB,
) =>
    _LPropCompareProp(
      lpSPropValueA,
      lpSPropValueB,
    );

late final _LPropCompareProp = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<SPropValue> lpSPropValueA,
  Pointer<SPropValue> lpSPropValueB,
),
    int Function(
  Pointer<SPropValue> lpSPropValueA,
  Pointer<SPropValue> lpSPropValueB,
)>('LPropCompareProp');

Pointer<SPropValue> LpValFindProp(
  int ulPropTag,
  int cValues,
  Pointer<SPropValue> lpPropArray,
) =>
    _LpValFindProp(
      ulPropTag,
      cValues,
      lpPropArray,
    );

late final _LpValFindProp = _mapi32.lookupFunction<
    Pointer<SPropValue> Function(
  Uint32 ulPropTag,
  Uint32 cValues,
  Pointer<SPropValue> lpPropArray,
),
    Pointer<SPropValue> Function(
  int ulPropTag,
  int cValues,
  Pointer<SPropValue> lpPropArray,
)>('LpValFindProp');

void MAPIDeinitIdle() => _MAPIDeinitIdle();

late final _MAPIDeinitIdle =
    _mapi32.lookupFunction<Void Function(), void Function()>('MAPIDeinitIdle');

Pointer<COMObject> MAPIGetDefaultMalloc() => _MAPIGetDefaultMalloc();

late final _MAPIGetDefaultMalloc = _mapi32.lookupFunction<
    Pointer<COMObject> Function(),
    Pointer<COMObject> Function()>('MAPIGetDefaultMalloc');

int MAPIInitIdle(
  Pointer lpvReserved,
) =>
    _MAPIInitIdle(
      lpvReserved,
    );

late final _MAPIInitIdle = _mapi32.lookupFunction<
    Int32 Function(
  Pointer lpvReserved,
),
    int Function(
  Pointer lpvReserved,
)>('MAPIInitIdle');

int OpenStreamOnFile(
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  int ulFlags,
  Pointer<Int8> lpszFileName,
  Pointer<Int8> lpszPrefix,
  Pointer<Pointer<COMObject>> lppStream,
) =>
    _OpenStreamOnFile(
      lpAllocateBuffer,
      lpFreeBuffer,
      ulFlags,
      lpszFileName,
      lpszPrefix,
      lppStream,
    );

late final _OpenStreamOnFile = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  Uint32 ulFlags,
  Pointer<Int8> lpszFileName,
  Pointer<Int8> lpszPrefix,
  Pointer<Pointer<COMObject>> lppStream,
),
    int Function(
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<NativeFunction<LPFREEBUFFER>> lpFreeBuffer,
  int ulFlags,
  Pointer<Int8> lpszFileName,
  Pointer<Int8> lpszPrefix,
  Pointer<Pointer<COMObject>> lppStream,
)>('OpenStreamOnFile');

Pointer<SPropValue> PpropFindProp(
  Pointer<SPropValue> lpPropArray,
  int cValues,
  int ulPropTag,
) =>
    _PpropFindProp(
      lpPropArray,
      cValues,
      ulPropTag,
    );

late final _PpropFindProp = _mapi32.lookupFunction<
    Pointer<SPropValue> Function(
  Pointer<SPropValue> lpPropArray,
  Uint32 cValues,
  Uint32 ulPropTag,
),
    Pointer<SPropValue> Function(
  Pointer<SPropValue> lpPropArray,
  int cValues,
  int ulPropTag,
)>('PpropFindProp');

int PropCopyMore(
  Pointer<SPropValue> lpSPropValueDest,
  Pointer<SPropValue> lpSPropValueSrc,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpfAllocMore,
  Pointer lpvObject,
) =>
    _PropCopyMore(
      lpSPropValueDest,
      lpSPropValueSrc,
      lpfAllocMore,
      lpvObject,
    );

late final _PropCopyMore = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<SPropValue> lpSPropValueDest,
  Pointer<SPropValue> lpSPropValueSrc,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpfAllocMore,
  Pointer lpvObject,
),
    int Function(
  Pointer<SPropValue> lpSPropValueDest,
  Pointer<SPropValue> lpSPropValueSrc,
  Pointer<NativeFunction<LPALLOCATEMORE>> lpfAllocMore,
  Pointer lpvObject,
)>('PropCopyMore');

int RTFSync(
  Pointer<COMObject> lpMessage,
  int ulFlags,
  Pointer<Int32> lpfMessageUpdated,
) =>
    _RTFSync(
      lpMessage,
      ulFlags,
      lpfMessageUpdated,
    );

late final _RTFSync = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lpMessage,
  Uint32 ulFlags,
  Pointer<Int32> lpfMessageUpdated,
),
    int Function(
  Pointer<COMObject> lpMessage,
  int ulFlags,
  Pointer<Int32> lpfMessageUpdated,
)>('RTFSync');

int ScCopyNotifications(
  int cNotification,
  Pointer<NOTIFICATION> lpNotifications,
  Pointer lpvDst,
  Pointer<Uint32> lpcb,
) =>
    _ScCopyNotifications(
      cNotification,
      lpNotifications,
      lpvDst,
      lpcb,
    );

late final _ScCopyNotifications = _mapi32.lookupFunction<
    Int32 Function(
  Int32 cNotification,
  Pointer<NOTIFICATION> lpNotifications,
  Pointer lpvDst,
  Pointer<Uint32> lpcb,
),
    int Function(
  int cNotification,
  Pointer<NOTIFICATION> lpNotifications,
  Pointer lpvDst,
  Pointer<Uint32> lpcb,
)>('ScCopyNotifications');

int ScCopyProps(
  int cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer lpvDst,
  Pointer<Uint32> lpcb,
) =>
    _ScCopyProps(
      cValues,
      lpPropArray,
      lpvDst,
      lpcb,
    );

late final _ScCopyProps = _mapi32.lookupFunction<
    Int32 Function(
  Int32 cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer lpvDst,
  Pointer<Uint32> lpcb,
),
    int Function(
  int cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer lpvDst,
  Pointer<Uint32> lpcb,
)>('ScCopyProps');

int ScCountNotifications(
  int cNotifications,
  Pointer<NOTIFICATION> lpNotifications,
  Pointer<Uint32> lpcb,
) =>
    _ScCountNotifications(
      cNotifications,
      lpNotifications,
      lpcb,
    );

late final _ScCountNotifications = _mapi32.lookupFunction<
    Int32 Function(
  Int32 cNotifications,
  Pointer<NOTIFICATION> lpNotifications,
  Pointer<Uint32> lpcb,
),
    int Function(
  int cNotifications,
  Pointer<NOTIFICATION> lpNotifications,
  Pointer<Uint32> lpcb,
)>('ScCountNotifications');

int ScCountProps(
  int cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer<Uint32> lpcb,
) =>
    _ScCountProps(
      cValues,
      lpPropArray,
      lpcb,
    );

late final _ScCountProps = _mapi32.lookupFunction<
    Int32 Function(
  Int32 cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer<Uint32> lpcb,
),
    int Function(
  int cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer<Uint32> lpcb,
)>('ScCountProps');

int ScCreateConversationIndex(
  int cbParent,
  Pointer<Uint8> lpbParent,
  Pointer<Uint32> lpcbConvIndex,
  Pointer<Pointer<Uint8>> lppbConvIndex,
) =>
    _ScCreateConversationIndex(
      cbParent,
      lpbParent,
      lpcbConvIndex,
      lppbConvIndex,
    );

late final _ScCreateConversationIndex = _mapi32.lookupFunction<
    Int32 Function(
  Uint32 cbParent,
  Pointer<Uint8> lpbParent,
  Pointer<Uint32> lpcbConvIndex,
  Pointer<Pointer<Uint8>> lppbConvIndex,
),
    int Function(
  int cbParent,
  Pointer<Uint8> lpbParent,
  Pointer<Uint32> lpcbConvIndex,
  Pointer<Pointer<Uint8>> lppbConvIndex,
)>('ScCreateConversationIndex');

int ScDupPropset(
  int cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<Pointer<SPropValue>> lppPropArray,
) =>
    _ScDupPropset(
      cValues,
      lpPropArray,
      lpAllocateBuffer,
      lppPropArray,
    );

late final _ScDupPropset = _mapi32.lookupFunction<
    Int32 Function(
  Int32 cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<Pointer<SPropValue>> lppPropArray,
),
    int Function(
  int cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer<NativeFunction<LPALLOCATEBUFFER>> lpAllocateBuffer,
  Pointer<Pointer<SPropValue>> lppPropArray,
)>('ScDupPropset');

int ScInitMapiUtil(
  int ulFlags,
) =>
    _ScInitMapiUtil(
      ulFlags,
    );

late final _ScInitMapiUtil = _mapi32.lookupFunction<
    Int32 Function(
  Uint32 ulFlags,
),
    int Function(
  int ulFlags,
)>('ScInitMapiUtil');

int ScLocalPathFromUNC(
  Pointer<Utf8> lpszUNC,
  Pointer<Utf8> lpszLocal,
  int cchLocal,
) =>
    _ScLocalPathFromUNC(
      lpszUNC,
      lpszLocal,
      cchLocal,
    );

late final _ScLocalPathFromUNC = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf8> lpszUNC,
  Pointer<Utf8> lpszLocal,
  Uint32 cchLocal,
),
    int Function(
  Pointer<Utf8> lpszUNC,
  Pointer<Utf8> lpszLocal,
  int cchLocal,
)>('ScLocalPathFromUNC');

int ScRelocNotifications(
  int cNotification,
  Pointer<NOTIFICATION> lpNotifications,
  Pointer lpvBaseOld,
  Pointer lpvBaseNew,
  Pointer<Uint32> lpcb,
) =>
    _ScRelocNotifications(
      cNotification,
      lpNotifications,
      lpvBaseOld,
      lpvBaseNew,
      lpcb,
    );

late final _ScRelocNotifications = _mapi32.lookupFunction<
    Int32 Function(
  Int32 cNotification,
  Pointer<NOTIFICATION> lpNotifications,
  Pointer lpvBaseOld,
  Pointer lpvBaseNew,
  Pointer<Uint32> lpcb,
),
    int Function(
  int cNotification,
  Pointer<NOTIFICATION> lpNotifications,
  Pointer lpvBaseOld,
  Pointer lpvBaseNew,
  Pointer<Uint32> lpcb,
)>('ScRelocNotifications');

int ScRelocProps(
  int cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer lpvBaseOld,
  Pointer lpvBaseNew,
  Pointer<Uint32> lpcb,
) =>
    _ScRelocProps(
      cValues,
      lpPropArray,
      lpvBaseOld,
      lpvBaseNew,
      lpcb,
    );

late final _ScRelocProps = _mapi32.lookupFunction<
    Int32 Function(
  Int32 cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer lpvBaseOld,
  Pointer lpvBaseNew,
  Pointer<Uint32> lpcb,
),
    int Function(
  int cValues,
  Pointer<SPropValue> lpPropArray,
  Pointer lpvBaseOld,
  Pointer lpvBaseNew,
  Pointer<Uint32> lpcb,
)>('ScRelocProps');

int ScUNCFromLocalPath(
  Pointer<Utf8> lpszLocal,
  Pointer<Utf8> lpszUNC,
  int cchUNC,
) =>
    _ScUNCFromLocalPath(
      lpszLocal,
      lpszUNC,
      cchUNC,
    );

late final _ScUNCFromLocalPath = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<Utf8> lpszLocal,
  Pointer<Utf8> lpszUNC,
  Uint32 cchUNC,
),
    int Function(
  Pointer<Utf8> lpszLocal,
  Pointer<Utf8> lpszUNC,
  int cchUNC,
)>('ScUNCFromLocalPath');

Pointer<Int8> SzFindCh(
  Pointer<Int8> lpsz,
  int ch,
) =>
    _SzFindCh(
      lpsz,
      ch,
    );

late final _SzFindCh = _mapi32.lookupFunction<
    Pointer<Int8> Function(
  Pointer<Int8> lpsz,
  Uint16 ch,
),
    Pointer<Int8> Function(
  Pointer<Int8> lpsz,
  int ch,
)>('SzFindCh');

Pointer<Int8> SzFindLastCh(
  Pointer<Int8> lpsz,
  int ch,
) =>
    _SzFindLastCh(
      lpsz,
      ch,
    );

late final _SzFindLastCh = _mapi32.lookupFunction<
    Pointer<Int8> Function(
  Pointer<Int8> lpsz,
  Uint16 ch,
),
    Pointer<Int8> Function(
  Pointer<Int8> lpsz,
  int ch,
)>('SzFindLastCh');

Pointer<Int8> SzFindSz(
  Pointer<Int8> lpsz,
  Pointer<Int8> lpszKey,
) =>
    _SzFindSz(
      lpsz,
      lpszKey,
    );

late final _SzFindSz = _mapi32.lookupFunction<
    Pointer<Int8> Function(
  Pointer<Int8> lpsz,
  Pointer<Int8> lpszKey,
),
    Pointer<Int8> Function(
  Pointer<Int8> lpsz,
  Pointer<Int8> lpszKey,
)>('SzFindSz');

int UFromSz(
  Pointer<Int8> lpsz,
) =>
    _UFromSz(
      lpsz,
    );

late final _UFromSz = _mapi32.lookupFunction<
    Uint32 Function(
  Pointer<Int8> lpsz,
),
    int Function(
  Pointer<Int8> lpsz,
)>('UFromSz');

int UlAddRef(
  Pointer lpunk,
) =>
    _UlAddRef(
      lpunk,
    );

late final _UlAddRef = _mapi32.lookupFunction<
    Uint32 Function(
  Pointer lpunk,
),
    int Function(
  Pointer lpunk,
)>('UlAddRef');

int UlPropSize(
  Pointer<SPropValue> lpSPropValue,
) =>
    _UlPropSize(
      lpSPropValue,
    );

late final _UlPropSize = _mapi32.lookupFunction<
    Uint32 Function(
  Pointer<SPropValue> lpSPropValue,
),
    int Function(
  Pointer<SPropValue> lpSPropValue,
)>('UlPropSize');

int UlRelease(
  Pointer lpunk,
) =>
    _UlRelease(
      lpunk,
    );

late final _UlRelease = _mapi32.lookupFunction<
    Uint32 Function(
  Pointer lpunk,
),
    int Function(
  Pointer lpunk,
)>('UlRelease');

int WrapCompressedRTFStream(
  Pointer<COMObject> lpCompressedRTFStream,
  int ulFlags,
  Pointer<Pointer<COMObject>> lpUncompressedRTFStream,
) =>
    _WrapCompressedRTFStream(
      lpCompressedRTFStream,
      ulFlags,
      lpUncompressedRTFStream,
    );

late final _WrapCompressedRTFStream = _mapi32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lpCompressedRTFStream,
  Uint32 ulFlags,
  Pointer<Pointer<COMObject>> lpUncompressedRTFStream,
),
    int Function(
  Pointer<COMObject> lpCompressedRTFStream,
  int ulFlags,
  Pointer<Pointer<COMObject>> lpUncompressedRTFStream,
)>('WrapCompressedRTFStream');

int WrapStoreEntryID(
  int ulFlags,
  Pointer<Int8> lpszDLLName,
  int cbOrigEntry,
  Pointer<ENTRYID> lpOrigEntry,
  Pointer<Uint32> lpcbWrappedEntry,
  Pointer<Pointer<ENTRYID>> lppWrappedEntry,
) =>
    _WrapStoreEntryID(
      ulFlags,
      lpszDLLName,
      cbOrigEntry,
      lpOrigEntry,
      lpcbWrappedEntry,
      lppWrappedEntry,
    );

late final _WrapStoreEntryID = _mapi32.lookupFunction<
    Int32 Function(
  Uint32 ulFlags,
  Pointer<Int8> lpszDLLName,
  Uint32 cbOrigEntry,
  Pointer<ENTRYID> lpOrigEntry,
  Pointer<Uint32> lpcbWrappedEntry,
  Pointer<Pointer<ENTRYID>> lppWrappedEntry,
),
    int Function(
  int ulFlags,
  Pointer<Int8> lpszDLLName,
  int cbOrigEntry,
  Pointer<ENTRYID> lpOrigEntry,
  Pointer<Uint32> lpcbWrappedEntry,
  Pointer<Pointer<ENTRYID>> lppWrappedEntry,
)>('WrapStoreEntryID');
