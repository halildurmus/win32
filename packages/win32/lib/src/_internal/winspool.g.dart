// Wrappers for Win32 API functions.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';

@internal
@Native<HANDLE Function(PCWSTR, Uint32, Pointer<Uint8>)>()
external int AddPrinterW_Wrapper(
  PCWSTR pName,
  int level,
  Pointer<Uint8> pPrinter,
);

@internal
@Native<BOOL Function(PRINTER_HANDLE)>()
external int ClosePrinter_Wrapper(int hPrinter);

@internal
@Native<BOOL Function(PRINTER_HANDLE)>()
external int DeletePrinter_Wrapper(int hPrinter);

@internal
@Native<
  BOOL Function(
    PRINTER_HANDLE,
    Uint32,
    Uint32,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external int EnumJobsW_Wrapper(
  int hPrinter,
  int firstJob,
  int noJobs,
  int level,
  Pointer<Uint8> pJob,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
);

@internal
@Native<
  BOOL Function(
    Uint32,
    PCWSTR,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external int EnumPrintersW_Wrapper(
  int flags,
  PCWSTR name,
  int level,
  Pointer<Uint8> pPrinterEnum,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
);

@internal
@Native<
  BOOL Function(PRINTER_HANDLE, Uint32, Pointer<Uint8>, Uint32, Pointer<Uint32>)
>()
external int GetPrinterW_Wrapper(
  int hPrinter,
  int level,
  Pointer<Uint8> pPrinter,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
);

@internal
@Native<HANDLE Function(PRINTER_HANDLE)>()
external int GetSpoolFileHandle_Wrapper(int hPrinter);

@internal
@Native<
  BOOL Function(PCWSTR, Pointer<PRINTER_HANDLE>, Pointer<PRINTER_DEFAULTS>)
>()
external int OpenPrinterW_Wrapper(
  PCWSTR pPrinterName,
  Pointer<PRINTER_HANDLE> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
);

@internal
@Native<
  BOOL Function(
    PCWSTR,
    Pointer<PRINTER_HANDLE>,
    Pointer<PRINTER_DEFAULTS>,
    Pointer<PRINTER_OPTIONS>,
  )
>()
external int OpenPrinter2W_Wrapper(
  PCWSTR pPrinterName,
  Pointer<PRINTER_HANDLE> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
  Pointer<PRINTER_OPTIONS> pOptions,
);

@internal
@Native<BOOL Function(PCWSTR, PCWSTR, Uint32, Pointer<Uint8>)>()
external int SetPortW_Wrapper(
  PCWSTR pName,
  PCWSTR pPortName,
  int dwLevel,
  Pointer<Uint8> pPortInfo,
);

@internal
@Native<BOOL Function(PRINTER_HANDLE, Uint32, Pointer<Uint8>, Uint32)>()
external int SetPrinterW_Wrapper(
  int hPrinter,
  int level,
  Pointer<Uint8> pPrinter,
  int command,
);
