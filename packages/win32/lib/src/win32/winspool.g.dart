// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _winspool = DynamicLibrary.open('winspool.drv');

/// Deletes a printers spool file if the printer is configured for spooling.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/abortprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool AbortPrinter(PRINTER_HANDLE hPrinter) => _AbortPrinter(hPrinter) != FALSE;

final _AbortPrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'AbortPrinter',
    );

/// Adds a form to the list of available forms that can be selected for the
/// specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addform>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool AddForm(PRINTER_HANDLE hPrinter, int level, Pointer<Uint8> pForm) =>
    _AddForm(hPrinter, level, pForm) != FALSE;

final _AddForm = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>),
      int Function(Pointer, int, Pointer<Uint8>)
    >('AddFormW');

/// Adds a print job to the list of print jobs that can be scheduled by the
/// print spooler.
///
/// The function retrieves the name of the file you can use to store the job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addjob>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool AddJob(
  PRINTER_HANDLE hPrinter,
  int level,
  Pointer<Uint8>? pData,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) => _AddJob(hPrinter, level, pData ?? nullptr, cbBuf, pcbNeeded) != FALSE;

final _AddJob = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Uint8>, int, Pointer<Uint32>)
    >('AddJobW');

/// Adds a printer to the list of supported printers for a specified server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addprinter>.
///
/// {@category winspool}
Win32Result<PRINTER_HANDLE> AddPrinter(
  PCWSTR? pName,
  int level,
  Pointer<Uint8> pPrinter,
) {
  resolveGetLastError();
  final result_ = _AddPrinter(pName ?? nullptr, level, pPrinter);
  return .new(value: .new(result_), error: GetLastError());
}

final _AddPrinter = _winspool
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Uint32, Pointer<Uint8>),
      Pointer Function(Pointer<Utf16>, int, Pointer<Uint8>)
    >('AddPrinterW');

/// Adds a connection to the specified printer for the current user.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addprinterconnection>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool AddPrinterConnection(PCWSTR pName) =>
    _AddPrinterConnection(pName) != FALSE;

final _AddPrinterConnection = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('AddPrinterConnectionW');

/// Adds a connection to the specified printer for the current user and
/// specifies connection details.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addprinterconnection2>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool AddPrinterConnection2(
  HWND? hWnd,
  PCWSTR pszName,
  int dwLevel,
  Pointer pConnectionInfo,
) =>
    _AddPrinterConnection2(
      hWnd ?? nullptr,
      pszName,
      dwLevel,
      pConnectionInfo,
    ) !=
    FALSE;

final _AddPrinterConnection2 = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer),
      int Function(Pointer, Pointer<Utf16>, int, Pointer)
    >('AddPrinterConnection2W');

/// Displays a printer-configuration dialog box for the specified printer,
/// allowing the user to configure that printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/advanceddocumentproperties>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int AdvancedDocumentProperties(
  HWND hWnd,
  PRINTER_HANDLE hPrinter,
  PCWSTR pDeviceName,
  Pointer<DEVMODE>? pDevModeOutput,
  Pointer<DEVMODE>? pDevModeInput,
) => _AdvancedDocumentProperties(
  hWnd,
  hPrinter,
  pDeviceName,
  pDevModeOutput ?? nullptr,
  pDevModeInput ?? nullptr,
);

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

/// Closes the specified printer object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/closeprinter>.
///
/// {@category winspool}
Win32Result<bool> ClosePrinter(PRINTER_HANDLE hPrinter) {
  resolveGetLastError();
  final result_ = _ClosePrinter(hPrinter);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ClosePrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'ClosePrinter',
    );

/// Closes a handle to a spool file associated with the print job currently
/// submitted by the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/closespoolfilehandle>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool CloseSpoolFileHandle(PRINTER_HANDLE hPrinter, HANDLE hSpoolFile) =>
    _CloseSpoolFileHandle(hPrinter, hSpoolFile) != FALSE;

final _CloseSpoolFileHandle = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('CloseSpoolFileHandle');

/// Notifies the print spooler that a specified amount of data has been written
/// to a specified spool file and is ready to be rendered.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/commitspooldata>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
HANDLE CommitSpoolData(
  PRINTER_HANDLE hPrinter,
  HANDLE hSpoolFile,
  int cbCommit,
) => HANDLE(_CommitSpoolData(hPrinter, hSpoolFile, cbCommit));

