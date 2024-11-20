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
import 'package:win32/src/_internal/winspool.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('winspool.drv', () {
    test('AbortPrinter can be instantiated', () {
      check(_AbortPrinter).isA<Function>();
    });
    test('AddForm can be instantiated', () {
      check(_AddForm).isA<Function>();
    });
    test('AddJob can be instantiated', () {
      check(_AddJob).isA<Function>();
    });
    test('AddPrinter can be instantiated', () {
      check(AddPrinterW_Wrapper).isA<Function>();
    });
    test('AddPrinterConnection can be instantiated', () {
      check(_AddPrinterConnection).isA<Function>();
    });
    test('AddPrinterConnection2 can be instantiated', () {
      check(_AddPrinterConnection2).isA<Function>();
    });
    test('AdvancedDocumentProperties can be instantiated', () {
      check(_AdvancedDocumentProperties).isA<Function>();
    });
    test('ClosePrinter can be instantiated', () {
      check(ClosePrinter_Wrapper).isA<Function>();
    });
    test('CloseSpoolFileHandle can be instantiated', () {
      check(_CloseSpoolFileHandle).isA<Function>();
    });
    test('CommitSpoolData can be instantiated', () {
      check(_CommitSpoolData).isA<Function>();
    });
    test('ConfigurePort can be instantiated', () {
      check(_ConfigurePort).isA<Function>();
    });
    test('ConnectToPrinterDlg can be instantiated', () {
      check(_ConnectToPrinterDlg).isA<Function>();
    });
    test('DeleteForm can be instantiated', () {
      check(_DeleteForm).isA<Function>();
    });
    test('DeletePrinter can be instantiated', () {
      check(DeletePrinter_Wrapper).isA<Function>();
    });
    test('DeletePrinterConnection can be instantiated', () {
      check(_DeletePrinterConnection).isA<Function>();
    });
    test('DeletePrinterData can be instantiated', () {
      check(_DeletePrinterData).isA<Function>();
    });
    test('DeletePrinterDataEx can be instantiated', () {
      check(_DeletePrinterDataEx).isA<Function>();
    });
    test('DeletePrinterKey can be instantiated', () {
      check(_DeletePrinterKey).isA<Function>();
    });
    test('DocumentProperties can be instantiated', () {
      check(_DocumentProperties).isA<Function>();
    });
    test('EndDocPrinter can be instantiated', () {
      check(_EndDocPrinter).isA<Function>();
    });
    test('EndPagePrinter can be instantiated', () {
      check(_EndPagePrinter).isA<Function>();
    });
    test('EnumForms can be instantiated', () {
      check(_EnumForms).isA<Function>();
    });
    test('EnumJobs can be instantiated', () {
      check(EnumJobsW_Wrapper).isA<Function>();
    });
    test('EnumPrinterData can be instantiated', () {
      check(_EnumPrinterData).isA<Function>();
    });
    test('EnumPrinterDataEx can be instantiated', () {
      check(_EnumPrinterDataEx).isA<Function>();
    });
    test('EnumPrinterKey can be instantiated', () {
      check(_EnumPrinterKey).isA<Function>();
    });
    test('EnumPrinters can be instantiated', () {
      check(EnumPrintersW_Wrapper).isA<Function>();
    });
    test('FindClosePrinterChangeNotification can be instantiated', () {
      check(_FindClosePrinterChangeNotification).isA<Function>();
    });
    test('FindFirstPrinterChangeNotification can be instantiated', () {
      check(_FindFirstPrinterChangeNotification).isA<Function>();
    });
    test('FindNextPrinterChangeNotification can be instantiated', () {
      check(_FindNextPrinterChangeNotification).isA<Function>();
    });
    test('FlushPrinter can be instantiated', () {
      check(_FlushPrinter).isA<Function>();
    });
    test('FreePrinterNotifyInfo can be instantiated', () {
      check(_FreePrinterNotifyInfo).isA<Function>();
    });
    test('GetDefaultPrinter can be instantiated', () {
      check(_GetDefaultPrinter).isA<Function>();
    });
    test('GetForm can be instantiated', () {
      check(_GetForm).isA<Function>();
    });
    test('GetJob can be instantiated', () {
      check(_GetJob).isA<Function>();
    });
    test('GetPrinter can be instantiated', () {
      check(GetPrinterW_Wrapper).isA<Function>();
    });
    test('GetPrinterData can be instantiated', () {
      check(_GetPrinterData).isA<Function>();
    });
    test('GetPrinterDataEx can be instantiated', () {
      check(_GetPrinterDataEx).isA<Function>();
    });
    test('GetPrintExecutionData can be instantiated', () {
      check(_GetPrintExecutionData).isA<Function>();
    });
    test('GetSpoolFileHandle can be instantiated', () {
      check(GetSpoolFileHandle_Wrapper).isA<Function>();
    });
    test('IsValidDevmode can be instantiated', () {
      check(_IsValidDevmode).isA<Function>();
    });
    test('OpenPrinter can be instantiated', () {
      check(OpenPrinterW_Wrapper).isA<Function>();
    });
    test('OpenPrinter2 can be instantiated', () {
      check(OpenPrinter2W_Wrapper).isA<Function>();
    });
    test('PrinterProperties can be instantiated', () {
      check(_PrinterProperties).isA<Function>();
    });
    test('ReadPrinter can be instantiated', () {
      check(_ReadPrinter).isA<Function>();
    });
    test('ReportJobProcessingProgress can be instantiated', () {
      check(_ReportJobProcessingProgress).isA<Function>();
    });
    test('ResetPrinter can be instantiated', () {
      check(_ResetPrinter).isA<Function>();
    });
    test('ScheduleJob can be instantiated', () {
      check(_ScheduleJob).isA<Function>();
    });
    test('SetDefaultPrinter can be instantiated', () {
      check(_SetDefaultPrinter).isA<Function>();
    });
    test('SetForm can be instantiated', () {
      check(_SetForm).isA<Function>();
    });
    test('SetJob can be instantiated', () {
      check(_SetJob).isA<Function>();
    });
    test('SetPort can be instantiated', () {
      check(SetPortW_Wrapper).isA<Function>();
    });
    test('SetPrinter can be instantiated', () {
      check(SetPrinterW_Wrapper).isA<Function>();
    });
    test('SetPrinterData can be instantiated', () {
      check(_SetPrinterData).isA<Function>();
    });
    test('SetPrinterDataEx can be instantiated', () {
      check(_SetPrinterDataEx).isA<Function>();
    });
    test('StartDocPrinter can be instantiated', () {
      check(_StartDocPrinter).isA<Function>();
    });
    test('StartPagePrinter can be instantiated', () {
      check(_StartPagePrinter).isA<Function>();
    });
    test('WritePrinter can be instantiated', () {
      check(_WritePrinter).isA<Function>();
    });
  });
}

