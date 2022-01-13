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
import '../../media/multimedia/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/multimedia/callbacks.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../ui/controls/dialogs/structs.g.dart';
import '../../foundation/callbacks.g.dart';
import '../../media/multimedia/IAVIFile.dart';
import '../../media/multimedia/IAVIStream.dart';
import '../../media/multimedia/IGetFrame.dart'; // -----------------------------------------------------------------------

// winmm.dll
// -----------------------------------------------------------------------
final _winmm = DynamicLibrary.open('winmm.dll');

int CloseDriver(
  int hDriver,
  int lParam1,
  int lParam2,
) =>
    _CloseDriver(
      hDriver,
      lParam1,
      lParam2,
    );

late final _CloseDriver = _winmm.lookupFunction<
    IntPtr Function(
  IntPtr hDriver,
  IntPtr lParam1,
  IntPtr lParam2,
),
    int Function(
  int hDriver,
  int lParam1,
  int lParam2,
)>('CloseDriver');

int DefDriverProc(
  int dwDriverIdentifier,
  int hdrvr,
  int uMsg,
  int lParam1,
  int lParam2,
) =>
    _DefDriverProc(
      dwDriverIdentifier,
      hdrvr,
      uMsg,
      lParam1,
      lParam2,
    );

late final _DefDriverProc = _winmm.lookupFunction<
    IntPtr Function(
  IntPtr dwDriverIdentifier,
  IntPtr hdrvr,
  Uint32 uMsg,
  IntPtr lParam1,
  IntPtr lParam2,
),
    int Function(
  int dwDriverIdentifier,
  int hdrvr,
  int uMsg,
  int lParam1,
  int lParam2,
)>('DefDriverProc');

int DriverCallback(
  int dwCallback,
  int dwFlags,
  int hDevice,
  int dwMsg,
  int dwUser,
  int dwParam1,
  int dwParam2,
) =>
    _DriverCallback(
      dwCallback,
      dwFlags,
      hDevice,
      dwMsg,
      dwUser,
      dwParam1,
      dwParam2,
    );

late final _DriverCallback = _winmm.lookupFunction<
    Int32 Function(
  IntPtr dwCallback,
  Uint32 dwFlags,
  IntPtr hDevice,
  Uint32 dwMsg,
  IntPtr dwUser,
  IntPtr dwParam1,
  IntPtr dwParam2,
),
    int Function(
  int dwCallback,
  int dwFlags,
  int hDevice,
  int dwMsg,
  int dwUser,
  int dwParam1,
  int dwParam2,
)>('DriverCallback');

int DrvGetModuleHandle(
  int hDriver,
) =>
    _DrvGetModuleHandle(
      hDriver,
    );

late final _DrvGetModuleHandle = _winmm.lookupFunction<
    IntPtr Function(
  IntPtr hDriver,
),
    int Function(
  int hDriver,
)>('DrvGetModuleHandle');

int GetDriverModuleHandle(
  int hDriver,
) =>
    _GetDriverModuleHandle(
      hDriver,
    );

late final _GetDriverModuleHandle = _winmm.lookupFunction<
    IntPtr Function(
  IntPtr hDriver,
),
    int Function(
  int hDriver,
)>('GetDriverModuleHandle');

int OpenDriver(
  Pointer<Utf16> szDriverName,
  Pointer<Utf16> szSectionName,
  int lParam2,
) =>
    _OpenDriver(
      szDriverName,
      szSectionName,
      lParam2,
    );

late final _OpenDriver = _winmm.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> szDriverName,
  Pointer<Utf16> szSectionName,
  IntPtr lParam2,
),
    int Function(
  Pointer<Utf16> szDriverName,
  Pointer<Utf16> szSectionName,
  int lParam2,
)>('OpenDriver');

int SendDriverMessage(
  int hDriver,
  int message,
  int lParam1,
  int lParam2,
) =>
    _SendDriverMessage(
      hDriver,
      message,
      lParam1,
      lParam2,
    );

late final _SendDriverMessage = _winmm.lookupFunction<
    IntPtr Function(
  IntPtr hDriver,
  Uint32 message,
  IntPtr lParam1,
  IntPtr lParam2,
),
    int Function(
  int hDriver,
  int message,
  int lParam1,
  int lParam2,
)>('SendDriverMessage');

int joyGetDevCaps(
  int uJoyID,
  Pointer<JOYCAPS> pjc,
  int cbjc,
) =>
    _joyGetDevCaps(
      uJoyID,
      pjc,
      cbjc,
    );

late final _joyGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr uJoyID,
  Pointer<JOYCAPS> pjc,
  Uint32 cbjc,
),
    int Function(
  int uJoyID,
  Pointer<JOYCAPS> pjc,
  int cbjc,
)>('joyGetDevCapsW');

int joyGetNumDevs() => _joyGetNumDevs();

late final _joyGetNumDevs =
    _winmm.lookupFunction<Uint32 Function(), int Function()>('joyGetNumDevs');

int joyGetPos(
  int uJoyID,
  Pointer<JOYINFO> pji,
) =>
    _joyGetPos(
      uJoyID,
      pji,
    );

late final _joyGetPos = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uJoyID,
  Pointer<JOYINFO> pji,
),
    int Function(
  int uJoyID,
  Pointer<JOYINFO> pji,
)>('joyGetPos');

int joyGetPosEx(
  int uJoyID,
  Pointer<JOYINFOEX> pji,
) =>
    _joyGetPosEx(
      uJoyID,
      pji,
    );

late final _joyGetPosEx = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uJoyID,
  Pointer<JOYINFOEX> pji,
),
    int Function(
  int uJoyID,
  Pointer<JOYINFOEX> pji,
)>('joyGetPosEx');

int joyGetThreshold(
  int uJoyID,
  Pointer<Uint32> puThreshold,
) =>
    _joyGetThreshold(
      uJoyID,
      puThreshold,
    );

late final _joyGetThreshold = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uJoyID,
  Pointer<Uint32> puThreshold,
),
    int Function(
  int uJoyID,
  Pointer<Uint32> puThreshold,
)>('joyGetThreshold');

int joyReleaseCapture(
  int uJoyID,
) =>
    _joyReleaseCapture(
      uJoyID,
    );

late final _joyReleaseCapture = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uJoyID,
),
    int Function(
  int uJoyID,
)>('joyReleaseCapture');

int joySetCapture(
  int hwnd,
  int uJoyID,
  int uPeriod,
  int fChanged,
) =>
    _joySetCapture(
      hwnd,
      uJoyID,
      uPeriod,
      fChanged,
    );

late final _joySetCapture = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
  Uint32 uJoyID,
  Uint32 uPeriod,
  Int32 fChanged,
),
    int Function(
  int hwnd,
  int uJoyID,
  int uPeriod,
  int fChanged,
)>('joySetCapture');

int joySetThreshold(
  int uJoyID,
  int uThreshold,
) =>
    _joySetThreshold(
      uJoyID,
      uThreshold,
    );

late final _joySetThreshold = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uJoyID,
  Uint32 uThreshold,
),
    int Function(
  int uJoyID,
  int uThreshold,
)>('joySetThreshold');

int mciDriverNotify(
  int hwndCallback,
  int wDeviceID,
  int uStatus,
) =>
    _mciDriverNotify(
      hwndCallback,
      wDeviceID,
      uStatus,
    );

late final _mciDriverNotify = _winmm.lookupFunction<
    Int32 Function(
  IntPtr hwndCallback,
  Uint32 wDeviceID,
  Uint32 uStatus,
),
    int Function(
  int hwndCallback,
  int wDeviceID,
  int uStatus,
)>('mciDriverNotify');

int mciDriverYield(
  int wDeviceID,
) =>
    _mciDriverYield(
      wDeviceID,
    );

late final _mciDriverYield = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 wDeviceID,
),
    int Function(
  int wDeviceID,
)>('mciDriverYield');

int mciFreeCommandResource(
  int wTable,
) =>
    _mciFreeCommandResource(
      wTable,
    );

late final _mciFreeCommandResource = _winmm.lookupFunction<
    Int32 Function(
  Uint32 wTable,
),
    int Function(
  int wTable,
)>('mciFreeCommandResource');

int mciGetCreatorTask(
  int mciId,
) =>
    _mciGetCreatorTask(
      mciId,
    );

late final _mciGetCreatorTask = _winmm.lookupFunction<
    IntPtr Function(
  Uint32 mciId,
),
    int Function(
  int mciId,
)>('mciGetCreatorTask');

int mciGetDeviceIDFromElementID(
  int dwElementID,
  Pointer<Utf16> lpstrType,
) =>
    _mciGetDeviceIDFromElementID(
      dwElementID,
      lpstrType,
    );

late final _mciGetDeviceIDFromElementID = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 dwElementID,
  Pointer<Utf16> lpstrType,
),
    int Function(
  int dwElementID,
  Pointer<Utf16> lpstrType,
)>('mciGetDeviceIDFromElementIDW');

int mciGetDeviceID(
  Pointer<Utf16> pszDevice,
) =>
    _mciGetDeviceID(
      pszDevice,
    );

late final _mciGetDeviceID = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDevice,
),
    int Function(
  Pointer<Utf16> pszDevice,
)>('mciGetDeviceIDW');

int mciGetDriverData(
  int wDeviceID,
) =>
    _mciGetDriverData(
      wDeviceID,
    );

late final _mciGetDriverData = _winmm.lookupFunction<
    IntPtr Function(
  Uint32 wDeviceID,
),
    int Function(
  int wDeviceID,
)>('mciGetDriverData');

int mciGetErrorString(
  int mcierr,
  Pointer<Utf16> pszText,
  int cchText,
) =>
    _mciGetErrorString(
      mcierr,
      pszText,
      cchText,
    );

