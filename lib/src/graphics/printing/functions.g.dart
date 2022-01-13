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
import '../../graphics/printing/callbacks.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/printing/structs.g.dart';
import '../../graphics/printing/IPrintAsyncNotifyCallback.dart';
import '../../graphics/printing/IPrintAsyncNotifyChannel.dart';
import '../../storage/xps/structs.g.dart'; // -----------------------------------------------------------------------

// compstui.dll
// -----------------------------------------------------------------------
final _compstui = DynamicLibrary.open('compstui.dll');

int CommonPropertySheetUI(
  int hWndOwner,
  Pointer<NativeFunction<PFNPROPSHEETUI>> pfnPropSheetUI,
  int lParam,
  Pointer<Uint32> pResult,
) =>
    _CommonPropertySheetUI(
      hWndOwner,
      pfnPropSheetUI,
      lParam,
      pResult,
    );

late final _CommonPropertySheetUI = _compstui.lookupFunction<
    Int32 Function(
  IntPtr hWndOwner,
  Pointer<NativeFunction<PFNPROPSHEETUI>> pfnPropSheetUI,
  IntPtr lParam,
  Pointer<Uint32> pResult,
),
    int Function(
  int hWndOwner,
  Pointer<NativeFunction<PFNPROPSHEETUI>> pfnPropSheetUI,
  int lParam,
  Pointer<Uint32> pResult,
)>('CommonPropertySheetUIW');

int GetCPSUIUserData(
  int hDlg,
) =>
    _GetCPSUIUserData(
      hDlg,
    );

late final _GetCPSUIUserData = _compstui.lookupFunction<
    IntPtr Function(
  IntPtr hDlg,
),
    int Function(
  int hDlg,
)>('GetCPSUIUserData');

int SetCPSUIUserData(
  int hDlg,
  int CPSUIUserData,
) =>
    _SetCPSUIUserData(
      hDlg,
      CPSUIUserData,
    );

late final _SetCPSUIUserData = _compstui.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  IntPtr CPSUIUserData,
),
    int Function(
  int hDlg,
  int CPSUIUserData,
)>('SetCPSUIUserData');

// -----------------------------------------------------------------------
// winspool.drv
// -----------------------------------------------------------------------
final _winspool = DynamicLibrary.open('winspool.drv');

int AbortPrinter(
  int hPrinter,
) =>
    _AbortPrinter(
      hPrinter,
    );

late final _AbortPrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
),
    int Function(
  int hPrinter,
)>('AbortPrinter');

int AddForm(
  int hPrinter,
  int Level,
  Pointer<Uint8> pForm,
) =>
    _AddForm(
      hPrinter,
      Level,
      pForm,
    );

late final _AddForm = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 Level,
  Pointer<Uint8> pForm,
),
    int Function(
  int hPrinter,
  int Level,
  Pointer<Uint8> pForm,
)>('AddFormW');

int AddJob(
  int hPrinter,
  int Level,
  Pointer<Uint8> pData,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _AddJob(
      hPrinter,
      Level,
      pData,
      cbBuf,
      pcbNeeded,
    );

late final _AddJob = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 Level,
  Pointer<Uint8> pData,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
),
    int Function(
  int hPrinter,
  int Level,
  Pointer<Uint8> pData,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
)>('AddJobW');

int AddMonitor(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pMonitors,
) =>
    _AddMonitor(
      pName,
      Level,
      pMonitors,
    );

late final _AddMonitor = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Uint32 Level,
  Pointer<Uint8> pMonitors,
),
    int Function(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pMonitors,
)>('AddMonitorW');

int AddPort(
  Pointer<Utf16> pName,
  int hWnd,
  Pointer<Utf16> pMonitorName,
) =>
    _AddPort(
      pName,
      hWnd,
      pMonitorName,
    );

late final _AddPort = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  IntPtr hWnd,
  Pointer<Utf16> pMonitorName,
),
    int Function(
  Pointer<Utf16> pName,
  int hWnd,
  Pointer<Utf16> pMonitorName,
)>('AddPortW');

int AddPrintProcessor(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pPathName,
  Pointer<Utf16> pPrintProcessorName,
) =>
    _AddPrintProcessor(
      pName,
      pEnvironment,
      pPathName,
      pPrintProcessorName,
    );

late final _AddPrintProcessor = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pPathName,
  Pointer<Utf16> pPrintProcessorName,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pPathName,
  Pointer<Utf16> pPrintProcessorName,
)>('AddPrintProcessorW');

int AddPrintProvidor(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pProvidorInfo,
) =>
    _AddPrintProvidor(
      pName,
      Level,
      pProvidorInfo,
    );

late final _AddPrintProvidor = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Uint32 Level,
  Pointer<Uint8> pProvidorInfo,
),
    int Function(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pProvidorInfo,
)>('AddPrintProvidorW');

int AddPrinterConnection2(
  int hWnd,
  Pointer<Utf16> pszName,
  int dwLevel,
  Pointer pConnectionInfo,
) =>
    _AddPrinterConnection2(
      hWnd,
      pszName,
      dwLevel,
      pConnectionInfo,
    );

late final _AddPrinterConnection2 = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> pszName,
  Uint32 dwLevel,
  Pointer pConnectionInfo,
),
    int Function(
  int hWnd,
  Pointer<Utf16> pszName,
  int dwLevel,
  Pointer pConnectionInfo,
)>('AddPrinterConnection2W');

int AddPrinterConnection(
  Pointer<Utf16> pName,
) =>
    _AddPrinterConnection(
      pName,
    );

late final _AddPrinterConnection = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
),
    int Function(
  Pointer<Utf16> pName,
)>('AddPrinterConnectionW');

int AddPrinterDriverEx(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> lpbDriverInfo,
  int dwFileCopyFlags,
) =>
    _AddPrinterDriverEx(
      pName,
      Level,
      lpbDriverInfo,
      dwFileCopyFlags,
    );

late final _AddPrinterDriverEx = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Uint32 Level,
  Pointer<Uint8> lpbDriverInfo,
  Uint32 dwFileCopyFlags,
),
    int Function(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> lpbDriverInfo,
  int dwFileCopyFlags,
)>('AddPrinterDriverExW');

int AddPrinterDriver(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pDriverInfo,
) =>
    _AddPrinterDriver(
      pName,
      Level,
      pDriverInfo,
    );

late final _AddPrinterDriver = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Uint32 Level,
  Pointer<Uint8> pDriverInfo,
),
    int Function(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pDriverInfo,
)>('AddPrinterDriverW');

int AddPrinter(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pPrinter,
) =>
    _AddPrinter(
      pName,
      Level,
      pPrinter,
    );

late final _AddPrinter = _winspool.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> pName,
  Uint32 Level,
  Pointer<Uint8> pPrinter,
),
    int Function(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pPrinter,
)>('AddPrinterW');

int AdvancedDocumentProperties(
  int hWnd,
  int hPrinter,
  Pointer<Utf16> pDeviceName,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<DEVMODE> pDevModeInput,
) =>
    _AdvancedDocumentProperties(
      hWnd,
      hPrinter,
      pDeviceName,
      pDevModeOutput,
      pDevModeInput,
    );

late final _AdvancedDocumentProperties = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hPrinter,
  Pointer<Utf16> pDeviceName,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<DEVMODE> pDevModeInput,
),
    int Function(
  int hWnd,
  int hPrinter,
  Pointer<Utf16> pDeviceName,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<DEVMODE> pDevModeInput,
)>('AdvancedDocumentPropertiesW');

int ClosePrinter(
  int hPrinter,
) =>
    _ClosePrinter(
      hPrinter,
    );

late final _ClosePrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
),
    int Function(
  int hPrinter,
)>('ClosePrinter');

int CloseSpoolFileHandle(
  int hPrinter,
  int hSpoolFile,
) =>
    _CloseSpoolFileHandle(
      hPrinter,
      hSpoolFile,
    );

late final _CloseSpoolFileHandle = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  IntPtr hSpoolFile,
),
    int Function(
  int hPrinter,
  int hSpoolFile,
)>('CloseSpoolFileHandle');

int CommitSpoolData(
  int hPrinter,
  int hSpoolFile,
  int cbCommit,
) =>
    _CommitSpoolData(
      hPrinter,
      hSpoolFile,
      cbCommit,
    );

late final _CommitSpoolData = _winspool.lookupFunction<
    IntPtr Function(
  IntPtr hPrinter,
  IntPtr hSpoolFile,
  Uint32 cbCommit,
),
    int Function(
  int hPrinter,
  int hSpoolFile,
  int cbCommit,
)>('CommitSpoolData');

int ConfigurePort(
  Pointer<Utf16> pName,
  int hWnd,
  Pointer<Utf16> pPortName,
) =>
    _ConfigurePort(
      pName,
      hWnd,
      pPortName,
    );

late final _ConfigurePort = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  IntPtr hWnd,
  Pointer<Utf16> pPortName,
),
    int Function(
  Pointer<Utf16> pName,
  int hWnd,
  Pointer<Utf16> pPortName,
)>('ConfigurePortW');

int ConnectToPrinterDlg(
  int hwnd,
  int Flags,
) =>
    _ConnectToPrinterDlg(
      hwnd,
      Flags,
    );

late final _ConnectToPrinterDlg = _winspool.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
  Uint32 Flags,
),
    int Function(
  int hwnd,
  int Flags,
)>('ConnectToPrinterDlg');

int CorePrinterDriverInstalled(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszEnvironment,
  GUID CoreDriverGUID,
  FILETIME ftDriverDate,
  int dwlDriverVersion,
  Pointer<Int32> pbDriverInstalled,
) =>
    _CorePrinterDriverInstalled(
      pszServer,
      pszEnvironment,
      CoreDriverGUID,
      ftDriverDate,
      dwlDriverVersion,
      pbDriverInstalled,
    );

late final _CorePrinterDriverInstalled = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszEnvironment,
  GUID CoreDriverGUID,
  FILETIME ftDriverDate,
  Uint64 dwlDriverVersion,
  Pointer<Int32> pbDriverInstalled,
),
    int Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszEnvironment,
  GUID CoreDriverGUID,
  FILETIME ftDriverDate,
  int dwlDriverVersion,
  Pointer<Int32> pbDriverInstalled,
)>('CorePrinterDriverInstalledW');

