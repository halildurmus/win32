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
final IID_ID3D11RefTrackingOptions = GUID.fromComponents(
  0x193dacdf,
  0xdb2,
  0x4c05,
  Uint8List.fromList(const [0xa5, 0x5c, 0xef, 0x6, 0xca, 0xc5, 0x6f, 0xd9]),
);

/// Sets reference tracking options.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nn-d3d11sdklayers-id3d11reftrackingoptions>.
///
/// {@category com}
class ID3D11RefTrackingOptions extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11RefTrackingOptions] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11RefTrackingOptions] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ID3D11RefTrackingOptions(super.ptr)
    : _vtable = ptr.value.cast<ID3D11RefTrackingOptionsVtbl>().ref;

  /// Creates a new instance of [ID3D11RefTrackingOptions] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11RefTrackingOptions] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11RefTrackingOptions.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11RefTrackingOptionsVtbl _vtable;
  late final _SetTrackingOptionsFn =
      _vtable.SetTrackingOptions.asFunction<int Function(VTablePointer, int)>();

  /// Sets graphics processing unit (GPU) debug reference tracking options.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11reftrackingoptions-settrackingoptions>.
  @pragma('vm:prefer-inline')
  void setTrackingOptions(int uOptions) {
    final hr$ = HRESULT(_SetTrackingOptionsFn(ptr, uOptions));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11RefTrackingOptions(ptr: $ptr)';
}

/// @nodoc
base class ID3D11RefTrackingOptionsVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 uOptions)>
  >
  SetTrackingOptions;
}

@internal
final class ID3D11RefTrackingOptionsCompanion
    extends ComCompanion<ID3D11RefTrackingOptions> {
  const ID3D11RefTrackingOptionsCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11RefTrackingOptions Function(VTablePointer) get fromPointer =>
      ID3D11RefTrackingOptions.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11RefTrackingOptions;
}