late final _mciGetErrorString = _winmm.lookupFunction<
    Int32 Function(
  Uint32 mcierr,
  Pointer<Utf16> pszText,
  Uint32 cchText,
),
    int Function(
  int mcierr,
  Pointer<Utf16> pszText,
  int cchText,
)>('mciGetErrorStringW');

Pointer<NativeFunction<YIELDPROC>> mciGetYieldProc(
  int mciId,
  Pointer<Uint32> pdwYieldData,
) =>
    _mciGetYieldProc(
      mciId,
      pdwYieldData,
    );

late final _mciGetYieldProc = _winmm.lookupFunction<
    Pointer<NativeFunction<YIELDPROC>> Function(
  Uint32 mciId,
  Pointer<Uint32> pdwYieldData,
),
    Pointer<NativeFunction<YIELDPROC>> Function(
  int mciId,
  Pointer<Uint32> pdwYieldData,
)>('mciGetYieldProc');

int mciLoadCommandResource(
  int hInstance,
  Pointer<Utf16> lpResName,
  int wType,
) =>
    _mciLoadCommandResource(
      hInstance,
      lpResName,
      wType,
    );

late final _mciLoadCommandResource = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hInstance,
  Pointer<Utf16> lpResName,
  Uint32 wType,
),
    int Function(
  int hInstance,
  Pointer<Utf16> lpResName,
  int wType,
)>('mciLoadCommandResource');

int mciSendCommand(
  int mciId,
  int uMsg,
  int dwParam1,
  int dwParam2,
) =>
    _mciSendCommand(
      mciId,
      uMsg,
      dwParam1,
      dwParam2,
    );

late final _mciSendCommand = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 mciId,
  Uint32 uMsg,
  IntPtr dwParam1,
  IntPtr dwParam2,
),
    int Function(
  int mciId,
  int uMsg,
  int dwParam1,
  int dwParam2,
)>('mciSendCommandW');

int mciSendString(
  Pointer<Utf16> lpstrCommand,
  Pointer<Utf16> lpstrReturnString,
  int uReturnLength,
  int hwndCallback,
) =>
    _mciSendString(
      lpstrCommand,
      lpstrReturnString,
      uReturnLength,
      hwndCallback,
    );

late final _mciSendString = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpstrCommand,
  Pointer<Utf16> lpstrReturnString,
  Uint32 uReturnLength,
  IntPtr hwndCallback,
),
    int Function(
  Pointer<Utf16> lpstrCommand,
  Pointer<Utf16> lpstrReturnString,
  int uReturnLength,
  int hwndCallback,
)>('mciSendStringW');

int mciSetDriverData(
  int wDeviceID,
  int dwData,
) =>
    _mciSetDriverData(
      wDeviceID,
      dwData,
    );

late final _mciSetDriverData = _winmm.lookupFunction<
    Int32 Function(
  Uint32 wDeviceID,
  IntPtr dwData,
),
    int Function(
  int wDeviceID,
  int dwData,
)>('mciSetDriverData');

int mciSetYieldProc(
  int mciId,
  Pointer<NativeFunction<YIELDPROC>> fpYieldProc,
  int dwYieldData,
) =>
    _mciSetYieldProc(
      mciId,
      fpYieldProc,
      dwYieldData,
    );

late final _mciSetYieldProc = _winmm.lookupFunction<
    Int32 Function(
  Uint32 mciId,
  Pointer<NativeFunction<YIELDPROC>> fpYieldProc,
  Uint32 dwYieldData,
),
    int Function(
  int mciId,
  Pointer<NativeFunction<YIELDPROC>> fpYieldProc,
  int dwYieldData,
)>('mciSetYieldProc');

int mmDrvInstall(
  int hDriver,
  Pointer<Utf16> wszDrvEntry,
  Pointer<NativeFunction<DRIVERMSGPROC>> drvMessage,
  int wFlags,
) =>
    _mmDrvInstall(
      hDriver,
      wszDrvEntry,
      drvMessage,
      wFlags,
    );

late final _mmDrvInstall = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hDriver,
  Pointer<Utf16> wszDrvEntry,
  Pointer<NativeFunction<DRIVERMSGPROC>> drvMessage,
  Uint32 wFlags,
),
    int Function(
  int hDriver,
  Pointer<Utf16> wszDrvEntry,
  Pointer<NativeFunction<DRIVERMSGPROC>> drvMessage,
  int wFlags,
)>('mmDrvInstall');

int mmGetCurrentTask() => _mmGetCurrentTask();

late final _mmGetCurrentTask = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('mmGetCurrentTask');

void mmTaskBlock(
  int h,
) =>
    _mmTaskBlock(
      h,
    );

late final _mmTaskBlock = _winmm.lookupFunction<
    Void Function(
  Uint32 h,
),
    void Function(
  int h,
)>('mmTaskBlock');

int mmTaskCreate(
  Pointer<NativeFunction<LPTASKCALLBACK>> lpfn,
  Pointer<IntPtr> lph,
  int dwInst,
) =>
    _mmTaskCreate(
      lpfn,
      lph,
      dwInst,
    );

late final _mmTaskCreate = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<NativeFunction<LPTASKCALLBACK>> lpfn,
  Pointer<IntPtr> lph,
  IntPtr dwInst,
),
    int Function(
  Pointer<NativeFunction<LPTASKCALLBACK>> lpfn,
  Pointer<IntPtr> lph,
  int dwInst,
)>('mmTaskCreate');

int mmTaskSignal(
  int h,
) =>
    _mmTaskSignal(
      h,
    );

late final _mmTaskSignal = _winmm.lookupFunction<
    Int32 Function(
  Uint32 h,
),
    int Function(
  int h,
)>('mmTaskSignal');

void mmTaskYield() => _mmTaskYield();

late final _mmTaskYield =
    _winmm.lookupFunction<Void Function(), void Function()>('mmTaskYield');

int mmioAdvance(
  int hmmio,
  Pointer<MMIOINFO> pmmioinfo,
  int fuAdvance,
) =>
    _mmioAdvance(
      hmmio,
      pmmioinfo,
      fuAdvance,
    );

late final _mmioAdvance = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmmio,
  Pointer<MMIOINFO> pmmioinfo,
  Uint32 fuAdvance,
),
    int Function(
  int hmmio,
  Pointer<MMIOINFO> pmmioinfo,
  int fuAdvance,
)>('mmioAdvance');

int mmioAscend(
  int hmmio,
  Pointer<MMCKINFO> pmmcki,
  int fuAscend,
) =>
    _mmioAscend(
      hmmio,
      pmmcki,
      fuAscend,
    );

late final _mmioAscend = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmmio,
  Pointer<MMCKINFO> pmmcki,
  Uint32 fuAscend,
),
    int Function(
  int hmmio,
  Pointer<MMCKINFO> pmmcki,
  int fuAscend,
)>('mmioAscend');

int mmioClose(
  int hmmio,
  int fuClose,
) =>
    _mmioClose(
      hmmio,
      fuClose,
    );

late final _mmioClose = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmmio,
  Uint32 fuClose,
),
    int Function(
  int hmmio,
  int fuClose,
)>('mmioClose');

int mmioCreateChunk(
  int hmmio,
  Pointer<MMCKINFO> pmmcki,
  int fuCreate,
) =>
    _mmioCreateChunk(
      hmmio,
      pmmcki,
      fuCreate,
    );

late final _mmioCreateChunk = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmmio,
  Pointer<MMCKINFO> pmmcki,
  Uint32 fuCreate,
),
    int Function(
  int hmmio,
  Pointer<MMCKINFO> pmmcki,
  int fuCreate,
)>('mmioCreateChunk');

int mmioDescend(
  int hmmio,
  Pointer<MMCKINFO> pmmcki,
  Pointer<MMCKINFO> pmmckiParent,
  int fuDescend,
) =>
    _mmioDescend(
      hmmio,
      pmmcki,
      pmmckiParent,
      fuDescend,
    );

late final _mmioDescend = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmmio,
  Pointer<MMCKINFO> pmmcki,
  Pointer<MMCKINFO> pmmckiParent,
  Uint32 fuDescend,
),
    int Function(
  int hmmio,
  Pointer<MMCKINFO> pmmcki,
  Pointer<MMCKINFO> pmmckiParent,
  int fuDescend,
)>('mmioDescend');

int mmioFlush(
  int hmmio,
  int fuFlush,
) =>
    _mmioFlush(
      hmmio,
      fuFlush,
    );

late final _mmioFlush = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmmio,
  Uint32 fuFlush,
),
    int Function(
  int hmmio,
  int fuFlush,
)>('mmioFlush');

int mmioGetInfo(
  int hmmio,
  Pointer<MMIOINFO> pmmioinfo,
  int fuInfo,
) =>
    _mmioGetInfo(
      hmmio,
      pmmioinfo,
      fuInfo,
    );

late final _mmioGetInfo = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmmio,
  Pointer<MMIOINFO> pmmioinfo,
  Uint32 fuInfo,
),
    int Function(
  int hmmio,
  Pointer<MMIOINFO> pmmioinfo,
  int fuInfo,
)>('mmioGetInfo');

Pointer<NativeFunction<LPMMIOPROC>> mmioInstallIOProc(
  int fccIOProc,
  Pointer<NativeFunction<LPMMIOPROC>> pIOProc,
  int dwFlags,
) =>
    _mmioInstallIOProc(
      fccIOProc,
      pIOProc,
      dwFlags,
    );

late final _mmioInstallIOProc = _winmm.lookupFunction<
    Pointer<NativeFunction<LPMMIOPROC>> Function(
  Uint32 fccIOProc,
  Pointer<NativeFunction<LPMMIOPROC>> pIOProc,
  Uint32 dwFlags,
),
    Pointer<NativeFunction<LPMMIOPROC>> Function(
  int fccIOProc,
  Pointer<NativeFunction<LPMMIOPROC>> pIOProc,
  int dwFlags,
)>('mmioInstallIOProcW');