@Native<BOOL Function(PRINTER_HANDLE)>(symbol: 'AbortPrinter')
external int _AbortPrinter(int hPrinter);

@Native<BOOL Function(PRINTER_HANDLE, Uint32, Pointer<Uint8>)>(
  symbol: 'AddFormW',
)
external int _AddForm(int hPrinter, int level, Pointer<Uint8> pForm);

@Native<
  BOOL Function(PRINTER_HANDLE, Uint32, Pointer<Uint8>, Uint32, Pointer<Uint32>)
>(symbol: 'AddJobW')
external int _AddJob(
  int hPrinter,
  int level,
  Pointer<Uint8> pData,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
);

@Native<BOOL Function(PCWSTR)>(symbol: 'AddPrinterConnectionW')
external int _AddPrinterConnection(PCWSTR pName);

@Native<BOOL Function(HWND, PCWSTR, Uint32, Pointer)>(
  symbol: 'AddPrinterConnection2W',
)
external int _AddPrinterConnection2(
  int hWnd,
  PCWSTR pszName,
  int dwLevel,
  Pointer pConnectionInfo,
);

@Native<
  Int32 Function(
    HWND,
    PRINTER_HANDLE,
    PCWSTR,
    Pointer<DEVMODE>,
    Pointer<DEVMODE>,
  )
>(symbol: 'AdvancedDocumentPropertiesW')
external int _AdvancedDocumentProperties(
  int hWnd,
  int hPrinter,
  PCWSTR pDeviceName,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<DEVMODE> pDevModeInput,
);

@Native<BOOL Function(PRINTER_HANDLE, HANDLE)>(symbol: 'CloseSpoolFileHandle')
external int _CloseSpoolFileHandle(int hPrinter, int hSpoolFile);

@Native<HANDLE Function(PRINTER_HANDLE, HANDLE, Uint32)>(
  symbol: 'CommitSpoolData',
)
external int _CommitSpoolData(int hPrinter, int hSpoolFile, int cbCommit);

@Native<BOOL Function(PCWSTR, HWND, PCWSTR)>(symbol: 'ConfigurePortW')
external int _ConfigurePort(PCWSTR pName, int hWnd, PCWSTR pPortName);

@Native<HANDLE Function(HWND, Uint32)>(symbol: 'ConnectToPrinterDlg')
external int _ConnectToPrinterDlg(int hwnd, int flags);

@Native<BOOL Function(PRINTER_HANDLE, PCWSTR)>(symbol: 'DeleteFormW')
external int _DeleteForm(int hPrinter, PCWSTR pFormName);

