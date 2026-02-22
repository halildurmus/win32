// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

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

@Native<Int32 Function(Pointer)>(symbol: 'AbortPrinter')
external int _AbortPrinter(Pointer hPrinter);

@Native<Int32 Function(Pointer, Uint32, Pointer<Uint8>)>(symbol: 'AddFormW')
external int _AddForm(Pointer hPrinter, int level, Pointer<Uint8> pForm);

@Native<
  Int32 Function(Pointer, Uint32, Pointer<Uint8>, Uint32, Pointer<Uint32>)
>(symbol: 'AddJobW')
external int _AddJob(
  Pointer hPrinter,
  int level,
  Pointer<Uint8> pData,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
);

@Native<Int32 Function(Pointer<Utf16>)>(symbol: 'AddPrinterConnectionW')
external int _AddPrinterConnection(Pointer<Utf16> pName);

@Native<Int32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer)>(
  symbol: 'AddPrinterConnection2W',
)
external int _AddPrinterConnection2(
  Pointer hWnd,
  Pointer<Utf16> pszName,
  int dwLevel,
  Pointer pConnectionInfo,
);

@Native<
  Int32 Function(
    Pointer,
    Pointer,
    Pointer<Utf16>,
    Pointer<DEVMODE>,
    Pointer<DEVMODE>,
  )
>(symbol: 'AdvancedDocumentPropertiesW')
external int _AdvancedDocumentProperties(
  Pointer hWnd,
  Pointer hPrinter,
  Pointer<Utf16> pDeviceName,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<DEVMODE> pDevModeInput,
);

@Native<Int32 Function(Pointer, Pointer)>(symbol: 'CloseSpoolFileHandle')
external int _CloseSpoolFileHandle(Pointer hPrinter, Pointer hSpoolFile);

@Native<Pointer Function(Pointer, Pointer, Uint32)>(symbol: 'CommitSpoolData')
external Pointer _CommitSpoolData(
  Pointer hPrinter,
  Pointer hSpoolFile,
  int cbCommit,
);

@Native<Int32 Function(Pointer<Utf16>, Pointer, Pointer<Utf16>)>(
  symbol: 'ConfigurePortW',
)
external int _ConfigurePort(
  Pointer<Utf16> pName,
  Pointer hWnd,
  Pointer<Utf16> pPortName,
);

@Native<Pointer Function(Pointer, Uint32)>(symbol: 'ConnectToPrinterDlg')
external Pointer _ConnectToPrinterDlg(Pointer hwnd, int flags);

@Native<Int32 Function(Pointer, Pointer<Utf16>)>(symbol: 'DeleteFormW')
external int _DeleteForm(Pointer hPrinter, Pointer<Utf16> pFormName);

@Native<Int32 Function(Pointer<Utf16>)>(symbol: 'DeletePrinterConnectionW')
external int _DeletePrinterConnection(Pointer<Utf16> pName);

@Native<Uint32 Function(Pointer, Pointer<Utf16>)>(symbol: 'DeletePrinterDataW')
external int _DeletePrinterData(Pointer hPrinter, Pointer<Utf16> pValueName);

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)>(
  symbol: 'DeletePrinterDataExW',
)
external int _DeletePrinterDataEx(
  Pointer hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
);

@Native<Uint32 Function(Pointer, Pointer<Utf16>)>(symbol: 'DeletePrinterKeyW')
external int _DeletePrinterKey(Pointer hPrinter, Pointer<Utf16> pKeyName);

@Native<
  Int32 Function(
    Pointer,
    Pointer,
    Pointer<Utf16>,
    Pointer<DEVMODE>,
    Pointer<DEVMODE>,
    Uint32,
  )
>(symbol: 'DocumentPropertiesW')
external int _DocumentProperties(
  Pointer hWnd,
  Pointer hPrinter,
  Pointer<Utf16> pDeviceName,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<DEVMODE> pDevModeInput,
  int fMode,
);

@Native<Int32 Function(Pointer)>(symbol: 'EndDocPrinter')
external int _EndDocPrinter(Pointer hPrinter);

@Native<Int32 Function(Pointer)>(symbol: 'EndPagePrinter')
external int _EndPagePrinter(Pointer hPrinter);

@Native<
  Int32 Function(
    Pointer,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>(symbol: 'EnumFormsW')
external int _EnumForms(
  Pointer hPrinter,
  int level,
  Pointer<Uint8> pForm,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
);

@Native<
  Uint32 Function(
    Pointer,
    Uint32,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'EnumPrinterDataW')
external int _EnumPrinterData(
  Pointer hPrinter,
  int dwIndex,
  Pointer<Utf16> pValueName,
  int cbValueName,
  Pointer<Uint32> pcbValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int cbData,
  Pointer<Uint32> pcbData,
);

@Native<
  Uint32 Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>(symbol: 'EnumPrinterDataExW')
external int _EnumPrinterDataEx(
  Pointer hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Uint8> pEnumValues,
  int cbEnumValues,
  Pointer<Uint32> pcbEnumValues,
  Pointer<Uint32> pnEnumValues,
);

@Native<
  Uint32 Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'EnumPrinterKeyW')
external int _EnumPrinterKey(
  Pointer hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pSubkey,
  int cbSubkey,
  Pointer<Uint32> pcbSubkey,
);

@Native<Int32 Function(Pointer)>(symbol: 'FindClosePrinterChangeNotification')
external int _FindClosePrinterChangeNotification(Pointer hChange);