int mmioOpen(
  Pointer<Utf16> pszFileName,
  Pointer<MMIOINFO> pmmioinfo,
  int fdwOpen,
) =>
    _mmioOpen(
      pszFileName,
      pmmioinfo,
      fdwOpen,
    );

late final _mmioOpen = _winmm.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> pszFileName,
  Pointer<MMIOINFO> pmmioinfo,
  Uint32 fdwOpen,
),
    int Function(
  Pointer<Utf16> pszFileName,
  Pointer<MMIOINFO> pmmioinfo,
  int fdwOpen,
)>('mmioOpenW');

int mmioRead(
  int hmmio,
  Pointer<Int8> pch,
  int cch,
) =>
    _mmioRead(
      hmmio,
      pch,
      cch,
    );

late final _mmioRead = _winmm.lookupFunction<
    Int32 Function(
  IntPtr hmmio,
  Pointer<Int8> pch,
  Int32 cch,
),
    int Function(
  int hmmio,
  Pointer<Int8> pch,
  int cch,
)>('mmioRead');

int mmioRename(
  Pointer<Utf16> pszFileName,
  Pointer<Utf16> pszNewFileName,
  Pointer<MMIOINFO> pmmioinfo,
  int fdwRename,
) =>
    _mmioRename(
      pszFileName,
      pszNewFileName,
      pmmioinfo,
      fdwRename,
    );

late final _mmioRename = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszFileName,
  Pointer<Utf16> pszNewFileName,
  Pointer<MMIOINFO> pmmioinfo,
  Uint32 fdwRename,
),
    int Function(
  Pointer<Utf16> pszFileName,
  Pointer<Utf16> pszNewFileName,
  Pointer<MMIOINFO> pmmioinfo,
  int fdwRename,
)>('mmioRenameW');

int mmioSeek(
  int hmmio,
  int lOffset,
  int iOrigin,
) =>
    _mmioSeek(
      hmmio,
      lOffset,
      iOrigin,
    );

late final _mmioSeek = _winmm.lookupFunction<
    Int32 Function(
  IntPtr hmmio,
  Int32 lOffset,
  Int32 iOrigin,
),
    int Function(
  int hmmio,
  int lOffset,
  int iOrigin,
)>('mmioSeek');

int mmioSendMessage(
  int hmmio,
  int uMsg,
  int lParam1,
  int lParam2,
) =>
    _mmioSendMessage(
      hmmio,
      uMsg,
      lParam1,
      lParam2,
    );

late final _mmioSendMessage = _winmm.lookupFunction<
    IntPtr Function(
  IntPtr hmmio,
  Uint32 uMsg,
  IntPtr lParam1,
  IntPtr lParam2,
),
    int Function(
  int hmmio,
  int uMsg,
  int lParam1,
  int lParam2,
)>('mmioSendMessage');

int mmioSetBuffer(
  int hmmio,
  Pointer<Utf8> pchBuffer,
  int cchBuffer,
  int fuBuffer,
) =>
    _mmioSetBuffer(
      hmmio,
      pchBuffer,
      cchBuffer,
      fuBuffer,
    );

late final _mmioSetBuffer = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmmio,
  Pointer<Utf8> pchBuffer,
  Int32 cchBuffer,
  Uint32 fuBuffer,
),
    int Function(
  int hmmio,
  Pointer<Utf8> pchBuffer,
  int cchBuffer,
  int fuBuffer,
)>('mmioSetBuffer');

int mmioSetInfo(
  int hmmio,
  Pointer<MMIOINFO> pmmioinfo,
  int fuInfo,
) =>
    _mmioSetInfo(
      hmmio,
      pmmioinfo,
      fuInfo,
    );

late final _mmioSetInfo = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmmio,
  Pointer<MMIOINFO> pmmioinfo,
  Uint32 fuInfo,
),
    int Function(
  int hmmio,
  Pointer<MMIOINFO> pmmioinfo,
  int fuInfo,
)>('mmioSetInfo');

int mmioStringToFOURCC(
  Pointer<Utf16> sz,
  int uFlags,
) =>
    _mmioStringToFOURCC(
      sz,
      uFlags,
    );

late final _mmioStringToFOURCC = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> sz,
  Uint32 uFlags,
),
    int Function(
  Pointer<Utf16> sz,
  int uFlags,
)>('mmioStringToFOURCCW');

int mmioWrite(
  int hmmio,
  Pointer<Utf8> pch,
  int cch,
) =>
    _mmioWrite(
      hmmio,
      pch,
      cch,
    );

late final _mmioWrite = _winmm.lookupFunction<
    Int32 Function(
  IntPtr hmmio,
  Pointer<Utf8> pch,
  Int32 cch,
),
    int Function(
  int hmmio,
  Pointer<Utf8> pch,
  int cch,
)>('mmioWrite');

// -----------------------------------------------------------------------
// api-ms-win-mm-misc-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_mm_misc_l1_1_1 =
    DynamicLibrary.open('api-ms-win-mm-misc-l1-1-1.dll');

int sndOpenSound(
  Pointer<Utf16> EventName,
  Pointer<Utf16> AppName,
  int Flags,
  Pointer<IntPtr> FileHandle,
) =>
    _sndOpenSound(
      EventName,
      AppName,
      Flags,
      FileHandle,
    );

late final _sndOpenSound = _api_ms_win_mm_misc_l1_1_1.lookupFunction<
    Int32 Function(
  Pointer<Utf16> EventName,
  Pointer<Utf16> AppName,
  Int32 Flags,
  Pointer<IntPtr> FileHandle,
),
    int Function(
  Pointer<Utf16> EventName,
  Pointer<Utf16> AppName,
  int Flags,
  Pointer<IntPtr> FileHandle,
)>('sndOpenSound');

// -----------------------------------------------------------------------
// msvfw32.dll
// -----------------------------------------------------------------------
final _msvfw32 = DynamicLibrary.open('msvfw32.dll');

int DrawDibBegin(
  int hdd,
  int hdc,
  int dxDst,
  int dyDst,
  Pointer<BITMAPINFOHEADER> lpbi,
  int dxSrc,
  int dySrc,
  int wFlags,
) =>
    _DrawDibBegin(
      hdd,
      hdc,
      dxDst,
      dyDst,
      lpbi,
      dxSrc,
      dySrc,
      wFlags,
    );

late final _DrawDibBegin = _msvfw32.lookupFunction<
    Int32 Function(
  IntPtr hdd,
  IntPtr hdc,
  Int32 dxDst,
  Int32 dyDst,
  Pointer<BITMAPINFOHEADER> lpbi,
  Int32 dxSrc,
  Int32 dySrc,
  Uint32 wFlags,
),
    int Function(
  int hdd,
  int hdc,
  int dxDst,
  int dyDst,
  Pointer<BITMAPINFOHEADER> lpbi,
  int dxSrc,
  int dySrc,
  int wFlags,
)>('DrawDibBegin');

int DrawDibChangePalette(
  int hdd,
  int iStart,
  int iLen,
  Pointer<PALETTEENTRY> lppe,
) =>
    _DrawDibChangePalette(
      hdd,
      iStart,
      iLen,
      lppe,
    );

late final _DrawDibChangePalette = _msvfw32.lookupFunction<
    Int32 Function(
  IntPtr hdd,
  Int32 iStart,
  Int32 iLen,
  Pointer<PALETTEENTRY> lppe,
),
    int Function(
  int hdd,
  int iStart,
  int iLen,
  Pointer<PALETTEENTRY> lppe,
)>('DrawDibChangePalette');

int DrawDibClose(
  int hdd,
) =>
    _DrawDibClose(
      hdd,
    );

late final _DrawDibClose = _msvfw32.lookupFunction<
    Int32 Function(
  IntPtr hdd,
),
    int Function(
  int hdd,
)>('DrawDibClose');

int DrawDibDraw(
  int hdd,
  int hdc,
  int xDst,
  int yDst,
  int dxDst,
  int dyDst,
  Pointer<BITMAPINFOHEADER> lpbi,
  Pointer lpBits,
  int xSrc,
  int ySrc,
  int dxSrc,
  int dySrc,
  int wFlags,
) =>
    _DrawDibDraw(
      hdd,
      hdc,
      xDst,
      yDst,
      dxDst,
      dyDst,
      lpbi,
      lpBits,
      xSrc,
      ySrc,
      dxSrc,
      dySrc,
      wFlags,
    );

late final _DrawDibDraw = _msvfw32.lookupFunction<
    Int32 Function(
  IntPtr hdd,
  IntPtr hdc,
  Int32 xDst,
  Int32 yDst,
  Int32 dxDst,
  Int32 dyDst,
  Pointer<BITMAPINFOHEADER> lpbi,
  Pointer lpBits,
  Int32 xSrc,
  Int32 ySrc,
  Int32 dxSrc,
  Int32 dySrc,
  Uint32 wFlags,
),
    int Function(
  int hdd,
  int hdc,
  int xDst,
  int yDst,
  int dxDst,
  int dyDst,
  Pointer<BITMAPINFOHEADER> lpbi,
  Pointer lpBits,
  int xSrc,
  int ySrc,
  int dxSrc,
  int dySrc,
  int wFlags,
)>('DrawDibDraw');

int DrawDibEnd(
  int hdd,
) =>
    _DrawDibEnd(
      hdd,
    );

late final _DrawDibEnd = _msvfw32.lookupFunction<
    Int32 Function(
  IntPtr hdd,
),
    int Function(
  int hdd,
)>('DrawDibEnd');

Pointer DrawDibGetBuffer(
  int hdd,
  Pointer<BITMAPINFOHEADER> lpbi,
  int dwSize,
  int dwFlags,
) =>
    _DrawDibGetBuffer(
      hdd,
      lpbi,
      dwSize,
      dwFlags,
    );

