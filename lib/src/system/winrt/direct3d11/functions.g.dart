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
import '../../../graphics/dxgi/IDXGIDevice.dart';
import '../../../system/winrt/IInspectable.dart';
import '../../../graphics/dxgi/IDXGISurface.dart'; // -----------------------------------------------------------------------

// d3d11.dll
// -----------------------------------------------------------------------
final _d3d11 = DynamicLibrary.open('d3d11.dll');

int CreateDirect3D11DeviceFromDXGIDevice(
  Pointer<COMObject> dxgiDevice,
  Pointer<Pointer<COMObject>> graphicsDevice,
) =>
    _CreateDirect3D11DeviceFromDXGIDevice(
      dxgiDevice,
      graphicsDevice,
    );

late final _CreateDirect3D11DeviceFromDXGIDevice = _d3d11.lookupFunction<
    Int32 Function(
  Pointer<COMObject> dxgiDevice,
  Pointer<Pointer<COMObject>> graphicsDevice,
),
    int Function(
  Pointer<COMObject> dxgiDevice,
  Pointer<Pointer<COMObject>> graphicsDevice,
)>('CreateDirect3D11DeviceFromDXGIDevice');

int CreateDirect3D11SurfaceFromDXGISurface(
  Pointer<COMObject> dgxiSurface,
  Pointer<Pointer<COMObject>> graphicsSurface,
) =>
    _CreateDirect3D11SurfaceFromDXGISurface(
      dgxiSurface,
      graphicsSurface,
    );

late final _CreateDirect3D11SurfaceFromDXGISurface = _d3d11.lookupFunction<
    Int32 Function(
  Pointer<COMObject> dgxiSurface,
  Pointer<Pointer<COMObject>> graphicsSurface,
),
    int Function(
  Pointer<COMObject> dgxiSurface,
  Pointer<Pointer<COMObject>> graphicsSurface,
)>('CreateDirect3D11SurfaceFromDXGISurface');