int CreatePrintAsyncNotifyChannel(
  Pointer<Utf16> pszName,
  Pointer<GUID> pNotificationType,
  int eUserFilter,
  int eConversationStyle,
  Pointer<COMObject> pCallback,
  Pointer<Pointer<COMObject>> ppIAsynchNotification,
) =>
    _CreatePrintAsyncNotifyChannel(
      pszName,
      pNotificationType,
      eUserFilter,
      eConversationStyle,
      pCallback,
      ppIAsynchNotification,
    );

late final _CreatePrintAsyncNotifyChannel = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszName,
  Pointer<GUID> pNotificationType,
  Int32 eUserFilter,
  Int32 eConversationStyle,
  Pointer<COMObject> pCallback,
  Pointer<Pointer<COMObject>> ppIAsynchNotification,
),
    int Function(
  Pointer<Utf16> pszName,
  Pointer<GUID> pNotificationType,
  int eUserFilter,
  int eConversationStyle,
  Pointer<COMObject> pCallback,
  Pointer<Pointer<COMObject>> ppIAsynchNotification,
)>('CreatePrintAsyncNotifyChannel');

int CreatePrinterIC(
  int hPrinter,
  Pointer<DEVMODE> pDevMode,
) =>
    _CreatePrinterIC(
      hPrinter,
      pDevMode,
    );

late final _CreatePrinterIC = _winspool.lookupFunction<
    IntPtr Function(
  IntPtr hPrinter,
  Pointer<DEVMODE> pDevMode,
),
    int Function(
  int hPrinter,
  Pointer<DEVMODE> pDevMode,
)>('CreatePrinterIC');

int DeleteForm(
  int hPrinter,
  Pointer<Utf16> pFormName,
) =>
    _DeleteForm(
      hPrinter,
      pFormName,
    );

late final _DeleteForm = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pFormName,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pFormName,
)>('DeleteFormW');

int DeleteJobNamedProperty(
  int hPrinter,
  int JobId,
  Pointer<Utf16> pszName,
) =>
    _DeleteJobNamedProperty(
      hPrinter,
      JobId,
      pszName,
    );

late final _DeleteJobNamedProperty = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Uint32 JobId,
  Pointer<Utf16> pszName,
),
    int Function(
  int hPrinter,
  int JobId,
  Pointer<Utf16> pszName,
)>('DeleteJobNamedProperty');

int DeleteMonitor(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pMonitorName,
) =>
    _DeleteMonitor(
      pName,
      pEnvironment,
      pMonitorName,
    );

late final _DeleteMonitor = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pMonitorName,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pMonitorName,
)>('DeleteMonitorW');

int DeletePort(
  Pointer<Utf16> pName,
  int hWnd,
  Pointer<Utf16> pPortName,
) =>
    _DeletePort(
      pName,
      hWnd,
      pPortName,
    );

late final _DeletePort = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  IntPtr hWnd,
  Pointer<Utf16> pPortName,
),
    int Function(
  Pointer<Utf16> pName,
  int hWnd,
  Pointer<Utf16> pPortName,
)>('DeletePortW');

int DeletePrintProcessor(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pPrintProcessorName,
) =>
    _DeletePrintProcessor(
      pName,
      pEnvironment,
      pPrintProcessorName,
    );

late final _DeletePrintProcessor = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pPrintProcessorName,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pPrintProcessorName,
)>('DeletePrintProcessorW');

int DeletePrintProvidor(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pPrintProvidorName,
) =>
    _DeletePrintProvidor(
      pName,
      pEnvironment,
      pPrintProvidorName,
    );

late final _DeletePrintProvidor = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pPrintProvidorName,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pPrintProvidorName,
)>('DeletePrintProvidorW');

int DeletePrinter(
  int hPrinter,
) =>
    _DeletePrinter(
      hPrinter,
    );

late final _DeletePrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
),
    int Function(
  int hPrinter,
)>('DeletePrinter');

int DeletePrinterConnection(
  Pointer<Utf16> pName,
) =>
    _DeletePrinterConnection(
      pName,
    );

late final _DeletePrinterConnection = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
),
    int Function(
  Pointer<Utf16> pName,
)>('DeletePrinterConnectionW');

int DeletePrinterDataEx(
  int hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
) =>
    _DeletePrinterDataEx(
      hPrinter,
      pKeyName,
      pValueName,
    );

late final _DeletePrinterDataEx = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
)>('DeletePrinterDataExW');

int DeletePrinterData(
  int hPrinter,
  Pointer<Utf16> pValueName,
) =>
    _DeletePrinterData(
      hPrinter,
      pValueName,
    );

late final _DeletePrinterData = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pValueName,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pValueName,
)>('DeletePrinterDataW');

int DeletePrinterDriverEx(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pDriverName,
  int dwDeleteFlag,
  int dwVersionFlag,
) =>
    _DeletePrinterDriverEx(
      pName,
      pEnvironment,
      pDriverName,
      dwDeleteFlag,
      dwVersionFlag,
    );

late final _DeletePrinterDriverEx = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pDriverName,
  Uint32 dwDeleteFlag,
  Uint32 dwVersionFlag,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pDriverName,
  int dwDeleteFlag,
  int dwVersionFlag,
)>('DeletePrinterDriverExW');

int DeletePrinterDriverPackage(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszInfPath,
  Pointer<Utf16> pszEnvironment,
) =>
    _DeletePrinterDriverPackage(
      pszServer,
      pszInfPath,
      pszEnvironment,
    );

late final _DeletePrinterDriverPackage = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszInfPath,
  Pointer<Utf16> pszEnvironment,
),
    int Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszInfPath,
  Pointer<Utf16> pszEnvironment,
)>('DeletePrinterDriverPackageW');

int DeletePrinterDriver(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pDriverName,
) =>
    _DeletePrinterDriver(
      pName,
      pEnvironment,
      pDriverName,
    );

late final _DeletePrinterDriver = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pDriverName,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Pointer<Utf16> pDriverName,
)>('DeletePrinterDriverW');

int DeletePrinterIC(
  int hPrinterIC,
) =>
    _DeletePrinterIC(
      hPrinterIC,
    );

late final _DeletePrinterIC = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinterIC,
),
    int Function(
  int hPrinterIC,
)>('DeletePrinterIC');

int DeletePrinterKey(
  int hPrinter,
  Pointer<Utf16> pKeyName,
) =>
    _DeletePrinterKey(
      hPrinter,
      pKeyName,
    );

late final _DeletePrinterKey = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pKeyName,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pKeyName,
)>('DeletePrinterKeyW');

int DevQueryPrint(
  int hPrinter,
  Pointer<DEVMODE> pDevMode,
  Pointer<Uint32> pResID,
) =>
    _DevQueryPrint(
      hPrinter,
      pDevMode,
      pResID,
    );

late final _DevQueryPrint = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer<DEVMODE> pDevMode,
  Pointer<Uint32> pResID,
),
    int Function(
  int hPrinter,
  Pointer<DEVMODE> pDevMode,
  Pointer<Uint32> pResID,
)>('DevQueryPrint');

int DevQueryPrintEx(
  Pointer<DEVQUERYPRINT_INFO> pDQPInfo,
) =>
    _DevQueryPrintEx(
      pDQPInfo,
    );

late final _DevQueryPrintEx = _winspool.lookupFunction<
    Int32 Function(
  Pointer<DEVQUERYPRINT_INFO> pDQPInfo,
),
    int Function(
  Pointer<DEVQUERYPRINT_INFO> pDQPInfo,
)>('DevQueryPrintEx');

int DocumentProperties(
  int hWnd,
  int hPrinter,
  Pointer<Utf16> pDeviceName,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<DEVMODE> pDevModeInput,
  int fMode,
) =>
    _DocumentProperties(
      hWnd,
      hPrinter,
      pDeviceName,
      pDevModeOutput,
      pDevModeInput,
      fMode,
    );

late final _DocumentProperties = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hPrinter,
  Pointer<Utf16> pDeviceName,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<DEVMODE> pDevModeInput,
  Uint32 fMode,
),
    int Function(
  int hWnd,
  int hPrinter,
  Pointer<Utf16> pDeviceName,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<DEVMODE> pDevModeInput,
  int fMode,
)>('DocumentPropertiesW');

int EndDocPrinter(
  int hPrinter,
) =>
    _EndDocPrinter(
      hPrinter,
    );

late final _EndDocPrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
),
    int Function(
  int hPrinter,
)>('EndDocPrinter');

int EndPagePrinter(
  int hPrinter,
) =>
    _EndPagePrinter(
      hPrinter,
    );

late final _EndPagePrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
),
    int Function(
  int hPrinter,
)>('EndPagePrinter');

int EnumForms(
  int hPrinter,
  int Level,
  Pointer<Uint8> pForm,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) =>
    _EnumForms(
      hPrinter,
      Level,
      pForm,
      cbBuf,
      pcbNeeded,
      pcReturned,
    );

late final _EnumForms = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 Level,
  Pointer<Uint8> pForm,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
),
    int Function(
  int hPrinter,
  int Level,
  Pointer<Uint8> pForm,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
)>('EnumFormsW');

int EnumJobNamedProperties(
  int hPrinter,
  int JobId,
  Pointer<Uint32> pcProperties,
  Pointer<Pointer<PrintNamedProperty>> ppProperties,
) =>
    _EnumJobNamedProperties(
      hPrinter,
      JobId,
      pcProperties,
      ppProperties,
    );

late final _EnumJobNamedProperties = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Uint32 JobId,
  Pointer<Uint32> pcProperties,
  Pointer<Pointer<PrintNamedProperty>> ppProperties,
),
    int Function(
  int hPrinter,
  int JobId,
  Pointer<Uint32> pcProperties,
  Pointer<Pointer<PrintNamedProperty>> ppProperties,
)>('EnumJobNamedProperties');

