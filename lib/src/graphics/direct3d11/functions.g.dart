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
import '../../graphics/dxgi/IDXGIAdapter.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../graphics/direct3d11/ID3D11Device.dart';
import '../../graphics/direct3d11/ID3D11DeviceContext.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../graphics/dxgi/IDXGISwapChain.dart';
import '../../graphics/direct3d11/ID3D11ShaderTrace.dart';
import '../../graphics/direct3d/ID3DBlob.dart';
import '../../graphics/direct3d11/ID3DX11FFT.dart';
import '../../graphics/direct3d11/ID3DX11Scan.dart';
import '../../graphics/direct3d11/ID3DX11SegmentedScan.dart'; // -----------------------------------------------------------------------

// d3d11.dll
// -----------------------------------------------------------------------
final _d3d11 = DynamicLibrary.open('d3d11.dll');

int D3D11CreateDevice(
  Pointer<COMObject> pAdapter,
  int DriverType,
  int Software,
  int Flags,
  Pointer<Int32> pFeatureLevels,
  int FeatureLevels,
  int SDKVersion,
  Pointer<Pointer<COMObject>> ppDevice,
  Pointer<Int32> pFeatureLevel,
  Pointer<Pointer<COMObject>> ppImmediateContext,
) =>
    _D3D11CreateDevice(
      pAdapter,
      DriverType,
      Software,
      Flags,
      pFeatureLevels,
      FeatureLevels,
      SDKVersion,
      ppDevice,
      pFeatureLevel,
      ppImmediateContext,
    );

late final _D3D11CreateDevice = _d3d11.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAdapter,
  Int32 DriverType,
  IntPtr Software,
  Uint32 Flags,
  Pointer<Int32> pFeatureLevels,
  Uint32 FeatureLevels,
  Uint32 SDKVersion,
  Pointer<Pointer<COMObject>> ppDevice,
  Pointer<Int32> pFeatureLevel,
  Pointer<Pointer<COMObject>> ppImmediateContext,
),
    int Function(
  Pointer<COMObject> pAdapter,
  int DriverType,
  int Software,
  int Flags,
  Pointer<Int32> pFeatureLevels,
  int FeatureLevels,
  int SDKVersion,
  Pointer<Pointer<COMObject>> ppDevice,
  Pointer<Int32> pFeatureLevel,
  Pointer<Pointer<COMObject>> ppImmediateContext,
)>('D3D11CreateDevice');

int D3D11CreateDeviceAndSwapChain(
  Pointer<COMObject> pAdapter,
  int DriverType,
  int Software,
  int Flags,
  Pointer<Int32> pFeatureLevels,
  int FeatureLevels,
  int SDKVersion,
  Pointer<DXGI_SWAP_CHAIN_DESC> pSwapChainDesc,
  Pointer<Pointer<COMObject>> ppSwapChain,
  Pointer<Pointer<COMObject>> ppDevice,
  Pointer<Int32> pFeatureLevel,
  Pointer<Pointer<COMObject>> ppImmediateContext,
) =>
    _D3D11CreateDeviceAndSwapChain(
      pAdapter,
      DriverType,
      Software,
      Flags,
      pFeatureLevels,
      FeatureLevels,
      SDKVersion,
      pSwapChainDesc,
      ppSwapChain,
      ppDevice,
      pFeatureLevel,
      ppImmediateContext,
    );

late final _D3D11CreateDeviceAndSwapChain = _d3d11.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAdapter,
  Int32 DriverType,
  IntPtr Software,
  Uint32 Flags,
  Pointer<Int32> pFeatureLevels,
  Uint32 FeatureLevels,
  Uint32 SDKVersion,
  Pointer<DXGI_SWAP_CHAIN_DESC> pSwapChainDesc,
  Pointer<Pointer<COMObject>> ppSwapChain,
  Pointer<Pointer<COMObject>> ppDevice,
  Pointer<Int32> pFeatureLevel,
  Pointer<Pointer<COMObject>> ppImmediateContext,
),
    int Function(
  Pointer<COMObject> pAdapter,
  int DriverType,
  int Software,
  int Flags,
  Pointer<Int32> pFeatureLevels,
  int FeatureLevels,
  int SDKVersion,
  Pointer<DXGI_SWAP_CHAIN_DESC> pSwapChainDesc,
  Pointer<Pointer<COMObject>> ppSwapChain,
  Pointer<Pointer<COMObject>> ppDevice,
  Pointer<Int32> pFeatureLevel,
  Pointer<Pointer<COMObject>> ppImmediateContext,
)>('D3D11CreateDeviceAndSwapChain');

// -----------------------------------------------------------------------
// d3dcompiler_47.dll
// -----------------------------------------------------------------------
final _d3dcompiler_47 = DynamicLibrary.open('d3dcompiler_47.dll');

int D3DDisassemble11Trace(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<COMObject> pTrace,
  int StartStep,
  int NumSteps,
  int Flags,
  Pointer<Pointer<COMObject>> ppDisassembly,
) =>
    _D3DDisassemble11Trace(
      pSrcData,
      SrcDataSize,
      pTrace,
      StartStep,
      NumSteps,
      Flags,
      ppDisassembly,
    );

late final _D3DDisassemble11Trace = _d3dcompiler_47.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<COMObject> pTrace,
  Uint32 StartStep,
  Uint32 NumSteps,
  Uint32 Flags,
  Pointer<Pointer<COMObject>> ppDisassembly,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSize,
  Pointer<COMObject> pTrace,
  int StartStep,
  int NumSteps,
  int Flags,
  Pointer<Pointer<COMObject>> ppDisassembly,
)>('D3DDisassemble11Trace');

