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
final IID_ID3D11RefDefaultTrackingOptions = GUID.fromComponents(
  0x3916615,
  0xc644,
  0x418c,
  Uint8List.fromList(const [0x9b, 0xf4, 0x75, 0xdb, 0x5b, 0xe6, 0x3c, 0xa0]),
);

/// The default tracking interface sets reference default tracking options.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nn-d3d11sdklayers-id3d11refdefaulttrackingoptions>.
///
/// {@category com}
class ID3D11RefDefaultTrackingOptions extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11RefDefaultTrackingOptions] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ID3D11RefDefaultTrackingOptions] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ID3D11RefDefaultTrackingOptions(super.ptr)
    : _vtable = ptr.value.cast<ID3D11RefDefaultTrackingOptionsVtbl>().ref;

  /// Creates a new instance of [ID3D11RefDefaultTrackingOptions] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11RefDefaultTrackingOptions] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11RefDefaultTrackingOptions.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11RefDefaultTrackingOptionsVtbl _vtable;
  late final _SetTrackingOptionsFn = _vtable
      .SetTrackingOptions.asFunction<int Function(VTablePointer, int, int)>();

  /// Sets graphics processing unit (GPU) debug reference default tracking
  /// options for specific resource types.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11refdefaulttrackingoptions-settrackingoptions>.
  @pragma('vm:prefer-inline')
  void setTrackingOptions(int resourceTypeFlags, int options) {
    final hr$ = HRESULT(_SetTrackingOptionsFn(ptr, resourceTypeFlags, options));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ID3D11RefDefaultTrackingOptions(ptr: $ptr)';
}

/// @nodoc
base class ID3D11RefDefaultTrackingOptionsVtbl extends Struct {
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
  SetTrackingOptions;
}

@internal
final class ID3D11RefDefaultTrackingOptionsCompanion
    extends ComCompanion<ID3D11RefDefaultTrackingOptions> {
  const ID3D11RefDefaultTrackingOptionsCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11RefDefaultTrackingOptions Function(VTablePointer) get fromPointer =>
      ID3D11RefDefaultTrackingOptions.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11RefDefaultTrackingOptions;
}