int EnumJobs(
  int hPrinter,
  int FirstJob,
  int NoJobs,
  int Level,
  Pointer<Uint8> pJob,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) =>
    _EnumJobs(
      hPrinter,
      FirstJob,
      NoJobs,
      Level,
      pJob,
      cbBuf,
      pcbNeeded,
      pcReturned,
    );

late final _EnumJobs = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 FirstJob,
  Uint32 NoJobs,
  Uint32 Level,
  Pointer<Uint8> pJob,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
),
    int Function(
  int hPrinter,
  int FirstJob,
  int NoJobs,
  int Level,
  Pointer<Uint8> pJob,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
)>('EnumJobsW');

int EnumMonitors(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pMonitor,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) =>
    _EnumMonitors(
      pName,
      Level,
      pMonitor,
      cbBuf,
      pcbNeeded,
      pcReturned,
    );

late final _EnumMonitors = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Uint32 Level,
  Pointer<Uint8> pMonitor,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
),
    int Function(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pMonitor,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
)>('EnumMonitorsW');

int EnumPorts(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pPort,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) =>
    _EnumPorts(
      pName,
      Level,
      pPort,
      cbBuf,
      pcbNeeded,
      pcReturned,
    );

late final _EnumPorts = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Uint32 Level,
  Pointer<Uint8> pPort,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
),
    int Function(
  Pointer<Utf16> pName,
  int Level,
  Pointer<Uint8> pPort,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
)>('EnumPortsW');

int EnumPrintProcessorDatatypes(
  Pointer<Utf16> pName,
  Pointer<Utf16> pPrintProcessorName,
  int Level,
  Pointer<Uint8> pDatatypes,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) =>
    _EnumPrintProcessorDatatypes(
      pName,
      pPrintProcessorName,
      Level,
      pDatatypes,
      cbBuf,
      pcbNeeded,
      pcReturned,
    );

late final _EnumPrintProcessorDatatypes = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pPrintProcessorName,
  Uint32 Level,
  Pointer<Uint8> pDatatypes,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pPrintProcessorName,
  int Level,
  Pointer<Uint8> pDatatypes,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
)>('EnumPrintProcessorDatatypesW');

int EnumPrintProcessors(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pPrintProcessorInfo,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) =>
    _EnumPrintProcessors(
      pName,
      pEnvironment,
      Level,
      pPrintProcessorInfo,
      cbBuf,
      pcbNeeded,
      pcReturned,
    );

late final _EnumPrintProcessors = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Uint32 Level,
  Pointer<Uint8> pPrintProcessorInfo,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pPrintProcessorInfo,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
)>('EnumPrintProcessorsW');

int EnumPrinterDataEx(
  int hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Uint8> pEnumValues,
  int cbEnumValues,
  Pointer<Uint32> pcbEnumValues,
  Pointer<Uint32> pnEnumValues,
) =>
    _EnumPrinterDataEx(
      hPrinter,
      pKeyName,
      pEnumValues,
      cbEnumValues,
      pcbEnumValues,
      pnEnumValues,
    );

late final _EnumPrinterDataEx = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Uint8> pEnumValues,
  Uint32 cbEnumValues,
  Pointer<Uint32> pcbEnumValues,
  Pointer<Uint32> pnEnumValues,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Uint8> pEnumValues,
  int cbEnumValues,
  Pointer<Uint32> pcbEnumValues,
  Pointer<Uint32> pnEnumValues,
)>('EnumPrinterDataExW');

int EnumPrinterData(
  int hPrinter,
  int dwIndex,
  Pointer<Utf16> pValueName,
  int cbValueName,
  Pointer<Uint32> pcbValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int cbData,
  Pointer<Uint32> pcbData,
) =>
    _EnumPrinterData(
      hPrinter,
      dwIndex,
      pValueName,
      cbValueName,
      pcbValueName,
      pType,
      pData,
      cbData,
      pcbData,
    );

late final _EnumPrinterData = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Uint32 dwIndex,
  Pointer<Utf16> pValueName,
  Uint32 cbValueName,
  Pointer<Uint32> pcbValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  Uint32 cbData,
  Pointer<Uint32> pcbData,
),
    int Function(
  int hPrinter,
  int dwIndex,
  Pointer<Utf16> pValueName,
  int cbValueName,
  Pointer<Uint32> pcbValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int cbData,
  Pointer<Uint32> pcbData,
)>('EnumPrinterDataW');

int EnumPrinterDrivers(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pDriverInfo,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) =>
    _EnumPrinterDrivers(
      pName,
      pEnvironment,
      Level,
      pDriverInfo,
      cbBuf,
      pcbNeeded,
      pcReturned,
    );

late final _EnumPrinterDrivers = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Uint32 Level,
  Pointer<Uint8> pDriverInfo,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pDriverInfo,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
)>('EnumPrinterDriversW');

int EnumPrinterKey(
  int hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pSubkey,
  int cbSubkey,
  Pointer<Uint32> pcbSubkey,
) =>
    _EnumPrinterKey(
      hPrinter,
      pKeyName,
      pSubkey,
      cbSubkey,
      pcbSubkey,
    );

late final _EnumPrinterKey = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pSubkey,
  Uint32 cbSubkey,
  Pointer<Uint32> pcbSubkey,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pSubkey,
  int cbSubkey,
  Pointer<Uint32> pcbSubkey,
)>('EnumPrinterKeyW');

int EnumPrinters(
  int Flags,
  Pointer<Utf16> Name,
  int Level,
  Pointer<Uint8> pPrinterEnum,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
) =>
    _EnumPrinters(
      Flags,
      Name,
      Level,
      pPrinterEnum,
      cbBuf,
      pcbNeeded,
      pcReturned,
    );

late final _EnumPrinters = _winspool.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<Utf16> Name,
  Uint32 Level,
  Pointer<Uint8> pPrinterEnum,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
),
    int Function(
  int Flags,
  Pointer<Utf16> Name,
  int Level,
  Pointer<Uint8> pPrinterEnum,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
)>('EnumPrintersW');

int ExtDeviceMode(
  int hWnd,
  int hInst,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<Utf8> pDeviceName,
  Pointer<Utf8> pPort,
  Pointer<DEVMODE> pDevModeInput,
  Pointer<Utf8> pProfile,
  int fMode,
) =>
    _ExtDeviceMode(
      hWnd,
      hInst,
      pDevModeOutput,
      pDeviceName,
      pPort,
      pDevModeInput,
      pProfile,
      fMode,
    );

late final _ExtDeviceMode = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hInst,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<Utf8> pDeviceName,
  Pointer<Utf8> pPort,
  Pointer<DEVMODE> pDevModeInput,
  Pointer<Utf8> pProfile,
  Uint32 fMode,
),
    int Function(
  int hWnd,
  int hInst,
  Pointer<DEVMODE> pDevModeOutput,
  Pointer<Utf8> pDeviceName,
  Pointer<Utf8> pPort,
  Pointer<DEVMODE> pDevModeInput,
  Pointer<Utf8> pProfile,
  int fMode,
)>('ExtDeviceMode');

int FindClosePrinterChangeNotification(
  int hChange,
) =>
    _FindClosePrinterChangeNotification(
      hChange,
    );

late final _FindClosePrinterChangeNotification = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hChange,
),
    int Function(
  int hChange,
)>('FindClosePrinterChangeNotification');

int FindFirstPrinterChangeNotification(
  int hPrinter,
  int fdwFilter,
  int fdwOptions,
  Pointer pPrinterNotifyOptions,
) =>
    _FindFirstPrinterChangeNotification(
      hPrinter,
      fdwFilter,
      fdwOptions,
      pPrinterNotifyOptions,
    );

late final _FindFirstPrinterChangeNotification = _winspool.lookupFunction<
    IntPtr Function(
  IntPtr hPrinter,
  Uint32 fdwFilter,
  Uint32 fdwOptions,
  Pointer pPrinterNotifyOptions,
),
    int Function(
  int hPrinter,
  int fdwFilter,
  int fdwOptions,
  Pointer pPrinterNotifyOptions,
)>('FindFirstPrinterChangeNotification');

int FindNextPrinterChangeNotification(
  int hChange,
  Pointer<Uint32> pdwChange,
  Pointer pvReserved,
  Pointer<Pointer> ppPrinterNotifyInfo,
) =>
    _FindNextPrinterChangeNotification(
      hChange,
      pdwChange,
      pvReserved,
      ppPrinterNotifyInfo,
    );

late final _FindNextPrinterChangeNotification = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hChange,
  Pointer<Uint32> pdwChange,
  Pointer pvReserved,
  Pointer<Pointer> ppPrinterNotifyInfo,
),
    int Function(
  int hChange,
  Pointer<Uint32> pdwChange,
  Pointer pvReserved,
  Pointer<Pointer> ppPrinterNotifyInfo,
)>('FindNextPrinterChangeNotification');

int FlushPrinter(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
  int cSleep,
) =>
    _FlushPrinter(
      hPrinter,
      pBuf,
      cbBuf,
      pcWritten,
      cSleep,
    );

late final _FlushPrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer pBuf,
  Uint32 cbBuf,
  Pointer<Uint32> pcWritten,
  Uint32 cSleep,
),
    int Function(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
  int cSleep,
)>('FlushPrinter');

void FreePrintNamedPropertyArray(
  int cProperties,
  Pointer<Pointer<PrintNamedProperty>> ppProperties,
) =>
    _FreePrintNamedPropertyArray(
      cProperties,
      ppProperties,
    );

late final _FreePrintNamedPropertyArray = _winspool.lookupFunction<
    Void Function(
  Uint32 cProperties,
  Pointer<Pointer<PrintNamedProperty>> ppProperties,
),
    void Function(
  int cProperties,
  Pointer<Pointer<PrintNamedProperty>> ppProperties,
)>('FreePrintNamedPropertyArray');

void FreePrintPropertyValue(
  Pointer<PrintPropertyValue> pValue,
) =>
    _FreePrintPropertyValue(
      pValue,
    );

