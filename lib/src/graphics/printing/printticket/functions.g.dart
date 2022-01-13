// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../storage/xps/structs.g.dart';
import '../../../graphics/gdi/structs.g.dart';
import '../../../graphics/printing/printticket/structs.g.dart';
import '../../../system/com/IStream.dart';
import '../../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// prntvpt.dll
// -----------------------------------------------------------------------
final _prntvpt = DynamicLibrary.open('prntvpt.dll');

int PTCloseProvider(
  int hProvider,
) =>
    _PTCloseProvider(
      hProvider,
    );

late final _PTCloseProvider = _prntvpt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
),
    int Function(
  int hProvider,
)>('PTCloseProvider');

int PTConvertDevModeToPrintTicket(
  int hProvider,
  int cbDevmode,
  Pointer<DEVMODE> pDevmode,
  int scope,
  Pointer<COMObject> pPrintTicket,
) =>
    _PTConvertDevModeToPrintTicket(
      hProvider,
      cbDevmode,
      pDevmode,
      scope,
      pPrintTicket,
    );

late final _PTConvertDevModeToPrintTicket = _prntvpt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Uint32 cbDevmode,
  Pointer<DEVMODE> pDevmode,
  Int32 scope,
  Pointer<COMObject> pPrintTicket,
),
    int Function(
  int hProvider,
  int cbDevmode,
  Pointer<DEVMODE> pDevmode,
  int scope,
  Pointer<COMObject> pPrintTicket,
)>('PTConvertDevModeToPrintTicket');

int PTConvertPrintTicketToDevMode(
  int hProvider,
  Pointer<COMObject> pPrintTicket,
  int baseDevmodeType,
  int scope,
  Pointer<Uint32> pcbDevmode,
  Pointer<Pointer<DEVMODE>> ppDevmode,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
) =>
    _PTConvertPrintTicketToDevMode(
      hProvider,
      pPrintTicket,
      baseDevmodeType,
      scope,
      pcbDevmode,
      ppDevmode,
      pbstrErrorMessage,
    );

late final _PTConvertPrintTicketToDevMode = _prntvpt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Pointer<COMObject> pPrintTicket,
  Int32 baseDevmodeType,
  Int32 scope,
  Pointer<Uint32> pcbDevmode,
  Pointer<Pointer<DEVMODE>> ppDevmode,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
),
    int Function(
  int hProvider,
  Pointer<COMObject> pPrintTicket,
  int baseDevmodeType,
  int scope,
  Pointer<Uint32> pcbDevmode,
  Pointer<Pointer<DEVMODE>> ppDevmode,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
)>('PTConvertPrintTicketToDevMode');

int PTGetPrintCapabilities(
  int hProvider,
  Pointer<COMObject> pPrintTicket,
  Pointer<COMObject> pCapabilities,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
) =>
    _PTGetPrintCapabilities(
      hProvider,
      pPrintTicket,
      pCapabilities,
      pbstrErrorMessage,
    );

late final _PTGetPrintCapabilities = _prntvpt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Pointer<COMObject> pPrintTicket,
  Pointer<COMObject> pCapabilities,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
),
    int Function(
  int hProvider,
  Pointer<COMObject> pPrintTicket,
  Pointer<COMObject> pCapabilities,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
)>('PTGetPrintCapabilities');

int PTGetPrintDeviceCapabilities(
  int hProvider,
  Pointer<COMObject> pPrintTicket,
  Pointer<COMObject> pDeviceCapabilities,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
) =>
    _PTGetPrintDeviceCapabilities(
      hProvider,
      pPrintTicket,
      pDeviceCapabilities,
      pbstrErrorMessage,
    );

late final _PTGetPrintDeviceCapabilities = _prntvpt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Pointer<COMObject> pPrintTicket,
  Pointer<COMObject> pDeviceCapabilities,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
),
    int Function(
  int hProvider,
  Pointer<COMObject> pPrintTicket,
  Pointer<COMObject> pDeviceCapabilities,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
)>('PTGetPrintDeviceCapabilities');