late final _DrawDibGetBuffer = _msvfw32.lookupFunction<
    Pointer Function(
  IntPtr hdd,
  Pointer<BITMAPINFOHEADER> lpbi,
  Uint32 dwSize,
  Uint32 dwFlags,
),
    Pointer Function(
  int hdd,
  Pointer<BITMAPINFOHEADER> lpbi,
  int dwSize,
  int dwFlags,
)>('DrawDibGetBuffer');

int DrawDibGetPalette(
  int hdd,
) =>
    _DrawDibGetPalette(
      hdd,
    );

late final _DrawDibGetPalette = _msvfw32.lookupFunction<
    IntPtr Function(
  IntPtr hdd,
),
    int Function(
  int hdd,
)>('DrawDibGetPalette');

int DrawDibOpen() => _DrawDibOpen();

late final _DrawDibOpen =
    _msvfw32.lookupFunction<IntPtr Function(), int Function()>('DrawDibOpen');

int DrawDibProfileDisplay(
  Pointer<BITMAPINFOHEADER> lpbi,
) =>
    _DrawDibProfileDisplay(
      lpbi,
    );

late final _DrawDibProfileDisplay = _msvfw32.lookupFunction<
    IntPtr Function(
  Pointer<BITMAPINFOHEADER> lpbi,
),
    int Function(
  Pointer<BITMAPINFOHEADER> lpbi,
)>('DrawDibProfileDisplay');

int DrawDibRealize(
  int hdd,
  int hdc,
  int fBackground,
) =>
    _DrawDibRealize(
      hdd,
      hdc,
      fBackground,
    );

late final _DrawDibRealize = _msvfw32.lookupFunction<
    Uint32 Function(
  IntPtr hdd,
  IntPtr hdc,
  Int32 fBackground,
),
    int Function(
  int hdd,
  int hdc,
  int fBackground,
)>('DrawDibRealize');

int DrawDibSetPalette(
  int hdd,
  int hpal,
) =>
    _DrawDibSetPalette(
      hdd,
      hpal,
    );

late final _DrawDibSetPalette = _msvfw32.lookupFunction<
    Int32 Function(
  IntPtr hdd,
  IntPtr hpal,
),
    int Function(
  int hdd,
  int hpal,
)>('DrawDibSetPalette');

int DrawDibStart(
  int hdd,
  int rate,
) =>
    _DrawDibStart(
      hdd,
      rate,
    );

late final _DrawDibStart = _msvfw32.lookupFunction<
    Int32 Function(
  IntPtr hdd,
  Uint32 rate,
),
    int Function(
  int hdd,
  int rate,
)>('DrawDibStart');

int DrawDibStop(
  int hdd,
) =>
    _DrawDibStop(
      hdd,
    );

late final _DrawDibStop = _msvfw32.lookupFunction<
    Int32 Function(
  IntPtr hdd,
),
    int Function(
  int hdd,
)>('DrawDibStop');

int DrawDibTime(
  int hdd,
  Pointer<DRAWDIBTIME> lpddtime,
) =>
    _DrawDibTime(
      hdd,
      lpddtime,
    );

late final _DrawDibTime = _msvfw32.lookupFunction<
    Int32 Function(
  IntPtr hdd,
  Pointer<DRAWDIBTIME> lpddtime,
),
    int Function(
  int hdd,
  Pointer<DRAWDIBTIME> lpddtime,
)>('DrawDibTime');

int GetOpenFileNamePreview(
  Pointer<OPENFILENAME> lpofn,
) =>
    _GetOpenFileNamePreview(
      lpofn,
    );

late final _GetOpenFileNamePreview = _msvfw32.lookupFunction<
    Int32 Function(
  Pointer<OPENFILENAME> lpofn,
),
    int Function(
  Pointer<OPENFILENAME> lpofn,
)>('GetOpenFileNamePreviewW');

int GetSaveFileNamePreview(
  Pointer<OPENFILENAME> lpofn,
) =>
    _GetSaveFileNamePreview(
      lpofn,
    );

late final _GetSaveFileNamePreview = _msvfw32.lookupFunction<
    Int32 Function(
  Pointer<OPENFILENAME> lpofn,
),
    int Function(
  Pointer<OPENFILENAME> lpofn,
)>('GetSaveFileNamePreviewW');

int ICClose(
  int hic,
) =>
    _ICClose(
      hic,
    );

late final _ICClose = _msvfw32.lookupFunction<
    IntPtr Function(
  IntPtr hic,
),
    int Function(
  int hic,
)>('ICClose');

int ICCompress(
  int hic,
  int dwFlags,
  Pointer<BITMAPINFOHEADER> lpbiOutput,
  Pointer lpData,
  Pointer<BITMAPINFOHEADER> lpbiInput,
  Pointer lpBits,
  Pointer<Uint32> lpckid,
  Pointer<Uint32> lpdwFlags,
  int lFrameNum,
  int dwFrameSize,
  int dwQuality,
  Pointer<BITMAPINFOHEADER> lpbiPrev,
  Pointer lpPrev,
) =>
    _ICCompress(
      hic,
      dwFlags,
      lpbiOutput,
      lpData,
      lpbiInput,
      lpBits,
      lpckid,
      lpdwFlags,
      lFrameNum,
      dwFrameSize,
      dwQuality,
      lpbiPrev,
      lpPrev,
    );

late final _ICCompress = _msvfw32.lookupFunction<
    Uint32 Function(
  IntPtr hic,
  Uint32 dwFlags,
  Pointer<BITMAPINFOHEADER> lpbiOutput,
  Pointer lpData,
  Pointer<BITMAPINFOHEADER> lpbiInput,
  Pointer lpBits,
  Pointer<Uint32> lpckid,
  Pointer<Uint32> lpdwFlags,
  Int32 lFrameNum,
  Uint32 dwFrameSize,
  Uint32 dwQuality,
  Pointer<BITMAPINFOHEADER> lpbiPrev,
  Pointer lpPrev,
),
    int Function(
  int hic,
  int dwFlags,
  Pointer<BITMAPINFOHEADER> lpbiOutput,
  Pointer lpData,
  Pointer<BITMAPINFOHEADER> lpbiInput,
  Pointer lpBits,
  Pointer<Uint32> lpckid,
  Pointer<Uint32> lpdwFlags,
  int lFrameNum,
  int dwFrameSize,
  int dwQuality,
  Pointer<BITMAPINFOHEADER> lpbiPrev,
  Pointer lpPrev,
)>('ICCompress');

int ICCompressorChoose(
  int hwnd,
  int uiFlags,
  Pointer pvIn,
  Pointer lpData,
  Pointer<COMPVARS> pc,
  Pointer<Utf8> lpszTitle,
) =>
    _ICCompressorChoose(
      hwnd,
      uiFlags,
      pvIn,
      lpData,
      pc,
      lpszTitle,
    );

late final _ICCompressorChoose = _msvfw32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Uint32 uiFlags,
  Pointer pvIn,
  Pointer lpData,
  Pointer<COMPVARS> pc,
  Pointer<Utf8> lpszTitle,
),
    int Function(
  int hwnd,
  int uiFlags,
  Pointer pvIn,
  Pointer lpData,
  Pointer<COMPVARS> pc,
  Pointer<Utf8> lpszTitle,
)>('ICCompressorChoose');

void ICCompressorFree(
  Pointer<COMPVARS> pc,
) =>
    _ICCompressorFree(
      pc,
    );

late final _ICCompressorFree = _msvfw32.lookupFunction<
    Void Function(
  Pointer<COMPVARS> pc,
),
    void Function(
  Pointer<COMPVARS> pc,
)>('ICCompressorFree');

int ICDecompress(
  int hic,
  int dwFlags,
  Pointer<BITMAPINFOHEADER> lpbiFormat,
  Pointer lpData,
  Pointer<BITMAPINFOHEADER> lpbi,
  Pointer lpBits,
) =>
    _ICDecompress(
      hic,
      dwFlags,
      lpbiFormat,
      lpData,
      lpbi,
      lpBits,
    );

late final _ICDecompress = _msvfw32.lookupFunction<
    Uint32 Function(
  IntPtr hic,
  Uint32 dwFlags,
  Pointer<BITMAPINFOHEADER> lpbiFormat,
  Pointer lpData,
  Pointer<BITMAPINFOHEADER> lpbi,
  Pointer lpBits,
),
    int Function(
  int hic,
  int dwFlags,
  Pointer<BITMAPINFOHEADER> lpbiFormat,
  Pointer lpData,
  Pointer<BITMAPINFOHEADER> lpbi,
  Pointer lpBits,
)>('ICDecompress');

int ICDraw(
  int hic,
  int dwFlags,
  Pointer lpFormat,
  Pointer lpData,
  int cbData,
  int lTime,
) =>
    _ICDraw(
      hic,
      dwFlags,
      lpFormat,
      lpData,
      cbData,
      lTime,
    );

late final _ICDraw = _msvfw32.lookupFunction<
    Uint32 Function(
  IntPtr hic,
  Uint32 dwFlags,
  Pointer lpFormat,
  Pointer lpData,
  Uint32 cbData,
  Int32 lTime,
),
    int Function(
  int hic,
  int dwFlags,
  Pointer lpFormat,
  Pointer lpData,
  int cbData,
  int lTime,
)>('ICDraw');

int ICDrawBegin(
  int hic,
  int dwFlags,
  int hpal,
  int hwnd,
  int hdc,
  int xDst,
  int yDst,
  int dxDst,
  int dyDst,
  Pointer<BITMAPINFOHEADER> lpbi,
  int xSrc,
  int ySrc,
  int dxSrc,
  int dySrc,
  int dwRate,
  int dwScale,
) =>
    _ICDrawBegin(
      hic,
      dwFlags,
      hpal,
      hwnd,
      hdc,
      xDst,
      yDst,
      dxDst,
      dyDst,
      lpbi,
      xSrc,
      ySrc,
      dxSrc,
      dySrc,
      dwRate,
      dwScale,
    );

