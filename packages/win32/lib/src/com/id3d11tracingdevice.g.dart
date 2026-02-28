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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11TracingDevice = GUID.fromComponents(
  0x1911c771,
  0x1587,
  0x413e,
  Uint8List.fromList(const [0xa7, 0xe0, 0xfb, 0x26, 0xc3, 0xde, 0x2, 0x68]),
);

/// The tracing device interface sets shader tracking information, which enables
/// accurate logging and playback of shader execution.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nn-d3d11sdklayers-id3d11tracingdevice>.
///
/// {@category com}
class ID3D11TracingDevice extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11TracingDevice] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11TracingDevice]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11TracingDevice(super.ptr)
    : _vtable = ptr.value.cast<ID3D11TracingDeviceVtbl>().ref;

  /// Creates a new instance of [ID3D11TracingDevice] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11TracingDevice] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11TracingDevice.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11TracingDeviceVtbl _vtable;
  late final _SetShaderTrackingOptionsByTypeFn =
      _vtable.SetShaderTrackingOptionsByType.asFunction<
        int Function(VTablePointer, int, int)
      >();
  late final _SetShaderTrackingOptionsFn =
      _vtable.SetShaderTrackingOptions.asFunction<
        int Function(VTablePointer, VTablePointer, int)
      >();

  /// Sets the reference rasterizer's default race-condition tracking options
  /// for the specified resource types.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11tracingdevice-setshadertrackingoptionsbytype>.
  @pragma('vm:prefer-inline')
  void setShaderTrackingOptionsByType(int resourceTypeFlags, int options) {
    final hr$ = HRESULT(
      _SetShaderTrackingOptionsByTypeFn(ptr, resourceTypeFlags, options),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the reference rasterizer's race-condition tracking options for a
  /// specific shader.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11tracingdevice-setshadertrackingoptions>.
  @pragma('vm:prefer-inline')
  void setShaderTrackingOptions(IUnknown? pShader, int options) {
    final hr$ = HRESULT(
      _SetShaderTrackingOptionsFn(ptr, pShader?.ptr ?? nullptr, options),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11TracingDevice(ptr: $ptr)';
}

/// @nodoc
base class ID3D11TracingDeviceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 resourceTypeFlags,
        Uint32 options,
      )
    >
  >
  SetShaderTrackingOptionsByType;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pShader, Uint32 options)
    >
  >
  SetShaderTrackingOptions;
}

@internal
final class ID3D11TracingDeviceCompanion
    extends ComCompanion<ID3D11TracingDevice> {
  const ID3D11TracingDeviceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11TracingDevice Function(VTablePointer) get fromPointer =>
      ID3D11TracingDevice.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11TracingDevice;
}