late final _FreePrintPropertyValue = _winspool.lookupFunction<
    Void Function(
  Pointer<PrintPropertyValue> pValue,
),
    void Function(
  Pointer<PrintPropertyValue> pValue,
)>('FreePrintPropertyValue');

int FreePrinterNotifyInfo(
  Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo,
) =>
    _FreePrinterNotifyInfo(
      pPrinterNotifyInfo,
    );

late final _FreePrinterNotifyInfo = _winspool.lookupFunction<
    Int32 Function(
  Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo,
),
    int Function(
  Pointer<PRINTER_NOTIFY_INFO> pPrinterNotifyInfo,
)>('FreePrinterNotifyInfo');

int GetCorePrinterDrivers(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszEnvironment,
  Pointer<Utf16> pszzCoreDriverDependencies,
  int cCorePrinterDrivers,
  Pointer<CORE_PRINTER_DRIVER> pCorePrinterDrivers,
) =>
    _GetCorePrinterDrivers(
      pszServer,
      pszEnvironment,
      pszzCoreDriverDependencies,
      cCorePrinterDrivers,
      pCorePrinterDrivers,
    );

late final _GetCorePrinterDrivers = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszEnvironment,
  Pointer<Utf16> pszzCoreDriverDependencies,
  Uint32 cCorePrinterDrivers,
  Pointer<CORE_PRINTER_DRIVER> pCorePrinterDrivers,
),
    int Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszEnvironment,
  Pointer<Utf16> pszzCoreDriverDependencies,
  int cCorePrinterDrivers,
  Pointer<CORE_PRINTER_DRIVER> pCorePrinterDrivers,
)>('GetCorePrinterDriversW');

int GetDefaultPrinter(
  Pointer<Utf16> pszBuffer,
  Pointer<Uint32> pcchBuffer,
) =>
    _GetDefaultPrinter(
      pszBuffer,
      pcchBuffer,
    );

late final _GetDefaultPrinter = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszBuffer,
  Pointer<Uint32> pcchBuffer,
),
    int Function(
  Pointer<Utf16> pszBuffer,
  Pointer<Uint32> pcchBuffer,
)>('GetDefaultPrinterW');

int GetForm(
  int hPrinter,
  Pointer<Utf16> pFormName,
  int Level,
  Pointer<Uint8> pForm,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetForm(
      hPrinter,
      pFormName,
      Level,
      pForm,
      cbBuf,
      pcbNeeded,
    );

late final _GetForm = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pFormName,
  Uint32 Level,
  Pointer<Uint8> pForm,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pFormName,
  int Level,
  Pointer<Uint8> pForm,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
)>('GetFormW');

int GetJobNamedPropertyValue(
  int hPrinter,
  int JobId,
  Pointer<Utf16> pszName,
  Pointer<PrintPropertyValue> pValue,
) =>
    _GetJobNamedPropertyValue(
      hPrinter,
      JobId,
      pszName,
      pValue,
    );

late final _GetJobNamedPropertyValue = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Uint32 JobId,
  Pointer<Utf16> pszName,
  Pointer<PrintPropertyValue> pValue,
),
    int Function(
  int hPrinter,
  int JobId,
  Pointer<Utf16> pszName,
  Pointer<PrintPropertyValue> pValue,
)>('GetJobNamedPropertyValue');

int GetJob(
  int hPrinter,
  int JobId,
  int Level,
  Pointer<Uint8> pJob,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetJob(
      hPrinter,
      JobId,
      Level,
      pJob,
      cbBuf,
      pcbNeeded,
    );

late final _GetJob = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 JobId,
  Uint32 Level,
  Pointer<Uint8> pJob,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
),
    int Function(
  int hPrinter,
  int JobId,
  int Level,
  Pointer<Uint8> pJob,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
)>('GetJobW');

int GetPrintExecutionData(
  Pointer<PRINT_EXECUTION_DATA> pData,
) =>
    _GetPrintExecutionData(
      pData,
    );

late final _GetPrintExecutionData = _winspool.lookupFunction<
    Int32 Function(
  Pointer<PRINT_EXECUTION_DATA> pData,
),
    int Function(
  Pointer<PRINT_EXECUTION_DATA> pData,
)>('GetPrintExecutionData');

int GetPrintOutputInfo(
  int hWnd,
  Pointer<Utf16> pszPrinter,
  Pointer<IntPtr> phFile,
  Pointer<Pointer<Utf16>> ppszOutputFile,
) =>
    _GetPrintOutputInfo(
      hWnd,
      pszPrinter,
      phFile,
      ppszOutputFile,
    );

late final _GetPrintOutputInfo = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> pszPrinter,
  Pointer<IntPtr> phFile,
  Pointer<Pointer<Utf16>> ppszOutputFile,
),
    int Function(
  int hWnd,
  Pointer<Utf16> pszPrinter,
  Pointer<IntPtr> phFile,
  Pointer<Pointer<Utf16>> ppszOutputFile,
)>('GetPrintOutputInfo');

int GetPrintProcessorDirectory(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pPrintProcessorInfo,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetPrintProcessorDirectory(
      pName,
      pEnvironment,
      Level,
      pPrintProcessorInfo,
      cbBuf,
      pcbNeeded,
    );

late final _GetPrintProcessorDirectory = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Uint32 Level,
  Pointer<Uint8> pPrintProcessorInfo,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pPrintProcessorInfo,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
)>('GetPrintProcessorDirectoryW');

int GetPrinterDataEx(
  int hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int nSize,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetPrinterDataEx(
      hPrinter,
      pKeyName,
      pValueName,
      pType,
      pData,
      nSize,
      pcbNeeded,
    );

late final _GetPrinterDataEx = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  Uint32 nSize,
  Pointer<Uint32> pcbNeeded,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int nSize,
  Pointer<Uint32> pcbNeeded,
)>('GetPrinterDataExW');

int GetPrinterData(
  int hPrinter,
  Pointer<Utf16> pValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int nSize,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetPrinterData(
      hPrinter,
      pValueName,
      pType,
      pData,
      nSize,
      pcbNeeded,
    );

late final _GetPrinterData = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  Uint32 nSize,
  Pointer<Uint32> pcbNeeded,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pValueName,
  Pointer<Uint32> pType,
  Pointer<Uint8> pData,
  int nSize,
  Pointer<Uint32> pcbNeeded,
)>('GetPrinterDataW');

int GetPrinterDriver2(
  int hWnd,
  int hPrinter,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pDriverInfo,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetPrinterDriver2(
      hWnd,
      hPrinter,
      pEnvironment,
      Level,
      pDriverInfo,
      cbBuf,
      pcbNeeded,
    );

late final _GetPrinterDriver2 = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hPrinter,
  Pointer<Utf16> pEnvironment,
  Uint32 Level,
  Pointer<Uint8> pDriverInfo,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
),
    int Function(
  int hWnd,
  int hPrinter,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pDriverInfo,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
)>('GetPrinterDriver2W');

int GetPrinterDriverDirectory(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pDriverDirectory,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetPrinterDriverDirectory(
      pName,
      pEnvironment,
      Level,
      pDriverDirectory,
      cbBuf,
      pcbNeeded,
    );

late final _GetPrinterDriverDirectory = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  Uint32 Level,
  Pointer<Uint8> pDriverDirectory,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pDriverDirectory,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
)>('GetPrinterDriverDirectoryW');

int GetPrinterDriverPackagePath(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszEnvironment,
  Pointer<Utf16> pszLanguage,
  Pointer<Utf16> pszPackageID,
  Pointer<Utf16> pszDriverPackageCab,
  int cchDriverPackageCab,
  Pointer<Uint32> pcchRequiredSize,
) =>
    _GetPrinterDriverPackagePath(
      pszServer,
      pszEnvironment,
      pszLanguage,
      pszPackageID,
      pszDriverPackageCab,
      cchDriverPackageCab,
      pcchRequiredSize,
    );

late final _GetPrinterDriverPackagePath = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszEnvironment,
  Pointer<Utf16> pszLanguage,
  Pointer<Utf16> pszPackageID,
  Pointer<Utf16> pszDriverPackageCab,
  Uint32 cchDriverPackageCab,
  Pointer<Uint32> pcchRequiredSize,
),
    int Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszEnvironment,
  Pointer<Utf16> pszLanguage,
  Pointer<Utf16> pszPackageID,
  Pointer<Utf16> pszDriverPackageCab,
  int cchDriverPackageCab,
  Pointer<Uint32> pcchRequiredSize,
)>('GetPrinterDriverPackagePathW');

int GetPrinterDriver(
  int hPrinter,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pDriverInfo,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetPrinterDriver(
      hPrinter,
      pEnvironment,
      Level,
      pDriverInfo,
      cbBuf,
      pcbNeeded,
    );

late final _GetPrinterDriver = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pEnvironment,
  Uint32 Level,
  Pointer<Uint8> pDriverInfo,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pEnvironment,
  int Level,
  Pointer<Uint8> pDriverInfo,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
)>('GetPrinterDriverW');

int GetPrinter(
  int hPrinter,
  int Level,
  Pointer<Uint8> pPrinter,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
) =>
    _GetPrinter(
      hPrinter,
      Level,
      pPrinter,
      cbBuf,
      pcbNeeded,
    );

late final _GetPrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 Level,
  Pointer<Uint8> pPrinter,
  Uint32 cbBuf,
  Pointer<Uint32> pcbNeeded,
),
    int Function(
  int hPrinter,
  int Level,
  Pointer<Uint8> pPrinter,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
)>('GetPrinterW');

int GetSpoolFileHandle(
  int hPrinter,
) =>
    _GetSpoolFileHandle(
      hPrinter,
    );

late final _GetSpoolFileHandle = _winspool.lookupFunction<
    IntPtr Function(
  IntPtr hPrinter,
),
    int Function(
  int hPrinter,
)>('GetSpoolFileHandle');

int InstallPrinterDriverFromPackage(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszInfPath,
  Pointer<Utf16> pszDriverName,
  Pointer<Utf16> pszEnvironment,
  int dwFlags,
) =>
    _InstallPrinterDriverFromPackage(
      pszServer,
      pszInfPath,
      pszDriverName,
      pszEnvironment,
      dwFlags,
    );

