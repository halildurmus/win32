// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart'; // -----------------------------------------------------------------------

// dxgi.dll
// -----------------------------------------------------------------------
final _dxgi = DynamicLibrary.open('dxgi.dll');

int CreateDXGIFactory(
  Pointer<GUID> riid,
  Pointer<Pointer> ppFactory,
) =>
    _CreateDXGIFactory(
      riid,
      ppFactory,
    );

late final _CreateDXGIFactory = _dxgi.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppFactory,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppFactory,
)>('CreateDXGIFactory');

int CreateDXGIFactory1(
  Pointer<GUID> riid,
  Pointer<Pointer> ppFactory,
) =>
    _CreateDXGIFactory1(
      riid,
      ppFactory,
    );

late final _CreateDXGIFactory1 = _dxgi.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppFactory,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppFactory,
)>('CreateDXGIFactory1');

int CreateDXGIFactory2(
  int Flags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppFactory,
) =>
    _CreateDXGIFactory2(
      Flags,
      riid,
      ppFactory,
    );

late final _CreateDXGIFactory2 = _dxgi.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppFactory,
),
    int Function(
  int Flags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppFactory,
)>('CreateDXGIFactory2');

int DXGIDeclareAdapterRemovalSupport() => _DXGIDeclareAdapterRemovalSupport();

late final _DXGIDeclareAdapterRemovalSupport =
    _dxgi.lookupFunction<Int32 Function(), int Function()>(
        'DXGIDeclareAdapterRemovalSupport');

int DXGIGetDebugInterface1(
  int Flags,
  Pointer<GUID> riid,
  Pointer<Pointer> pDebug,
) =>
    _DXGIGetDebugInterface1(
      Flags,
      riid,
      pDebug,
    );

late final _DXGIGetDebugInterface1 = _dxgi.lookupFunction<
    Int32 Function(
  Uint32 Flags,
  Pointer<GUID> riid,
  Pointer<Pointer> pDebug,
),
    int Function(
  int Flags,
  Pointer<GUID> riid,
  Pointer<Pointer> pDebug,
)>('DXGIGetDebugInterface1');