final _CommitSpoolData = _winspool
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Uint32),
      Pointer Function(Pointer, Pointer, int)
    >('CommitSpoolData');

/// Displays the port-configuration dialog box for a port on the specified
/// server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/configureport>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool ConfigurePort(PCWSTR? pName, HWND hWnd, PCWSTR pPortName) =>
    _ConfigurePort(pName ?? nullptr, hWnd, pPortName) != FALSE;

final _ConfigurePort = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer, Pointer<Utf16>),
      int Function(Pointer<Utf16>, Pointer, Pointer<Utf16>)
    >('ConfigurePortW');

/// Displays a dialog box that lets users browse and connect to printers on a
/// network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/connecttoprinterdlg>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
HANDLE ConnectToPrinterDlg(HWND hwnd, int flags) =>
    HANDLE(_ConnectToPrinterDlg(hwnd, flags));

final _ConnectToPrinterDlg = _winspool
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('ConnectToPrinterDlg');

/// Removes a form name from the list of supported forms.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteform>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool DeleteForm(PRINTER_HANDLE hPrinter, PCWSTR pFormName) =>
    _DeleteForm(hPrinter, pFormName) != FALSE;

final _DeleteForm = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('DeleteFormW');

/// Deletes the specified printer object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinter>.
///
/// {@category winspool}
Win32Result<bool> DeletePrinter(PRINTER_HANDLE hPrinter) {
  resolveGetLastError();
  final result_ = _DeletePrinter(hPrinter);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DeletePrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DeletePrinter',
    );

/// Deletes a connection to a printer that was established by a call to
/// AddPrinterConnection or ConnectToPrinterDlg.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinterconnection>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool DeletePrinterConnection(PCWSTR pName) =>
    _DeletePrinterConnection(pName) != FALSE;

final _DeletePrinterConnection = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('DeletePrinterConnectionW');

/// Deletes specified configuration data for a printer.
///
/// A printers configuration data consists of a set of named and typed values.
/// The DeletePrinterData function deletes one of these values, specified by its
/// value name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinterdata>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int DeletePrinterData(PRINTER_HANDLE hPrinter, PCWSTR pValueName) =>
    _DeletePrinterData(hPrinter, pValueName);

final _DeletePrinterData = _winspool
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('DeletePrinterDataW');

/// Deletes a specified value from the configuration data for a printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinterdataex>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int DeletePrinterDataEx(
  PRINTER_HANDLE hPrinter,
  PCWSTR pKeyName,
  PCWSTR pValueName,
) => _DeletePrinterDataEx(hPrinter, pKeyName, pValueName);

final _DeletePrinterDataEx = _winspool
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('DeletePrinterDataExW');

/// Deletes a specified key and all its subkeys for a specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinterkey>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int DeletePrinterKey(PRINTER_HANDLE hPrinter, PCWSTR pKeyName) =>
    _DeletePrinterKey(hPrinter, pKeyName);

final _DeletePrinterKey = _winspool
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('DeletePrinterKeyW');

/// Retrieves or modifies printer initialization information or displays a
/// printer-configuration property sheet for the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/documentproperties>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int DocumentProperties(
  HWND? hWnd,
  PRINTER_HANDLE hPrinter,
  PCWSTR pDeviceName,
  Pointer<DEVMODE>? pDevModeOutput,
  Pointer<DEVMODE>? pDevModeInput,
  int fMode,
) => _DocumentProperties(
  hWnd ?? nullptr,
  hPrinter,
  pDeviceName,
  pDevModeOutput ?? nullptr,
  pDevModeInput ?? nullptr,
  fMode,
);

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

/// Ends a print job for the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enddocprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool EndDocPrinter(PRINTER_HANDLE hPrinter) =>
    _EndDocPrinter(hPrinter) != FALSE;

final _EndDocPrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'EndDocPrinter',
    );

/// Notifies the print spooler that the application is at the end of a page in a
/// print job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/endpageprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool EndPagePrinter(PRINTER_HANDLE hPrinter) =>
    _EndPagePrinter(hPrinter) != FALSE;

final _EndPagePrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'EndPagePrinter',
    );

/// Enumerates the forms supported by the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumforms>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool EnumForms(
  PRINTER_HANDLE hPrinter,
  int level,
  Pointer<Uint8>? pForm,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) =>
    _EnumForms(
      hPrinter,
      level,
      pForm ?? nullptr,
      cbBuf,
      pcbNeeded,
      pcReturned,
    ) !=
    FALSE;

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

