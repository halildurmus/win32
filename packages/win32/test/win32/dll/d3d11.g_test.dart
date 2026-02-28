// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('d3d11.dll', () {
    test('D3D11CreateDevice can be instantiated', () {
      check(_D3D11CreateDevice).isA<Function>();
    });
    test('D3D11CreateDeviceAndSwapChain can be instantiated', () {
      check(_D3D11CreateDeviceAndSwapChain).isA<Function>();
    });
  });
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
