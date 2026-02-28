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
import 'id3d11videoprocessorenumerator.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11VideoProcessorEnumerator1 = GUID.fromComponents(
  0x465217f2,
  0x5568,
  0x43cf,
  Uint8List.fromList(const [0xb5, 0xb9, 0xf6, 0x1d, 0x54, 0x53, 0x1c, 0xa1]),
);

/// Enumerates the video processor capabilities of a Microsoft Direct3D 11
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nn-d3d11_1-id3d11videoprocessorenumerator1>.
///
/// {@category com}
class ID3D11VideoProcessorEnumerator1 extends ID3D11VideoProcessorEnumerator
    implements ComInterface {
  /// Creates a new instance of [ID3D11VideoProcessorEnumerator1] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11VideoProcessorEnumerator1] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ID3D11VideoProcessorEnumerator1(super.ptr)
    : _vtable = ptr.value.cast<ID3D11VideoProcessorEnumerator1Vtbl>().ref;

  /// Creates a new instance of [ID3D11VideoProcessorEnumerator1] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11VideoProcessorEnumerator1] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11VideoProcessorEnumerator1.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11VideoProcessorEnumerator1Vtbl _vtable;
  late final _CheckVideoProcessorFormatConversionFn =
      _vtable.CheckVideoProcessorFormatConversion.asFunction<
        int Function(VTablePointer, int, int, int, int, Pointer<Int32>)
      >();

  /// Indicates whether the driver supports the specified combination of format
  /// and colorspace conversions.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11_1/nf-d3d11_1-id3d11videoprocessorenumerator1-checkvideoprocessorformatconversion>.
  bool checkVideoProcessorFormatConversion(
    DXGI_FORMAT inputFormat,
    DXGI_COLOR_SPACE_TYPE inputColorSpace,
    DXGI_FORMAT outputFormat,
    DXGI_COLOR_SPACE_TYPE outputColorSpace,
  ) {
    final pSupported = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(
      _CheckVideoProcessorFormatConversionFn(
        ptr,
        inputFormat,
        inputColorSpace,
        outputFormat,
        outputColorSpace,
        pSupported,
      ),
    );
    if (hr$.isError) {
      free(pSupported);
      throw WindowsException(hr$);
    }
    final result$ = pSupported.value;
    free(pSupported);
    return result$ != FALSE;
  }

  @override
  String toString() => 'ID3D11VideoProcessorEnumerator1(ptr: $ptr)';
}

/// @nodoc
base class ID3D11VideoProcessorEnumerator1Vtbl extends Struct {
  external ID3D11VideoProcessorEnumeratorVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 inputFormat,
        Int32 inputColorSpace,
        Int32 outputFormat,
        Int32 outputColorSpace,
        Pointer<Int32> pSupported,
      )
    >
  >
  CheckVideoProcessorFormatConversion;
}

@internal
final class ID3D11VideoProcessorEnumerator1Companion
    extends ComCompanion<ID3D11VideoProcessorEnumerator1> {
  const ID3D11VideoProcessorEnumerator1Companion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11VideoProcessorEnumerator1 Function(VTablePointer) get fromPointer =>
      ID3D11VideoProcessorEnumerator1.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11VideoProcessorEnumerator1;
}