/// Retrieves information about a specified set of print jobs for a specified
/// printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumjobs>.
///
/// {@category winspool}
Win32Result<bool> EnumJobs(
  PRINTER_HANDLE hPrinter,
  int firstJob,
  int noJobs,
  int level,
  Pointer<Uint8>? pJob,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) {
  resolveGetLastError();
  final result_ = _EnumJobs(
    hPrinter,
    firstJob,
    noJobs,
    level,
    pJob ?? nullptr,
    cbBuf,
    pcbNeeded,
    pcReturned,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Enumerates configuration data for a specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinterdata>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int EnumPrinterData(
  PRINTER_HANDLE hPrinter,
  int dwIndex,
  PWSTR pValueName,
  int cbValueName,
  Pointer<Uint32> pcbValueName,
  Pointer<Uint32>? pType,
  Pointer<Uint8>? pData,
  int cbData,
  Pointer<Uint32>? pcbData,
) => _EnumPrinterData(
  hPrinter,
  dwIndex,
  pValueName,
  cbValueName,
  pcbValueName,
  pType ?? nullptr,
  pData ?? nullptr,
  cbData,
  pcbData ?? nullptr,
);

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

/// Enumerates all value names and data for a specified printer and key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinterdataex>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int EnumPrinterDataEx(
  PRINTER_HANDLE hPrinter,
  PCWSTR pKeyName,
  Pointer<Uint8>? pEnumValues,
  int cbEnumValues,
  Pointer<Uint32> pcbEnumValues,
  Pointer<Uint32> pnEnumValues,
) => _EnumPrinterDataEx(
  hPrinter,
  pKeyName,
  pEnumValues ?? nullptr,
  cbEnumValues,
  pcbEnumValues,
  pnEnumValues,
);

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

/// Enumerates the subkeys of a specified key for a specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinterkey>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int EnumPrinterKey(
  PRINTER_HANDLE hPrinter,
  PCWSTR pKeyName,
  PWSTR? pSubkey,
  int cbSubkey,
  Pointer<Uint32> pcbSubkey,
) => _EnumPrinterKey(
  hPrinter,
  pKeyName,
  pSubkey ?? nullptr,
  cbSubkey,
  pcbSubkey,
);

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

/// Enumerates available printers, print servers, domains, or print providers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinters>.
///
/// {@category winspool}
Win32Result<bool> EnumPrinters(
  int flags,
  PCWSTR? name,
  int level,
  Pointer<Uint8>? pPrinterEnum,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) {
  resolveGetLastError();
  final result_ = _EnumPrinters(
    flags,
    name ?? nullptr,
    level,
    pPrinterEnum ?? nullptr,
    cbBuf,
    pcbNeeded,
    pcReturned,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Closes a change notification object created by calling the
/// FindFirstPrinterChangeNotification function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/findcloseprinterchangenotification>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool FindClosePrinterChangeNotification(
  FINDPRINTERCHANGENOTIFICATION_HANDLE hChange,
) => _FindClosePrinterChangeNotification(hChange) != FALSE;

final _FindClosePrinterChangeNotification = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FindClosePrinterChangeNotification',
    );

/// Creates a change notification object and returns a handle to the object.
///
/// You can then use this handle in a call to one of the wait functions to
/// monitor changes to the printer or print server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/findfirstprinterchangenotification>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
FINDPRINTERCHANGENOTIFICATION_HANDLE FindFirstPrinterChangeNotification(
  PRINTER_HANDLE hPrinter,
  int fdwFilter,
  int fdwOptions,
  Pointer? pPrinterNotifyOptions,
) => FINDPRINTERCHANGENOTIFICATION_HANDLE(
  _FindFirstPrinterChangeNotification(
    hPrinter,
    fdwFilter,
    fdwOptions,
    pPrinterNotifyOptions ?? nullptr,
  ),
);

final _FindFirstPrinterChangeNotification = _winspool
    .lookupFunction<
      Pointer Function(Pointer, Uint32, Uint32, Pointer),
      Pointer Function(Pointer, int, int, Pointer)
    >('FindFirstPrinterChangeNotification');

/// Retrieves information about the most recent change notification for a change
/// notification object associated with a printer or print server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/findnextprinterchangenotification>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool FindNextPrinterChangeNotification(
  FINDPRINTERCHANGENOTIFICATION_HANDLE hChange,
  Pointer<Uint32>? pdwChange,
  Pointer<Pointer>? ppPrinterNotifyInfo,
) =>
    _FindNextPrinterChangeNotification(
      hChange,
      pdwChange ?? nullptr,
      nullptr,
      ppPrinterNotifyInfo ?? nullptr,
    ) !=
    FALSE;

