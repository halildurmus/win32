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
import '../../system/dataexchange/structs.g.dart';
import '../../system/dataexchange/callbacks.g.dart';
import '../../security/structs.g.dart';
import '../../graphics/gdi/structs.g.dart'; // -----------------------------------------------------------------------

// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int AddClipboardFormatListener(
  int hwnd,
) =>
    _AddClipboardFormatListener(
      hwnd,
    );

late final _AddClipboardFormatListener = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('AddClipboardFormatListener');

int ChangeClipboardChain(
  int hWndRemove,
  int hWndNewNext,
) =>
    _ChangeClipboardChain(
      hWndRemove,
      hWndNewNext,
    );

late final _ChangeClipboardChain = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWndRemove,
  IntPtr hWndNewNext,
),
    int Function(
  int hWndRemove,
  int hWndNewNext,
)>('ChangeClipboardChain');

int CloseClipboard() => _CloseClipboard();

late final _CloseClipboard =
    _user32.lookupFunction<Int32 Function(), int Function()>('CloseClipboard');

int CountClipboardFormats() => _CountClipboardFormats();

late final _CountClipboardFormats = _user32
    .lookupFunction<Int32 Function(), int Function()>('CountClipboardFormats');

int DdeAbandonTransaction(
  int idInst,
  int hConv,
  int idTransaction,
) =>
    _DdeAbandonTransaction(
      idInst,
      hConv,
      idTransaction,
    );

late final _DdeAbandonTransaction = _user32.lookupFunction<
    Int32 Function(
  Uint32 idInst,
  IntPtr hConv,
  Uint32 idTransaction,
),
    int Function(
  int idInst,
  int hConv,
  int idTransaction,
)>('DdeAbandonTransaction');

Pointer<Uint8> DdeAccessData(
  int hData,
  Pointer<Uint32> pcbDataSize,
) =>
    _DdeAccessData(
      hData,
      pcbDataSize,
    );

late final _DdeAccessData = _user32.lookupFunction<
    Pointer<Uint8> Function(
  IntPtr hData,
  Pointer<Uint32> pcbDataSize,
),
    Pointer<Uint8> Function(
  int hData,
  Pointer<Uint32> pcbDataSize,
)>('DdeAccessData');

int DdeAddData(
  int hData,
  Pointer<Uint8> pSrc,
  int cb,
  int cbOff,
) =>
    _DdeAddData(
      hData,
      pSrc,
      cb,
      cbOff,
    );

late final _DdeAddData = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hData,
  Pointer<Uint8> pSrc,
  Uint32 cb,
  Uint32 cbOff,
),
    int Function(
  int hData,
  Pointer<Uint8> pSrc,
  int cb,
  int cbOff,
)>('DdeAddData');

int DdeClientTransaction(
  Pointer<Uint8> pData,
  int cbData,
  int hConv,
  int hszItem,
  int wFmt,
  int wType,
  int dwTimeout,
  Pointer<Uint32> pdwResult,
) =>
    _DdeClientTransaction(
      pData,
      cbData,
      hConv,
      hszItem,
      wFmt,
      wType,
      dwTimeout,
      pdwResult,
    );

late final _DdeClientTransaction = _user32.lookupFunction<
    IntPtr Function(
  Pointer<Uint8> pData,
  Uint32 cbData,
  IntPtr hConv,
  IntPtr hszItem,
  Uint32 wFmt,
  Uint32 wType,
  Uint32 dwTimeout,
  Pointer<Uint32> pdwResult,
),
    int Function(
  Pointer<Uint8> pData,
  int cbData,
  int hConv,
  int hszItem,
  int wFmt,
  int wType,
  int dwTimeout,
  Pointer<Uint32> pdwResult,
)>('DdeClientTransaction');

int DdeCmpStringHandles(
  int hsz1,
  int hsz2,
) =>
    _DdeCmpStringHandles(
      hsz1,
      hsz2,
    );