late final _InstallPrinterDriverFromPackage = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszInfPath,
  Pointer<Utf16> pszDriverName,
  Pointer<Utf16> pszEnvironment,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszInfPath,
  Pointer<Utf16> pszDriverName,
  Pointer<Utf16> pszEnvironment,
  int dwFlags,
)>('InstallPrinterDriverFromPackageW');

int IsValidDevmode(
  Pointer<DEVMODE> pDevmode,
  int DevmodeSize,
) =>
    _IsValidDevmode(
      pDevmode,
      DevmodeSize,
    );

late final _IsValidDevmode = _winspool.lookupFunction<
    Int32 Function(
  Pointer<DEVMODE> pDevmode,
  IntPtr DevmodeSize,
),
    int Function(
  Pointer<DEVMODE> pDevmode,
  int DevmodeSize,
)>('IsValidDevmodeW');

int OpenPrinter2(
  Pointer<Utf16> pPrinterName,
  Pointer<IntPtr> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
  Pointer<PRINTER_OPTIONS> pOptions,
) =>
    _OpenPrinter2(
      pPrinterName,
      phPrinter,
      pDefault,
      pOptions,
    );

late final _OpenPrinter2 = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pPrinterName,
  Pointer<IntPtr> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
  Pointer<PRINTER_OPTIONS> pOptions,
),
    int Function(
  Pointer<Utf16> pPrinterName,
  Pointer<IntPtr> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
  Pointer<PRINTER_OPTIONS> pOptions,
)>('OpenPrinter2W');

int OpenPrinter(
  Pointer<Utf16> pPrinterName,
  Pointer<IntPtr> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
) =>
    _OpenPrinter(
      pPrinterName,
      phPrinter,
      pDefault,
    );

late final _OpenPrinter = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pPrinterName,
  Pointer<IntPtr> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
),
    int Function(
  Pointer<Utf16> pPrinterName,
  Pointer<IntPtr> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
)>('OpenPrinterW');

int PlayGdiScriptOnPrinterIC(
  int hPrinterIC,
  Pointer<Uint8> pIn,
  int cIn,
  Pointer<Uint8> pOut,
  int cOut,
  int ul,
) =>
    _PlayGdiScriptOnPrinterIC(
      hPrinterIC,
      pIn,
      cIn,
      pOut,
      cOut,
      ul,
    );

late final _PlayGdiScriptOnPrinterIC = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinterIC,
  Pointer<Uint8> pIn,
  Uint32 cIn,
  Pointer<Uint8> pOut,
  Uint32 cOut,
  Uint32 ul,
),
    int Function(
  int hPrinterIC,
  Pointer<Uint8> pIn,
  int cIn,
  Pointer<Uint8> pOut,
  int cOut,
  int ul,
)>('PlayGdiScriptOnPrinterIC');

int PrinterMessageBox(
  int hPrinter,
  int Error,
  int hWnd,
  Pointer<Utf16> pText,
  Pointer<Utf16> pCaption,
  int dwType,
) =>
    _PrinterMessageBox(
      hPrinter,
      Error,
      hWnd,
      pText,
      pCaption,
      dwType,
    );

late final _PrinterMessageBox = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Uint32 Error,
  IntPtr hWnd,
  Pointer<Utf16> pText,
  Pointer<Utf16> pCaption,
  Uint32 dwType,
),
    int Function(
  int hPrinter,
  int Error,
  int hWnd,
  Pointer<Utf16> pText,
  Pointer<Utf16> pCaption,
  int dwType,
)>('PrinterMessageBoxW');

int PrinterProperties(
  int hWnd,
  int hPrinter,
) =>
    _PrinterProperties(
      hWnd,
      hPrinter,
    );

late final _PrinterProperties = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  IntPtr hPrinter,
),
    int Function(
  int hWnd,
  int hPrinter,
)>('PrinterProperties');

int ReadPrinter(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pNoBytesRead,
) =>
    _ReadPrinter(
      hPrinter,
      pBuf,
      cbBuf,
      pNoBytesRead,
    );

late final _ReadPrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer pBuf,
  Uint32 cbBuf,
  Pointer<Uint32> pNoBytesRead,
),
    int Function(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pNoBytesRead,
)>('ReadPrinter');

int RegisterForPrintAsyncNotifications(
  Pointer<Utf16> pszName,
  Pointer<GUID> pNotificationType,
  int eUserFilter,
  int eConversationStyle,
  Pointer<COMObject> pCallback,
  Pointer<IntPtr> phNotify,
) =>
    _RegisterForPrintAsyncNotifications(
      pszName,
      pNotificationType,
      eUserFilter,
      eConversationStyle,
      pCallback,
      phNotify,
    );

late final _RegisterForPrintAsyncNotifications = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszName,
  Pointer<GUID> pNotificationType,
  Int32 eUserFilter,
  Int32 eConversationStyle,
  Pointer<COMObject> pCallback,
  Pointer<IntPtr> phNotify,
),
    int Function(
  Pointer<Utf16> pszName,
  Pointer<GUID> pNotificationType,
  int eUserFilter,
  int eConversationStyle,
  Pointer<COMObject> pCallback,
  Pointer<IntPtr> phNotify,
)>('RegisterForPrintAsyncNotifications');

int ReportJobProcessingProgress(
  int printerHandle,
  int jobId,
  int jobOperation,
  int jobProgress,
) =>
    _ReportJobProcessingProgress(
      printerHandle,
      jobId,
      jobOperation,
      jobProgress,
    );

late final _ReportJobProcessingProgress = _winspool.lookupFunction<
    Int32 Function(
  IntPtr printerHandle,
  Uint32 jobId,
  Int32 jobOperation,
  Int32 jobProgress,
),
    int Function(
  int printerHandle,
  int jobId,
  int jobOperation,
  int jobProgress,
)>('ReportJobProcessingProgress');

int ResetPrinter(
  int hPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
) =>
    _ResetPrinter(
      hPrinter,
      pDefault,
    );

late final _ResetPrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
),
    int Function(
  int hPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
)>('ResetPrinterW');

int RouterFreeBidiResponseContainer(
  Pointer<BIDI_RESPONSE_CONTAINER> pData,
) =>
    _RouterFreeBidiResponseContainer(
      pData,
    );

late final _RouterFreeBidiResponseContainer = _winspool.lookupFunction<
    Uint32 Function(
  Pointer<BIDI_RESPONSE_CONTAINER> pData,
),
    int Function(
  Pointer<BIDI_RESPONSE_CONTAINER> pData,
)>('RouterFreeBidiResponseContainer');

int ScheduleJob(
  int hPrinter,
  int JobId,
) =>
    _ScheduleJob(
      hPrinter,
      JobId,
    );

late final _ScheduleJob = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 JobId,
),
    int Function(
  int hPrinter,
  int JobId,
)>('ScheduleJob');

int SetDefaultPrinter(
  Pointer<Utf16> pszPrinter,
) =>
    _SetDefaultPrinter(
      pszPrinter,
    );

late final _SetDefaultPrinter = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPrinter,
),
    int Function(
  Pointer<Utf16> pszPrinter,
)>('SetDefaultPrinterW');

int SetForm(
  int hPrinter,
  Pointer<Utf16> pFormName,
  int Level,
  Pointer<Uint8> pForm,
) =>
    _SetForm(
      hPrinter,
      pFormName,
      Level,
      pForm,
    );

late final _SetForm = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pFormName,
  Uint32 Level,
  Pointer<Uint8> pForm,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pFormName,
  int Level,
  Pointer<Uint8> pForm,
)>('SetFormW');

int SetJobNamedProperty(
  int hPrinter,
  int JobId,
  Pointer<PrintNamedProperty> pProperty,
) =>
    _SetJobNamedProperty(
      hPrinter,
      JobId,
      pProperty,
    );

late final _SetJobNamedProperty = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Uint32 JobId,
  Pointer<PrintNamedProperty> pProperty,
),
    int Function(
  int hPrinter,
  int JobId,
  Pointer<PrintNamedProperty> pProperty,
)>('SetJobNamedProperty');

int SetJob(
  int hPrinter,
  int JobId,
  int Level,
  Pointer<Uint8> pJob,
  int Command,
) =>
    _SetJob(
      hPrinter,
      JobId,
      Level,
      pJob,
      Command,
    );

late final _SetJob = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 JobId,
  Uint32 Level,
  Pointer<Uint8> pJob,
  Uint32 Command,
),
    int Function(
  int hPrinter,
  int JobId,
  int Level,
  Pointer<Uint8> pJob,
  int Command,
)>('SetJobW');

int SetPort(
  Pointer<Utf16> pName,
  Pointer<Utf16> pPortName,
  int dwLevel,
  Pointer<Uint8> pPortInfo,
) =>
    _SetPort(
      pName,
      pPortName,
      dwLevel,
      pPortInfo,
    );

late final _SetPort = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pPortName,
  Uint32 dwLevel,
  Pointer<Uint8> pPortInfo,
),
    int Function(
  Pointer<Utf16> pName,
  Pointer<Utf16> pPortName,
  int dwLevel,
  Pointer<Uint8> pPortInfo,
)>('SetPortW');

int SetPrinterDataEx(
  int hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
  int Type,
  Pointer<Uint8> pData,
  int cbData,
) =>
    _SetPrinterDataEx(
      hPrinter,
      pKeyName,
      pValueName,
      Type,
      pData,
      cbData,
    );

late final _SetPrinterDataEx = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
  Uint32 Type,
  Pointer<Uint8> pData,
  Uint32 cbData,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pKeyName,
  Pointer<Utf16> pValueName,
  int Type,
  Pointer<Uint8> pData,
  int cbData,
)>('SetPrinterDataExW');

int SetPrinterData(
  int hPrinter,
  Pointer<Utf16> pValueName,
  int Type,
  Pointer<Uint8> pData,
  int cbData,
) =>
    _SetPrinterData(
      hPrinter,
      pValueName,
      Type,
      pData,
      cbData,
    );

