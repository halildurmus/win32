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
import '../com/id3d11devicecontext.g.dart';
import '../com/id3dx11fft.g.dart';
import '../com/id3dx11scan.g.dart';
import '../com/id3dx11segmentedscan.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
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

/// Creates an ID3DX11FFT COM interface object.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-d3dx11createfft>.
///
/// {@category d3dcsx}
@pragma('vm:prefer-inline')
void D3DX11CreateFFT(
  ID3D11DeviceContext? pDeviceContext,
  Pointer<D3DX11_FFT_DESC> pDesc,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
) {
  final hr$ = HRESULT(
    _D3DX11CreateFFT(
      pDeviceContext?.ptr ?? nullptr,
      pDesc,
      flags,
      pBufferInfo,
      ppFFT,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
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

/// Creates an ID3DX11FFT COM interface object.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-d3dx11createfft1dcomplex>.
///
/// {@category d3dcsx}
@pragma('vm:prefer-inline')
void D3DX11CreateFFT1DComplex(
  ID3D11DeviceContext? pDeviceContext,
  int x,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
) {
  final hr$ = HRESULT(
    _D3DX11CreateFFT1DComplex(
      pDeviceContext?.ptr ?? nullptr,
      x,
      flags,
      pBufferInfo,
      ppFFT,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Creates an ID3DX11FFT COM interface object.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-d3dx11createfft1dreal>.
///
/// {@category d3dcsx}
@pragma('vm:prefer-inline')
void D3DX11CreateFFT1DReal(
  ID3D11DeviceContext? pDeviceContext,
  int x,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
) {
  final hr$ = HRESULT(
    _D3DX11CreateFFT1DReal(
      pDeviceContext?.ptr ?? nullptr,
      x,
      flags,
      pBufferInfo,
      ppFFT,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Creates an ID3DX11FFT COM interface object.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-d3dx11createfft2dcomplex>.
///
/// {@category d3dcsx}
@pragma('vm:prefer-inline')
void D3DX11CreateFFT2DComplex(
  ID3D11DeviceContext? pDeviceContext,
  int x,
  int y,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
) {
  final hr$ = HRESULT(
    _D3DX11CreateFFT2DComplex(
      pDeviceContext?.ptr ?? nullptr,
      x,
      y,
      flags,
      pBufferInfo,
      ppFFT,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Creates an ID3DX11FFT COM interface object.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-d3dx11createfft2dreal>.
///
/// {@category d3dcsx}
@pragma('vm:prefer-inline')
void D3DX11CreateFFT2DReal(
  ID3D11DeviceContext? pDeviceContext,
  int x,
  int y,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
) {
  final hr$ = HRESULT(
    _D3DX11CreateFFT2DReal(
      pDeviceContext?.ptr ?? nullptr,
      x,
      y,
      flags,
      pBufferInfo,
      ppFFT,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Creates an ID3DX11FFT COM interface object.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-d3dx11createfft3dcomplex>.
///
/// {@category d3dcsx}
@pragma('vm:prefer-inline')
void D3DX11CreateFFT3DComplex(
  ID3D11DeviceContext? pDeviceContext,
  int x,
  int y,
  int z,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
) {
  final hr$ = HRESULT(
    _D3DX11CreateFFT3DComplex(
      pDeviceContext?.ptr ?? nullptr,
      x,
      y,
      z,
      flags,
      pBufferInfo,
      ppFFT,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Creates an ID3DX11FFT COM interface object.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-d3dx11createfft3dreal>.
///
/// {@category d3dcsx}
@pragma('vm:prefer-inline')
void D3DX11CreateFFT3DReal(
  ID3D11DeviceContext? pDeviceContext,
  int x,
  int y,
  int z,
  int flags,
  Pointer<D3DX11_FFT_BUFFER_INFO> pBufferInfo,
  Pointer<VTablePointer> ppFFT,
) {
  final hr$ = HRESULT(
    _D3DX11CreateFFT3DReal(
      pDeviceContext?.ptr ?? nullptr,
      x,
      y,
      z,
      flags,
      pBufferInfo,
      ppFFT,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Creates a scan context.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-d3dx11createscan>.
///
/// {@category d3dcsx}
ID3DX11Scan? D3DX11CreateScan(
  ID3D11DeviceContext? pDeviceContext,
  int maxElementScanSize,
  int maxScanCount,
) {
  final ppScan = adaptiveCalloc<VTablePointer>();
  final hr$ = HRESULT(
    _D3DX11CreateScan(
      pDeviceContext?.ptr ?? nullptr,
      maxElementScanSize,
      maxScanCount,
      ppScan,
    ),
  );
  if (hr$.isError) {
    free(ppScan);
    throw WindowsException(hr$);
  }
  final result$ = ppScan.value;
  free(ppScan);
  if (result$.isNull) return null;
  return ID3DX11Scan(result$);
}

@Native<Int32 Function(VTablePointer, Uint32, Uint32, Pointer<VTablePointer>)>(
  symbol: 'D3DX11CreateScan',
)
external int _D3DX11CreateScan(
  VTablePointer pDeviceContext,
  int maxElementScanSize,
  int maxScanCount,
  Pointer<VTablePointer> ppScan,
);

/// Creates a segmented scan context.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-d3dx11createsegmentedscan>.
///
/// {@category d3dcsx}
ID3DX11SegmentedScan? D3DX11CreateSegmentedScan(
  ID3D11DeviceContext? pDeviceContext,
  int maxElementScanSize,
) {
  final ppScan = adaptiveCalloc<VTablePointer>();
  final hr$ = HRESULT(
    _D3DX11CreateSegmentedScan(
      pDeviceContext?.ptr ?? nullptr,
      maxElementScanSize,
      ppScan,
    ),
  );
  if (hr$.isError) {
    free(ppScan);
    throw WindowsException(hr$);
  }
  final result$ = ppScan.value;
  free(ppScan);
  if (result$.isNull) return null;
  return ID3DX11SegmentedScan(result$);
}

@Native<Int32 Function(VTablePointer, Uint32, Pointer<VTablePointer>)>(
  symbol: 'D3DX11CreateSegmentedScan',
)
external int _D3DX11CreateSegmentedScan(
  VTablePointer pDeviceContext,
  int maxElementScanSize,
  Pointer<VTablePointer> ppScan,
);
