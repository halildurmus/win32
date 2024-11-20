// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/winspool.g.dart';
import '../allocator.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Deletes a printers spool file if the printer is configured for spooling.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/abortprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool AbortPrinter(int hPrinter) => _AbortPrinter(hPrinter) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE)>(symbol: 'AbortPrinter')
external int _AbortPrinter(int hPrinter);

/// Adds a form to the list of available forms that can be selected for the
/// specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addform>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool AddForm(int hPrinter, int level, Pointer<Uint8> pForm) =>
    _AddForm(hPrinter, level, pForm) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE, Uint32, Pointer<Uint8>)>(
  symbol: 'AddFormW',
)
external int _AddForm(int hPrinter, int level, Pointer<Uint8> pForm);

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
  int hPrinter,
  int level,
  Pointer<Uint8>? pData,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) => _AddJob(hPrinter, level, pData ?? nullptr, cbBuf, pcbNeeded) != FALSE;

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

/// Adds a printer to the list of supported printers for a specified server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int AddPrinter(PCWSTR? pName, int level, Pointer<Uint8> pPrinter) =>
    AddPrinterW_Wrapper(pName ?? nullptr, level, pPrinter);

/// Adds a connection to the specified printer for the current user.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addprinterconnection>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool AddPrinterConnection(PCWSTR pName) =>
    _AddPrinterConnection(pName) != FALSE;

@Native<BOOL Function(PCWSTR)>(symbol: 'AddPrinterConnectionW')
external int _AddPrinterConnection(PCWSTR pName);

/// Adds a connection to the specified printer for the current user and
/// specifies connection details.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/addprinterconnection2>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool AddPrinterConnection2(
  int? hWnd,
  PCWSTR pszName,
  int dwLevel,
  Pointer pConnectionInfo,
) =>
    _AddPrinterConnection2(hWnd ?? NULL, pszName, dwLevel, pConnectionInfo) !=
    FALSE;

@Native<BOOL Function(HWND, PCWSTR, Uint32, Pointer)>(
  symbol: 'AddPrinterConnection2W',
)
external int _AddPrinterConnection2(
  int hWnd,
  PCWSTR pszName,
  int dwLevel,
  Pointer pConnectionInfo,
);

/// Displays a printer-configuration dialog box for the specified printer,
/// allowing the user to configure that printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/advanceddocumentproperties>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int AdvancedDocumentProperties(
  int hWnd,
  int hPrinter,
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

/// Closes the specified printer object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/closeprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool ClosePrinter(int hPrinter) => ClosePrinter_Wrapper(hPrinter) != FALSE;

/// Closes a handle to a spool file associated with the print job currently
/// submitted by the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/closespoolfilehandle>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool CloseSpoolFileHandle(int hPrinter, int hSpoolFile) =>
    _CloseSpoolFileHandle(hPrinter, hSpoolFile) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE, HANDLE)>(symbol: 'CloseSpoolFileHandle')
external int _CloseSpoolFileHandle(int hPrinter, int hSpoolFile);

/// Notifies the print spooler that a specified amount of data has been written
/// to a specified spool file and is ready to be rendered.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/commitspooldata>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int CommitSpoolData(int hPrinter, int hSpoolFile, int cbCommit) =>
    _CommitSpoolData(hPrinter, hSpoolFile, cbCommit);

@Native<HANDLE Function(PRINTER_HANDLE, HANDLE, Uint32)>(
  symbol: 'CommitSpoolData',
)
external int _CommitSpoolData(int hPrinter, int hSpoolFile, int cbCommit);

/// Displays the port-configuration dialog box for a port on the specified
/// server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/configureport>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool ConfigurePort(PCWSTR? pName, int hWnd, PCWSTR pPortName) =>
    _ConfigurePort(pName ?? nullptr, hWnd, pPortName) != FALSE;

@Native<BOOL Function(PCWSTR, HWND, PCWSTR)>(symbol: 'ConfigurePortW')
external int _ConfigurePort(PCWSTR pName, int hWnd, PCWSTR pPortName);

