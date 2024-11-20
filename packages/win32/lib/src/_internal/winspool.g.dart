// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Wrappers for Win32 API functions that wrap the native APIs and preserve the
// result of GetLastError(), making it easier to debug issues and handle errors
// reliably.
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
import 'win32.dart' show NativeWin32Result;

@internal
@Native<NativeWin32Result Function(PCWSTR, Uint32, Pointer<Uint8>)>()
external NativeWin32Result AddPrinterW_Wrapper(
  PCWSTR pName,
  int level,
  Pointer<Uint8> pPrinter,
);

@internal
@Native<NativeWin32Result Function(PRINTER_HANDLE)>()
external NativeWin32Result ClosePrinter_Wrapper(int hPrinter);

@internal
@Native<NativeWin32Result Function(PRINTER_HANDLE)>()
external NativeWin32Result DeletePrinter_Wrapper(int hPrinter);

@internal
@Native<
  NativeWin32Result Function(
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
external NativeWin32Result EnumJobsW_Wrapper(
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
  NativeWin32Result Function(
    Uint32,
    PCWSTR,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result EnumPrintersW_Wrapper(
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
  NativeWin32Result Function(
    PRINTER_HANDLE,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetPrinterW_Wrapper(
  int hPrinter,
  int level,
  Pointer<Uint8> pPrinter,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
);

@internal
@Native<NativeWin32Result Function(PRINTER_HANDLE)>()
external NativeWin32Result GetSpoolFileHandle_Wrapper(int hPrinter);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    Pointer<PRINTER_HANDLE>,
    Pointer<PRINTER_DEFAULTS>,
  )
>()
external NativeWin32Result OpenPrinterW_Wrapper(
  PCWSTR pPrinterName,
  Pointer<PRINTER_HANDLE> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    Pointer<PRINTER_HANDLE>,
    Pointer<PRINTER_DEFAULTS>,
    Pointer<PRINTER_OPTIONS>,
  )
>()
external NativeWin32Result OpenPrinter2W_Wrapper(
  PCWSTR pPrinterName,
  Pointer<PRINTER_HANDLE> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
  Pointer<PRINTER_OPTIONS> pOptions,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PCWSTR, Uint32, Pointer<Uint8>)>()
external NativeWin32Result SetPortW_Wrapper(
  PCWSTR pName,
  PCWSTR pPortName,
  int dwLevel,
  Pointer<Uint8> pPortInfo,
);

@internal
@Native<
  NativeWin32Result Function(PRINTER_HANDLE, Uint32, Pointer<Uint8>, Uint32)
>()
external NativeWin32Result SetPrinterW_Wrapper(
  int hPrinter,
  int level,
  Pointer<Uint8> pPrinter,
  int command,
);