@Native<BOOL Function(PCWSTR)>(symbol: 'DeletePrinterConnectionW')
external int _DeletePrinterConnection(PCWSTR pName);

@Native<Uint32 Function(PRINTER_HANDLE, PCWSTR)>(symbol: 'DeletePrinterDataW')
external int _DeletePrinterData(int hPrinter, PCWSTR pValueName);

@Native<Uint32 Function(PRINTER_HANDLE, PCWSTR, PCWSTR)>(
  symbol: 'DeletePrinterDataExW',
)
external int _DeletePrinterDataEx(
  int hPrinter,
  PCWSTR pKeyName,
  PCWSTR pValueName,
);

@Native<Uint32 Function(PRINTER_HANDLE, PCWSTR)>(symbol: 'DeletePrinterKeyW')
external int _DeletePrinterKey(int hPrinter, PCWSTR pKeyName);

@Native<
  Int32 Function(
    HWND,
    PRINTER_HANDLE,
    PCWSTR,
    Pointer<DEVMODE>,
    Pointer<DEVMODE>,
    Uint32,
  )
>(symbol: 'DocumentPropertiesW')
external int _DocumentProperties(
  int hWnd,
  int hPrinter,
  PCWSTR pDeviceName,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<DEVMODE> pDevModeInput,
  int fMode,
);

@Native<BOOL Function(PRINTER_HANDLE)>(symbol: 'EndDocPrinter')
external int _EndDocPrinter(int hPrinter);

@Native<BOOL Function(PRINTER_HANDLE)>(symbol: 'EndPagePrinter')
external int _EndPagePrinter(int hPrinter);