/// Displays a dialog box that lets users browse and connect to printers on a
/// network.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/connecttoprinterdlg>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int ConnectToPrinterDlg(int hwnd, int flags) =>
    _ConnectToPrinterDlg(hwnd, flags);

@Native<HANDLE Function(HWND, Uint32)>(symbol: 'ConnectToPrinterDlg')
external int _ConnectToPrinterDlg(int hwnd, int flags);

/// Removes a form name from the list of supported forms.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteform>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool DeleteForm(int hPrinter, PCWSTR pFormName) =>
    _DeleteForm(hPrinter, pFormName) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE, PCWSTR)>(symbol: 'DeleteFormW')
external int _DeleteForm(int hPrinter, PCWSTR pFormName);

/// Deletes the specified printer object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool DeletePrinter(int hPrinter) => DeletePrinter_Wrapper(hPrinter) != FALSE;

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

@Native<BOOL Function(PCWSTR)>(symbol: 'DeletePrinterConnectionW')
external int _DeletePrinterConnection(PCWSTR pName);

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
int DeletePrinterData(int hPrinter, PCWSTR pValueName) =>
    _DeletePrinterData(hPrinter, pValueName);

@Native<Uint32 Function(PRINTER_HANDLE, PCWSTR)>(symbol: 'DeletePrinterDataW')
external int _DeletePrinterData(int hPrinter, PCWSTR pValueName);

/// Deletes a specified value from the configuration data for a printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinterdataex>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int DeletePrinterDataEx(int hPrinter, PCWSTR pKeyName, PCWSTR pValueName) =>
    _DeletePrinterDataEx(hPrinter, pKeyName, pValueName);

@Native<Uint32 Function(PRINTER_HANDLE, PCWSTR, PCWSTR)>(
  symbol: 'DeletePrinterDataExW',
)
external int _DeletePrinterDataEx(
  int hPrinter,
  PCWSTR pKeyName,
  PCWSTR pValueName,
);

/// Deletes a specified key and all its subkeys for a specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/deleteprinterkey>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int DeletePrinterKey(int hPrinter, PCWSTR pKeyName) =>
    _DeletePrinterKey(hPrinter, pKeyName);

@Native<Uint32 Function(PRINTER_HANDLE, PCWSTR)>(symbol: 'DeletePrinterKeyW')
external int _DeletePrinterKey(int hPrinter, PCWSTR pKeyName);

/// Retrieves or modifies printer initialization information or displays a
/// printer-configuration property sheet for the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/documentproperties>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int DocumentProperties(
  int? hWnd,
  int hPrinter,
  PCWSTR pDeviceName,
  Pointer<DEVMODE>? pDevModeOutput,
  Pointer<DEVMODE>? pDevModeInput,
  int fMode,
) => _DocumentProperties(
  hWnd ?? NULL,
  hPrinter,
  pDeviceName,
  pDevModeOutput ?? nullptr,
  pDevModeInput ?? nullptr,
  fMode,
);

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

/// Ends a print job for the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enddocprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool EndDocPrinter(int hPrinter) => _EndDocPrinter(hPrinter) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE)>(symbol: 'EndDocPrinter')
external int _EndDocPrinter(int hPrinter);

/// Notifies the print spooler that the application is at the end of a page in a
/// print job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/endpageprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool EndPagePrinter(int hPrinter) => _EndPagePrinter(hPrinter) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE)>(symbol: 'EndPagePrinter')
external int _EndPagePrinter(int hPrinter);

/// Enumerates the forms supported by the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumforms>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool EnumForms(
  int hPrinter,
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

/// Retrieves information about a specified set of print jobs for a specified
/// printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumjobs>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool EnumJobs(
  int hPrinter,
  int firstJob,
  int noJobs,
  int level,
  Pointer<Uint8>? pJob,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) =>
    EnumJobsW_Wrapper(
      hPrinter,
      firstJob,
      noJobs,
      level,
      pJob ?? nullptr,
      cbBuf,
      pcbNeeded,
      pcReturned,
    ) !=
    FALSE;