int PTGetPrintDeviceResources(
  int hProvider,
  Pointer<Utf16> pszLocaleName,
  Pointer<COMObject> pPrintTicket,
  Pointer<COMObject> pDeviceResources,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
) =>
    _PTGetPrintDeviceResources(
      hProvider,
      pszLocaleName,
      pPrintTicket,
      pDeviceResources,
      pbstrErrorMessage,
    );

late final _PTGetPrintDeviceResources = _prntvpt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Pointer<Utf16> pszLocaleName,
  Pointer<COMObject> pPrintTicket,
  Pointer<COMObject> pDeviceResources,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
),
    int Function(
  int hProvider,
  Pointer<Utf16> pszLocaleName,
  Pointer<COMObject> pPrintTicket,
  Pointer<COMObject> pDeviceResources,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
)>('PTGetPrintDeviceResources');

int PTMergeAndValidatePrintTicket(
  int hProvider,
  Pointer<COMObject> pBaseTicket,
  Pointer<COMObject> pDeltaTicket,
  int scope,
  Pointer<COMObject> pResultTicket,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
) =>
    _PTMergeAndValidatePrintTicket(
      hProvider,
      pBaseTicket,
      pDeltaTicket,
      scope,
      pResultTicket,
      pbstrErrorMessage,
    );

late final _PTMergeAndValidatePrintTicket = _prntvpt.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Pointer<COMObject> pBaseTicket,
  Pointer<COMObject> pDeltaTicket,
  Int32 scope,
  Pointer<COMObject> pResultTicket,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
),
    int Function(
  int hProvider,
  Pointer<COMObject> pBaseTicket,
  Pointer<COMObject> pDeltaTicket,
  int scope,
  Pointer<COMObject> pResultTicket,
  Pointer<Pointer<Utf16>> pbstrErrorMessage,
)>('PTMergeAndValidatePrintTicket');

int PTOpenProvider(
  Pointer<Utf16> pszPrinterName,
  int dwVersion,
  Pointer<IntPtr> phProvider,
) =>
    _PTOpenProvider(
      pszPrinterName,
      dwVersion,
      phProvider,
    );

late final _PTOpenProvider = _prntvpt.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPrinterName,
  Uint32 dwVersion,
  Pointer<IntPtr> phProvider,
),
    int Function(
  Pointer<Utf16> pszPrinterName,
  int dwVersion,
  Pointer<IntPtr> phProvider,
)>('PTOpenProvider');

int PTOpenProviderEx(
  Pointer<Utf16> pszPrinterName,
  int dwMaxVersion,
  int dwPrefVersion,
  Pointer<IntPtr> phProvider,
  Pointer<Uint32> pUsedVersion,
) =>
    _PTOpenProviderEx(
      pszPrinterName,
      dwMaxVersion,
      dwPrefVersion,
      phProvider,
      pUsedVersion,
    );

late final _PTOpenProviderEx = _prntvpt.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPrinterName,
  Uint32 dwMaxVersion,
  Uint32 dwPrefVersion,
  Pointer<IntPtr> phProvider,
  Pointer<Uint32> pUsedVersion,
),
    int Function(
  Pointer<Utf16> pszPrinterName,
  int dwMaxVersion,
  int dwPrefVersion,
  Pointer<IntPtr> phProvider,
  Pointer<Uint32> pUsedVersion,
)>('PTOpenProviderEx');

int PTQuerySchemaVersionSupport(
  Pointer<Utf16> pszPrinterName,
  Pointer<Uint32> pMaxVersion,
) =>
    _PTQuerySchemaVersionSupport(
      pszPrinterName,
      pMaxVersion,
    );

late final _PTQuerySchemaVersionSupport = _prntvpt.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPrinterName,
  Pointer<Uint32> pMaxVersion,
),
    int Function(
  Pointer<Utf16> pszPrinterName,
  Pointer<Uint32> pMaxVersion,
)>('PTQuerySchemaVersionSupport');

int PTReleaseMemory(
  Pointer pBuffer,
) =>
    _PTReleaseMemory(
      pBuffer,
    );

late final _PTReleaseMemory = _prntvpt.lookupFunction<
    Int32 Function(
  Pointer pBuffer,
),
    int Function(
  Pointer pBuffer,
)>('PTReleaseMemory');
