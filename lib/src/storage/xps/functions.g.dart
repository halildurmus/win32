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
import '../../storage/xps/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../storage/xps/callbacks.g.dart'; // -----------------------------------------------------------------------

// winspool.drv
// -----------------------------------------------------------------------
final _winspool = DynamicLibrary.open('winspool.drv');

int DeviceCapabilities(
  Pointer<Utf16> pDevice,
  Pointer<Utf16> pPort,
  int fwCapability,
  Pointer<Utf16> pOutput,
  Pointer<DEVMODE> pDevMode,
) =>
    _DeviceCapabilities(
      pDevice,
      pPort,
      fwCapability,
      pOutput,
      pDevMode,
    );

late final _DeviceCapabilities = _winspool.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pDevice,
  Pointer<Utf16> pPort,
  Uint32 fwCapability,
  Pointer<Utf16> pOutput,
  Pointer<DEVMODE> pDevMode,
),
    int Function(
  Pointer<Utf16> pDevice,
  Pointer<Utf16> pPort,
  int fwCapability,
  Pointer<Utf16> pOutput,
  Pointer<DEVMODE> pDevMode,
)>('DeviceCapabilitiesW');

// -----------------------------------------------------------------------
// gdi32.dll
// -----------------------------------------------------------------------
final _gdi32 = DynamicLibrary.open('gdi32.dll');

int AbortDoc(
  int hdc,
) =>
    _AbortDoc(
      hdc,
    );

late final _AbortDoc = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
),
    int Function(
  int hdc,
)>('AbortDoc');

int EndDoc(
  int hdc,
) =>
    _EndDoc(
      hdc,
    );

late final _EndDoc = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
),
    int Function(
  int hdc,
)>('EndDoc');

int EndPage(
  int hdc,
) =>
    _EndPage(
      hdc,
    );

late final _EndPage = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
),
    int Function(
  int hdc,
)>('EndPage');

int Escape(
  int hdc,
  int iEscape,
  int cjIn,
  Pointer<Utf8> pvIn,
  Pointer pvOut,
) =>
    _Escape(
      hdc,
      iEscape,
      cjIn,
      pvIn,
      pvOut,
    );

late final _Escape = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Int32 iEscape,
  Int32 cjIn,
  Pointer<Utf8> pvIn,
  Pointer pvOut,
),
    int Function(
  int hdc,
  int iEscape,
  int cjIn,
  Pointer<Utf8> pvIn,
  Pointer pvOut,
)>('Escape');

int ExtEscape(
  int hdc,
  int iEscape,
  int cjInput,
  Pointer<Utf8> lpInData,
  int cjOutput,
  Pointer<Utf8> lpOutData,
) =>
    _ExtEscape(
      hdc,
      iEscape,
      cjInput,
      lpInData,
      cjOutput,
      lpOutData,
    );

late final _ExtEscape = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Int32 iEscape,
  Int32 cjInput,
  Pointer<Utf8> lpInData,
  Int32 cjOutput,
  Pointer<Utf8> lpOutData,
),
    int Function(
  int hdc,
  int iEscape,
  int cjInput,
  Pointer<Utf8> lpInData,
  int cjOutput,
  Pointer<Utf8> lpOutData,
)>('ExtEscape');

int SetAbortProc(
  int hdc,
  Pointer<NativeFunction<ABORTPROC>> proc,
) =>
    _SetAbortProc(
      hdc,
      proc,
    );

late final _SetAbortProc = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<NativeFunction<ABORTPROC>> proc,
),
    int Function(
  int hdc,
  Pointer<NativeFunction<ABORTPROC>> proc,
)>('SetAbortProc');

int StartDoc(
  int hdc,
  Pointer<DOCINFO> lpdi,
) =>
    _StartDoc(
      hdc,
      lpdi,
    );

late final _StartDoc = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<DOCINFO> lpdi,
),
    int Function(
  int hdc,
  Pointer<DOCINFO> lpdi,
)>('StartDocW');

int StartPage(
  int hdc,
) =>
    _StartPage(
      hdc,
    );

late final _StartPage = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
),
    int Function(
  int hdc,
)>('StartPage');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int PrintWindow(
  int hwnd,
  int hdcBlt,
  int nFlags,
) =>
    _PrintWindow(
      hwnd,
      hdcBlt,
      nFlags,
    );

late final _PrintWindow = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  IntPtr hdcBlt,
  Uint32 nFlags,
),
    int Function(
  int hwnd,
  int hdcBlt,
  int nFlags,
)>('PrintWindow');
