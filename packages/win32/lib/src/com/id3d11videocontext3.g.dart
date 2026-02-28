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
import 'id3d11buffer.g.dart';
import 'id3d11videocontext2.g.dart';
import 'id3d11videodecoder.g.dart';
import 'id3d11videodecoderoutputview.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11VideoContext3 = GUID.fromComponents(
  0xa9e2faa0,
  0xcb39,
  0x418f,
  Uint8List.fromList(const [0xa0, 0xb7, 0xd8, 0xaa, 0xd4, 0xde, 0x67, 0x2e]),
);

/// Provides the video functionality of a Microsoft Direct3D 11 device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nn-d3d11_4-id3d11videocontext3>.
///
/// {@category com}
class ID3D11VideoContext3 extends ID3D11VideoContext2 implements ComInterface {
  /// Creates a new instance of [ID3D11VideoContext3] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11VideoContext3]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11VideoContext3(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoContext3Vtbl>().ref;

  /// Creates a new instance of [ID3D11VideoContext3] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoContext3] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoContext3.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoContext3Vtbl _vtable;
  late final _DecoderBeginFrame1Fn =
      _vtable.DecoderBeginFrame1.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          int,
          Pointer,
          int,
          Pointer<Uint32>,
          Pointer<VTablePointer>,
        )
      >();
  late final _SubmitDecoderBuffers2Fn =
      _vtable.SubmitDecoderBuffers2.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC2>,
        )
      >();

  /// Starts a decoding operation to decode a video frame.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_4/nf-d3d11_4-id3d11videocontext3-decoderbeginframe1>.
  @pragma('vm:prefer-inline')
  void decoderBeginFrame1(
    ID3D11VideoDecoder? pDecoder,
    ID3D11VideoDecoderOutputView? pView,
    int contentKeySize,
    Pointer? pContentKey,
    int numComponentHistograms,
    Pointer<Uint32>? pHistogramOffsets,
    Pointer<VTablePointer>? ppHistogramBuffers,
  ) {
    final hr$ = HRESULT(
      _DecoderBeginFrame1Fn(
        ptr,
        pDecoder?.ptr ?? nullptr,
        pView?.ptr ?? nullptr,
        contentKeySize,
        pContentKey ?? nullptr,
        numComponentHistograms,
        pHistogramOffsets ?? nullptr,
        ppHistogramBuffers ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void submitDecoderBuffers2(
    ID3D11VideoDecoder? pDecoder,
    int numBuffers,
    Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC2> pBufferDesc,
  ) {
    final hr$ = HRESULT(
      _SubmitDecoderBuffers2Fn(
        ptr,
        pDecoder?.ptr ?? nullptr,
        numBuffers,
        pBufferDesc,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11VideoContext3(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoContext3Vtbl extends Struct {
  external ID3D11VideoContext2Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pDecoder,
        VTablePointer pView,
        Uint32 contentKeySize,
        Pointer pContentKey,
        Uint32 numComponentHistograms,
        Pointer<Uint32> pHistogramOffsets,
        Pointer<VTablePointer> ppHistogramBuffers,
      )
    >
  >
  DecoderBeginFrame1;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pDecoder,
        Uint32 numBuffers,
        Pointer<D3D11_VIDEO_DECODER_BUFFER_DESC2> pBufferDesc,
      )
    >
  >
  SubmitDecoderBuffers2;
}

@internal
final class ID3D11VideoContext3Companion
    extends ComCompanion<ID3D11VideoContext3> {
  const ID3D11VideoContext3Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoContext3 Function(VTablePointer) get fromPointer =>
      ID3D11VideoContext3.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoContext3;
}