late final _DdeCmpStringHandles = _user32.lookupFunction<
    Int32 Function(
  IntPtr hsz1,
  IntPtr hsz2,
),
    int Function(
  int hsz1,
  int hsz2,
)>('DdeCmpStringHandles');

int DdeConnect(
  int idInst,
  int hszService,
  int hszTopic,
  Pointer<CONVCONTEXT> pCC,
) =>
    _DdeConnect(
      idInst,
      hszService,
      hszTopic,
      pCC,
    );

late final _DdeConnect = _user32.lookupFunction<
    IntPtr Function(
  Uint32 idInst,
  IntPtr hszService,
  IntPtr hszTopic,
  Pointer<CONVCONTEXT> pCC,
),
    int Function(
  int idInst,
  int hszService,
  int hszTopic,
  Pointer<CONVCONTEXT> pCC,
)>('DdeConnect');

int DdeConnectList(
  int idInst,
  int hszService,
  int hszTopic,
  int hConvList,
  Pointer<CONVCONTEXT> pCC,
) =>
    _DdeConnectList(
      idInst,
      hszService,
      hszTopic,
      hConvList,
      pCC,
    );

late final _DdeConnectList = _user32.lookupFunction<
    IntPtr Function(
  Uint32 idInst,
  IntPtr hszService,
  IntPtr hszTopic,
  IntPtr hConvList,
  Pointer<CONVCONTEXT> pCC,
),
    int Function(
  int idInst,
  int hszService,
  int hszTopic,
  int hConvList,
  Pointer<CONVCONTEXT> pCC,
)>('DdeConnectList');

int DdeCreateDataHandle(
  int idInst,
  Pointer<Uint8> pSrc,
  int cb,
  int cbOff,
  int hszItem,
  int wFmt,
  int afCmd,
) =>
    _DdeCreateDataHandle(
      idInst,
      pSrc,
      cb,
      cbOff,
      hszItem,
      wFmt,
      afCmd,
    );

late final _DdeCreateDataHandle = _user32.lookupFunction<
    IntPtr Function(
  Uint32 idInst,
  Pointer<Uint8> pSrc,
  Uint32 cb,
  Uint32 cbOff,
  IntPtr hszItem,
  Uint32 wFmt,
  Uint32 afCmd,
),
    int Function(
  int idInst,
  Pointer<Uint8> pSrc,
  int cb,
  int cbOff,
  int hszItem,
  int wFmt,
  int afCmd,
)>('DdeCreateDataHandle');

int DdeCreateStringHandle(
  int idInst,
  Pointer<Utf16> psz,
  int iCodePage,
) =>
    _DdeCreateStringHandle(
      idInst,
      psz,
      iCodePage,
    );

late final _DdeCreateStringHandle = _user32.lookupFunction<
    IntPtr Function(
  Uint32 idInst,
  Pointer<Utf16> psz,
  Int32 iCodePage,
),
    int Function(
  int idInst,
  Pointer<Utf16> psz,
  int iCodePage,
)>('DdeCreateStringHandleW');

int DdeDisconnect(
  int hConv,
) =>
    _DdeDisconnect(
      hConv,
    );

late final _DdeDisconnect = _user32.lookupFunction<
    Int32 Function(
  IntPtr hConv,
),
    int Function(
  int hConv,
)>('DdeDisconnect');

int DdeDisconnectList(
  int hConvList,
) =>
    _DdeDisconnectList(
      hConvList,
    );

late final _DdeDisconnectList = _user32.lookupFunction<
    Int32 Function(
  IntPtr hConvList,
),
    int Function(
  int hConvList,
)>('DdeDisconnectList');

int DdeEnableCallback(
  int idInst,
  int hConv,
  int wCmd,
) =>
    _DdeEnableCallback(
      idInst,
      hConv,
      wCmd,
    );

late final _DdeEnableCallback = _user32.lookupFunction<
    Int32 Function(
  Uint32 idInst,
  IntPtr hConv,
  Uint32 wCmd,
),
    int Function(
  int idInst,
  int hConv,
  int wCmd,
)>('DdeEnableCallback');

