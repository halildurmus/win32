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
final IID_ID3D11VideoProcessor = GUID.fromComponents(
  0x1d7b0652,
  0x185f,
  0x41c6,
  Uint8List.fromList(const [0x85, 0xce, 0xc, 0x5b, 0xe3, 0xd4, 0xae, 0x6c]),
);

/// Represents a video processor for Microsoft Direct3D 11.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11videoprocessor>.
///
/// {@category com}
class ID3D11VideoProcessor extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11VideoProcessor] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11VideoProcessor]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11VideoProcessor(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoProcessorVtbl>().ref;

  /// Creates a new instance of [ID3D11VideoProcessor] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoProcessor] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoProcessor.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoProcessorVtbl _vtable;
  late final _GetContentDescFn =
      _vtable.GetContentDesc.asFunction<
        void Function(
          VTablePointer,
          Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC>,
        )
      >();
  late final _GetRateConversionCapsFn =
      _vtable.GetRateConversionCaps.asFunction<
        void Function(
          VTablePointer,
          Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS>,
        )
      >();

  /// Gets the content description that was used to create the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videoprocessor-getcontentdesc>.
  @pragma('vm:prefer-inline')
  void getContentDesc(Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pDesc) =>
      _GetContentDescFn(ptr, pDesc);

  /// Gets the rate conversion capabilities of the video processor.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videoprocessor-getrateconversioncaps>.
  @pragma('vm:prefer-inline')
  void getRateConversionCaps(
    Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS> pCaps,
  ) => _GetRateConversionCapsFn(ptr, pCaps);

  @override
  String toString() => 'ID3D11VideoProcessor(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoProcessorVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pDesc,
      )
    >
  >
  GetContentDesc;
  external Pointer<
    NativeFunction<
      Void Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS> pCaps,
      )
    >
  >
  GetRateConversionCaps;
}

@internal
final class ID3D11VideoProcessorCompanion
    extends ComCompanion<ID3D11VideoProcessor> {
  const ID3D11VideoProcessorCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoProcessor Function(VTablePointer) get fromPointer =>
      ID3D11VideoProcessor.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoProcessor;
}
