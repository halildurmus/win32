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
import '../../devices/communication/structs.g.dart';
import '../../specialTypes.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int BuildCommDCBAndTimeouts(
  Pointer<Utf16> lpDef,
  Pointer<DCB> lpDCB,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
) =>
    _BuildCommDCBAndTimeouts(
      lpDef,
      lpDCB,
      lpCommTimeouts,
    );

late final _BuildCommDCBAndTimeouts = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpDef,
  Pointer<DCB> lpDCB,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
),
    int Function(
  Pointer<Utf16> lpDef,
  Pointer<DCB> lpDCB,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
)>('BuildCommDCBAndTimeoutsW');

int BuildCommDCB(
  Pointer<Utf16> lpDef,
  Pointer<DCB> lpDCB,
) =>
    _BuildCommDCB(
      lpDef,
      lpDCB,
    );

late final _BuildCommDCB = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpDef,
  Pointer<DCB> lpDCB,
),
    int Function(
  Pointer<Utf16> lpDef,
  Pointer<DCB> lpDCB,
)>('BuildCommDCBW');

int ClearCommBreak(
  int hFile,
) =>
    _ClearCommBreak(
      hFile,
    );

late final _ClearCommBreak = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
),
    int Function(
  int hFile,
)>('ClearCommBreak');

int ClearCommError(
  int hFile,
  Pointer<Uint32> lpErrors,
  Pointer<COMSTAT> lpStat,
) =>
    _ClearCommError(
      hFile,
      lpErrors,
      lpStat,
    );

late final _ClearCommError = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Uint32> lpErrors,
  Pointer<COMSTAT> lpStat,
),
    int Function(
  int hFile,
  Pointer<Uint32> lpErrors,
  Pointer<COMSTAT> lpStat,
)>('ClearCommError');

int CommConfigDialog(
  Pointer<Utf16> lpszName,
  int hWnd,
  Pointer<COMMCONFIG> lpCC,
) =>
    _CommConfigDialog(
      lpszName,
      hWnd,
      lpCC,
    );

late final _CommConfigDialog = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszName,
  IntPtr hWnd,
  Pointer<COMMCONFIG> lpCC,
),
    int Function(
  Pointer<Utf16> lpszName,
  int hWnd,
  Pointer<COMMCONFIG> lpCC,
)>('CommConfigDialogW');

int EscapeCommFunction(
  int hFile,
  int dwFunc,
) =>
    _EscapeCommFunction(
      hFile,
      dwFunc,
    );

late final _EscapeCommFunction = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Uint32 dwFunc,
),
    int Function(
  int hFile,
  int dwFunc,
)>('EscapeCommFunction');

int GetCommConfig(
  int hCommDev,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
) =>
    _GetCommConfig(
      hCommDev,
      lpCC,
      lpdwSize,
    );

late final _GetCommConfig = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hCommDev,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
),
    int Function(
  int hCommDev,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
)>('GetCommConfig');

int GetCommMask(
  int hFile,
  Pointer<Uint32> lpEvtMask,
) =>
    _GetCommMask(
      hFile,
      lpEvtMask,
    );

late final _GetCommMask = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Uint32> lpEvtMask,
),
    int Function(
  int hFile,
  Pointer<Uint32> lpEvtMask,
)>('GetCommMask');

int GetCommModemStatus(
  int hFile,
  Pointer<Uint32> lpModemStat,
) =>
    _GetCommModemStatus(
      hFile,
      lpModemStat,
    );

late final _GetCommModemStatus = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Uint32> lpModemStat,
),
    int Function(
  int hFile,
  Pointer<Uint32> lpModemStat,
)>('GetCommModemStatus');

int GetCommProperties(
  int hFile,
  Pointer<COMMPROP> lpCommProp,
) =>
    _GetCommProperties(
      hFile,
      lpCommProp,
    );

late final _GetCommProperties = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<COMMPROP> lpCommProp,
),
    int Function(
  int hFile,
  Pointer<COMMPROP> lpCommProp,
)>('GetCommProperties');

int GetCommState(
  int hFile,
  Pointer<DCB> lpDCB,
) =>
    _GetCommState(
      hFile,
      lpDCB,
    );

late final _GetCommState = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<DCB> lpDCB,
),
    int Function(
  int hFile,
  Pointer<DCB> lpDCB,
)>('GetCommState');

int GetCommTimeouts(
  int hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
) =>
    _GetCommTimeouts(
      hFile,
      lpCommTimeouts,
    );

late final _GetCommTimeouts = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
),
    int Function(
  int hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
)>('GetCommTimeouts');

int GetDefaultCommConfig(
  Pointer<Utf16> lpszName,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
) =>
    _GetDefaultCommConfig(
      lpszName,
      lpCC,
      lpdwSize,
    );

late final _GetDefaultCommConfig = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszName,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
),
    int Function(
  Pointer<Utf16> lpszName,
  Pointer<COMMCONFIG> lpCC,
  Pointer<Uint32> lpdwSize,
)>('GetDefaultCommConfigW');

int PurgeComm(
  int hFile,
  int dwFlags,
) =>
    _PurgeComm(
      hFile,
      dwFlags,
    );

