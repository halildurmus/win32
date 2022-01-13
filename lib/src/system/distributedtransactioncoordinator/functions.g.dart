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
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// xolehlp.dll
// -----------------------------------------------------------------------
final _xolehlp = DynamicLibrary.open('xolehlp.dll');

int DtcGetTransactionManager(
  Pointer<Utf8> i_pszHost,
  Pointer<Utf8> i_pszTmName,
  Pointer<GUID> i_riid,
  int i_dwReserved1,
  int i_wcbReserved2,
  Pointer i_pvReserved2,
  Pointer<Pointer> o_ppvObject,
) =>
    _DtcGetTransactionManager(
      i_pszHost,
      i_pszTmName,
      i_riid,
      i_dwReserved1,
      i_wcbReserved2,
      i_pvReserved2,
      o_ppvObject,
    );

late final _DtcGetTransactionManager = _xolehlp.lookupFunction<
    Int32 Function(
  Pointer<Utf8> i_pszHost,
  Pointer<Utf8> i_pszTmName,
  Pointer<GUID> i_riid,
  Uint32 i_dwReserved1,
  Uint16 i_wcbReserved2,
  Pointer i_pvReserved2,
  Pointer<Pointer> o_ppvObject,
),
    int Function(
  Pointer<Utf8> i_pszHost,
  Pointer<Utf8> i_pszTmName,
  Pointer<GUID> i_riid,
  int i_dwReserved1,
  int i_wcbReserved2,
  Pointer i_pvReserved2,
  Pointer<Pointer> o_ppvObject,
)>('DtcGetTransactionManager');

int DtcGetTransactionManagerC(
  Pointer<Utf8> i_pszHost,
  Pointer<Utf8> i_pszTmName,
  Pointer<GUID> i_riid,
  int i_dwReserved1,
  int i_wcbReserved2,
  Pointer i_pvReserved2,
  Pointer<Pointer> o_ppvObject,
) =>
    _DtcGetTransactionManagerC(
      i_pszHost,
      i_pszTmName,
      i_riid,
      i_dwReserved1,
      i_wcbReserved2,
      i_pvReserved2,
      o_ppvObject,
    );

late final _DtcGetTransactionManagerC = _xolehlp.lookupFunction<
    Int32 Function(
  Pointer<Utf8> i_pszHost,
  Pointer<Utf8> i_pszTmName,
  Pointer<GUID> i_riid,
  Uint32 i_dwReserved1,
  Uint16 i_wcbReserved2,
  Pointer i_pvReserved2,
  Pointer<Pointer> o_ppvObject,
),
    int Function(
  Pointer<Utf8> i_pszHost,
  Pointer<Utf8> i_pszTmName,
  Pointer<GUID> i_riid,
  int i_dwReserved1,
  int i_wcbReserved2,
  Pointer i_pvReserved2,
  Pointer<Pointer> o_ppvObject,
)>('DtcGetTransactionManagerC');

int DtcGetTransactionManagerEx(
  Pointer<Utf16> i_pwszHost,
  Pointer<Utf16> i_pwszTmName,
  Pointer<GUID> i_riid,
  int i_grfOptions,
  Pointer i_pvConfigParams,
  Pointer<Pointer> o_ppvObject,
) =>
    _DtcGetTransactionManagerEx(
      i_pwszHost,
      i_pwszTmName,
      i_riid,
      i_grfOptions,
      i_pvConfigParams,
      o_ppvObject,
    );

late final _DtcGetTransactionManagerEx = _xolehlp.lookupFunction<
    Int32 Function(
  Pointer<Utf16> i_pwszHost,
  Pointer<Utf16> i_pwszTmName,
  Pointer<GUID> i_riid,
  Uint32 i_grfOptions,
  Pointer i_pvConfigParams,
  Pointer<Pointer> o_ppvObject,
),
    int Function(
  Pointer<Utf16> i_pwszHost,
  Pointer<Utf16> i_pwszTmName,
  Pointer<GUID> i_riid,
  int i_grfOptions,
  Pointer i_pvConfigParams,
  Pointer<Pointer> o_ppvObject,
)>('DtcGetTransactionManagerExW');
