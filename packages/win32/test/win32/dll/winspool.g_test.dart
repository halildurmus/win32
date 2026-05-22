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
      check(_AddPrinter).isA<Function>();
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
      check(_ClosePrinter).isA<Function>();
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
      check(_DeletePrinter).isA<Function>();
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
      check(_EnumJobs).isA<Function>();
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
      check(_EnumPrinters).isA<Function>();
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
      check(_GetPrinter).isA<Function>();
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
      check(_GetSpoolFileHandle).isA<Function>();
    });
    test('IsValidDevmode can be instantiated', () {
      check(_IsValidDevmode).isA<Function>();
    });
    test('OpenPrinter can be instantiated', () {
      check(_OpenPrinter).isA<Function>();
    });
    test('OpenPrinter2 can be instantiated', () {
      check(_OpenPrinter2).isA<Function>();
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
      check(_SetPort).isA<Function>();
    });
    test('SetPrinter can be instantiated', () {
      check(_SetPrinter).isA<Function>();
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

final _winspool = DynamicLibrary.open('winspool.drv');

final _AbortPrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'AbortPrinter',
    );

final _AddForm = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>),
      int Function(Pointer, int, Pointer<Uint8>)
    >('AddFormW');

final _AddJob = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Uint8>, int, Pointer<Uint32>)
    >('AddJobW');

final _AddPrinter = _winspool
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Uint32, Pointer<Uint8>),
      Pointer Function(Pointer<Utf16>, int, Pointer<Uint8>)
    >('AddPrinterW');

final _AddPrinterConnection = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('AddPrinterConnectionW');

final _AddPrinterConnection2 = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer),
      int Function(Pointer, Pointer<Utf16>, int, Pointer)
    >('AddPrinterConnection2W');

final _AdvancedDocumentProperties = _winspool
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        Pointer<DEVMODE>,
      ),
      int Function(
        Pointer,
        Pointer,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        Pointer<DEVMODE>,
      )
    >('AdvancedDocumentPropertiesW');

final _ClosePrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'ClosePrinter',
    );

final _CloseSpoolFileHandle = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('CloseSpoolFileHandle');

final _CommitSpoolData = _winspool
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Uint32),
      Pointer Function(Pointer, Pointer, int)
    >('CommitSpoolData');

final _ConfigurePort = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer, Pointer<Utf16>)
    >('ConfigurePortW');

final _ConnectToPrinterDlg = _winspool
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('ConnectToPrinterDlg');

final _DeleteForm = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('DeleteFormW');

final _DeletePrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DeletePrinter',
    );

final _DeletePrinterConnection = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('DeletePrinterConnectionW');

final _DeletePrinterData = _winspool
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('DeletePrinterDataW');

final _DeletePrinterDataEx = _winspool
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('DeletePrinterDataExW');

final _DeletePrinterKey = _winspool
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('DeletePrinterKeyW');

final _DocumentProperties = _winspool
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        Pointer<DEVMODE>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        Pointer<DEVMODE>,
        int,
      )
    >('DocumentPropertiesW');

final _EndDocPrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'EndDocPrinter',
    );

final _EndPagePrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'EndPagePrinter',
    );

final _EnumForms = _winspool
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('EnumFormsW');

final _EnumJobs = _winspool
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        int,
        int,
        int,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('EnumJobsW');

final _EnumPrinterData = _winspool
    .lookupFunction<
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
      ),
      int Function(
        Pointer,
        int,
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
      )
    >('EnumPrinterDataW');

final _EnumPrinterDataEx = _winspool
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('EnumPrinterDataExW');

final _EnumPrinterKey = _winspool
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        Pointer<Uint32>,
      )
    >('EnumPrinterKeyW');

final _EnumPrinters = _winspool
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
      ),
      int Function(
        int,
        Pointer<Utf16>,
        int,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
      )
    >('EnumPrintersW');

final _FindClosePrinterChangeNotification = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FindClosePrinterChangeNotification',
    );

final _FindFirstPrinterChangeNotification = _winspool
    .lookupFunction<
      Pointer Function(Pointer, Uint32, Uint32, Pointer),
      Pointer Function(Pointer, int, int, Pointer)
    >('FindFirstPrinterChangeNotification');