/// Enumerates configuration data for a specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinterdata>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int EnumPrinterData(
  int hPrinter,
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

/// Enumerates all value names and data for a specified printer and key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinterdataex>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int EnumPrinterDataEx(
  int hPrinter,
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

/// Enumerates the subkeys of a specified key for a specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinterkey>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int EnumPrinterKey(
  int hPrinter,
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

/// Enumerates available printers, print servers, domains, or print providers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/enumprinters>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool EnumPrinters(
  int flags,
  PCWSTR? name,
  int level,
  Pointer<Uint8>? pPrinterEnum,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) =>
    EnumPrintersW_Wrapper(
      flags,
      name ?? nullptr,
      level,
      pPrinterEnum ?? nullptr,
      cbBuf,
      pcbNeeded,
      pcReturned,
    ) !=
    FALSE;

/// Closes a change notification object created by calling the
/// FindFirstPrinterChangeNotification function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/findcloseprinterchangenotification>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool FindClosePrinterChangeNotification(int hChange) =>
    _FindClosePrinterChangeNotification(hChange) != FALSE;

@Native<BOOL Function(HANDLE)>(symbol: 'FindClosePrinterChangeNotification')
external int _FindClosePrinterChangeNotification(int hChange);

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
int FindFirstPrinterChangeNotification(
  int hPrinter,
  int fdwFilter,
  int fdwOptions,
  Pointer? pPrinterNotifyOptions,
) => _FindFirstPrinterChangeNotification(
  hPrinter,
  fdwFilter,
  fdwOptions,
  pPrinterNotifyOptions ?? nullptr,
);

@Native<HANDLE Function(PRINTER_HANDLE, Uint32, Uint32, Pointer)>(
  symbol: 'FindFirstPrinterChangeNotification',
)
external int _FindFirstPrinterChangeNotification(
  int hPrinter,
  int fdwFilter,
  int fdwOptions,
  Pointer pPrinterNotifyOptions,
);

/// Retrieves information about the most recent change notification for a change
/// notification object associated with a printer or print server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/findnextprinterchangenotification>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool FindNextPrinterChangeNotification(
  int hChange,
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

@Native<BOOL Function(HANDLE, Pointer<Uint32>, Pointer, Pointer<Pointer>)>(
  symbol: 'FindNextPrinterChangeNotification',
)
external int _FindNextPrinterChangeNotification(
  int hChange,
  Pointer<Uint32> pdwChange,
  Pointer pvReserved,
  Pointer<Pointer> ppPrinterNotifyInfo,
);

/// Sends a buffer to the printer in order to clear it from a transient state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/flushprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool FlushPrinter(
  int hPrinter,
  Pointer? pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
  int cSleep,
) =>
    _FlushPrinter(hPrinter, pBuf ?? nullptr, cbBuf, pcWritten, cSleep) != FALSE;

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

@Native<BOOL Function(Pointer<PRINTER_NOTIFY_INFO>)>(
  symbol: 'FreePrinterNotifyInfo',
)
external int _FreePrinterNotifyInfo(
  Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo,
);

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

@Native<BOOL Function(PWSTR, Pointer<Uint32>)>(symbol: 'GetDefaultPrinterW')
external int _GetDefaultPrinter(PWSTR pszBuffer, Pointer<Uint32> pcchBuffer);

/// Retrieves information about a specified form.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getform>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool GetForm(
  int hPrinter,
  PCWSTR pFormName,
  int level,
  Pointer<Uint8>? pForm,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetForm(hPrinter, pFormName, level, pForm ?? nullptr, cbBuf, pcbNeeded) !=
    FALSE;

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

/// Retrieves information about a specified print job.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getjob>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool GetJob(
  int hPrinter,
  int jobId,
  int level,
  Pointer<Uint8>? pJob,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetJob(hPrinter, jobId, level, pJob ?? nullptr, cbBuf, pcbNeeded) != FALSE;

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

