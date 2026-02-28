// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
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
import 'id3d11unorderedaccessview.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3DX11FFT = GUID.fromComponents(
  0xb3f7a938,
  0x4c93,
  0x4310,
  Uint8List.fromList(const [0xa6, 0x75, 0xb3, 0xd, 0x6d, 0xe5, 0x5, 0x53]),
);

/// Encapsulates forward and inverse FFTs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nn-d3dcsx-id3dx11fft>.
///
/// {@category com}
class ID3DX11FFT extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3DX11FFT] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3DX11FFT] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ID3DX11FFT(super.ptr) : _vtable = ptr.value.cast<ID3DX11FFTVtbl>().ref;

  /// Creates a new instance of [ID3DX11FFT] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3DX11FFT] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3DX11FFT.from(IUnknown interface) => interface.queryInterface();

  final ID3DX11FFTVtbl _vtable;
  late final _SetForwardScaleFn =
      _vtable.SetForwardScale.asFunction<int Function(VTablePointer, double)>();
  late final _GetForwardScaleFn =
      _vtable.GetForwardScale.asFunction<double Function(VTablePointer)>();
  late final _SetInverseScaleFn =
      _vtable.SetInverseScale.asFunction<int Function(VTablePointer, double)>();
  late final _GetInverseScaleFn =
      _vtable.GetInverseScale.asFunction<double Function(VTablePointer)>();
  late final _AttachBuffersAndPrecomputeFn =
      _vtable.AttachBuffersAndPrecompute.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<VTablePointer>,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _ForwardTransformFn =
      _vtable.ForwardTransform.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _InverseTransformFn =
      _vtable.InverseTransform.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();

  /// Sets the scale used for forward transforms.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11fft-setforwardscale>.
  @pragma('vm:prefer-inline')
  void setForwardScale(double forwardScale) {
    final hr$ = HRESULT(_SetForwardScaleFn(ptr, forwardScale));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the scale for forward transforms.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11fft-getforwardscale>.
  @pragma('vm:prefer-inline')
  double getForwardScale() => _GetForwardScaleFn(ptr);

  /// Sets the scale used for inverse transforms.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11fft-setinversescale>.
  @pragma('vm:prefer-inline')
  void setInverseScale(double inverseScale) {
    final hr$ = HRESULT(_SetInverseScaleFn(ptr, inverseScale));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Get the scale for inverse transforms.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11fft-getinversescale>.
  @pragma('vm:prefer-inline')
  double getInverseScale() => _GetInverseScaleFn(ptr);

  /// Attaches buffers to an FFT context and performs any required
  /// precomputations.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11fft-attachbuffersandprecompute>.
  @pragma('vm:prefer-inline')
  void attachBuffersAndPrecompute(
    int numTempBuffers,
    Pointer<VTablePointer> ppTempBuffers,
    int numPrecomputeBuffers,
    Pointer<VTablePointer> ppPrecomputeBufferSizes,
  ) {
    final hr$ = HRESULT(
      _AttachBuffersAndPrecomputeFn(
        ptr,
        numTempBuffers,
        ppTempBuffers,
        numPrecomputeBuffers,
        ppPrecomputeBufferSizes,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs a forward FFT.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11fft-forwardtransform>.
  @pragma('vm:prefer-inline')
  void forwardTransform(
    ID3D11UnorderedAccessView? pInputBuffer,
    Pointer<VTablePointer> ppOutputBuffer,
  ) {
    final hr$ = HRESULT(
      _ForwardTransformFn(ptr, pInputBuffer?.ptr ?? nullptr, ppOutputBuffer),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Performs an inverse FFT.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3dcsx/nf-d3dcsx-id3dx11fft-inversetransform>.
  @pragma('vm:prefer-inline')
  void inverseTransform(
    ID3D11UnorderedAccessView? pInputBuffer,
    Pointer<VTablePointer> ppOutputBuffer,
  ) {
    final hr$ = HRESULT(
      _InverseTransformFn(ptr, pInputBuffer?.ptr ?? nullptr, ppOutputBuffer),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3DX11FFT(ptr: $ptr)';
}

/// @nodoc
base class ID3DX11FFTVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float forwardScale)>
  >
  SetForwardScale;
  external Pointer<NativeFunction<Float Function(VTablePointer this$)>>
  GetForwardScale;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float inverseScale)>
  >
  SetInverseScale;
  external Pointer<NativeFunction<Float Function(VTablePointer this$)>>
  GetInverseScale;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 numTempBuffers,
        Pointer<VTablePointer> ppTempBuffers,
        Uint32 numPrecomputeBuffers,
        Pointer<VTablePointer> ppPrecomputeBufferSizes,
      )
    >
  >
  AttachBuffersAndPrecompute;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pInputBuffer,
        Pointer<VTablePointer> ppOutputBuffer,
      )
    >
  >
  ForwardTransform;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pInputBuffer,
        Pointer<VTablePointer> ppOutputBuffer,
      )
    >
  >
  InverseTransform;
}

@internal
final class ID3DX11FFTCompanion extends ComCompanion<ID3DX11FFT> {
  const ID3DX11FFTCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3DX11FFT Function(VTablePointer) get fromPointer => ID3DX11FFT.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3DX11FFT;
}