int DdeFreeDataHandle(
  int hData,
) =>
    _DdeFreeDataHandle(
      hData,
    );

late final _DdeFreeDataHandle = _user32.lookupFunction<
    Int32 Function(
  IntPtr hData,
),
    int Function(
  int hData,
)>('DdeFreeDataHandle');

int DdeFreeStringHandle(
  int idInst,
  int hsz,
) =>
    _DdeFreeStringHandle(
      idInst,
      hsz,
    );

late final _DdeFreeStringHandle = _user32.lookupFunction<
    Int32 Function(
  Uint32 idInst,
  IntPtr hsz,
),
    int Function(
  int idInst,
  int hsz,
)>('DdeFreeStringHandle');

int DdeGetData(
  int hData,
  Pointer<Uint8> pDst,
  int cbMax,
  int cbOff,
) =>
    _DdeGetData(
      hData,
      pDst,
      cbMax,
      cbOff,
    );

late final _DdeGetData = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hData,
  Pointer<Uint8> pDst,
  Uint32 cbMax,
  Uint32 cbOff,
),
    int Function(
  int hData,
  Pointer<Uint8> pDst,
  int cbMax,
  int cbOff,
)>('DdeGetData');

int DdeGetLastError(
  int idInst,
) =>
    _DdeGetLastError(
      idInst,
    );

late final _DdeGetLastError = _user32.lookupFunction<
    Uint32 Function(
  Uint32 idInst,
),
    int Function(
  int idInst,
)>('DdeGetLastError');

int DdeImpersonateClient(
  int hConv,
) =>
    _DdeImpersonateClient(
      hConv,
    );

late final _DdeImpersonateClient = _user32.lookupFunction<
    Int32 Function(
  IntPtr hConv,
),
    int Function(
  int hConv,
)>('DdeImpersonateClient');

int DdeInitialize(
  Pointer<Uint32> pidInst,
  Pointer<NativeFunction<PFNCALLBACK>> pfnCallback,
  int afCmd,
  int ulRes,
) =>
    _DdeInitialize(
      pidInst,
      pfnCallback,
      afCmd,
      ulRes,
    );

late final _DdeInitialize = _user32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pidInst,
  Pointer<NativeFunction<PFNCALLBACK>> pfnCallback,
  Uint32 afCmd,
  Uint32 ulRes,
),
    int Function(
  Pointer<Uint32> pidInst,
  Pointer<NativeFunction<PFNCALLBACK>> pfnCallback,
  int afCmd,
  int ulRes,
)>('DdeInitializeW');

int DdeKeepStringHandle(
  int idInst,
  int hsz,
) =>
    _DdeKeepStringHandle(
      idInst,
      hsz,
    );

late final _DdeKeepStringHandle = _user32.lookupFunction<
    Int32 Function(
  Uint32 idInst,
  IntPtr hsz,
),
    int Function(
  int idInst,
  int hsz,
)>('DdeKeepStringHandle');

int DdeNameService(
  int idInst,
  int hsz1,
  int hsz2,
  int afCmd,
) =>
    _DdeNameService(
      idInst,
      hsz1,
      hsz2,
      afCmd,
    );

late final _DdeNameService = _user32.lookupFunction<
    IntPtr Function(
  Uint32 idInst,
  IntPtr hsz1,
  IntPtr hsz2,
  Uint32 afCmd,
),
    int Function(
  int idInst,
  int hsz1,
  int hsz2,
  int afCmd,
)>('DdeNameService');

int DdePostAdvise(
  int idInst,
  int hszTopic,
  int hszItem,
) =>
    _DdePostAdvise(
      idInst,
      hszTopic,
      hszItem,
    );

late final _DdePostAdvise = _user32.lookupFunction<
    Int32 Function(
  Uint32 idInst,
  IntPtr hszTopic,
  IntPtr hszItem,
),
    int Function(
  int idInst,
  int hszTopic,
  int hszItem,
)>('DdePostAdvise');

