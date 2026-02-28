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
import '../enums.g.dart';
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
final IID_ID3D11VideoProcessorEnumerator = GUID.fromComponents(
  0x31627037,
  0x53ab,
  0x4200,
  Uint8List.fromList(const [0x90, 0x61, 0x5, 0xfa, 0xa9, 0xab, 0x45, 0xf9]),
);

/// Enumerates the video processor capabilities of a Microsoft Direct3D 11
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11videoprocessorenumerator>.
///
/// {@category com}
class ID3D11VideoProcessorEnumerator extends ID3D11DeviceChild
    implements ComInterface {
  /// Creates a new instance of [ID3D11VideoProcessorEnumerator] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11VideoProcessorEnumerator] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ID3D11VideoProcessorEnumerator(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoProcessorEnumeratorVtbl>().ref;

  /// Creates a new instance of [ID3D11VideoProcessorEnumerator] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoProcessorEnumerator] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoProcessorEnumerator.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoProcessorEnumeratorVtbl _vtable;
  late final _GetVideoProcessorContentDescFn =
      _vtable.GetVideoProcessorContentDesc.asFunction<
        int Function(VTablePointer, Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC>)
      >();
  late final _CheckVideoProcessorFormatFn =
      _vtable.CheckVideoProcessorFormat.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>)
      >();
  late final _GetVideoProcessorCapsFn =
      _vtable.GetVideoProcessorCaps.asFunction<
        int Function(VTablePointer, Pointer<D3D11_VIDEO_PROCESSOR_CAPS>)
      >();
  late final _GetVideoProcessorRateConversionCapsFn =
      _vtable.GetVideoProcessorRateConversionCaps.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS>,
        )
      >();
  late final _GetVideoProcessorCustomRateFn =
      _vtable.GetVideoProcessorCustomRate.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          Pointer<D3D11_VIDEO_PROCESSOR_CUSTOM_RATE>,
        )
      >();
  late final _GetVideoProcessorFilterRangeFn =
      _vtable.GetVideoProcessorFilterRange.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<D3D11_VIDEO_PROCESSOR_FILTER_RANGE>,
        )
      >();

  /// Gets the content description that was used to create this enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videoprocessorenumerator-getvideoprocessorcontentdesc>.
  Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> getVideoProcessorContentDesc() {
    final pContentDesc = adaptiveCalloc<D3D11_VIDEO_PROCESSOR_CONTENT_DESC>();
    final hr$ = HRESULT(_GetVideoProcessorContentDescFn(ptr, pContentDesc));
    if (hr$.isError) {
      free(pContentDesc);
      throw WindowsException(hr$);
    }
    return pContentDesc;
  }

  /// Queries whether the video processor supports a specified video format.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videoprocessorenumerator-checkvideoprocessorformat>.
  int checkVideoProcessorFormat(DXGI_FORMAT format) {
    final pFlags = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_CheckVideoProcessorFormatFn(ptr, format, pFlags));
    if (hr$.isError) {
      free(pFlags);
      throw WindowsException(hr$);
    }
    final result$ = pFlags.value;
    free(pFlags);
    return result$;
  }

  /// Gets the capabilities of the video processor.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videoprocessorenumerator-getvideoprocessorcaps>.
  Pointer<D3D11_VIDEO_PROCESSOR_CAPS> getVideoProcessorCaps() {
    final pCaps = adaptiveCalloc<D3D11_VIDEO_PROCESSOR_CAPS>();
    final hr$ = HRESULT(_GetVideoProcessorCapsFn(ptr, pCaps));
    if (hr$.isError) {
      free(pCaps);
      throw WindowsException(hr$);
    }
    return pCaps;
  }

  /// Returns a group of video processor capabilities that are associated with
  /// frame-rate conversion, including deinterlacing and inverse telecine.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videoprocessorenumerator-getvideoprocessorrateconversioncaps>.
  Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS>
  getVideoProcessorRateConversionCaps(int typeIndex) {
    final pCaps = adaptiveCalloc<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS>();
    final hr$ = HRESULT(
      _GetVideoProcessorRateConversionCapsFn(ptr, typeIndex, pCaps),
    );
    if (hr$.isError) {
      free(pCaps);
      throw WindowsException(hr$);
    }
    return pCaps;
  }

  /// Gets a list of custom frame rates that a video processor supports.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videoprocessorenumerator-getvideoprocessorcustomrate>.
  Pointer<D3D11_VIDEO_PROCESSOR_CUSTOM_RATE> getVideoProcessorCustomRate(
    int typeIndex,
    int customRateIndex,
  ) {
    final pRate = adaptiveCalloc<D3D11_VIDEO_PROCESSOR_CUSTOM_RATE>();
    final hr$ = HRESULT(
      _GetVideoProcessorCustomRateFn(ptr, typeIndex, customRateIndex, pRate),
    );
    if (hr$.isError) {
      free(pRate);
      throw WindowsException(hr$);
    }
    return pRate;
  }

  /// Gets the range of values for an image filter.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11videoprocessorenumerator-getvideoprocessorfilterrange>.
  Pointer<D3D11_VIDEO_PROCESSOR_FILTER_RANGE> getVideoProcessorFilterRange(
    D3D11_VIDEO_PROCESSOR_FILTER filter,
  ) {
    final pRange = adaptiveCalloc<D3D11_VIDEO_PROCESSOR_FILTER_RANGE>();
    final hr$ = HRESULT(_GetVideoProcessorFilterRangeFn(ptr, filter, pRange));
    if (hr$.isError) {
      free(pRange);
      throw WindowsException(hr$);
    }
    return pRange;
  }

  @override
  String toString() => 'ID3D11VideoProcessorEnumerator(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoProcessorEnumeratorVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_PROCESSOR_CONTENT_DESC> pContentDesc,
      )
    >
  >
  GetVideoProcessorContentDesc;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 format, Pointer<Uint32> pFlags)
    >
  >
  CheckVideoProcessorFormat;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<D3D11_VIDEO_PROCESSOR_CAPS> pCaps,
      )
    >
  >
  GetVideoProcessorCaps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 typeIndex,
        Pointer<D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS> pCaps,
      )
    >
  >
  GetVideoProcessorRateConversionCaps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 typeIndex,
        Uint32 customRateIndex,
        Pointer<D3D11_VIDEO_PROCESSOR_CUSTOM_RATE> pRate,
      )
    >
  >
  GetVideoProcessorCustomRate;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 filter,
        Pointer<D3D11_VIDEO_PROCESSOR_FILTER_RANGE> pRange,
      )
    >
  >
  GetVideoProcessorFilterRange;
}

@internal
final class ID3D11VideoProcessorEnumeratorCompanion
    extends ComCompanion<ID3D11VideoProcessorEnumerator> {
  const ID3D11VideoProcessorEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoProcessorEnumerator Function(VTablePointer) get fromPointer =>
      ID3D11VideoProcessorEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoProcessorEnumerator;
}