late final _ICDrawBegin = _msvfw32.lookupFunction<
    Uint32 Function(
  IntPtr hic,
  Uint32 dwFlags,
  IntPtr hpal,
  IntPtr hwnd,
  IntPtr hdc,
  Int32 xDst,
  Int32 yDst,
  Int32 dxDst,
  Int32 dyDst,
  Pointer<BITMAPINFOHEADER> lpbi,
  Int32 xSrc,
  Int32 ySrc,
  Int32 dxSrc,
  Int32 dySrc,
  Uint32 dwRate,
  Uint32 dwScale,
),
    int Function(
  int hic,
  int dwFlags,
  int hpal,
  int hwnd,
  int hdc,
  int xDst,
  int yDst,
  int dxDst,
  int dyDst,
  Pointer<BITMAPINFOHEADER> lpbi,
  int xSrc,
  int ySrc,
  int dxSrc,
  int dySrc,
  int dwRate,
  int dwScale,
)>('ICDrawBegin');

int ICGetDisplayFormat(
  int hic,
  Pointer<BITMAPINFOHEADER> lpbiIn,
  Pointer<BITMAPINFOHEADER> lpbiOut,
  int BitDepth,
  int dx,
  int dy,
) =>
    _ICGetDisplayFormat(
      hic,
      lpbiIn,
      lpbiOut,
      BitDepth,
      dx,
      dy,
    );

late final _ICGetDisplayFormat = _msvfw32.lookupFunction<
    IntPtr Function(
  IntPtr hic,
  Pointer<BITMAPINFOHEADER> lpbiIn,
  Pointer<BITMAPINFOHEADER> lpbiOut,
  Int32 BitDepth,
  Int32 dx,
  Int32 dy,
),
    int Function(
  int hic,
  Pointer<BITMAPINFOHEADER> lpbiIn,
  Pointer<BITMAPINFOHEADER> lpbiOut,
  int BitDepth,
  int dx,
  int dy,
)>('ICGetDisplayFormat');

int ICGetInfo(
  int hic,
  Pointer<ICINFO> picinfo,
  int cb,
) =>
    _ICGetInfo(
      hic,
      picinfo,
      cb,
    );

late final _ICGetInfo = _msvfw32.lookupFunction<
    IntPtr Function(
  IntPtr hic,
  Pointer<ICINFO> picinfo,
  Uint32 cb,
),
    int Function(
  int hic,
  Pointer<ICINFO> picinfo,
  int cb,
)>('ICGetInfo');

int ICImageCompress(
  int hic,
  int uiFlags,
  Pointer<BITMAPINFO> lpbiIn,
  Pointer lpBits,
  Pointer<BITMAPINFO> lpbiOut,
  int lQuality,
  Pointer<Int32> plSize,
) =>
    _ICImageCompress(
      hic,
      uiFlags,
      lpbiIn,
      lpBits,
      lpbiOut,
      lQuality,
      plSize,
    );

late final _ICImageCompress = _msvfw32.lookupFunction<
    IntPtr Function(
  IntPtr hic,
  Uint32 uiFlags,
  Pointer<BITMAPINFO> lpbiIn,
  Pointer lpBits,
  Pointer<BITMAPINFO> lpbiOut,
  Int32 lQuality,
  Pointer<Int32> plSize,
),
    int Function(
  int hic,
  int uiFlags,
  Pointer<BITMAPINFO> lpbiIn,
  Pointer lpBits,
  Pointer<BITMAPINFO> lpbiOut,
  int lQuality,
  Pointer<Int32> plSize,
)>('ICImageCompress');

int ICImageDecompress(
  int hic,
  int uiFlags,
  Pointer<BITMAPINFO> lpbiIn,
  Pointer lpBits,
  Pointer<BITMAPINFO> lpbiOut,
) =>
    _ICImageDecompress(
      hic,
      uiFlags,
      lpbiIn,
      lpBits,
      lpbiOut,
    );

late final _ICImageDecompress = _msvfw32.lookupFunction<
    IntPtr Function(
  IntPtr hic,
  Uint32 uiFlags,
  Pointer<BITMAPINFO> lpbiIn,
  Pointer lpBits,
  Pointer<BITMAPINFO> lpbiOut,
),
    int Function(
  int hic,
  int uiFlags,
  Pointer<BITMAPINFO> lpbiIn,
  Pointer lpBits,
  Pointer<BITMAPINFO> lpbiOut,
)>('ICImageDecompress');

int ICInfo(
  int fccType,
  int fccHandler,
  Pointer<ICINFO> lpicinfo,
) =>
    _ICInfo(
      fccType,
      fccHandler,
      lpicinfo,
    );

late final _ICInfo = _msvfw32.lookupFunction<
    Int32 Function(
  Uint32 fccType,
  Uint32 fccHandler,
  Pointer<ICINFO> lpicinfo,
),
    int Function(
  int fccType,
  int fccHandler,
  Pointer<ICINFO> lpicinfo,
)>('ICInfo');

int ICInstall(
  int fccType,
  int fccHandler,
  int lParam,
  Pointer<Utf8> szDesc,
  int wFlags,
) =>
    _ICInstall(
      fccType,
      fccHandler,
      lParam,
      szDesc,
      wFlags,
    );

late final _ICInstall = _msvfw32.lookupFunction<
    Int32 Function(
  Uint32 fccType,
  Uint32 fccHandler,
  IntPtr lParam,
  Pointer<Utf8> szDesc,
  Uint32 wFlags,
),
    int Function(
  int fccType,
  int fccHandler,
  int lParam,
  Pointer<Utf8> szDesc,
  int wFlags,
)>('ICInstall');

int ICLocate(
  int fccType,
  int fccHandler,
  Pointer<BITMAPINFOHEADER> lpbiIn,
  Pointer<BITMAPINFOHEADER> lpbiOut,
  int wFlags,
) =>
    _ICLocate(
      fccType,
      fccHandler,
      lpbiIn,
      lpbiOut,
      wFlags,
    );

late final _ICLocate = _msvfw32.lookupFunction<
    IntPtr Function(
  Uint32 fccType,
  Uint32 fccHandler,
  Pointer<BITMAPINFOHEADER> lpbiIn,
  Pointer<BITMAPINFOHEADER> lpbiOut,
  Uint16 wFlags,
),
    int Function(
  int fccType,
  int fccHandler,
  Pointer<BITMAPINFOHEADER> lpbiIn,
  Pointer<BITMAPINFOHEADER> lpbiOut,
  int wFlags,
)>('ICLocate');

int ICOpen(
  int fccType,
  int fccHandler,
  int wMode,
) =>
    _ICOpen(
      fccType,
      fccHandler,
      wMode,
    );

late final _ICOpen = _msvfw32.lookupFunction<
    IntPtr Function(
  Uint32 fccType,
  Uint32 fccHandler,
  Uint32 wMode,
),
    int Function(
  int fccType,
  int fccHandler,
  int wMode,
)>('ICOpen');

int ICOpenFunction(
  int fccType,
  int fccHandler,
  int wMode,
  Pointer lpfnHandler,
) =>
    _ICOpenFunction(
      fccType,
      fccHandler,
      wMode,
      lpfnHandler,
    );

late final _ICOpenFunction = _msvfw32.lookupFunction<
    IntPtr Function(
  Uint32 fccType,
  Uint32 fccHandler,
  Uint32 wMode,
  Pointer lpfnHandler,
),
    int Function(
  int fccType,
  int fccHandler,
  int wMode,
  Pointer lpfnHandler,
)>('ICOpenFunction');

int ICRemove(
  int fccType,
  int fccHandler,
  int wFlags,
) =>
    _ICRemove(
      fccType,
      fccHandler,
      wFlags,
    );

late final _ICRemove = _msvfw32.lookupFunction<
    Int32 Function(
  Uint32 fccType,
  Uint32 fccHandler,
  Uint32 wFlags,
),
    int Function(
  int fccType,
  int fccHandler,
  int wFlags,
)>('ICRemove');

int ICSendMessage(
  int hic,
  int msg,
  int dw1,
  int dw2,
) =>
    _ICSendMessage(
      hic,
      msg,
      dw1,
      dw2,
    );

late final _ICSendMessage = _msvfw32.lookupFunction<
    IntPtr Function(
  IntPtr hic,
  Uint32 msg,
  IntPtr dw1,
  IntPtr dw2,
),
    int Function(
  int hic,
  int msg,
  int dw1,
  int dw2,
)>('ICSendMessage');

Pointer ICSeqCompressFrame(
  Pointer<COMPVARS> pc,
  int uiFlags,
  Pointer lpBits,
  Pointer<Int32> pfKey,
  Pointer<Int32> plSize,
) =>
    _ICSeqCompressFrame(
      pc,
      uiFlags,
      lpBits,
      pfKey,
      plSize,
    );

late final _ICSeqCompressFrame = _msvfw32.lookupFunction<
    Pointer Function(
  Pointer<COMPVARS> pc,
  Uint32 uiFlags,
  Pointer lpBits,
  Pointer<Int32> pfKey,
  Pointer<Int32> plSize,
),
    Pointer Function(
  Pointer<COMPVARS> pc,
  int uiFlags,
  Pointer lpBits,
  Pointer<Int32> pfKey,
  Pointer<Int32> plSize,
)>('ICSeqCompressFrame');

void ICSeqCompressFrameEnd(
  Pointer<COMPVARS> pc,
) =>
    _ICSeqCompressFrameEnd(
      pc,
    );