final _FindNextPrinterChangeNotification = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer<Uint32>, Pointer, Pointer<Pointer>)
    >('FindNextPrinterChangeNotification');

/// Sends a buffer to the printer in order to clear it from a transient state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/flushprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool FlushPrinter(
  PRINTER_HANDLE hPrinter,
  Pointer? pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
  int cSleep,
) =>
    _FlushPrinter(hPrinter, pBuf ?? nullptr, cbBuf, pcWritten, cSleep) != FALSE;

final _FlushPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Pointer<Uint32>, Uint32),
      int Function(Pointer, Pointer, int, Pointer<Uint32>, int)
    >('FlushPrinter');

/// Frees a system-allocated buffer created by the
/// FindNextPrinterChangeNotification function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/freeprinternotifyinfo>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool FreePrinterNotifyInfo(Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo) =>
    _FreePrinterNotifyInfo(pPrinterNotifyInfo) != FALSE;

final _FreePrinterNotifyInfo = _winspool
    .lookupFunction<
      Int32 Function(Pointer<PRINTER_NOTIFY_INFO>),
      int Function(Pointer<PRINTER_NOTIFY_INFO>)
    >('FreePrinterNotifyInfo');

/// Retrieves the printer name of the default printer for the current user on
/// the local computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getdefaultprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool GetDefaultPrinter(PWSTR? pszBuffer, Pointer<Uint32> pcchBuffer) =>
    _GetDefaultPrinter(pszBuffer ?? nullptr, pcchBuffer) != FALSE;

final _GetDefaultPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('GetDefaultPrinterW');

/// Retrieves information about a specified form.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getform>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool GetForm(
  PRINTER_HANDLE hPrinter,
  PCWSTR pFormName,
  int level,
  Pointer<Uint8>? pForm,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetForm(hPrinter, pFormName, level, pForm ?? nullptr, cbBuf, pcbNeeded) !=
    FALSE;

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

/// Retrieves information about a specified print job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getjob>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool GetJob(
  PRINTER_HANDLE hPrinter,
  int jobId,
  int level,
  Pointer<Uint8>? pJob,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetJob(hPrinter, jobId, level, pJob ?? nullptr, cbBuf, pcbNeeded) != FALSE;

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

/// Retrieves information about a specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprinter>.
///
/// {@category winspool}
Win32Result<bool> GetPrinter(
  PRINTER_HANDLE hPrinter,
  int level,
  Pointer<Uint8>? pPrinter,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) {
  resolveGetLastError();
  final result_ = _GetPrinter(
    hPrinter,
    level,
    pPrinter ?? nullptr,
    cbBuf,
    pcbNeeded,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer<Uint8>, int, Pointer<Uint32>)
    >('GetPrinterW');

/// Retrieves configuration data for the specified printer or print server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprinterdata>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int GetPrinterData(
  PRINTER_HANDLE hPrinter,
  PCWSTR pValueName,
  Pointer<Uint32>? pType,
  Pointer<Uint8>? pData,
  int nSize,
  Pointer<Uint32> pcbNeeded,
) => _GetPrinterData(
  hPrinter,
  pValueName,
  pType ?? nullptr,
  pData ?? nullptr,
  nSize,
  pcbNeeded,
);

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

/// Retrieves configuration data for the specified printer or print server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprinterdataex>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int GetPrinterDataEx(
  PRINTER_HANDLE hPrinter,
  PCWSTR pKeyName,
  PCWSTR pValueName,
  Pointer<Uint32>? pType,
  Pointer<Uint8>? pData,
  int nSize,
  Pointer<Uint32> pcbNeeded,
) => _GetPrinterDataEx(
  hPrinter,
  pKeyName,
  pValueName,
  pType ?? nullptr,
  pData ?? nullptr,
  nSize,
  pcbNeeded,
);

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

/// The GetPrintExecutionData retrieves the current print context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprintexecutiondata>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool GetPrintExecutionData(Pointer<PRINT_EXECUTION_DATA> pData) =>
    _GetPrintExecutionData(pData) != FALSE;

final _GetPrintExecutionData = _winspool
    .lookupFunction<
      Int32 Function(Pointer<PRINT_EXECUTION_DATA>),
      int Function(Pointer<PRINT_EXECUTION_DATA>)
    >('GetPrintExecutionData');