int DdeQueryConvInfo(
  int hConv,
  int idTransaction,
  Pointer<CONVINFO> pConvInfo,
) =>
    _DdeQueryConvInfo(
      hConv,
      idTransaction,
      pConvInfo,
    );

late final _DdeQueryConvInfo = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hConv,
  Uint32 idTransaction,
  Pointer<CONVINFO> pConvInfo,
),
    int Function(
  int hConv,
  int idTransaction,
  Pointer<CONVINFO> pConvInfo,
)>('DdeQueryConvInfo');

int DdeQueryNextServer(
  int hConvList,
  int hConvPrev,
) =>
    _DdeQueryNextServer(
      hConvList,
      hConvPrev,
    );

late final _DdeQueryNextServer = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hConvList,
  IntPtr hConvPrev,
),
    int Function(
  int hConvList,
  int hConvPrev,
)>('DdeQueryNextServer');

int DdeQueryString(
  int idInst,
  int hsz,
  Pointer<Utf16> psz,
  int cchMax,
  int iCodePage,
) =>
    _DdeQueryString(
      idInst,
      hsz,
      psz,
      cchMax,
      iCodePage,
    );

late final _DdeQueryString = _user32.lookupFunction<
    Uint32 Function(
  Uint32 idInst,
  IntPtr hsz,
  Pointer<Utf16> psz,
  Uint32 cchMax,
  Int32 iCodePage,
),
    int Function(
  int idInst,
  int hsz,
  Pointer<Utf16> psz,
  int cchMax,
  int iCodePage,
)>('DdeQueryStringW');

int DdeReconnect(
  int hConv,
) =>
    _DdeReconnect(
      hConv,
    );

late final _DdeReconnect = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hConv,
),
    int Function(
  int hConv,
)>('DdeReconnect');

int DdeSetQualityOfService(
  int hwndClient,
  Pointer<SECURITY_QUALITY_OF_SERVICE> pqosNew,
  Pointer<SECURITY_QUALITY_OF_SERVICE> pqosPrev,
) =>
    _DdeSetQualityOfService(
      hwndClient,
      pqosNew,
      pqosPrev,
    );

late final _DdeSetQualityOfService = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwndClient,
  Pointer<SECURITY_QUALITY_OF_SERVICE> pqosNew,
  Pointer<SECURITY_QUALITY_OF_SERVICE> pqosPrev,
),
    int Function(
  int hwndClient,
  Pointer<SECURITY_QUALITY_OF_SERVICE> pqosNew,
  Pointer<SECURITY_QUALITY_OF_SERVICE> pqosPrev,
)>('DdeSetQualityOfService');

int DdeSetUserHandle(
  int hConv,
  int id,
  int hUser,
) =>
    _DdeSetUserHandle(
      hConv,
      id,
      hUser,
    );

late final _DdeSetUserHandle = _user32.lookupFunction<
    Int32 Function(
  IntPtr hConv,
  Uint32 id,
  IntPtr hUser,
),
    int Function(
  int hConv,
  int id,
  int hUser,
)>('DdeSetUserHandle');

int DdeUnaccessData(
  int hData,
) =>
    _DdeUnaccessData(
      hData,
    );

late final _DdeUnaccessData = _user32.lookupFunction<
    Int32 Function(
  IntPtr hData,
),
    int Function(
  int hData,
)>('DdeUnaccessData');

int DdeUninitialize(
  int idInst,
) =>
    _DdeUninitialize(
      idInst,
    );

late final _DdeUninitialize = _user32.lookupFunction<
    Int32 Function(
  Uint32 idInst,
),
    int Function(
  int idInst,
)>('DdeUninitialize');

int EmptyClipboard() => _EmptyClipboard();

late final _EmptyClipboard =
    _user32.lookupFunction<Int32 Function(), int Function()>('EmptyClipboard');

int EnumClipboardFormats(
  int format,
) =>
    _EnumClipboardFormats(
      format,
    );

late final _EnumClipboardFormats = _user32.lookupFunction<
    Uint32 Function(
  Uint32 format,
),
    int Function(
  int format,
)>('EnumClipboardFormats');