@Native<Pointer Function(Pointer, Uint32, Uint32, Pointer)>(
  symbol: 'FindFirstPrinterChangeNotification',
)
external Pointer _FindFirstPrinterChangeNotification(
  Pointer hPrinter,
  int fdwFilter,
  int fdwOptions,
  Pointer pPrinterNotifyOptions,
);

@Native<Int32 Function(Pointer, Pointer<Uint32>, Pointer, Pointer<Pointer>)>(
  symbol: 'FindNextPrinterChangeNotification',
)
external int _FindNextPrinterChangeNotification(
  Pointer hChange,
  Pointer<Uint32> pdwChange,
  Pointer pvReserved,
  Pointer<Pointer> ppPrinterNotifyInfo,
);

@Native<Int32 Function(Pointer, Pointer, Uint32, Pointer<Uint32>, Uint32)>(
  symbol: 'FlushPrinter',
)
external int _FlushPrinter(
  Pointer hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
  int cSleep,
);

@Native<Int32 Function(Pointer<PRINTER_NOTIFY_INFO>)>(
  symbol: 'FreePrinterNotifyInfo',
)
external int _FreePrinterNotifyInfo(
  Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo,
);

@Native<Int32 Function(Pointer<Utf16>, Pointer<Uint32>)>(
  symbol: 'GetDefaultPrinterW',
)
external int _GetDefaultPrinter(
  Pointer<Utf16> pszBuffer,
  Pointer<Uint32> pcchBuffer,
);

@Native<
  Int32 Function(
    Pointer,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'GetFormW')
external int _GetForm(
  Pointer hPrinter,
  Pointer<Utf16> pFormName,
  int level,
  Pointer<Uint8> pForm,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
);

@Native<
  Int32 Function(
    Pointer,
    Uint32,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'GetJobW')
external int _GetJob(
  Pointer hPrinter,
  int jobId,
  int level,
  Pointer<Uint8> pJob,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
);

@Native<
  Uint32 Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'GetPrinterDataW')
external int _GetPrinterData(
  Pointer hPrinter,
  Pointer<Utf16> pValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int nSize,
  Pointer<Uint32> pcbNeeded,
);

@Native<
  Uint32 Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>(symbol: 'GetPrinterDataExW')
external int _GetPrinterDataEx(
  Pointer hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int nSize,
  Pointer<Uint32> pcbNeeded,
);

@Native<Int32 Function(Pointer<PRINT_EXECUTION_DATA>)>(
  symbol: 'GetPrintExecutionData',
)
external int _GetPrintExecutionData(Pointer<PRINT_EXECUTION_DATA> pData);

@Native<Int32 Function(Pointer<DEVMODE>, IntPtr)>(symbol: 'IsValidDevmodeW')
external int _IsValidDevmode(Pointer<DEVMODE> pDevmode, int devmodeSize);

@Native<Int32 Function(Pointer, Pointer)>(symbol: 'PrinterProperties')
external int _PrinterProperties(Pointer hWnd, Pointer hPrinter);

@Native<Int32 Function(Pointer, Pointer, Uint32, Pointer<Uint32>)>(
  symbol: 'ReadPrinter',
)
external int _ReadPrinter(
  Pointer hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pNoBytesRead,
);

@Native<Int32 Function(Pointer, Uint32, Int32, Int32)>(
  symbol: 'ReportJobProcessingProgress',
)
external int _ReportJobProcessingProgress(
  Pointer printerHandle,
  int jobId,
  int jobOperation,
  int jobProgress,
);

@Native<Int32 Function(Pointer, Pointer<PRINTER_DEFAULTS>)>(
  symbol: 'ResetPrinterW',
)
external int _ResetPrinter(
  Pointer hPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
);

@Native<Int32 Function(Pointer, Uint32)>(symbol: 'ScheduleJob')
external int _ScheduleJob(Pointer hPrinter, int jobId);

@Native<Int32 Function(Pointer<Utf16>)>(symbol: 'SetDefaultPrinterW')
external int _SetDefaultPrinter(Pointer<Utf16> pszPrinter);

@Native<Int32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer<Uint8>)>(
  symbol: 'SetFormW',
)
external int _SetForm(
  Pointer hPrinter,
  Pointer<Utf16> pFormName,
  int level,
  Pointer<Uint8> pForm,
);

@Native<Int32 Function(Pointer, Uint32, Uint32, Pointer<Uint8>, Uint32)>(
  symbol: 'SetJobW',
)
external int _SetJob(
  Pointer hPrinter,
  int jobId,
  int level,
  Pointer<Uint8> pJob,
  int command,
);

@Native<
  Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer<Uint8>, Uint32)
>(symbol: 'SetPrinterDataW')
external int _SetPrinterData(
  Pointer hPrinter,
  Pointer<Utf16> pValueName,
  int type,
  Pointer<Uint8> pData,
  int cbData,
);

@Native<
  Uint32 Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint8>,
    Uint32,
  )
>(symbol: 'SetPrinterDataExW')
external int _SetPrinterDataEx(
  Pointer hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
  int type,
  Pointer<Uint8> pData,
  int cbData,
);

@Native<Uint32 Function(Pointer, Uint32, Pointer<DOC_INFO_1>)>(
  symbol: 'StartDocPrinterW',
)
external int _StartDocPrinter(
  Pointer hPrinter,
  int level,
  Pointer<DOC_INFO_1> pDocInfo,
);

@Native<Int32 Function(Pointer)>(symbol: 'StartPagePrinter')
external int _StartPagePrinter(Pointer hPrinter);

@Native<Int32 Function(Pointer, Pointer, Uint32, Pointer<Uint32>)>(
  symbol: 'WritePrinter',
)
external int _WritePrinter(
  Pointer hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
);
