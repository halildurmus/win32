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
import 'id3d11devicechild.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11VideoDecoder = GUID.fromComponents(
  0x3c9c5b51,
  0x995d,
  0x48d1,
  Uint8List.fromList(const [0x9b, 0x8d, 0xfa, 0x5c, 0xae, 0xde, 0xd6, 0x5c]),
);

/// Represents a hardware-accelerated video decoder for Microsoft Direct3D 11.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11videodecoder>.
///
/// {@category com}
class ID3D11VideoDecoder extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11VideoDecoder] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11VideoDecoder]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11VideoDecoder(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoDecoderVtbl>().ref;

  /// Creates a new instance of [ID3D11VideoDecoder] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoDecoder] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoDecoder.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoDecoderVtbl _vtable;
  late final _GetCreationParametersFn =
      _vtable.GetCreationParameters.asFunction<
        int Function(
          VTablePointer,
          Pointer<D3D11_VIDEO_DECODER_DESC>,
          Pointer<D3D11_VIDEO_DECODER_CONFIG>,
        )
      >();
  late final _GetDriverHandleFn =
      _vtable.GetDriverHandle.asFunction<
        int Function(VTablePointer, Pointer<Pointer>)
      >();

  /// Gets the parameters that were used to create the decoder.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodecoder-getcreationparameters>.
  @pragma('vm:prefer-inline')
  void getCreationParameters(
    Pointer<D3D11_VIDEO_DECODER_DESC> pVideoDesc,
    Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
  ) {
    final hr$ = HRESULT(_GetCreationParametersFn(ptr, pVideoDesc, pConfig));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a handle to the driver.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videodecoder-getdriverhandle>.
  HANDLE getDriverHandle() {
    final pDriverHandle = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(_GetDriverHandleFn(ptr, pDriverHandle));
    if (hr$.isError) {
      free(pDriverHandle);
      throw WindowsException(hr$);
    }
    final result$ = pDriverHandle.value;
    free(pDriverHandle);
    return HANDLE(result$);
  }

  @override
  String toString() => 'ID3D11VideoDecoder(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoDecoderVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_DECODER_DESC> pVideoDesc,
        Pointer<D3D11_VIDEO_DECODER_CONFIG> pConfig,
      )
    >
  >
  GetCreationParameters;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer> pDriverHandle)
    >
  >
  GetDriverHandle;
}

@internal
final class ID3D11VideoDecoderCompanion
    extends ComCompanion<ID3D11VideoDecoder> {
  const ID3D11VideoDecoderCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoDecoder Function(VTablePointer) get fromPointer =>
      ID3D11VideoDecoder.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoDecoder;
}
