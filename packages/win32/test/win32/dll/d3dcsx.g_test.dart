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
  group('d3dcsx.dll', () {
    test('D3DX11CreateFFT can be instantiated', () {
      check(_D3DX11CreateFFT).isA<Function>();
    });
    test('D3DX11CreateFFT1DComplex can be instantiated', () {
      check(_D3DX11CreateFFT1DComplex).isA<Function>();
    });
    test('D3DX11CreateFFT1DReal can be instantiated', () {
      check(_D3DX11CreateFFT1DReal).isA<Function>();
    });
    test('D3DX11CreateFFT2DComplex can be instantiated', () {
      check(_D3DX11CreateFFT2DComplex).isA<Function>();
    });
    test('D3DX11CreateFFT2DReal can be instantiated', () {
      check(_D3DX11CreateFFT2DReal).isA<Function>();
    });
    test('D3DX11CreateFFT3DComplex can be instantiated', () {
      check(_D3DX11CreateFFT3DComplex).isA<Function>();
    });
    test('D3DX11CreateFFT3DReal can be instantiated', () {
      check(_D3DX11CreateFFT3DReal).isA<Function>();
    });
    test('D3DX11CreateScan can be instantiated', () {
      check(_D3DX11CreateScan).isA<Function>();
    });
    test('D3DX11CreateSegmentedScan can be instantiated', () {
      check(_D3DX11CreateSegmentedScan).isA<Function>();
    });
  });
}

@Native<
  Int32 Function(
    VTablePointer,
    Pointer<D3DX11_FFT_DESC>,
    Uint32,
    Pointer<D3DX11_FFT_BUFFER_INFO>,
    Pointer<VTablePointer>,
  )
>(symbol: 'D3DX11CreateFFT')
external int _D3DX11CreateFFT(
  VTablePointer pDeviceContext,
  Pointer<D3DX11_FFT_DESC> pDesc,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
);

@Native<
  Int32 Function(
    VTablePointer,
    Uint32,
    Uint32,
    Pointer<D3DX11_FFT_BUFFER_INFO>,
    Pointer<VTablePointer>,
  )
>(symbol: 'D3DX11CreateFFT1DComplex')
external int _D3DX11CreateFFT1DComplex(
  VTablePointer pDeviceContext,
  int x,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
);

@Native<
  Int32 Function(
    VTablePointer,
    Uint32,
    Uint32,
    Pointer<D3DX11_FFT_BUFFER_INFO>,
    Pointer<VTablePointer>,
  )
>(symbol: 'D3DX11CreateFFT1DReal')
external int _D3DX11CreateFFT1DReal(
  VTablePointer pDeviceContext,
  int x,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
);

@Native<
  Int32 Function(
    VTablePointer,
    Uint32,
    Uint32,
    Uint32,
    Pointer<D3DX11_FFT_BUFFER_INFO>,
    Pointer<VTablePointer>,
  )
>(symbol: 'D3DX11CreateFFT2DComplex')
external int _D3DX11CreateFFT2DComplex(
  VTablePointer pDeviceContext,
  int x,
  int y,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
);

@Native<
  Int32 Function(
    VTablePointer,
    Uint32,
    Uint32,
    Uint32,
    Pointer<D3DX11_FFT_BUFFER_INFO>,
    Pointer<VTablePointer>,
  )
>(symbol: 'D3DX11CreateFFT2DReal')
external int _D3DX11CreateFFT2DReal(
  VTablePointer pDeviceContext,
  int x,
  int y,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
);

@Native<
  Int32 Function(
    VTablePointer,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Pointer<D3DX11_FFT_BUFFER_INFO>,
    Pointer<VTablePointer>,
  )
>(symbol: 'D3DX11CreateFFT3DComplex')
external int _D3DX11CreateFFT3DComplex(
  VTablePointer pDeviceContext,
  int x,
  int y,
  int z,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
);

@Native<
  Int32 Function(
    VTablePointer,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Pointer<D3DX11_FFT_BUFFER_INFO>,
    Pointer<VTablePointer>,
  )
>(symbol: 'D3DX11CreateFFT3DReal')
external int _D3DX11CreateFFT3DReal(
  VTablePointer pDeviceContext,
  int x,
  int y,
  int z,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
);

@Native<Int32 Function(VTablePointer, Uint32, Uint32, Pointer<VTablePointer>)>(
  symbol: 'D3DX11CreateScan',
)
external int _D3DX11CreateScan(
  VTablePointer pDeviceContext,
  int maxElementScanSize,
  int maxScanCount,
  Pointer<VTablePointer> ppScan,
);

@Native<Int32 Function(VTablePointer, Uint32, Pointer<VTablePointer>)>(
  symbol: 'D3DX11CreateSegmentedScan',
)
external int _D3DX11CreateSegmentedScan(
  VTablePointer pDeviceContext,
  int maxElementScanSize,
  Pointer<VTablePointer> ppScan,
);