late final _SetPrinterData = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Pointer<Utf16> pValueName,
  Uint32 Type,
  Pointer<Uint8> pData,
  Uint32 cbData,
),
    int Function(
  int hPrinter,
  Pointer<Utf16> pValueName,
  int Type,
  Pointer<Uint8> pData,
  int cbData,
)>('SetPrinterDataW');

int SetPrinter(
  int hPrinter,
  int Level,
  Pointer<Uint8> pPrinter,
  int Command,
) =>
    _SetPrinter(
      hPrinter,
      Level,
      pPrinter,
      Command,
    );

late final _SetPrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 Level,
  Pointer<Uint8> pPrinter,
  Uint32 Command,
),
    int Function(
  int hPrinter,
  int Level,
  Pointer<Uint8> pPrinter,
  int Command,
)>('SetPrinterW');

int StartDocPrinter(
  int hPrinter,
  int Level,
  Pointer<DOC_INFO_1> pDocInfo,
) =>
    _StartDocPrinter(
      hPrinter,
      Level,
      pDocInfo,
    );

late final _StartDocPrinter = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Uint32 Level,
  Pointer<DOC_INFO_1> pDocInfo,
),
    int Function(
  int hPrinter,
  int Level,
  Pointer<DOC_INFO_1> pDocInfo,
)>('StartDocPrinterW');

int StartPagePrinter(
  int hPrinter,
) =>
    _StartPagePrinter(
      hPrinter,
    );

late final _StartPagePrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
),
    int Function(
  int hPrinter,
)>('StartPagePrinter');

int UnRegisterForPrintAsyncNotifications(
  int param0,
) =>
    _UnRegisterForPrintAsyncNotifications(
      param0,
    );

late final _UnRegisterForPrintAsyncNotifications = _winspool.lookupFunction<
    Int32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('UnRegisterForPrintAsyncNotifications');

int UploadPrinterDriverPackage(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszInfPath,
  Pointer<Utf16> pszEnvironment,
  int dwFlags,
  int hwnd,
  Pointer<Utf16> pszDestInfPath,
  Pointer<Uint32> pcchDestInfPath,
) =>
    _UploadPrinterDriverPackage(
      pszServer,
      pszInfPath,
      pszEnvironment,
      dwFlags,
      hwnd,
      pszDestInfPath,
      pcchDestInfPath,
    );

late final _UploadPrinterDriverPackage = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszInfPath,
  Pointer<Utf16> pszEnvironment,
  Uint32 dwFlags,
  IntPtr hwnd,
  Pointer<Utf16> pszDestInfPath,
  Pointer<Uint32> pcchDestInfPath,
),
    int Function(
  Pointer<Utf16> pszServer,
  Pointer<Utf16> pszInfPath,
  Pointer<Utf16> pszEnvironment,
  int dwFlags,
  int hwnd,
  Pointer<Utf16> pszDestInfPath,
  Pointer<Uint32> pcchDestInfPath,
)>('UploadPrinterDriverPackageW');

int WaitForPrinterChange(
  int hPrinter,
  int Flags,
) =>
    _WaitForPrinterChange(
      hPrinter,
      Flags,
    );

late final _WaitForPrinterChange = _winspool.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Uint32 Flags,
),
    int Function(
  int hPrinter,
  int Flags,
)>('WaitForPrinterChange');

int WritePrinter(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
) =>
    _WritePrinter(
      hPrinter,
      pBuf,
      cbBuf,
      pcWritten,
    );

late final _WritePrinter = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer pBuf,
  Uint32 cbBuf,
  Pointer<Uint32> pcWritten,
),
    int Function(
  int hPrinter,
  Pointer pBuf,
  int cbBuf,
  Pointer<Uint32> pcWritten,
)>('WritePrinter');

int XcvData(
  int hXcv,
  Pointer<Utf16> pszDataName,
  Pointer<Uint8> pInputData,
  int cbInputData,
  Pointer<Uint8> pOutputData,
  int cbOutputData,
  Pointer<Uint32> pcbOutputNeeded,
  Pointer<Uint32> pdwStatus,
) =>
    _XcvData(
      hXcv,
      pszDataName,
      pInputData,
      cbInputData,
      pOutputData,
      cbOutputData,
      pcbOutputNeeded,
      pdwStatus,
    );

late final _XcvData = _winspool.lookupFunction<
    Int32 Function(
  IntPtr hXcv,
  Pointer<Utf16> pszDataName,
  Pointer<Uint8> pInputData,
  Uint32 cbInputData,
  Pointer<Uint8> pOutputData,
  Uint32 cbOutputData,
  Pointer<Uint32> pcbOutputNeeded,
  Pointer<Uint32> pdwStatus,
),
    int Function(
  int hXcv,
  Pointer<Utf16> pszDataName,
  Pointer<Uint8> pInputData,
  int cbInputData,
  Pointer<Uint8> pOutputData,
  int cbOutputData,
  Pointer<Uint32> pcbOutputNeeded,
  Pointer<Uint32> pdwStatus,
)>('XcvDataW');

// -----------------------------------------------------------------------
// gdi32.dll
// -----------------------------------------------------------------------
final _gdi32 = DynamicLibrary.open('gdi32.dll');

int GdiDeleteSpoolFileHandle(
  int SpoolFileHandle,
) =>
    _GdiDeleteSpoolFileHandle(
      SpoolFileHandle,
    );

late final _GdiDeleteSpoolFileHandle = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr SpoolFileHandle,
),
    int Function(
  int SpoolFileHandle,
)>('GdiDeleteSpoolFileHandle');

int GdiEndDocEMF(
  int SpoolFileHandle,
) =>
    _GdiEndDocEMF(
      SpoolFileHandle,
    );

late final _GdiEndDocEMF = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr SpoolFileHandle,
),
    int Function(
  int SpoolFileHandle,
)>('GdiEndDocEMF');

int GdiEndPageEMF(
  int SpoolFileHandle,
  int dwOptimization,
) =>
    _GdiEndPageEMF(
      SpoolFileHandle,
      dwOptimization,
    );

late final _GdiEndPageEMF = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr SpoolFileHandle,
  Uint32 dwOptimization,
),
    int Function(
  int SpoolFileHandle,
  int dwOptimization,
)>('GdiEndPageEMF');

int GdiGetDC(
  int SpoolFileHandle,
) =>
    _GdiGetDC(
      SpoolFileHandle,
    );

late final _GdiGetDC = _gdi32.lookupFunction<
    IntPtr Function(
  IntPtr SpoolFileHandle,
),
    int Function(
  int SpoolFileHandle,
)>('GdiGetDC');

int GdiGetDevmodeForPage(
  int SpoolFileHandle,
  int dwPageNumber,
  Pointer<Pointer<DEVMODE>> pCurrDM,
  Pointer<Pointer<DEVMODE>> pLastDM,
) =>
    _GdiGetDevmodeForPage(
      SpoolFileHandle,
      dwPageNumber,
      pCurrDM,
      pLastDM,
    );

late final _GdiGetDevmodeForPage = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr SpoolFileHandle,
  Uint32 dwPageNumber,
  Pointer<Pointer<DEVMODE>> pCurrDM,
  Pointer<Pointer<DEVMODE>> pLastDM,
),
    int Function(
  int SpoolFileHandle,
  int dwPageNumber,
  Pointer<Pointer<DEVMODE>> pCurrDM,
  Pointer<Pointer<DEVMODE>> pLastDM,
)>('GdiGetDevmodeForPage');

int GdiGetPageCount(
  int SpoolFileHandle,
) =>
    _GdiGetPageCount(
      SpoolFileHandle,
    );

late final _GdiGetPageCount = _gdi32.lookupFunction<
    Uint32 Function(
  IntPtr SpoolFileHandle,
),
    int Function(
  int SpoolFileHandle,
)>('GdiGetPageCount');

int GdiGetPageHandle(
  int SpoolFileHandle,
  int Page,
  Pointer<Uint32> pdwPageType,
) =>
    _GdiGetPageHandle(
      SpoolFileHandle,
      Page,
      pdwPageType,
    );

late final _GdiGetPageHandle = _gdi32.lookupFunction<
    IntPtr Function(
  IntPtr SpoolFileHandle,
  Uint32 Page,
  Pointer<Uint32> pdwPageType,
),
    int Function(
  int SpoolFileHandle,
  int Page,
  Pointer<Uint32> pdwPageType,
)>('GdiGetPageHandle');

int GdiGetSpoolFileHandle(
  Pointer<Utf16> pwszPrinterName,
  Pointer<DEVMODE> pDevmode,
  Pointer<Utf16> pwszDocName,
) =>
    _GdiGetSpoolFileHandle(
      pwszPrinterName,
      pDevmode,
      pwszDocName,
    );

late final _GdiGetSpoolFileHandle = _gdi32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> pwszPrinterName,
  Pointer<DEVMODE> pDevmode,
  Pointer<Utf16> pwszDocName,
),
    int Function(
  Pointer<Utf16> pwszPrinterName,
  Pointer<DEVMODE> pDevmode,
  Pointer<Utf16> pwszDocName,
)>('GdiGetSpoolFileHandle');

int GdiPlayPageEMF(
  int SpoolFileHandle,
  int hemf,
  Pointer<RECT> prectDocument,
  Pointer<RECT> prectBorder,
  Pointer<RECT> prectClip,
) =>
    _GdiPlayPageEMF(
      SpoolFileHandle,
      hemf,
      prectDocument,
      prectBorder,
      prectClip,
    );

late final _GdiPlayPageEMF = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr SpoolFileHandle,
  IntPtr hemf,
  Pointer<RECT> prectDocument,
  Pointer<RECT> prectBorder,
  Pointer<RECT> prectClip,
),
    int Function(
  int SpoolFileHandle,
  int hemf,
  Pointer<RECT> prectDocument,
  Pointer<RECT> prectBorder,
  Pointer<RECT> prectClip,
)>('GdiPlayPageEMF');

int GdiResetDCEMF(
  int SpoolFileHandle,
  Pointer<DEVMODE> pCurrDM,
) =>
    _GdiResetDCEMF(
      SpoolFileHandle,
      pCurrDM,
    );

