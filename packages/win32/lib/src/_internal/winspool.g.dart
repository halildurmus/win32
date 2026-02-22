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

import 'package:ffi/ffi.dart';
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
@Native<NativeWin32Result Function(Pointer<Utf16>, Uint32, Pointer<Uint8>)>()
external NativeWin32Result AddPrinterW_Wrapper(
  Pointer<Utf16> pName,
  int level,
  Pointer<Uint8> pPrinter,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result ClosePrinter_Wrapper(Pointer hPrinter);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result DeletePrinter_Wrapper(Pointer hPrinter);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
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
  Pointer hPrinter,
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
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result EnumPrintersW_Wrapper(
  int flags,
  Pointer<Utf16> name,
  int level,
  Pointer<Uint8> pPrinterEnum,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
  Pointer<Uint32> pcReturned,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Pointer<Uint8>,
    Uint32,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetPrinterW_Wrapper(
  Pointer hPrinter,
  int level,
  Pointer<Uint8> pPrinter,
  int cbBuf,
  Pointer<Uint32> pcbNeeded,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GetSpoolFileHandle_Wrapper(Pointer hPrinter);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<Pointer>,
    Pointer<PRINTER_DEFAULTS>,
  )
>()
external NativeWin32Result OpenPrinterW_Wrapper(
  Pointer<Utf16> pPrinterName,
  Pointer<Pointer> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<Pointer>,
    Pointer<PRINTER_DEFAULTS>,
    Pointer<PRINTER_OPTIONS>,
  )
>()
external NativeWin32Result OpenPrinter2W_Wrapper(
  Pointer<Utf16> pPrinterName,
  Pointer<Pointer> phPrinter,
  Pointer<PRINTER_DEFAULTS> pDefault,
  Pointer<PRINTER_OPTIONS> pOptions,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Pointer<Uint8>,
  )
>()
external NativeWin32Result SetPortW_Wrapper(
  Pointer<Utf16> pName,
  Pointer<Utf16> pPortName,
  int dwLevel,
  Pointer<Uint8> pPortInfo,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer<Uint8>, Uint32)>()
external NativeWin32Result SetPrinterW_Wrapper(
  Pointer hPrinter,
  int level,
  Pointer<Uint8> pPrinter,
  int command,
);