int FreeDDElParam(
  int msg,
  int lParam,
) =>
    _FreeDDElParam(
      msg,
      lParam,
    );

late final _FreeDDElParam = _user32.lookupFunction<
    Int32 Function(
  Uint32 msg,
  IntPtr lParam,
),
    int Function(
  int msg,
  int lParam,
)>('FreeDDElParam');

int GetClipboardData(
  int uFormat,
) =>
    _GetClipboardData(
      uFormat,
    );

late final _GetClipboardData = _user32.lookupFunction<
    IntPtr Function(
  Uint32 uFormat,
),
    int Function(
  int uFormat,
)>('GetClipboardData');

int GetClipboardFormatName(
  int format,
  Pointer<Utf16> lpszFormatName,
  int cchMaxCount,
) =>
    _GetClipboardFormatName(
      format,
      lpszFormatName,
      cchMaxCount,
    );

late final _GetClipboardFormatName = _user32.lookupFunction<
    Int32 Function(
  Uint32 format,
  Pointer<Utf16> lpszFormatName,
  Int32 cchMaxCount,
),
    int Function(
  int format,
  Pointer<Utf16> lpszFormatName,
  int cchMaxCount,
)>('GetClipboardFormatNameW');

int GetClipboardOwner() => _GetClipboardOwner();

late final _GetClipboardOwner = _user32
    .lookupFunction<IntPtr Function(), int Function()>('GetClipboardOwner');

int GetClipboardSequenceNumber() => _GetClipboardSequenceNumber();

late final _GetClipboardSequenceNumber =
    _user32.lookupFunction<Uint32 Function(), int Function()>(
        'GetClipboardSequenceNumber');

int GetClipboardViewer() => _GetClipboardViewer();

late final _GetClipboardViewer = _user32
    .lookupFunction<IntPtr Function(), int Function()>('GetClipboardViewer');

int GetOpenClipboardWindow() => _GetOpenClipboardWindow();

late final _GetOpenClipboardWindow =
    _user32.lookupFunction<IntPtr Function(), int Function()>(
        'GetOpenClipboardWindow');

int GetPriorityClipboardFormat(
  Pointer<Uint32> paFormatPriorityList,
  int cFormats,
) =>
    _GetPriorityClipboardFormat(
      paFormatPriorityList,
      cFormats,
    );

late final _GetPriorityClipboardFormat = _user32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> paFormatPriorityList,
  Int32 cFormats,
),
    int Function(
  Pointer<Uint32> paFormatPriorityList,
  int cFormats,
)>('GetPriorityClipboardFormat');

int GetUpdatedClipboardFormats(
  Pointer<Uint32> lpuiFormats,
  int cFormats,
  Pointer<Uint32> pcFormatsOut,
) =>
    _GetUpdatedClipboardFormats(
      lpuiFormats,
      cFormats,
      pcFormatsOut,
    );

late final _GetUpdatedClipboardFormats = _user32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpuiFormats,
  Uint32 cFormats,
  Pointer<Uint32> pcFormatsOut,
),
    int Function(
  Pointer<Uint32> lpuiFormats,
  int cFormats,
  Pointer<Uint32> pcFormatsOut,
)>('GetUpdatedClipboardFormats');

int ImpersonateDdeClientWindow(
  int hWndClient,
  int hWndServer,
) =>
    _ImpersonateDdeClientWindow(
      hWndClient,
      hWndServer,
    );

late final _ImpersonateDdeClientWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWndClient,
  IntPtr hWndServer,
),
    int Function(
  int hWndClient,
  int hWndServer,
)>('ImpersonateDdeClientWindow');

int IsClipboardFormatAvailable(
  int format,
) =>
    _IsClipboardFormatAvailable(
      format,
    );

late final _IsClipboardFormatAvailable = _user32.lookupFunction<
    Int32 Function(
  Uint32 format,
),
    int Function(
  int format,
)>('IsClipboardFormatAvailable');