late final _GdiResetDCEMF = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr SpoolFileHandle,
  Pointer<DEVMODE> pCurrDM,
),
    int Function(
  int SpoolFileHandle,
  Pointer<DEVMODE> pCurrDM,
)>('GdiResetDCEMF');

int GdiStartDocEMF(
  int SpoolFileHandle,
  Pointer<DOCINFO> pDocInfo,
) =>
    _GdiStartDocEMF(
      SpoolFileHandle,
      pDocInfo,
    );

late final _GdiStartDocEMF = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr SpoolFileHandle,
  Pointer<DOCINFO> pDocInfo,
),
    int Function(
  int SpoolFileHandle,
  Pointer<DOCINFO> pDocInfo,
)>('GdiStartDocEMF');

int GdiStartPageEMF(
  int SpoolFileHandle,
) =>
    _GdiStartPageEMF(
      SpoolFileHandle,
    );

late final _GdiStartPageEMF = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr SpoolFileHandle,
),
    int Function(
  int SpoolFileHandle,
)>('GdiStartPageEMF');

// -----------------------------------------------------------------------
// spoolss.dll
// -----------------------------------------------------------------------
final _spoolss = DynamicLibrary.open('spoolss.dll');

int AddPrintDeviceObject(
  int hPrinter,
  Pointer<IntPtr> phDeviceObject,
) =>
    _AddPrintDeviceObject(
      hPrinter,
      phDeviceObject,
    );

late final _AddPrintDeviceObject = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer<IntPtr> phDeviceObject,
),
    int Function(
  int hPrinter,
  Pointer<IntPtr> phDeviceObject,
)>('AddPrintDeviceObject');

int AppendPrinterNotifyInfoData(
  Pointer<PRINTER_NOTIFY_INFO> pInfoDest,
  Pointer<PRINTER_NOTIFY_INFO_DATA> pDataSrc,
  int fdwFlags,
) =>
    _AppendPrinterNotifyInfoData(
      pInfoDest,
      pDataSrc,
      fdwFlags,
    );

late final _AppendPrinterNotifyInfoData = _spoolss.lookupFunction<
    Int32 Function(
  Pointer<PRINTER_NOTIFY_INFO> pInfoDest,
  Pointer<PRINTER_NOTIFY_INFO_DATA> pDataSrc,
  Uint32 fdwFlags,
),
    int Function(
  Pointer<PRINTER_NOTIFY_INFO> pInfoDest,
  Pointer<PRINTER_NOTIFY_INFO_DATA> pDataSrc,
  int fdwFlags,
)>('AppendPrinterNotifyInfoData');

int CallRouterFindFirstPrinterChangeNotification(
  int hPrinterRPC,
  int fdwFilterFlags,
  int fdwOptions,
  int hNotify,
  Pointer<PRINTER_NOTIFY_OPTIONS> pPrinterNotifyOptions,
) =>
    _CallRouterFindFirstPrinterChangeNotification(
      hPrinterRPC,
      fdwFilterFlags,
      fdwOptions,
      hNotify,
      pPrinterNotifyOptions,
    );

late final _CallRouterFindFirstPrinterChangeNotification =
    _spoolss.lookupFunction<
        Uint32 Function(
  IntPtr hPrinterRPC,
  Uint32 fdwFilterFlags,
  Uint32 fdwOptions,
  IntPtr hNotify,
  Pointer<PRINTER_NOTIFY_OPTIONS> pPrinterNotifyOptions,
),
        int Function(
  int hPrinterRPC,
  int fdwFilterFlags,
  int fdwOptions,
  int hNotify,
  Pointer<PRINTER_NOTIFY_OPTIONS> pPrinterNotifyOptions,
)>('CallRouterFindFirstPrinterChangeNotification');

int GetJobAttributes(
  Pointer<Utf16> pPrinterName,
  Pointer<DEVMODE> pDevmode,
  Pointer<ATTRIBUTE_INFO_3> pAttributeInfo,
) =>
    _GetJobAttributes(
      pPrinterName,
      pDevmode,
      pAttributeInfo,
    );

late final _GetJobAttributes = _spoolss.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pPrinterName,
  Pointer<DEVMODE> pDevmode,
  Pointer<ATTRIBUTE_INFO_3> pAttributeInfo,
),
    int Function(
  Pointer<Utf16> pPrinterName,
  Pointer<DEVMODE> pDevmode,
  Pointer<ATTRIBUTE_INFO_3> pAttributeInfo,
)>('GetJobAttributes');

int GetJobAttributesEx(
  Pointer<Utf16> pPrinterName,
  Pointer<DEVMODE> pDevmode,
  int dwLevel,
  Pointer<Uint8> pAttributeInfo,
  int nSize,
  int dwFlags,
) =>
    _GetJobAttributesEx(
      pPrinterName,
      pDevmode,
      dwLevel,
      pAttributeInfo,
      nSize,
      dwFlags,
    );

late final _GetJobAttributesEx = _spoolss.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pPrinterName,
  Pointer<DEVMODE> pDevmode,
  Uint32 dwLevel,
  Pointer<Uint8> pAttributeInfo,
  Uint32 nSize,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pPrinterName,
  Pointer<DEVMODE> pDevmode,
  int dwLevel,
  Pointer<Uint8> pAttributeInfo,
  int nSize,
  int dwFlags,
)>('GetJobAttributesEx');

int ImpersonatePrinterClient(
  int hToken,
) =>
    _ImpersonatePrinterClient(
      hToken,
    );

late final _ImpersonatePrinterClient = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hToken,
),
    int Function(
  int hToken,
)>('ImpersonatePrinterClient');

int PartialReplyPrinterChangeNotification(
  int hPrinter,
  Pointer<PRINTER_NOTIFY_INFO_DATA> pDataSrc,
) =>
    _PartialReplyPrinterChangeNotification(
      hPrinter,
      pDataSrc,
    );

late final _PartialReplyPrinterChangeNotification = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer<PRINTER_NOTIFY_INFO_DATA> pDataSrc,
),
    int Function(
  int hPrinter,
  Pointer<PRINTER_NOTIFY_INFO_DATA> pDataSrc,
)>('PartialReplyPrinterChangeNotification');

int ProvidorFindClosePrinterChangeNotification(
  int hPrinter,
) =>
    _ProvidorFindClosePrinterChangeNotification(
      hPrinter,
    );

late final _ProvidorFindClosePrinterChangeNotification =
    _spoolss.lookupFunction<
        Int32 Function(
  IntPtr hPrinter,
),
        int Function(
  int hPrinter,
)>('ProvidorFindClosePrinterChangeNotification');

int ProvidorFindFirstPrinterChangeNotification(
  int hPrinter,
  int fdwFlags,
  int fdwOptions,
  int hNotify,
  Pointer pPrinterNotifyOptions,
  Pointer pvReserved1,
) =>
    _ProvidorFindFirstPrinterChangeNotification(
      hPrinter,
      fdwFlags,
      fdwOptions,
      hNotify,
      pPrinterNotifyOptions,
      pvReserved1,
    );

late final _ProvidorFindFirstPrinterChangeNotification =
    _spoolss.lookupFunction<
        Int32 Function(
  IntPtr hPrinter,
  Uint32 fdwFlags,
  Uint32 fdwOptions,
  IntPtr hNotify,
  Pointer pPrinterNotifyOptions,
  Pointer pvReserved1,
),
        int Function(
  int hPrinter,
  int fdwFlags,
  int fdwOptions,
  int hNotify,
  Pointer pPrinterNotifyOptions,
  Pointer pvReserved1,
)>('ProvidorFindFirstPrinterChangeNotification');

int RemovePrintDeviceObject(
  int hDeviceObject,
) =>
    _RemovePrintDeviceObject(
      hDeviceObject,
    );

late final _RemovePrintDeviceObject = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hDeviceObject,
),
    int Function(
  int hDeviceObject,
)>('RemovePrintDeviceObject');

int ReplyPrinterChangeNotification(
  int hPrinter,
  int fdwChangeFlags,
  Pointer<Uint32> pdwResult,
  Pointer pPrinterNotifyInfo,
) =>
    _ReplyPrinterChangeNotification(
      hPrinter,
      fdwChangeFlags,
      pdwResult,
      pPrinterNotifyInfo,
    );

late final _ReplyPrinterChangeNotification = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 fdwChangeFlags,
  Pointer<Uint32> pdwResult,
  Pointer pPrinterNotifyInfo,
),
    int Function(
  int hPrinter,
  int fdwChangeFlags,
  Pointer<Uint32> pdwResult,
  Pointer pPrinterNotifyInfo,
)>('ReplyPrinterChangeNotification');

int ReplyPrinterChangeNotificationEx(
  int hNotify,
  int dwColor,
  int fdwFlags,
  Pointer<Uint32> pdwResult,
  Pointer pPrinterNotifyInfo,
) =>
    _ReplyPrinterChangeNotificationEx(
      hNotify,
      dwColor,
      fdwFlags,
      pdwResult,
      pPrinterNotifyInfo,
    );

late final _ReplyPrinterChangeNotificationEx = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hNotify,
  Uint32 dwColor,
  Uint32 fdwFlags,
  Pointer<Uint32> pdwResult,
  Pointer pPrinterNotifyInfo,
),
    int Function(
  int hNotify,
  int dwColor,
  int fdwFlags,
  Pointer<Uint32> pdwResult,
  Pointer pPrinterNotifyInfo,
)>('ReplyPrinterChangeNotificationEx');

int RevertToPrinterSelf() => _RevertToPrinterSelf();

late final _RevertToPrinterSelf = _spoolss
    .lookupFunction<IntPtr Function(), int Function()>('RevertToPrinterSelf');

Pointer RouterAllocBidiMem(
  int NumBytes,
) =>
    _RouterAllocBidiMem(
      NumBytes,
    );

late final _RouterAllocBidiMem = _spoolss.lookupFunction<
    Pointer Function(
  IntPtr NumBytes,
),
    Pointer Function(
  int NumBytes,
)>('RouterAllocBidiMem');