/// Retrieves a handle for the spool file associated with the job currently
/// submitted by the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getspoolfilehandle>.
///
/// {@category winspool}
Win32Result<HANDLE> GetSpoolFileHandle(PRINTER_HANDLE hPrinter) {
  resolveGetLastError();
  final result_ = _GetSpoolFileHandle(hPrinter);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetSpoolFileHandle = _winspool
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetSpoolFileHandle',
    );

/// Verifies that the contents of a DEVMODE structure are valid.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/isvaliddevmode>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool IsValidDevmode(Pointer<DEVMODE>? pDevmode, int devmodeSize) =>
    _IsValidDevmode(pDevmode ?? nullptr, devmodeSize) != FALSE;

final _IsValidDevmode = _winspool
    .lookupFunction<
      Int32 Function(Pointer<DEVMODE>, IntPtr),
      int Function(Pointer<DEVMODE>, int)
    >('IsValidDevmodeW');

/// Retrieves a handle to the specified printer or print server or other types
/// of handles in the print subsystem.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/openprinter>.
///
/// {@category winspool}
Win32Result<bool> OpenPrinter(
  PCWSTR? pPrinterName,
  Pointer<Pointer> phPrinter,
  Pointer<PRINTER_DEFAULTS>? pDefault,
) {
  resolveGetLastError();
  final result_ = _OpenPrinter(
    pPrinterName ?? nullptr,
    phPrinter,
    pDefault ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _OpenPrinter = _winspool
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Pointer>,
        Pointer<PRINTER_DEFAULTS>,
      ),
      int Function(Pointer<Utf16>, Pointer<Pointer>, Pointer<PRINTER_DEFAULTS>)
    >('OpenPrinterW');

/// Retrieves a handle to the specified printer, print server, or other types of
/// handles in the print subsystem, while setting some of the printer options.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/openprinter2>.
///
/// {@category winspool}
Win32Result<bool> OpenPrinter2(
  PCWSTR? pPrinterName,
  Pointer<Pointer> phPrinter,
  Pointer<PRINTER_DEFAULTS>? pDefault,
  Pointer<PRINTER_OPTIONS>? pOptions,
) {
  resolveGetLastError();
  final result_ = _OpenPrinter2(
    pPrinterName ?? nullptr,
    phPrinter,
    pDefault ?? nullptr,
    pOptions ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Displays a printer-properties property sheet for the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printerproperties>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool PrinterProperties(HWND hWnd, PRINTER_HANDLE hPrinter) =>
    _PrinterProperties(hWnd, hPrinter) != FALSE;

final _PrinterProperties = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('PrinterProperties');

/// Retrieves data from the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/readprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool ReadPrinter(
  PRINTER_HANDLE hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pNoBytesRead,
) => _ReadPrinter(hPrinter, pBuf, cbBuf, pNoBytesRead) != FALSE;

final _ReadPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer, int, Pointer<Uint32>)
    >('ReadPrinter');

/// Reports to the Print Spooler service whether an XPS print job is in the
/// spooling or the rendering phase and what part of the processing is currently
/// underway.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/reportjobprocessingprogress>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
void ReportJobProcessingProgress(
  HANDLE printerHandle,
  int jobId,
  EPrintXPSJobOperation jobOperation,
  EPrintXPSJobProgress jobProgress,
) {
  final hr$ = HRESULT(
    _ReportJobProcessingProgress(
      printerHandle,
      jobId,
      jobOperation,
      jobProgress,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _ReportJobProcessingProgress = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Int32),
      int Function(Pointer, int, int, int)
    >('ReportJobProcessingProgress');

/// Specifies the data type and device mode values to be used for printing
/// documents submitted by the StartDocPrinter function.
///
/// These values can be overridden by using the SetJob function after document
/// printing has started.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/resetprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool ResetPrinter(
  PRINTER_HANDLE hPrinter,
  Pointer<PRINTER_DEFAULTS>? pDefault,
) => _ResetPrinter(hPrinter, pDefault ?? nullptr) != FALSE;

final _ResetPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer<PRINTER_DEFAULTS>),
      int Function(Pointer, Pointer<PRINTER_DEFAULTS>)
    >('ResetPrinterW');

/// Requests that the print spooler schedule a specified print job for printing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/schedulejob>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool ScheduleJob(PRINTER_HANDLE hPrinter, int jobId) =>
    _ScheduleJob(hPrinter, jobId) != FALSE;

final _ScheduleJob = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('ScheduleJob');

/// Sets the printer name of the default printer for the current user on the
/// local computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setdefaultprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool SetDefaultPrinter(PCWSTR? pszPrinter) =>
    _SetDefaultPrinter(pszPrinter ?? nullptr) != FALSE;

final _SetDefaultPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('SetDefaultPrinterW');

/// Sets the form information for the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setform>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool SetForm(
  PRINTER_HANDLE hPrinter,
  PCWSTR pFormName,
  int level,
  Pointer<Uint8> pForm,
) => _SetForm(hPrinter, pFormName, level, pForm) != FALSE;