late final _ICSeqCompressFrameEnd = _msvfw32.lookupFunction<
    Void Function(
  Pointer<COMPVARS> pc,
),
    void Function(
  Pointer<COMPVARS> pc,
)>('ICSeqCompressFrameEnd');

int ICSeqCompressFrameStart(
  Pointer<COMPVARS> pc,
  Pointer<BITMAPINFO> lpbiIn,
) =>
    _ICSeqCompressFrameStart(
      pc,
      lpbiIn,
    );

late final _ICSeqCompressFrameStart = _msvfw32.lookupFunction<
    Int32 Function(
  Pointer<COMPVARS> pc,
  Pointer<BITMAPINFO> lpbiIn,
),
    int Function(
  Pointer<COMPVARS> pc,
  Pointer<BITMAPINFO> lpbiIn,
)>('ICSeqCompressFrameStart');

int MCIWndCreate(
  int hwndParent,
  int hInstance,
  int dwStyle,
  Pointer<Utf16> szFile,
) =>
    _MCIWndCreate(
      hwndParent,
      hInstance,
      dwStyle,
      szFile,
    );

late final _MCIWndCreate = _msvfw32.lookupFunction<
    IntPtr Function(
  IntPtr hwndParent,
  IntPtr hInstance,
  Uint32 dwStyle,
  Pointer<Utf16> szFile,
),
    int Function(
  int hwndParent,
  int hInstance,
  int dwStyle,
  Pointer<Utf16> szFile,
)>('MCIWndCreateW');

int MCIWndRegisterClass() => _MCIWndRegisterClass();

late final _MCIWndRegisterClass = _msvfw32
    .lookupFunction<Int32 Function(), int Function()>('MCIWndRegisterClass');

int VideoForWindowsVersion() => _VideoForWindowsVersion();

late final _VideoForWindowsVersion =
    _msvfw32.lookupFunction<Uint32 Function(), int Function()>(
        'VideoForWindowsVersion');

// -----------------------------------------------------------------------
// avifil32.dll
// -----------------------------------------------------------------------
final _avifil32 = DynamicLibrary.open('avifil32.dll');

int AVIBuildFilter(
  Pointer<Utf16> lpszFilter,
  int cbFilter,
  int fSaving,
) =>
    _AVIBuildFilter(
      lpszFilter,
      cbFilter,
      fSaving,
    );

late final _AVIBuildFilter = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszFilter,
  Int32 cbFilter,
  Int32 fSaving,
),
    int Function(
  Pointer<Utf16> lpszFilter,
  int cbFilter,
  int fSaving,
)>('AVIBuildFilterW');

int AVIClearClipboard() => _AVIClearClipboard();

late final _AVIClearClipboard = _avifil32
    .lookupFunction<Int32 Function(), int Function()>('AVIClearClipboard');

int AVIFileAddRef(
  Pointer<COMObject> pfile,
) =>
    _AVIFileAddRef(
      pfile,
    );

late final _AVIFileAddRef = _avifil32.lookupFunction<
    Uint32 Function(
  Pointer<COMObject> pfile,
),
    int Function(
  Pointer<COMObject> pfile,
)>('AVIFileAddRef');

int AVIFileCreateStream(
  Pointer<COMObject> pfile,
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<AVISTREAMINFO> psi,
) =>
    _AVIFileCreateStream(
      pfile,
      ppavi,
      psi,
    );

late final _AVIFileCreateStream = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pfile,
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<AVISTREAMINFO> psi,
),
    int Function(
  Pointer<COMObject> pfile,
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<AVISTREAMINFO> psi,
)>('AVIFileCreateStreamW');

int AVIFileEndRecord(
  Pointer<COMObject> pfile,
) =>
    _AVIFileEndRecord(
      pfile,
    );

late final _AVIFileEndRecord = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pfile,
),
    int Function(
  Pointer<COMObject> pfile,
)>('AVIFileEndRecord');

void AVIFileExit() => _AVIFileExit();

late final _AVIFileExit =
    _avifil32.lookupFunction<Void Function(), void Function()>('AVIFileExit');

int AVIFileGetStream(
  Pointer<COMObject> pfile,
  Pointer<Pointer<COMObject>> ppavi,
  int fccType,
  int lParam,
) =>
    _AVIFileGetStream(
      pfile,
      ppavi,
      fccType,
      lParam,
    );

late final _AVIFileGetStream = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pfile,
  Pointer<Pointer<COMObject>> ppavi,
  Uint32 fccType,
  Int32 lParam,
),
    int Function(
  Pointer<COMObject> pfile,
  Pointer<Pointer<COMObject>> ppavi,
  int fccType,
  int lParam,
)>('AVIFileGetStream');

int AVIFileInfo(
  Pointer<COMObject> pfile,
  Pointer<AVIFILEINFO> pfi,
  int lSize,
) =>
    _AVIFileInfo(
      pfile,
      pfi,
      lSize,
    );

late final _AVIFileInfo = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pfile,
  Pointer<AVIFILEINFO> pfi,
  Int32 lSize,
),
    int Function(
  Pointer<COMObject> pfile,
  Pointer<AVIFILEINFO> pfi,
  int lSize,
)>('AVIFileInfoW');

void AVIFileInit() => _AVIFileInit();

late final _AVIFileInit =
    _avifil32.lookupFunction<Void Function(), void Function()>('AVIFileInit');

int AVIFileOpen(
  Pointer<Pointer<COMObject>> ppfile,
  Pointer<Utf16> szFile,
  int uMode,
  Pointer<GUID> lpHandler,
) =>
    _AVIFileOpen(
      ppfile,
      szFile,
      uMode,
      lpHandler,
    );

late final _AVIFileOpen = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppfile,
  Pointer<Utf16> szFile,
  Uint32 uMode,
  Pointer<GUID> lpHandler,
),
    int Function(
  Pointer<Pointer<COMObject>> ppfile,
  Pointer<Utf16> szFile,
  int uMode,
  Pointer<GUID> lpHandler,
)>('AVIFileOpenW');

int AVIFileReadData(
  Pointer<COMObject> pfile,
  int ckid,
  Pointer lpData,
  Pointer<Int32> lpcbData,
) =>
    _AVIFileReadData(
      pfile,
      ckid,
      lpData,
      lpcbData,
    );

late final _AVIFileReadData = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pfile,
  Uint32 ckid,
  Pointer lpData,
  Pointer<Int32> lpcbData,
),
    int Function(
  Pointer<COMObject> pfile,
  int ckid,
  Pointer lpData,
  Pointer<Int32> lpcbData,
)>('AVIFileReadData');

int AVIFileRelease(
  Pointer<COMObject> pfile,
) =>
    _AVIFileRelease(
      pfile,
    );

late final _AVIFileRelease = _avifil32.lookupFunction<
    Uint32 Function(
  Pointer<COMObject> pfile,
),
    int Function(
  Pointer<COMObject> pfile,
)>('AVIFileRelease');

int AVIFileWriteData(
  Pointer<COMObject> pfile,
  int ckid,
  Pointer lpData,
  int cbData,
) =>
    _AVIFileWriteData(
      pfile,
      ckid,
      lpData,
      cbData,
    );

late final _AVIFileWriteData = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pfile,
  Uint32 ckid,
  Pointer lpData,
  Int32 cbData,
),
    int Function(
  Pointer<COMObject> pfile,
  int ckid,
  Pointer lpData,
  int cbData,
)>('AVIFileWriteData');

int AVIGetFromClipboard(
  Pointer<Pointer<COMObject>> lppf,
) =>
    _AVIGetFromClipboard(
      lppf,
    );

late final _AVIGetFromClipboard = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> lppf,
),
    int Function(
  Pointer<Pointer<COMObject>> lppf,
)>('AVIGetFromClipboard');

int AVIMakeCompressedStream(
  Pointer<Pointer<COMObject>> ppsCompressed,
  Pointer<COMObject> ppsSource,
  Pointer<AVICOMPRESSOPTIONS> lpOptions,
  Pointer<GUID> pclsidHandler,
) =>
    _AVIMakeCompressedStream(
      ppsCompressed,
      ppsSource,
      lpOptions,
      pclsidHandler,
    );

late final _AVIMakeCompressedStream = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppsCompressed,
  Pointer<COMObject> ppsSource,
  Pointer<AVICOMPRESSOPTIONS> lpOptions,
  Pointer<GUID> pclsidHandler,
),
    int Function(
  Pointer<Pointer<COMObject>> ppsCompressed,
  Pointer<COMObject> ppsSource,
  Pointer<AVICOMPRESSOPTIONS> lpOptions,
  Pointer<GUID> pclsidHandler,
)>('AVIMakeCompressedStream');

int AVIMakeFileFromStreams(
  Pointer<Pointer<COMObject>> ppfile,
  int nStreams,
  Pointer<Pointer<COMObject>> papStreams,
) =>
    _AVIMakeFileFromStreams(
      ppfile,
      nStreams,
      papStreams,
    );

late final _AVIMakeFileFromStreams = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppfile,
  Int32 nStreams,
  Pointer<Pointer<COMObject>> papStreams,
),
    int Function(
  Pointer<Pointer<COMObject>> ppfile,
  int nStreams,
  Pointer<Pointer<COMObject>> papStreams,
)>('AVIMakeFileFromStreams');

int AVIMakeStreamFromClipboard(
  int cfFormat,
  int hGlobal,
  Pointer<Pointer<COMObject>> ppstream,
) =>
    _AVIMakeStreamFromClipboard(
      cfFormat,
      hGlobal,
      ppstream,
    );

late final _AVIMakeStreamFromClipboard = _avifil32.lookupFunction<
    Int32 Function(
  Uint32 cfFormat,
  IntPtr hGlobal,
  Pointer<Pointer<COMObject>> ppstream,
),
    int Function(
  int cfFormat,
  int hGlobal,
  Pointer<Pointer<COMObject>> ppstream,
)>('AVIMakeStreamFromClipboard');