int OpenClipboard(
  int hWndNewOwner,
) =>
    _OpenClipboard(
      hWndNewOwner,
    );

late final _OpenClipboard = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWndNewOwner,
),
    int Function(
  int hWndNewOwner,
)>('OpenClipboard');

int PackDDElParam(
  int msg,
  int uiLo,
  int uiHi,
) =>
    _PackDDElParam(
      msg,
      uiLo,
      uiHi,
    );

late final _PackDDElParam = _user32.lookupFunction<
    IntPtr Function(
  Uint32 msg,
  IntPtr uiLo,
  IntPtr uiHi,
),
    int Function(
  int msg,
  int uiLo,
  int uiHi,
)>('PackDDElParam');

int RegisterClipboardFormat(
  Pointer<Utf16> lpszFormat,
) =>
    _RegisterClipboardFormat(
      lpszFormat,
    );

late final _RegisterClipboardFormat = _user32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpszFormat,
),
    int Function(
  Pointer<Utf16> lpszFormat,
)>('RegisterClipboardFormatW');

int RemoveClipboardFormatListener(
  int hwnd,
) =>
    _RemoveClipboardFormatListener(
      hwnd,
    );

late final _RemoveClipboardFormatListener = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('RemoveClipboardFormatListener');

int ReuseDDElParam(
  int lParam,
  int msgIn,
  int msgOut,
  int uiLo,
  int uiHi,
) =>
    _ReuseDDElParam(
      lParam,
      msgIn,
      msgOut,
      uiLo,
      uiHi,
    );

late final _ReuseDDElParam = _user32.lookupFunction<
    IntPtr Function(
  IntPtr lParam,
  Uint32 msgIn,
  Uint32 msgOut,
  IntPtr uiLo,
  IntPtr uiHi,
),
    int Function(
  int lParam,
  int msgIn,
  int msgOut,
  int uiLo,
  int uiHi,
)>('ReuseDDElParam');

int SetClipboardData(
  int uFormat,
  int hMem,
) =>
    _SetClipboardData(
      uFormat,
      hMem,
    );

late final _SetClipboardData = _user32.lookupFunction<
    IntPtr Function(
  Uint32 uFormat,
  IntPtr hMem,
),
    int Function(
  int uFormat,
  int hMem,
)>('SetClipboardData');

int SetClipboardViewer(
  int hWndNewViewer,
) =>
    _SetClipboardViewer(
      hWndNewViewer,
    );

late final _SetClipboardViewer = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hWndNewViewer,
),
    int Function(
  int hWndNewViewer,
)>('SetClipboardViewer');

int UnpackDDElParam(
  int msg,
  int lParam,
  Pointer<IntPtr> puiLo,
  Pointer<IntPtr> puiHi,
) =>
    _UnpackDDElParam(
      msg,
      lParam,
      puiLo,
      puiHi,
    );

late final _UnpackDDElParam = _user32.lookupFunction<
    Int32 Function(
  Uint32 msg,
  IntPtr lParam,
  Pointer<IntPtr> puiLo,
  Pointer<IntPtr> puiHi,
),
    int Function(
  int msg,
  int lParam,
  Pointer<IntPtr> puiLo,
  Pointer<IntPtr> puiHi,
)>('UnpackDDElParam');

// -----------------------------------------------------------------------
// gdi32.dll
// -----------------------------------------------------------------------
final _gdi32 = DynamicLibrary.open('gdi32.dll');

int SetWinMetaFileBits(
  int nSize,
  Pointer<Uint8> lpMeta16Data,
  int hdcRef,
  Pointer<METAFILEPICT> lpMFP,
) =>
    _SetWinMetaFileBits(
      nSize,
      lpMeta16Data,
      hdcRef,
      lpMFP,
    );

late final _SetWinMetaFileBits = _gdi32.lookupFunction<
    IntPtr Function(
  Uint32 nSize,
  Pointer<Uint8> lpMeta16Data,
  IntPtr hdcRef,
  Pointer<METAFILEPICT> lpMFP,
),
    int Function(
  int nSize,
  Pointer<Uint8> lpMeta16Data,
  int hdcRef,
  Pointer<METAFILEPICT> lpMFP,
)>('SetWinMetaFileBits');

