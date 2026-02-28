// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/id3d11device.g.dart';
import '../com/id3d11devicecontext.g.dart';
import '../com/idxgiadapter.g.dart';
import '../com/idxgiswapchain.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Creates a device that represents the display adapter.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-d3d11createdevice>.
///
/// {@category d3d11}
@pragma('vm:prefer-inline')
void D3D11CreateDevice(
  IDXGIAdapter? pAdapter,
  D3D_DRIVER_TYPE driverType,
  HMODULE? software,
  D3D11_CREATE_DEVICE_FLAG flags,
  Pointer<Int32>? pFeatureLevels,
  int featureLevels,
  int sDKVersion,
  Pointer<VTablePointer>? ppDevice,
  Pointer<Int32>? pFeatureLevel,
  Pointer<VTablePointer>? ppImmediateContext,
) {
  final hr$ = HRESULT(
    _D3D11CreateDevice(
      pAdapter?.ptr ?? nullptr,
      driverType,
      software ?? nullptr,
      flags,
      pFeatureLevels ?? nullptr,
      featureLevels,
      sDKVersion,
      ppDevice ?? nullptr,
      pFeatureLevel ?? nullptr,
      ppImmediateContext ?? nullptr,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<
  Int32 Function(
    VTablePointer,
    Int32,
    Pointer,
    Uint32,
    Pointer<Int32>,
    Uint32,
    Uint32,
    Pointer<VTablePointer>,
    Pointer<Int32>,
    Pointer<VTablePointer>,
  )
>(symbol: 'D3D11CreateDevice')
external int _D3D11CreateDevice(
  VTablePointer pAdapter,
  int driverType,
  Pointer software,
  int flags,
  Pointer<Int32> pFeatureLevels,
  int featureLevels,
  int sDKVersion,
  Pointer<VTablePointer> ppDevice,
  Pointer<Int32> pFeatureLevel,
  Pointer<VTablePointer> ppImmediateContext,
);

/// Creates a device that represents the display adapter and a swap chain used
/// for rendering.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-d3d11createdeviceandswapchain>.
///
/// {@category d3d11}
@pragma('vm:prefer-inline')
void D3D11CreateDeviceAndSwapChain(
  IDXGIAdapter? pAdapter,
  D3D_DRIVER_TYPE driverType,
  HMODULE software,
  D3D11_CREATE_DEVICE_FLAG flags,
  Pointer<Int32>? pFeatureLevels,
  int featureLevels,
  int sDKVersion,
  Pointer<DXGI_SWAP_CHAIN_DESC>? pSwapChainDesc,
  Pointer<VTablePointer>? ppSwapChain,
  Pointer<VTablePointer>? ppDevice,
  Pointer<Int32>? pFeatureLevel,
  Pointer<VTablePointer>? ppImmediateContext,
) {
  final hr$ = HRESULT(
    _D3D11CreateDeviceAndSwapChain(
      pAdapter?.ptr ?? nullptr,
      driverType,
      software,
      flags,
      pFeatureLevels ?? nullptr,
      featureLevels,
      sDKVersion,
      pSwapChainDesc ?? nullptr,
      ppSwapChain ?? nullptr,
      ppDevice ?? nullptr,
      pFeatureLevel ?? nullptr,
      ppImmediateContext ?? nullptr,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<
  Int32 Function(
    VTablePointer,
    Int32,
    Pointer,
    Uint32,
    Pointer<Int32>,
    Uint32,
    Uint32,
    Pointer<DXGI_SWAP_CHAIN_DESC>,
    Pointer<VTablePointer>,
    Pointer<VTablePointer>,
    Pointer<Int32>,
    Pointer<VTablePointer>,
  )
>(symbol: 'D3D11CreateDeviceAndSwapChain')
external int _D3D11CreateDeviceAndSwapChain(
  VTablePointer pAdapter,
  int driverType,
  Pointer software,
  int flags,
  Pointer<Int32> pFeatureLevels,
  int featureLevels,
  int sDKVersion,
  Pointer<DXGI_SWAP_CHAIN_DESC> pSwapChainDesc,
  Pointer<VTablePointer> ppSwapChain,
  Pointer<VTablePointer> ppDevice,
  Pointer<Int32> pFeatureLevel,
  Pointer<VTablePointer> ppImmediateContext,
);
