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
final IID_ID3D11Resource = GUID.fromComponents(
  0xdc8e63f3,
  0xd12b,
  0x4952,
  Uint8List.fromList(const [0xb4, 0x7b, 0x5e, 0x45, 0x2, 0x6a, 0x86, 0x2d]),
);

/// Provides common actions on all resources.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11resource>.
///
/// {@category com}
class ID3D11Resource extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11Resource] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11Resource]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11Resource(super.ptr)
    : _vtable = ptr.value.cast<ID3D11ResourceVtbl>().ref;

  /// Creates a new instance of [ID3D11Resource] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11Resource] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11Resource.from(IUnknown interface) => interface.queryInterface();

  final ID3D11ResourceVtbl _vtable;
  late final _GetTypeFn = _vtable
      .GetType.asFunction<void Function(VTablePointer, Pointer<Int32>)>();
  late final _SetEvictionPriorityFn = _vtable
      .SetEvictionPriority.asFunction<void Function(VTablePointer, int)>();
  late final _GetEvictionPriorityFn =
      _vtable.GetEvictionPriority.asFunction<int Function(VTablePointer)>();

  /// Get the type of the resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11resource-gettype>.
  @pragma('vm:prefer-inline')
  void getType(Pointer<Int32> pResourceDimension) =>
      _GetTypeFn(ptr, pResourceDimension);

  /// Set the eviction priority of a resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11resource-setevictionpriority>.
  @pragma('vm:prefer-inline')
  void setEvictionPriority(int evictionPriority) =>
      _SetEvictionPriorityFn(ptr, evictionPriority);

  /// Get the eviction priority of a resource.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11resource-getevictionpriority>.
  @pragma('vm:prefer-inline')
  int getEvictionPriority() => _GetEvictionPriorityFn(ptr);

  @override
  String toString() => 'ID3D11Resource(ptr: $ptr)';
}

/// @nodoc
base class ID3D11ResourceVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<
    NativeFunction<
      Void Function(VTablePointer this$, Pointer<Int32> pResourceDimension)
    >
  >
  GetType;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, Uint32 evictionPriority)>
  >
  SetEvictionPriority;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetEvictionPriority;
}

@internal
final class ID3D11ResourceCompanion extends ComCompanion<ID3D11Resource> {
  const ID3D11ResourceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11Resource Function(VTablePointer) get fromPointer => ID3D11Resource.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11Resource;
}