Pointer<BIDI_RESPONSE_CONTAINER> RouterAllocBidiResponseContainer(
  int Count,
) =>
    _RouterAllocBidiResponseContainer(
      Count,
    );

late final _RouterAllocBidiResponseContainer = _spoolss.lookupFunction<
    Pointer<BIDI_RESPONSE_CONTAINER> Function(
  Uint32 Count,
),
    Pointer<BIDI_RESPONSE_CONTAINER> Function(
  int Count,
)>('RouterAllocBidiResponseContainer');

Pointer<PRINTER_NOTIFY_INFO> RouterAllocPrinterNotifyInfo(
  int cPrinterNotifyInfoData,
) =>
    _RouterAllocPrinterNotifyInfo(
      cPrinterNotifyInfoData,
    );

late final _RouterAllocPrinterNotifyInfo = _spoolss.lookupFunction<
    Pointer<PRINTER_NOTIFY_INFO> Function(
  Uint32 cPrinterNotifyInfoData,
),
    Pointer<PRINTER_NOTIFY_INFO> Function(
  int cPrinterNotifyInfoData,
)>('RouterAllocPrinterNotifyInfo');

void RouterFreeBidiMem(
  Pointer pMemPointer,
) =>
    _RouterFreeBidiMem(
      pMemPointer,
    );

late final _RouterFreeBidiMem = _spoolss.lookupFunction<
    Void Function(
  Pointer pMemPointer,
),
    void Function(
  Pointer pMemPointer,
)>('RouterFreeBidiMem');

int RouterFreePrinterNotifyInfo(
  Pointer<PRINTER_NOTIFY_INFO> pInfo,
) =>
    _RouterFreePrinterNotifyInfo(
      pInfo,
    );

late final _RouterFreePrinterNotifyInfo = _spoolss.lookupFunction<
    Int32 Function(
  Pointer<PRINTER_NOTIFY_INFO> pInfo,
),
    int Function(
  Pointer<PRINTER_NOTIFY_INFO> pInfo,
)>('RouterFreePrinterNotifyInfo');

int SplIsSessionZero(
  int hPrinter,
  int JobId,
  Pointer<Int32> pIsSessionZero,
) =>
    _SplIsSessionZero(
      hPrinter,
      JobId,
      pIsSessionZero,
    );

late final _SplIsSessionZero = _spoolss.lookupFunction<
    Uint32 Function(
  IntPtr hPrinter,
  Uint32 JobId,
  Pointer<Int32> pIsSessionZero,
),
    int Function(
  int hPrinter,
  int JobId,
  Pointer<Int32> pIsSessionZero,
)>('SplIsSessionZero');

int SplPromptUIInUsersSession(
  int hPrinter,
  int JobId,
  Pointer<SHOWUIPARAMS> pUIParams,
  Pointer<Uint32> pResponse,
) =>
    _SplPromptUIInUsersSession(
      hPrinter,
      JobId,
      pUIParams,
      pResponse,
    );

late final _SplPromptUIInUsersSession = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 JobId,
  Pointer<SHOWUIPARAMS> pUIParams,
  Pointer<Uint32> pResponse,
),
    int Function(
  int hPrinter,
  int JobId,
  Pointer<SHOWUIPARAMS> pUIParams,
  Pointer<Uint32> pResponse,
)>('SplPromptUIInUsersSession');

int SpoolerFindClosePrinterChangeNotification(
  int hPrinter,
) =>
    _SpoolerFindClosePrinterChangeNotification(
      hPrinter,
    );

late final _SpoolerFindClosePrinterChangeNotification = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
),
    int Function(
  int hPrinter,
)>('SpoolerFindClosePrinterChangeNotification');

int SpoolerFindFirstPrinterChangeNotification(
  int hPrinter,
  int fdwFilterFlags,
  int fdwOptions,
  Pointer pPrinterNotifyOptions,
  Pointer pvReserved,
  Pointer pNotificationConfig,
  Pointer<IntPtr> phNotify,
  Pointer<IntPtr> phEvent,
) =>
    _SpoolerFindFirstPrinterChangeNotification(
      hPrinter,
      fdwFilterFlags,
      fdwOptions,
      pPrinterNotifyOptions,
      pvReserved,
      pNotificationConfig,
      phNotify,
      phEvent,
    );

late final _SpoolerFindFirstPrinterChangeNotification = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 fdwFilterFlags,
  Uint32 fdwOptions,
  Pointer pPrinterNotifyOptions,
  Pointer pvReserved,
  Pointer pNotificationConfig,
  Pointer<IntPtr> phNotify,
  Pointer<IntPtr> phEvent,
),
    int Function(
  int hPrinter,
  int fdwFilterFlags,
  int fdwOptions,
  Pointer pPrinterNotifyOptions,
  Pointer pvReserved,
  Pointer pNotificationConfig,
  Pointer<IntPtr> phNotify,
  Pointer<IntPtr> phEvent,
)>('SpoolerFindFirstPrinterChangeNotification');

int SpoolerFindNextPrinterChangeNotification(
  int hPrinter,
  Pointer<Uint32> pfdwChange,
  Pointer pPrinterNotifyOptions,
  Pointer<Pointer> ppPrinterNotifyInfo,
) =>
    _SpoolerFindNextPrinterChangeNotification(
      hPrinter,
      pfdwChange,
      pPrinterNotifyOptions,
      ppPrinterNotifyInfo,
    );

late final _SpoolerFindNextPrinterChangeNotification = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Pointer<Uint32> pfdwChange,
  Pointer pPrinterNotifyOptions,
  Pointer<Pointer> ppPrinterNotifyInfo,
),
    int Function(
  int hPrinter,
  Pointer<Uint32> pfdwChange,
  Pointer pPrinterNotifyOptions,
  Pointer<Pointer> ppPrinterNotifyInfo,
)>('SpoolerFindNextPrinterChangeNotification');

void SpoolerFreePrinterNotifyInfo(
  Pointer<PRINTER_NOTIFY_INFO> pInfo,
) =>
    _SpoolerFreePrinterNotifyInfo(
      pInfo,
    );

late final _SpoolerFreePrinterNotifyInfo = _spoolss.lookupFunction<
    Void Function(
  Pointer<PRINTER_NOTIFY_INFO> pInfo,
),
    void Function(
  Pointer<PRINTER_NOTIFY_INFO> pInfo,
)>('SpoolerFreePrinterNotifyInfo');

int SpoolerRefreshPrinterChangeNotification(
  int hPrinter,
  int dwColor,
  Pointer<PRINTER_NOTIFY_OPTIONS> pOptions,
  Pointer<Pointer<PRINTER_NOTIFY_INFO>> ppInfo,
) =>
    _SpoolerRefreshPrinterChangeNotification(
      hPrinter,
      dwColor,
      pOptions,
      ppInfo,
    );

late final _SpoolerRefreshPrinterChangeNotification = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  Uint32 dwColor,
  Pointer<PRINTER_NOTIFY_OPTIONS> pOptions,
  Pointer<Pointer<PRINTER_NOTIFY_INFO>> ppInfo,
),
    int Function(
  int hPrinter,
  int dwColor,
  Pointer<PRINTER_NOTIFY_OPTIONS> pOptions,
  Pointer<Pointer<PRINTER_NOTIFY_INFO>> ppInfo,
)>('SpoolerRefreshPrinterChangeNotification');

int UpdatePrintDeviceObject(
  int hPrinter,
  int hDeviceObject,
) =>
    _UpdatePrintDeviceObject(
      hPrinter,
      hDeviceObject,
    );

late final _UpdatePrintDeviceObject = _spoolss.lookupFunction<
    Int32 Function(
  IntPtr hPrinter,
  IntPtr hDeviceObject,
),
    int Function(
  int hPrinter,
  int hDeviceObject,
)>('UpdatePrintDeviceObject');

// -----------------------------------------------------------------------
// mscms.dll
// -----------------------------------------------------------------------
final _mscms = DynamicLibrary.open('mscms.dll');

int GenerateCopyFilePaths(
  Pointer<Utf16> pszPrinterName,
  Pointer<Utf16> pszDirectory,
  Pointer<Uint8> pSplClientInfo,
  int dwLevel,
  Pointer<Utf16> pszSourceDir,
  Pointer<Uint32> pcchSourceDirSize,
  Pointer<Utf16> pszTargetDir,
  Pointer<Uint32> pcchTargetDirSize,
  int dwFlags,
) =>
    _GenerateCopyFilePaths(
      pszPrinterName,
      pszDirectory,
      pSplClientInfo,
      dwLevel,
      pszSourceDir,
      pcchSourceDirSize,
      pszTargetDir,
      pcchTargetDirSize,
      dwFlags,
    );

late final _GenerateCopyFilePaths = _mscms.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszPrinterName,
  Pointer<Utf16> pszDirectory,
  Pointer<Uint8> pSplClientInfo,
  Uint32 dwLevel,
  Pointer<Utf16> pszSourceDir,
  Pointer<Uint32> pcchSourceDirSize,
  Pointer<Utf16> pszTargetDir,
  Pointer<Uint32> pcchTargetDirSize,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszPrinterName,
  Pointer<Utf16> pszDirectory,
  Pointer<Uint8> pSplClientInfo,
  int dwLevel,
  Pointer<Utf16> pszSourceDir,
  Pointer<Uint32> pcchSourceDirSize,
  Pointer<Utf16> pszTargetDir,
  Pointer<Uint32> pcchTargetDirSize,
  int dwFlags,
)>('GenerateCopyFilePaths');

int SpoolerCopyFileEvent(
  Pointer<Utf16> pszPrinterName,
  Pointer<Utf16> pszKey,
  int dwCopyFileEvent,
) =>
    _SpoolerCopyFileEvent(
      pszPrinterName,
      pszKey,
      dwCopyFileEvent,
    );

late final _SpoolerCopyFileEvent = _mscms.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPrinterName,
  Pointer<Utf16> pszKey,
  Uint32 dwCopyFileEvent,
),
    int Function(
  Pointer<Utf16> pszPrinterName,
  Pointer<Utf16> pszKey,
  int dwCopyFileEvent,
)>('SpoolerCopyFileEvent');