@Native<
  BOOL Function(
    PRINTER_HANDLE,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>(symbol: 'EnumFormsW')
external int _EnumForms(
  int hPrinter,
  int level,
  Pointer<Uint8> pForm,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
);

@Native<
  Uint32 Function(
    PRINTER_HANDLE,
    Uint32,
    PWSTR,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'EnumPrinterDataW')
external int _EnumPrinterData(
  int hPrinter,
  int dwIndex,
  PWSTR pValueName,
  int cbValueName,
  Pointer<Uint32> pcbValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int cbData,
  Pointer<Uint32> pcbData,
);

@Native<
  Uint32 Function(
    PRINTER_HANDLE,
    PCWSTR,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>(symbol: 'EnumPrinterDataExW')
external int _EnumPrinterDataEx(
  int hPrinter,
  PCWSTR pKeyName,
  Pointer<Uint8> pEnumValues,
  int cbEnumValues,
  Pointer<Uint32> pcbEnumValues,
  Pointer<Uint32> pnEnumValues,
);

@Native<
  Uint32 Function(PRINTER_HANDLE, PCWSTR, PWSTR, Uint32, Pointer<Uint32>)
>(symbol: 'EnumPrinterKeyW')
external int _EnumPrinterKey(
  int hPrinter,
  PCWSTR pKeyName,
  PWSTR pSubkey,
  int cbSubkey,
  Pointer<Uint32> pcbSubkey,
);

@Native<BOOL Function(HANDLE)>(symbol: 'FindClosePrinterChangeNotification')
external int _FindClosePrinterChangeNotification(int hChange);

@Native<HANDLE Function(PRINTER_HANDLE, Uint32, Uint32, Pointer)>(
  symbol: 'FindFirstPrinterChangeNotification',
)
external int _FindFirstPrinterChangeNotification(
  int hPrinter,
  int fdwFilter,
  int fdwOptions,
  Pointer pPrinterNotifyOptions,
);

@Native<BOOL Function(HANDLE, Pointer<Uint32>, Pointer, Pointer<Pointer>)>(
  symbol: 'FindNextPrinterChangeNotification',
)
external int _FindNextPrinterChangeNotification(
  int hChange,
  Pointer<Uint32> pdwChange,
  Pointer pvReserved,
  Pointer<Pointer> ppPrinterNotifyInfo,
);

@Native<
  BOOL Function(PRINTER_HANDLE, Pointer, Uint32, Pointer<Uint32>, Uint32)
>(symbol: 'FlushPrinter')
external int _FlushPrinter(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
  int cSleep,
);

@Native<BOOL Function(Pointer<PRINTER_NOTIFY_INFO>)>(
  symbol: 'FreePrinterNotifyInfo',
)
external int _FreePrinterNotifyInfo(
  Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo,
);

@Native<BOOL Function(PWSTR, Pointer<Uint32>)>(symbol: 'GetDefaultPrinterW')
external int _GetDefaultPrinter(PWSTR pszBuffer, Pointer<Uint32> pcchBuffer);

@Native<
  BOOL Function(
    PRINTER_HANDLE,
    PCWSTR,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'GetFormW')
external int _GetForm(
  int hPrinter,
  PCWSTR pFormName,
  int level,
  Pointer<Uint8> pForm,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
);

@Native<
  BOOL Function(
    PRINTER_HANDLE,
    Uint32,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'GetJobW')
external int _GetJob(
  int hPrinter,
  int jobId,
  int level,
  Pointer<Uint8> pJob,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
);

@Native<
  Uint32 Function(
    PRINTER_HANDLE,
    PCWSTR,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'GetPrinterDataW')
external int _GetPrinterData(
  int hPrinter,
  PCWSTR pValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int nSize,
  Pointer<Uint32> pcbNeeded,
);

@Native<
  Uint32 Function(
    PRINTER_HANDLE,
    PCWSTR,
    PCWSTR,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'GetPrinterDataExW')
external int _GetPrinterDataEx(
  int hPrinter,
  PCWSTR pKeyName,
  PCWSTR pValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int nSize,
  Pointer<Uint32> pcbNeeded,
);

@Native<BOOL Function(Pointer<PRINT_EXECUTION_DATA>)>(
  symbol: 'GetPrintExecutionData',
)
external int _GetPrintExecutionData(Pointer<PRINT_EXECUTION_DATA> pData);

@Native<BOOL Function(Pointer<DEVMODE>, IntPtr)>(symbol: 'IsValidDevmodeW')
external int _IsValidDevmode(Pointer<DEVMODE> pDevmode, int devmodeSize);

@Native<BOOL Function(HWND, PRINTER_HANDLE)>(symbol: 'PrinterProperties')
external int _PrinterProperties(int hWnd, int hPrinter);

@Native<BOOL Function(PRINTER_HANDLE, Pointer, Uint32, Pointer<Uint32>)>(
  symbol: 'ReadPrinter',
)
external int _ReadPrinter(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pNoBytesRead,
);

@Native<Int32 Function(HANDLE, Uint32, Int32, Int32)>(
  symbol: 'ReportJobProcessingProgress',
)
external int _ReportJobProcessingProgress(
  int printerHandle,
  int jobId,
  int jobOperation,
  int jobProgress,
);

@Native<BOOL Function(PRINTER_HANDLE, Pointer<PRINTER_DEFAULTS>)>(
  symbol: 'ResetPrinterW',
)
external int _ResetPrinter(int hPrinter, Pointer<PRINTER_DEFAULTS> pDefault);

@Native<BOOL Function(PRINTER_HANDLE, Uint32)>(symbol: 'ScheduleJob')
external int _ScheduleJob(int hPrinter, int jobId);

@Native<BOOL Function(PCWSTR)>(symbol: 'SetDefaultPrinterW')
external int _SetDefaultPrinter(PCWSTR pszPrinter);

@Native<BOOL Function(PRINTER_HANDLE, PCWSTR, Uint32, Pointer<Uint8>)>(
  symbol: 'SetFormW',
)
external int _SetForm(
  int hPrinter,
  PCWSTR pFormName,
  int level,
  Pointer<Uint8> pForm,
);

@Native<BOOL Function(PRINTER_HANDLE, Uint32, Uint32, Pointer<Uint8>, Uint32)>(
  symbol: 'SetJobW',
)
external int _SetJob(
  int hPrinter,
  int jobId,
  int level,
  Pointer<Uint8> pJob,
  int command,
);

@Native<
  Uint32 Function(PRINTER_HANDLE, PCWSTR, Uint32, Pointer<Uint8>, Uint32)
>(symbol: 'SetPrinterDataW')
external int _SetPrinterData(
  int hPrinter,
  PCWSTR pValueName,
  int type,
  Pointer<Uint8> pData,
  int cbData,
);

@Native<
  Uint32 Function(
    PRINTER_HANDLE,
    PCWSTR,
    PCWSTR,
    Uint32,
    Pointer<Uint8>,
    Uint32,
  )
>(symbol: 'SetPrinterDataExW')
external int _SetPrinterDataEx(
  int hPrinter,
  PCWSTR pKeyName,
  PCWSTR pValueName,
  int type,
  Pointer<Uint8> pData,
  int cbData,
);

@Native<Uint32 Function(PRINTER_HANDLE, Uint32, Pointer<DOC_INFO_1>)>(
  symbol: 'StartDocPrinterW',
)
external int _StartDocPrinter(
  int hPrinter,
  int level,
  Pointer<DOC_INFO_1> pDocInfo,
);

@Native<BOOL Function(PRINTER_HANDLE)>(symbol: 'StartPagePrinter')
external int _StartPagePrinter(int hPrinter);

@Native<BOOL Function(PRINTER_HANDLE, Pointer, Uint32, Pointer<Uint32>)>(
  symbol: 'WritePrinter',
)
external int _WritePrinter(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
);