late final _PurgeComm = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Uint32 dwFlags,
),
    int Function(
  int hFile,
  int dwFlags,
)>('PurgeComm');

int SetCommBreak(
  int hFile,
) =>
    _SetCommBreak(
      hFile,
    );

late final _SetCommBreak = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
),
    int Function(
  int hFile,
)>('SetCommBreak');

int SetCommConfig(
  int hCommDev,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
) =>
    _SetCommConfig(
      hCommDev,
      lpCC,
      dwSize,
    );

late final _SetCommConfig = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hCommDev,
  Pointer<COMMCONFIG> lpCC,
  Uint32 dwSize,
),
    int Function(
  int hCommDev,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
)>('SetCommConfig');

int SetCommMask(
  int hFile,
  int dwEvtMask,
) =>
    _SetCommMask(
      hFile,
      dwEvtMask,
    );

late final _SetCommMask = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Uint32 dwEvtMask,
),
    int Function(
  int hFile,
  int dwEvtMask,
)>('SetCommMask');

int SetCommState(
  int hFile,
  Pointer<DCB> lpDCB,
) =>
    _SetCommState(
      hFile,
      lpDCB,
    );

late final _SetCommState = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<DCB> lpDCB,
),
    int Function(
  int hFile,
  Pointer<DCB> lpDCB,
)>('SetCommState');

int SetCommTimeouts(
  int hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
) =>
    _SetCommTimeouts(
      hFile,
      lpCommTimeouts,
    );

late final _SetCommTimeouts = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
),
    int Function(
  int hFile,
  Pointer<COMMTIMEOUTS> lpCommTimeouts,
)>('SetCommTimeouts');

int SetDefaultCommConfig(
  Pointer<Utf16> lpszName,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
) =>
    _SetDefaultCommConfig(
      lpszName,
      lpCC,
      dwSize,
    );

late final _SetDefaultCommConfig = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszName,
  Pointer<COMMCONFIG> lpCC,
  Uint32 dwSize,
),
    int Function(
  Pointer<Utf16> lpszName,
  Pointer<COMMCONFIG> lpCC,
  int dwSize,
)>('SetDefaultCommConfigW');

int SetupComm(
  int hFile,
  int dwInQueue,
  int dwOutQueue,
) =>
    _SetupComm(
      hFile,
      dwInQueue,
      dwOutQueue,
    );

late final _SetupComm = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Uint32 dwInQueue,
  Uint32 dwOutQueue,
),
    int Function(
  int hFile,
  int dwInQueue,
  int dwOutQueue,
)>('SetupComm');

int TransmitCommChar(
  int hFile,
  int cChar,
) =>
    _TransmitCommChar(
      hFile,
      cChar,
    );

late final _TransmitCommChar = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Uint8 cChar,
),
    int Function(
  int hFile,
  int cChar,
)>('TransmitCommChar');

int WaitCommEvent(
  int hFile,
  Pointer<Uint32> lpEvtMask,
  Pointer<OVERLAPPED> lpOverlapped,
) =>
    _WaitCommEvent(
      hFile,
      lpEvtMask,
      lpOverlapped,
    );

late final _WaitCommEvent = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hFile,
  Pointer<Uint32> lpEvtMask,
  Pointer<OVERLAPPED> lpOverlapped,
),
    int Function(
  int hFile,
  Pointer<Uint32> lpEvtMask,
  Pointer<OVERLAPPED> lpOverlapped,
)>('WaitCommEvent');

// -----------------------------------------------------------------------
// api-ms-win-core-comm-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_comm_l1_1_1 =
    DynamicLibrary.open('api-ms-win-core-comm-l1-1-1.dll');

int OpenCommPort(
  int uPortNumber,
  int dwDesiredAccess,
  int dwFlagsAndAttributes,
) =>
    _OpenCommPort(
      uPortNumber,
      dwDesiredAccess,
      dwFlagsAndAttributes,
    );

late final _OpenCommPort = _api_ms_win_core_comm_l1_1_1.lookupFunction<
    IntPtr Function(
  Uint32 uPortNumber,
  Uint32 dwDesiredAccess,
  Uint32 dwFlagsAndAttributes,
),
    int Function(
  int uPortNumber,
  int dwDesiredAccess,
  int dwFlagsAndAttributes,
)>('OpenCommPort');

// -----------------------------------------------------------------------
// api-ms-win-core-comm-l1-1-2.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_comm_l1_1_2 =
    DynamicLibrary.open('api-ms-win-core-comm-l1-1-2.dll');

int GetCommPorts(
  Pointer<Uint32> lpPortNumbers,
  int uPortNumbersCount,
  Pointer<Uint32> puPortNumbersFound,
) =>
    _GetCommPorts(
      lpPortNumbers,
      uPortNumbersCount,
      puPortNumbersFound,
    );

late final _GetCommPorts = _api_ms_win_core_comm_l1_1_2.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> lpPortNumbers,
  Uint32 uPortNumbersCount,
  Pointer<Uint32> puPortNumbersFound,
),
    int Function(
  Pointer<Uint32> lpPortNumbers,
  int uPortNumbersCount,
  Pointer<Uint32> puPortNumbersFound,
)>('GetCommPorts');