final _SetForm = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer<Uint8>),
      int Function(Pointer, Pointer<Utf16>, int, Pointer<Uint8>)
    >('SetFormW');

/// Pauses, resumes, cancels, or restarts a print job on a specified printer.
///
/// You can also use the SetJob function to set print job parameters, such as
/// the print job priority and the document name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setjob>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool SetJob(PRINTER_HANDLE hPrinter, int jobId, int level, int command) =>
    _SetJob(hPrinter, jobId, level, nullptr, command) != FALSE;

final _SetJob = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<Uint8>, Uint32),
      int Function(Pointer, int, int, Pointer<Uint8>, int)
    >('SetJobW');

/// Sets the status associated with a printer port.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setport>.
///
/// {@category winspool}
Win32Result<bool> SetPort(
  PCWSTR? pName,
  PCWSTR pPortName,
  int dwLevel,
  Pointer<Uint8> pPortInfo,
) {
  resolveGetLastError();
  final result_ = _SetPort(pName ?? nullptr, pPortName, dwLevel, pPortInfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetPort = _winspool
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer<Uint8>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer<Uint8>)
    >('SetPortW');

/// Sets the data for a specified printer or sets the state of the specified
/// printer by pausing printing, resuming printing, or clearing all print jobs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setprinter>.
///
/// {@category winspool}
Win32Result<bool> SetPrinter(
  PRINTER_HANDLE hPrinter,
  int level,
  Pointer<Uint8>? pPrinter,
  int command,
) {
  resolveGetLastError();
  final result_ = _SetPrinter(hPrinter, level, pPrinter ?? nullptr, command);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetPrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>, Uint32),
      int Function(Pointer, int, Pointer<Uint8>, int)
    >('SetPrinterW');

/// Sets the configuration data for a printer or print server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setprinterdata>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int SetPrinterData(
  PRINTER_HANDLE hPrinter,
  PCWSTR pValueName,
  int type,
  Pointer<Uint8> pData,
  int cbData,
) => _SetPrinterData(hPrinter, pValueName, type, pData, cbData);

final _SetPrinterData = _winspool
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32, Pointer<Uint8>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int, Pointer<Uint8>, int)
    >('SetPrinterDataW');

/// Sets the configuration data for a printer or print server.
///
/// The function stores the configuration data under the printers registry key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setprinterdataex>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int SetPrinterDataEx(
  PRINTER_HANDLE hPrinter,
  PCWSTR pKeyName,
  PCWSTR pValueName,
  int type,
  Pointer<Uint8> pData,
  int cbData,
) => _SetPrinterDataEx(hPrinter, pKeyName, pValueName, type, pData, cbData);

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

/// Notifies the print spooler that a document is to be spooled for printing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/startdocprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int StartDocPrinter(
  PRINTER_HANDLE hPrinter,
  int level,
  Pointer<DOC_INFO_1> pDocInfo,
) => _StartDocPrinter(hPrinter, level, pDocInfo);

final _StartDocPrinter = _winspool
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<DOC_INFO_1>),
      int Function(Pointer, int, Pointer<DOC_INFO_1>)
    >('StartDocPrinterW');

/// Notifies the spooler that a page is about to be printed on the specified
/// printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/startpageprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool StartPagePrinter(PRINTER_HANDLE hPrinter) =>
    _StartPagePrinter(hPrinter) != FALSE;

final _StartPagePrinter = _winspool
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'StartPagePrinter',
    );

/// Notifies the print spooler that data should be written to the specified
/// printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/writeprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool WritePrinter(
  PRINTER_HANDLE hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
) => _WritePrinter(hPrinter, pBuf, cbBuf, pcWritten) != FALSE;

final _WritePrinter = _winspool
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, Pointer, int, Pointer<Uint32>)
    >('WritePrinter');