/// Retrieves information about a specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool GetPrinter(
  int hPrinter,
  int level,
  Pointer<Uint8>? pPrinter,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    GetPrinterW_Wrapper(
      hPrinter,
      level,
      pPrinter ?? nullptr,
      cbBuf,
      pcbNeeded,
    ) !=
    FALSE;

/// Retrieves configuration data for the specified printer or print server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprinterdata>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int GetPrinterData(
  int hPrinter,
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

/// Retrieves configuration data for the specified printer or print server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprinterdataex>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int GetPrinterDataEx(
  int hPrinter,
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

/// The GetPrintExecutionData retrieves the current print context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getprintexecutiondata>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool GetPrintExecutionData(Pointer<PRINT_EXECUTION_DATA> pData) =>
    _GetPrintExecutionData(pData) != FALSE;

@Native<BOOL Function(Pointer<PRINT_EXECUTION_DATA>)>(
  symbol: 'GetPrintExecutionData',
)
external int _GetPrintExecutionData(Pointer<PRINT_EXECUTION_DATA> pData);

/// Retrieves a handle for the spool file associated with the job currently
/// submitted by the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/getspoolfilehandle>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int GetSpoolFileHandle(int hPrinter) => GetSpoolFileHandle_Wrapper(hPrinter);

/// Verifies that the contents of a DEVMODE structure are valid.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/isvaliddevmode>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool IsValidDevmode(Pointer<DEVMODE>? pDevmode, int devmodeSize) =>
    _IsValidDevmode(pDevmode ?? nullptr, devmodeSize) != FALSE;

@Native<BOOL Function(Pointer<DEVMODE>, IntPtr)>(symbol: 'IsValidDevmodeW')
external int _IsValidDevmode(Pointer<DEVMODE> pDevmode, int devmodeSize);

/// Retrieves a handle to the specified printer or print server or other types
/// of handles in the print subsystem.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/openprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool OpenPrinter(
  PCWSTR? pPrinterName,
  Pointer<PRINTER_HANDLE> phPrinter,
  Pointer<PRINTER_DEFAULTS>? pDefault,
) =>
    OpenPrinterW_Wrapper(
      pPrinterName ?? nullptr,
      phPrinter,
      pDefault ?? nullptr,
    ) !=
    FALSE;

/// Retrieves a handle to the specified printer, print server, or other types of
/// handles in the print subsystem, while setting some of the printer options.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/openprinter2>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool OpenPrinter2(
  PCWSTR? pPrinterName,
  Pointer<PRINTER_HANDLE> phPrinter,
  Pointer<PRINTER_DEFAULTS>? pDefault,
  Pointer<PRINTER_OPTIONS>? pOptions,
) =>
    OpenPrinter2W_Wrapper(
      pPrinterName ?? nullptr,
      phPrinter,
      pDefault ?? nullptr,
      pOptions ?? nullptr,
    ) !=
    FALSE;

/// Displays a printer-properties property sheet for the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/printerproperties>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool PrinterProperties(int hWnd, int hPrinter) =>
    _PrinterProperties(hWnd, hPrinter) != FALSE;

@Native<BOOL Function(HWND, PRINTER_HANDLE)>(symbol: 'PrinterProperties')
external int _PrinterProperties(int hWnd, int hPrinter);

/// Retrieves data from the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/readprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool ReadPrinter(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pNoBytesRead,
) => _ReadPrinter(hPrinter, pBuf, cbBuf, pNoBytesRead) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE, Pointer, Uint32, Pointer<Uint32>)>(
  symbol: 'ReadPrinter',
)
external int _ReadPrinter(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pNoBytesRead,
);

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
  int printerHandle,
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

@Native<Int32 Function(HANDLE, Uint32, Int32, Int32)>(
  symbol: 'ReportJobProcessingProgress',
)
external int _ReportJobProcessingProgress(
  int printerHandle,
  int jobId,
  int jobOperation,
  int jobProgress,
);

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
bool ResetPrinter(int hPrinter, Pointer<PRINTER_DEFAULTS>? pDefault) =>
    _ResetPrinter(hPrinter, pDefault ?? nullptr) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE, Pointer<PRINTER_DEFAULTS>)>(
  symbol: 'ResetPrinterW',
)
external int _ResetPrinter(int hPrinter, Pointer<PRINTER_DEFAULTS> pDefault);