int AVIPutFileOnClipboard(
  Pointer<COMObject> pf,
) =>
    _AVIPutFileOnClipboard(
      pf,
    );

late final _AVIPutFileOnClipboard = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pf,
),
    int Function(
  Pointer<COMObject> pf,
)>('AVIPutFileOnClipboard');

int AVISaveOptions(
  int hwnd,
  int uiFlags,
  int nStreams,
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions,
) =>
    _AVISaveOptions(
      hwnd,
      uiFlags,
      nStreams,
      ppavi,
      plpOptions,
    );

late final _AVISaveOptions = _avifil32.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
  Uint32 uiFlags,
  Int32 nStreams,
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions,
),
    int Function(
  int hwnd,
  int uiFlags,
  int nStreams,
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions,
)>('AVISaveOptions');

int AVISaveOptionsFree(
  int nStreams,
  Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions,
) =>
    _AVISaveOptionsFree(
      nStreams,
      plpOptions,
    );

late final _AVISaveOptionsFree = _avifil32.lookupFunction<
    Int32 Function(
  Int32 nStreams,
  Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions,
),
    int Function(
  int nStreams,
  Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions,
)>('AVISaveOptionsFree');

int AVISaveV(
  Pointer<Utf16> szFile,
  Pointer<GUID> pclsidHandler,
  Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
  int nStreams,
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions,
) =>
    _AVISaveV(
      szFile,
      pclsidHandler,
      lpfnCallback,
      nStreams,
      ppavi,
      plpOptions,
    );

late final _AVISaveV = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szFile,
  Pointer<GUID> pclsidHandler,
  Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
  Int32 nStreams,
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions,
),
    int Function(
  Pointer<Utf16> szFile,
  Pointer<GUID> pclsidHandler,
  Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
  int nStreams,
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions,
)>('AVISaveVW');

int AVISave(
  Pointer<Utf16> szFile,
  Pointer<GUID> pclsidHandler,
  Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
  int nStreams,
  Pointer<COMObject> pfile,
  Pointer<AVICOMPRESSOPTIONS> lpOptions,
) =>
    _AVISave(
      szFile,
      pclsidHandler,
      lpfnCallback,
      nStreams,
      pfile,
      lpOptions,
    );

late final _AVISave = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> szFile,
  Pointer<GUID> pclsidHandler,
  Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
  Int32 nStreams,
  Pointer<COMObject> pfile,
  Pointer<AVICOMPRESSOPTIONS> lpOptions,
),
    int Function(
  Pointer<Utf16> szFile,
  Pointer<GUID> pclsidHandler,
  Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
  int nStreams,
  Pointer<COMObject> pfile,
  Pointer<AVICOMPRESSOPTIONS> lpOptions,
)>('AVISaveW');

int AVIStreamAddRef(
  Pointer<COMObject> pavi,
) =>
    _AVIStreamAddRef(
      pavi,
    );

late final _AVIStreamAddRef = _avifil32.lookupFunction<
    Uint32 Function(
  Pointer<COMObject> pavi,
),
    int Function(
  Pointer<COMObject> pavi,
)>('AVIStreamAddRef');

int AVIStreamBeginStreaming(
  Pointer<COMObject> pavi,
  int lStart,
  int lEnd,
  int lRate,
) =>
    _AVIStreamBeginStreaming(
      pavi,
      lStart,
      lEnd,
      lRate,
    );

late final _AVIStreamBeginStreaming = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Int32 lStart,
  Int32 lEnd,
  Int32 lRate,
),
    int Function(
  Pointer<COMObject> pavi,
  int lStart,
  int lEnd,
  int lRate,
)>('AVIStreamBeginStreaming');

int AVIStreamCreate(
  Pointer<Pointer<COMObject>> ppavi,
  int lParam1,
  int lParam2,
  Pointer<GUID> pclsidHandler,
) =>
    _AVIStreamCreate(
      ppavi,
      lParam1,
      lParam2,
      pclsidHandler,
    );

late final _AVIStreamCreate = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppavi,
  Int32 lParam1,
  Int32 lParam2,
  Pointer<GUID> pclsidHandler,
),
    int Function(
  Pointer<Pointer<COMObject>> ppavi,
  int lParam1,
  int lParam2,
  Pointer<GUID> pclsidHandler,
)>('AVIStreamCreate');

int AVIStreamEndStreaming(
  Pointer<COMObject> pavi,
) =>
    _AVIStreamEndStreaming(
      pavi,
    );

late final _AVIStreamEndStreaming = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
),
    int Function(
  Pointer<COMObject> pavi,
)>('AVIStreamEndStreaming');

int AVIStreamFindSample(
  Pointer<COMObject> pavi,
  int lPos,
  int lFlags,
) =>
    _AVIStreamFindSample(
      pavi,
      lPos,
      lFlags,
    );

late final _AVIStreamFindSample = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Int32 lPos,
  Int32 lFlags,
),
    int Function(
  Pointer<COMObject> pavi,
  int lPos,
  int lFlags,
)>('AVIStreamFindSample');

Pointer AVIStreamGetFrame(
  Pointer<COMObject> pg,
  int lPos,
) =>
    _AVIStreamGetFrame(
      pg,
      lPos,
    );

late final _AVIStreamGetFrame = _avifil32.lookupFunction<
    Pointer Function(
  Pointer<COMObject> pg,
  Int32 lPos,
),
    Pointer Function(
  Pointer<COMObject> pg,
  int lPos,
)>('AVIStreamGetFrame');

int AVIStreamGetFrameClose(
  Pointer<COMObject> pg,
) =>
    _AVIStreamGetFrameClose(
      pg,
    );

late final _AVIStreamGetFrameClose = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pg,
),
    int Function(
  Pointer<COMObject> pg,
)>('AVIStreamGetFrameClose');

Pointer<COMObject> AVIStreamGetFrameOpen(
  Pointer<COMObject> pavi,
  Pointer<BITMAPINFOHEADER> lpbiWanted,
) =>
    _AVIStreamGetFrameOpen(
      pavi,
      lpbiWanted,
    );

late final _AVIStreamGetFrameOpen = _avifil32.lookupFunction<
    Pointer<COMObject> Function(
  Pointer<COMObject> pavi,
  Pointer<BITMAPINFOHEADER> lpbiWanted,
),
    Pointer<COMObject> Function(
  Pointer<COMObject> pavi,
  Pointer<BITMAPINFOHEADER> lpbiWanted,
)>('AVIStreamGetFrameOpen');

int AVIStreamInfo(
  Pointer<COMObject> pavi,
  Pointer<AVISTREAMINFO> psi,
  int lSize,
) =>
    _AVIStreamInfo(
      pavi,
      psi,
      lSize,
    );

late final _AVIStreamInfo = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Pointer<AVISTREAMINFO> psi,
  Int32 lSize,
),
    int Function(
  Pointer<COMObject> pavi,
  Pointer<AVISTREAMINFO> psi,
  int lSize,
)>('AVIStreamInfoW');

int AVIStreamLength(
  Pointer<COMObject> pavi,
) =>
    _AVIStreamLength(
      pavi,
    );

late final _AVIStreamLength = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
),
    int Function(
  Pointer<COMObject> pavi,
)>('AVIStreamLength');

int AVIStreamOpenFromFile(
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<Utf16> szFile,
  int fccType,
  int lParam,
  int mode,
  Pointer<GUID> pclsidHandler,
) =>
    _AVIStreamOpenFromFile(
      ppavi,
      szFile,
      fccType,
      lParam,
      mode,
      pclsidHandler,
    );

late final _AVIStreamOpenFromFile = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<Utf16> szFile,
  Uint32 fccType,
  Int32 lParam,
  Uint32 mode,
  Pointer<GUID> pclsidHandler,
),
    int Function(
  Pointer<Pointer<COMObject>> ppavi,
  Pointer<Utf16> szFile,
  int fccType,
  int lParam,
  int mode,
  Pointer<GUID> pclsidHandler,
)>('AVIStreamOpenFromFileW');

int AVIStreamRead(
  Pointer<COMObject> pavi,
  int lStart,
  int lSamples,
  Pointer lpBuffer,
  int cbBuffer,
  Pointer<Int32> plBytes,
  Pointer<Int32> plSamples,
) =>
    _AVIStreamRead(
      pavi,
      lStart,
      lSamples,
      lpBuffer,
      cbBuffer,
      plBytes,
      plSamples,
    );

late final _AVIStreamRead = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Int32 lStart,
  Int32 lSamples,
  Pointer lpBuffer,
  Int32 cbBuffer,
  Pointer<Int32> plBytes,
  Pointer<Int32> plSamples,
),
    int Function(
  Pointer<COMObject> pavi,
  int lStart,
  int lSamples,
  Pointer lpBuffer,
  int cbBuffer,
  Pointer<Int32> plBytes,
  Pointer<Int32> plSamples,
)>('AVIStreamRead');

int AVIStreamReadData(
  Pointer<COMObject> pavi,
  int fcc,
  Pointer lp,
  Pointer<Int32> lpcb,
) =>
    _AVIStreamReadData(
      pavi,
      fcc,
      lp,
      lpcb,
    );

late final _AVIStreamReadData = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Uint32 fcc,
  Pointer lp,
  Pointer<Int32> lpcb,
),
    int Function(
  Pointer<COMObject> pavi,
  int fcc,
  Pointer lp,
  Pointer<Int32> lpcb,
)>('AVIStreamReadData');

int AVIStreamReadFormat(
  Pointer<COMObject> pavi,
  int lPos,
  Pointer lpFormat,
  Pointer<Int32> lpcbFormat,
) =>
    _AVIStreamReadFormat(
      pavi,
      lPos,
      lpFormat,
      lpcbFormat,
    );