// -----------------------------------------------------------------------
// d3dcsx.dll
// -----------------------------------------------------------------------
final _d3dcsx = DynamicLibrary.open('d3dcsx.dll');

int D3DX11CreateFFT(
  Pointer<COMObject> pDeviceContext,
  Pointer<D3DX11_FFT_DESC> pDesc,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
) =>
    _D3DX11CreateFFT(
      pDeviceContext,
      pDesc,
      Flags,
      pBufferInfo,
      ppFFT,
    );

late final _D3DX11CreateFFT = _d3dcsx.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDeviceContext,
  Pointer<D3DX11_FFT_DESC> pDesc,
  Uint32 Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
),
    int Function(
  Pointer<COMObject> pDeviceContext,
  Pointer<D3DX11_FFT_DESC> pDesc,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
)>('D3DX11CreateFFT');

int D3DX11CreateFFT1DComplex(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
) =>
    _D3DX11CreateFFT1DComplex(
      pDeviceContext,
      X,
      Flags,
      pBufferInfo,
      ppFFT,
    );

late final _D3DX11CreateFFT1DComplex = _d3dcsx.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDeviceContext,
  Uint32 X,
  Uint32 Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
),
    int Function(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
)>('D3DX11CreateFFT1DComplex');

int D3DX11CreateFFT1DReal(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
) =>
    _D3DX11CreateFFT1DReal(
      pDeviceContext,
      X,
      Flags,
      pBufferInfo,
      ppFFT,
    );

late final _D3DX11CreateFFT1DReal = _d3dcsx.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDeviceContext,
  Uint32 X,
  Uint32 Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
),
    int Function(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
)>('D3DX11CreateFFT1DReal');

int D3DX11CreateFFT2DComplex(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Y,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
) =>
    _D3DX11CreateFFT2DComplex(
      pDeviceContext,
      X,
      Y,
      Flags,
      pBufferInfo,
      ppFFT,
    );

late final _D3DX11CreateFFT2DComplex = _d3dcsx.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDeviceContext,
  Uint32 X,
  Uint32 Y,
  Uint32 Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
),
    int Function(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Y,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
)>('D3DX11CreateFFT2DComplex');

int D3DX11CreateFFT2DReal(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Y,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
) =>
    _D3DX11CreateFFT2DReal(
      pDeviceContext,
      X,
      Y,
      Flags,
      pBufferInfo,
      ppFFT,
    );

late final _D3DX11CreateFFT2DReal = _d3dcsx.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDeviceContext,
  Uint32 X,
  Uint32 Y,
  Uint32 Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
),
    int Function(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Y,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
)>('D3DX11CreateFFT2DReal');

int D3DX11CreateFFT3DComplex(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Y,
  int Z,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
) =>
    _D3DX11CreateFFT3DComplex(
      pDeviceContext,
      X,
      Y,
      Z,
      Flags,
      pBufferInfo,
      ppFFT,
    );

late final _D3DX11CreateFFT3DComplex = _d3dcsx.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDeviceContext,
  Uint32 X,
  Uint32 Y,
  Uint32 Z,
  Uint32 Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
),
    int Function(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Y,
  int Z,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
)>('D3DX11CreateFFT3DComplex');

int D3DX11CreateFFT3DReal(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Y,
  int Z,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
) =>
    _D3DX11CreateFFT3DReal(
      pDeviceContext,
      X,
      Y,
      Z,
      Flags,
      pBufferInfo,
      ppFFT,
    );

late final _D3DX11CreateFFT3DReal = _d3dcsx.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDeviceContext,
  Uint32 X,
  Uint32 Y,
  Uint32 Z,
  Uint32 Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
),
    int Function(
  Pointer<COMObject> pDeviceContext,
  int X,
  int Y,
  int Z,
  int Flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<Pointer<COMObject>> ppFFT,
)>('D3DX11CreateFFT3DReal');

int D3DX11CreateScan(
  Pointer<COMObject> pDeviceContext,
  int MaxElementScanSize,
  int MaxScanCount,
  Pointer<Pointer<COMObject>> ppScan,
) =>
    _D3DX11CreateScan(
      pDeviceContext,
      MaxElementScanSize,
      MaxScanCount,
      ppScan,
    );

late final _D3DX11CreateScan = _d3dcsx.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDeviceContext,
  Uint32 MaxElementScanSize,
  Uint32 MaxScanCount,
  Pointer<Pointer<COMObject>> ppScan,
),
    int Function(
  Pointer<COMObject> pDeviceContext,
  int MaxElementScanSize,
  int MaxScanCount,
  Pointer<Pointer<COMObject>> ppScan,
)>('D3DX11CreateScan');

int D3DX11CreateSegmentedScan(
  Pointer<COMObject> pDeviceContext,
  int MaxElementScanSize,
  Pointer<Pointer<COMObject>> ppScan,
) =>
    _D3DX11CreateSegmentedScan(
      pDeviceContext,
      MaxElementScanSize,
      ppScan,
    );

late final _D3DX11CreateSegmentedScan = _d3dcsx.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDeviceContext,
  Uint32 MaxElementScanSize,
  Pointer<Pointer<COMObject>> ppScan,
),
    int Function(
  Pointer<COMObject> pDeviceContext,
  int MaxElementScanSize,
  Pointer<Pointer<COMObject>> ppScan,
)>('D3DX11CreateSegmentedScan');