/// Requests that the print spooler schedule a specified print job for printing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/schedulejob>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool ScheduleJob(int hPrinter, int jobId) =>
    _ScheduleJob(hPrinter, jobId) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE, Uint32)>(symbol: 'ScheduleJob')
external int _ScheduleJob(int hPrinter, int jobId);

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

@Native<BOOL Function(PCWSTR)>(symbol: 'SetDefaultPrinterW')
external int _SetDefaultPrinter(PCWSTR pszPrinter);

/// Sets the form information for the specified printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setform>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool SetForm(int hPrinter, PCWSTR pFormName, int level, Pointer<Uint8> pForm) =>
    _SetForm(hPrinter, pFormName, level, pForm) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE, PCWSTR, Uint32, Pointer<Uint8>)>(
  symbol: 'SetFormW',
)
external int _SetForm(
  int hPrinter,
  PCWSTR pFormName,
  int level,
  Pointer<Uint8> pForm,
);

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
bool SetJob(int hPrinter, int jobId, int level, int command) =>
    _SetJob(hPrinter, jobId, level, nullptr, command) != FALSE;

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

/// Sets the status associated with a printer port.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setport>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool SetPort(
  PCWSTR? pName,
  PCWSTR pPortName,
  int dwLevel,
  Pointer<Uint8> pPortInfo,
) => SetPortW_Wrapper(pName ?? nullptr, pPortName, dwLevel, pPortInfo) != FALSE;

/// Sets the data for a specified printer or sets the state of the specified
/// printer by pausing printing, resuming printing, or clearing all print jobs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool SetPrinter(
  int hPrinter,
  int level,
  Pointer<Uint8>? pPrinter,
  int command,
) =>
    SetPrinterW_Wrapper(hPrinter, level, pPrinter ?? nullptr, command) != FALSE;

/// Sets the configuration data for a printer or print server.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/setprinterdata>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int SetPrinterData(
  int hPrinter,
  PCWSTR pValueName,
  int type,
  Pointer<Uint8> pData,
  int cbData,
) => _SetPrinterData(hPrinter, pValueName, type, pData, cbData);

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
  int hPrinter,
  PCWSTR pKeyName,
  PCWSTR pValueName,
  int type,
  Pointer<Uint8> pData,
  int cbData,
) => _SetPrinterDataEx(hPrinter, pKeyName, pValueName, type, pData, cbData);

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

/// Notifies the print spooler that a document is to be spooled for printing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/startdocprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
int StartDocPrinter(int hPrinter, int level, Pointer<DOC_INFO_1> pDocInfo) =>
    _StartDocPrinter(hPrinter, level, pDocInfo);

@Native<Uint32 Function(PRINTER_HANDLE, Uint32, Pointer<DOC_INFO_1>)>(
  symbol: 'StartDocPrinterW',
)
external int _StartDocPrinter(
  int hPrinter,
  int level,
  Pointer<DOC_INFO_1> pDocInfo,
);

/// Notifies the spooler that a page is about to be printed on the specified
/// printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/startpageprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool StartPagePrinter(int hPrinter) => _StartPagePrinter(hPrinter) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE)>(symbol: 'StartPagePrinter')
external int _StartPagePrinter(int hPrinter);

/// Notifies the print spooler that data should be written to the specified
/// printer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/writeprinter>.
///
/// {@category winspool}
@pragma('vm:prefer-inline')
bool WritePrinter(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
) => _WritePrinter(hPrinter, pBuf, cbBuf, pcWritten) != FALSE;

@Native<BOOL Function(PRINTER_HANDLE, Pointer, Uint32, Pointer<Uint32>)>(
  symbol: 'WritePrinter',
)
external int _WritePrinter(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
);