late final _AVIStreamReadFormat = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Int32 lPos,
  Pointer lpFormat,
  Pointer<Int32> lpcbFormat,
),
    int Function(
  Pointer<COMObject> pavi,
  int lPos,
  Pointer lpFormat,
  Pointer<Int32> lpcbFormat,
)>('AVIStreamReadFormat');

int AVIStreamRelease(
  Pointer<COMObject> pavi,
) =>
    _AVIStreamRelease(
      pavi,
    );

late final _AVIStreamRelease = _avifil32.lookupFunction<
    Uint32 Function(
  Pointer<COMObject> pavi,
),
    int Function(
  Pointer<COMObject> pavi,
)>('AVIStreamRelease');

int AVIStreamSampleToTime(
  Pointer<COMObject> pavi,
  int lSample,
) =>
    _AVIStreamSampleToTime(
      pavi,
      lSample,
    );

late final _AVIStreamSampleToTime = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Int32 lSample,
),
    int Function(
  Pointer<COMObject> pavi,
  int lSample,
)>('AVIStreamSampleToTime');

int AVIStreamSetFormat(
  Pointer<COMObject> pavi,
  int lPos,
  Pointer lpFormat,
  int cbFormat,
) =>
    _AVIStreamSetFormat(
      pavi,
      lPos,
      lpFormat,
      cbFormat,
    );

late final _AVIStreamSetFormat = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Int32 lPos,
  Pointer lpFormat,
  Int32 cbFormat,
),
    int Function(
  Pointer<COMObject> pavi,
  int lPos,
  Pointer lpFormat,
  int cbFormat,
)>('AVIStreamSetFormat');

int AVIStreamStart(
  Pointer<COMObject> pavi,
) =>
    _AVIStreamStart(
      pavi,
    );

late final _AVIStreamStart = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
),
    int Function(
  Pointer<COMObject> pavi,
)>('AVIStreamStart');

int AVIStreamTimeToSample(
  Pointer<COMObject> pavi,
  int lTime,
) =>
    _AVIStreamTimeToSample(
      pavi,
      lTime,
    );

late final _AVIStreamTimeToSample = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Int32 lTime,
),
    int Function(
  Pointer<COMObject> pavi,
  int lTime,
)>('AVIStreamTimeToSample');

int AVIStreamWrite(
  Pointer<COMObject> pavi,
  int lStart,
  int lSamples,
  Pointer lpBuffer,
  int cbBuffer,
  int dwFlags,
  Pointer<Int32> plSampWritten,
  Pointer<Int32> plBytesWritten,
) =>
    _AVIStreamWrite(
      pavi,
      lStart,
      lSamples,
      lpBuffer,
      cbBuffer,
      dwFlags,
      plSampWritten,
      plBytesWritten,
    );

late final _AVIStreamWrite = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Int32 lStart,
  Int32 lSamples,
  Pointer lpBuffer,
  Int32 cbBuffer,
  Uint32 dwFlags,
  Pointer<Int32> plSampWritten,
  Pointer<Int32> plBytesWritten,
),
    int Function(
  Pointer<COMObject> pavi,
  int lStart,
  int lSamples,
  Pointer lpBuffer,
  int cbBuffer,
  int dwFlags,
  Pointer<Int32> plSampWritten,
  Pointer<Int32> plBytesWritten,
)>('AVIStreamWrite');

int AVIStreamWriteData(
  Pointer<COMObject> pavi,
  int fcc,
  Pointer lp,
  int cb,
) =>
    _AVIStreamWriteData(
      pavi,
      fcc,
      lp,
      cb,
    );

late final _AVIStreamWriteData = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Uint32 fcc,
  Pointer lp,
  Int32 cb,
),
    int Function(
  Pointer<COMObject> pavi,
  int fcc,
  Pointer lp,
  int cb,
)>('AVIStreamWriteData');

int CreateEditableStream(
  Pointer<Pointer<COMObject>> ppsEditable,
  Pointer<COMObject> psSource,
) =>
    _CreateEditableStream(
      ppsEditable,
      psSource,
    );

late final _CreateEditableStream = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppsEditable,
  Pointer<COMObject> psSource,
),
    int Function(
  Pointer<Pointer<COMObject>> ppsEditable,
  Pointer<COMObject> psSource,
)>('CreateEditableStream');

int EditStreamClone(
  Pointer<COMObject> pavi,
  Pointer<Pointer<COMObject>> ppResult,
) =>
    _EditStreamClone(
      pavi,
      ppResult,
    );

late final _EditStreamClone = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Pointer<Pointer<COMObject>> ppResult,
),
    int Function(
  Pointer<COMObject> pavi,
  Pointer<Pointer<COMObject>> ppResult,
)>('EditStreamClone');

int EditStreamCopy(
  Pointer<COMObject> pavi,
  Pointer<Int32> plStart,
  Pointer<Int32> plLength,
  Pointer<Pointer<COMObject>> ppResult,
) =>
    _EditStreamCopy(
      pavi,
      plStart,
      plLength,
      ppResult,
    );

late final _EditStreamCopy = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Pointer<Int32> plStart,
  Pointer<Int32> plLength,
  Pointer<Pointer<COMObject>> ppResult,
),
    int Function(
  Pointer<COMObject> pavi,
  Pointer<Int32> plStart,
  Pointer<Int32> plLength,
  Pointer<Pointer<COMObject>> ppResult,
)>('EditStreamCopy');

int EditStreamCut(
  Pointer<COMObject> pavi,
  Pointer<Int32> plStart,
  Pointer<Int32> plLength,
  Pointer<Pointer<COMObject>> ppResult,
) =>
    _EditStreamCut(
      pavi,
      plStart,
      plLength,
      ppResult,
    );

late final _EditStreamCut = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Pointer<Int32> plStart,
  Pointer<Int32> plLength,
  Pointer<Pointer<COMObject>> ppResult,
),
    int Function(
  Pointer<COMObject> pavi,
  Pointer<Int32> plStart,
  Pointer<Int32> plLength,
  Pointer<Pointer<COMObject>> ppResult,
)>('EditStreamCut');

int EditStreamPaste(
  Pointer<COMObject> pavi,
  Pointer<Int32> plPos,
  Pointer<Int32> plLength,
  Pointer<COMObject> pstream,
  int lStart,
  int lEnd,
) =>
    _EditStreamPaste(
      pavi,
      plPos,
      plLength,
      pstream,
      lStart,
      lEnd,
    );

late final _EditStreamPaste = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Pointer<Int32> plPos,
  Pointer<Int32> plLength,
  Pointer<COMObject> pstream,
  Int32 lStart,
  Int32 lEnd,
),
    int Function(
  Pointer<COMObject> pavi,
  Pointer<Int32> plPos,
  Pointer<Int32> plLength,
  Pointer<COMObject> pstream,
  int lStart,
  int lEnd,
)>('EditStreamPaste');

int EditStreamSetInfo(
  Pointer<COMObject> pavi,
  Pointer<AVISTREAMINFO> lpInfo,
  int cbInfo,
) =>
    _EditStreamSetInfo(
      pavi,
      lpInfo,
      cbInfo,
    );

late final _EditStreamSetInfo = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Pointer<AVISTREAMINFO> lpInfo,
  Int32 cbInfo,
),
    int Function(
  Pointer<COMObject> pavi,
  Pointer<AVISTREAMINFO> lpInfo,
  int cbInfo,
)>('EditStreamSetInfoW');

int EditStreamSetName(
  Pointer<COMObject> pavi,
  Pointer<Utf16> lpszName,
) =>
    _EditStreamSetName(
      pavi,
      lpszName,
    );

late final _EditStreamSetName = _avifil32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pavi,
  Pointer<Utf16> lpszName,
),
    int Function(
  Pointer<COMObject> pavi,
  Pointer<Utf16> lpszName,
)>('EditStreamSetNameW');

// -----------------------------------------------------------------------
// avicap32.dll
// -----------------------------------------------------------------------
final _avicap32 = DynamicLibrary.open('avicap32.dll');

int capCreateCaptureWindow(
  Pointer<Utf16> lpszWindowName,
  int dwStyle,
  int x,
  int y,
  int nWidth,
  int nHeight,
  int hwndParent,
  int nID,
) =>
    _capCreateCaptureWindow(
      lpszWindowName,
      dwStyle,
      x,
      y,
      nWidth,
      nHeight,
      hwndParent,
      nID,
    );

late final _capCreateCaptureWindow = _avicap32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpszWindowName,
  Uint32 dwStyle,
  Int32 x,
  Int32 y,
  Int32 nWidth,
  Int32 nHeight,
  IntPtr hwndParent,
  Int32 nID,
),
    int Function(
  Pointer<Utf16> lpszWindowName,
  int dwStyle,
  int x,
  int y,
  int nWidth,
  int nHeight,
  int hwndParent,
  int nID,
)>('capCreateCaptureWindowW');

int capGetDriverDescription(
  int wDriverIndex,
  Pointer<Utf16> lpszName,
  int cbName,
  Pointer<Utf16> lpszVer,
  int cbVer,
) =>
    _capGetDriverDescription(
      wDriverIndex,
      lpszName,
      cbName,
      lpszVer,
      cbVer,
    );

late final _capGetDriverDescription = _avicap32.lookupFunction<
    Int32 Function(
  Uint32 wDriverIndex,
  Pointer<Utf16> lpszName,
  Int32 cbName,
  Pointer<Utf16> lpszVer,
  Int32 cbVer,
),
    int Function(
  int wDriverIndex,
  Pointer<Utf16> lpszName,
  int cbName,
  Pointer<Utf16> lpszVer,
  int cbVer,
)>('capGetDriverDescriptionW');