final _FindNextPrinterChangeNotification = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer<Uint32>, Pointer, Pointer<Pointer>)
    >('FindNextPrinterChangeNotification');

final _FlushPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Pointer<Uint32>, Uint32),
      int Function(Pointer, Pointer, int, Pointer<Uint32>, int)
    >('FlushPrinter');

final _FreePrinterNotifyInfo = _winspool
    .lookupFunction<
      Int32 Function(Pointer<PRINTER_NOTIFY_INFO>),
      int Function(Pointer<PRINTER_NOTIFY_INFO>)
    >('FreePrinterNotifyInfo');

final _GetDefaultPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetDefaultPrinterW');

final _GetForm = _winspool
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        int,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
      )
    >('GetFormW');

final _GetJob = _winspool
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(Pointer, int, int, Pointer<Uint8>, int, Pointer<Uint32>)
    >('GetJobW');

final _GetPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Uint8>, int, Pointer<Uint32>)
    >('GetPrinterW');

final _GetPrinterData = _winspool
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
      )
    >('GetPrinterDataW');

final _GetPrinterDataEx = _winspool
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        Uint32,
        Pointer<Uint32>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Uint32>,
        Pointer<Uint8>,
        int,
        Pointer<Uint32>,
      )
    >('GetPrinterDataExW');

final _GetPrintExecutionData = _winspool
    .lookupFunction<
      Int32 Function(Pointer<PRINT_EXECUTION_DATA>),
      int Function(Pointer<PRINT_EXECUTION_DATA>)
    >('GetPrintExecutionData');

final _GetSpoolFileHandle = _winspool
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetSpoolFileHandle',
    );

final _IsValidDevmode = _winspool
    .lookupFunction<
      Int32 Function(Pointer<DEVMODE>, IntPtr),
      int Function(Pointer<DEVMODE>, int)
    >('IsValidDevmodeW');

final _OpenPrinter = _winspool
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Pointer>,
        Pointer<PRINTER_DEFAULTS>,
      ),
      int Function(Pointer<Utf16>, Pointer<Pointer>, Pointer<PRINTER_DEFAULTS>)
    >('OpenPrinterW');

final _OpenPrinter2 = _winspool
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Pointer>,
        Pointer<PRINTER_DEFAULTS>,
        Pointer<PRINTER_OPTIONS>,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Pointer>,
        Pointer<PRINTER_DEFAULTS>,
        Pointer<PRINTER_OPTIONS>,
      )
    >('OpenPrinter2W');

final _PrinterProperties = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('PrinterProperties');

final _ReadPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer, int, Pointer<Uint32>)
    >('ReadPrinter');

final _ReportJobProcessingProgress = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Int32),
      int Function(Pointer, int, int, int)
    >('ReportJobProcessingProgress');

final _ResetPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer<PRINTER_DEFAULTS>),
      int Function(Pointer, Pointer<PRINTER_DEFAULTS>)
    >('ResetPrinterW');

final _ScheduleJob = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('ScheduleJob');

final _SetDefaultPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('SetDefaultPrinterW');

final _SetForm = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer<Uint8>),
      int Function(Pointer, Pointer<Utf16>, int, Pointer<Uint8>)
    >('SetFormW');

final _SetJob = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<Uint8>, Uint32),
      int Function(Pointer, int, int, Pointer<Uint8>, int)
    >('SetJobW');

final _SetPort = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer<Uint8>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer<Uint8>)
    >('SetPortW');

final _SetPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>, Uint32),
      int Function(Pointer, int, Pointer<Uint8>, int)
    >('SetPrinterW');

final _SetPrinterData = _winspool
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer<Uint8>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int, Pointer<Uint8>, int)
    >('SetPrinterDataW');

final _SetPrinterDataEx = _winspool
    .lookupFunction<
      Uint32 Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Uint8>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        Pointer<Uint8>,
        int,
      )
    >('SetPrinterDataExW');

final _StartDocPrinter = _winspool
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<DOC_INFO_1>),
      int Function(Pointer, int, Pointer<DOC_INFO_1>)
    >('StartDocPrinterW');

final _StartPagePrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'StartPagePrinter',
    );

final _WritePrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer, int, Pointer<Uint32>)
    >('WritePrinter');