// -----------------------------------------------------------------------
// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int AddAtom(
  Pointer<Utf16> lpString,
) =>
    _AddAtom(
      lpString,
    );

late final _AddAtom = _kernel32.lookupFunction<
    Uint16 Function(
  Pointer<Utf16> lpString,
),
    int Function(
  Pointer<Utf16> lpString,
)>('AddAtomW');

int DeleteAtom(
  int nAtom,
) =>
    _DeleteAtom(
      nAtom,
    );

late final _DeleteAtom = _kernel32.lookupFunction<
    Uint16 Function(
  Uint16 nAtom,
),
    int Function(
  int nAtom,
)>('DeleteAtom');

int FindAtom(
  Pointer<Utf16> lpString,
) =>
    _FindAtom(
      lpString,
    );

late final _FindAtom = _kernel32.lookupFunction<
    Uint16 Function(
  Pointer<Utf16> lpString,
),
    int Function(
  Pointer<Utf16> lpString,
)>('FindAtomW');

int GetAtomName(
  int nAtom,
  Pointer<Utf16> lpBuffer,
  int nSize,
) =>
    _GetAtomName(
      nAtom,
      lpBuffer,
      nSize,
    );

late final _GetAtomName = _kernel32.lookupFunction<
    Uint32 Function(
  Uint16 nAtom,
  Pointer<Utf16> lpBuffer,
  Int32 nSize,
),
    int Function(
  int nAtom,
  Pointer<Utf16> lpBuffer,
  int nSize,
)>('GetAtomNameW');

int GlobalAddAtomEx(
  Pointer<Utf16> lpString,
  int Flags,
) =>
    _GlobalAddAtomEx(
      lpString,
      Flags,
    );

late final _GlobalAddAtomEx = _kernel32.lookupFunction<
    Uint16 Function(
  Pointer<Utf16> lpString,
  Uint32 Flags,
),
    int Function(
  Pointer<Utf16> lpString,
  int Flags,
)>('GlobalAddAtomExW');

int GlobalAddAtom(
  Pointer<Utf16> lpString,
) =>
    _GlobalAddAtom(
      lpString,
    );

late final _GlobalAddAtom = _kernel32.lookupFunction<
    Uint16 Function(
  Pointer<Utf16> lpString,
),
    int Function(
  Pointer<Utf16> lpString,
)>('GlobalAddAtomW');

int GlobalDeleteAtom(
  int nAtom,
) =>
    _GlobalDeleteAtom(
      nAtom,
    );

late final _GlobalDeleteAtom = _kernel32.lookupFunction<
    Uint16 Function(
  Uint16 nAtom,
),
    int Function(
  int nAtom,
)>('GlobalDeleteAtom');

int GlobalFindAtom(
  Pointer<Utf16> lpString,
) =>
    _GlobalFindAtom(
      lpString,
    );

late final _GlobalFindAtom = _kernel32.lookupFunction<
    Uint16 Function(
  Pointer<Utf16> lpString,
),
    int Function(
  Pointer<Utf16> lpString,
)>('GlobalFindAtomW');

int GlobalGetAtomName(
  int nAtom,
  Pointer<Utf16> lpBuffer,
  int nSize,
) =>
    _GlobalGetAtomName(
      nAtom,
      lpBuffer,
      nSize,
    );

late final _GlobalGetAtomName = _kernel32.lookupFunction<
    Uint32 Function(
  Uint16 nAtom,
  Pointer<Utf16> lpBuffer,
  Int32 nSize,
),
    int Function(
  int nAtom,
  Pointer<Utf16> lpBuffer,
  int nSize,
)>('GlobalGetAtomNameW');

int InitAtomTable(
  int nSize,
) =>
    _InitAtomTable(
      nSize,
    );

late final _InitAtomTable = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 nSize,
),
    int Function(
  int nSize,
)>('InitAtomTable');
