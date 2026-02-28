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
import 'id3d11resource.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ID3D11View = GUID.fromComponents(
  0x839d1216,
  0xbb2e,
  0x412b,
  Uint8List.fromList(const [0xb7, 0xf4, 0xa9, 0xdb, 0xeb, 0xe0, 0x8e, 0xd1]),
);

/// Specifies the parts of a resource the pipeline can access during rendering.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11view>.
///
/// {@category com}
class ID3D11View extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11View] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11View] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ID3D11View(super.ptr) : _vtable = ptr.value.cast<ID3D11ViewVtbl>().ref;

  /// Creates a new instance of [ID3D11View] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11View] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11View.from(IUnknown interface) => interface.queryInterface();

  final ID3D11ViewVtbl _vtable;
  late final _GetResourceFn =
      _vtable.GetResource.asFunction<
        void Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Get the resource that is accessed through this view.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11view-getresource>.
  @pragma('vm:prefer-inline')
  void getResource(Pointer<VTablePointer> ppResource) =>
      _GetResourceFn(ptr, ppResource);

  @override
  String toString() => 'ID3D11View(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ViewVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<VTablePointer> ppResource)
    >
  >
  GetResource;
}

@internal
final class ID3D11ViewCompanion extends ComCompanion<ID3D11View> {
  const ID3D11ViewCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11View Function(VTablePointer) get fromPointer => ID3D11View.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11View;
}
