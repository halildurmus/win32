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
import '../../graphics/direct3d9/IDirect3D9Ex.dart'; // -----------------------------------------------------------------------

// d3d9.dll
// -----------------------------------------------------------------------
final _d3d9 = DynamicLibrary.open('d3d9.dll');

int D3DPERF_BeginEvent(
  int col,
  Pointer<Utf16> wszName,
) =>
    _D3DPERF_BeginEvent(
      col,
      wszName,
    );

late final _D3DPERF_BeginEvent = _d3d9.lookupFunction<
    Int32 Function(
  Uint32 col,
  Pointer<Utf16> wszName,
),
    int Function(
  int col,
  Pointer<Utf16> wszName,
)>('D3DPERF_BeginEvent');

int D3DPERF_EndEvent() => _D3DPERF_EndEvent();

late final _D3DPERF_EndEvent =
    _d3d9.lookupFunction<Int32 Function(), int Function()>('D3DPERF_EndEvent');

int D3DPERF_GetStatus() => _D3DPERF_GetStatus();

late final _D3DPERF_GetStatus = _d3d9
    .lookupFunction<Uint32 Function(), int Function()>('D3DPERF_GetStatus');

int D3DPERF_QueryRepeatFrame() => _D3DPERF_QueryRepeatFrame();

late final _D3DPERF_QueryRepeatFrame =
    _d3d9.lookupFunction<Int32 Function(), int Function()>(
        'D3DPERF_QueryRepeatFrame');

void D3DPERF_SetMarker(
  int col,
  Pointer<Utf16> wszName,
) =>
    _D3DPERF_SetMarker(
      col,
      wszName,
    );

late final _D3DPERF_SetMarker = _d3d9.lookupFunction<
    Void Function(
  Uint32 col,
  Pointer<Utf16> wszName,
),
    void Function(
  int col,
  Pointer<Utf16> wszName,
)>('D3DPERF_SetMarker');

void D3DPERF_SetOptions(
  int dwOptions,
) =>
    _D3DPERF_SetOptions(
      dwOptions,
    );

late final _D3DPERF_SetOptions = _d3d9.lookupFunction<
    Void Function(
  Uint32 dwOptions,
),
    void Function(
  int dwOptions,
)>('D3DPERF_SetOptions');

void D3DPERF_SetRegion(
  int col,
  Pointer<Utf16> wszName,
) =>
    _D3DPERF_SetRegion(
      col,
      wszName,
    );

late final _D3DPERF_SetRegion = _d3d9.lookupFunction<
    Void Function(
  Uint32 col,
  Pointer<Utf16> wszName,
),
    void Function(
  int col,
  Pointer<Utf16> wszName,
)>('D3DPERF_SetRegion');

Pointer<COMObject> Direct3DCreate9(
  int SDKVersion,
) =>
    _Direct3DCreate9(
      SDKVersion,
    );

late final _Direct3DCreate9 = _d3d9.lookupFunction<
    Pointer<COMObject> Function(
  Uint32 SDKVersion,
),
    Pointer<COMObject> Function(
  int SDKVersion,
)>('Direct3DCreate9');

int Direct3DCreate9Ex(
  int SDKVersion,
  Pointer<Pointer<COMObject>> param1,
) =>
    _Direct3DCreate9Ex(
      SDKVersion,
      param1,
    );

late final _Direct3DCreate9Ex = _d3d9.lookupFunction<
    Int32 Function(
  Uint32 SDKVersion,
  Pointer<Pointer<COMObject>> param1,
),
    int Function(
  int SDKVersion,
  Pointer<Pointer<COMObject>> param1,
)>('Direct3DCreate9Ex');
