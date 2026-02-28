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
import 'id3d11view.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11VideoDecoderOutputView = GUID.fromComponents(
  0xc2931aea,
  0x2a85,
  0x4f20,
  Uint8List.fromList(const [0x86, 0xf, 0xfb, 0xa1, 0xfd, 0x25, 0x6e, 0x18]),
);

/// Identifies the output surfaces that can be accessed during video decoding.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11videodecoderoutputview>.
///
/// {@category com}
class ID3D11VideoDecoderOutputView extends ID3D11View implements ComInterface {
  /// Creates a new instance of [ID3D11VideoDecoderOutputView] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11VideoDecoderOutputView] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ID3D11VideoDecoderOutputView(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoDecoderOutputViewVtbl>().ref;

  /// Creates a new instance of [ID3D11VideoDecoderOutputView] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoDecoderOutputView] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoDecoderOutputView.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoDecoderOutputViewVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        void Function(
          VTablePointer,
          Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC>,
        )
      >();

  /// Gets the properties of the video decoder output view.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodecoderoutputview-getdesc>.
  @pragma('vm:prefer-inline')
  void getDesc(Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC> pDesc) =>
      _GetDescFn(ptr, pDesc);

  @override
  String toString() => 'ID3D11VideoDecoderOutputView(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoDecoderOutputViewVtbl extends Struct {
  external ID3D11ViewVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC> pDesc,
      )
    >
  >
  GetDesc;
}

@internal
final class ID3D11VideoDecoderOutputViewCompanion
    extends ComCompanion<ID3D11VideoDecoderOutputView> {
  const ID3D11VideoDecoderOutputViewCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoDecoderOutputView Function(VTablePointer) get fromPointer =>
      ID3D11VideoDecoderOutputView.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoDecoderOutputView;
}
