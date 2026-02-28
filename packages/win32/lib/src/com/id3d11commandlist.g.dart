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
final IID_ID3D11CommandList = GUID.fromComponents(
  0xa24bc4d1,
  0x769e,
  0x43f7,
  Uint8List.fromList(const [0x80, 0x13, 0x98, 0xff, 0x56, 0x6c, 0x18, 0xe2]),
);

/// Encapsulates a list of graphics commands for play back.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11/nn-d3d11-id3d11commandlist>.
///
/// {@category com}
class ID3D11CommandList extends ID3D11DeviceChild implements ComInterface {
  /// Creates a new instance of [ID3D11CommandList] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11CommandList]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11CommandList(super.ptr)
    : _vtable = ptr.value.cast<ID3D11CommandListVtbl>().ref;

  /// Creates a new instance of [ID3D11CommandList] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11CommandList] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11CommandList.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11CommandListVtbl _vtable;
  late final _GetContextFlagsFn =
      _vtable.GetContextFlags.asFunction<int Function(VTablePointer)>();

  /// Gets the initialization flags associated with the deferred context that
  /// created the command list.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11/nf-d3d11-id3d11commandlist-getcontextflags>.
  @pragma('vm:prefer-inline')
  int getContextFlags() => _GetContextFlagsFn(ptr);

  @override
  String toString() => 'ID3D11CommandList(ptr: $ptr)';
}

/// @nodoc
base class ID3D11CommandListVtbl extends Struct {
  external ID3D11DeviceChildVtbl base$;
  external Pointer<NativeFunction<Uint32 Function(VTablePointer this$)>>
  GetContextFlags;
}

@internal
final class ID3D11CommandListCompanion extends ComCompanion<ID3D11CommandList> {
  const ID3D11CommandListCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11CommandList Function(VTablePointer) get fromPointer =>
      ID3D11CommandList.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11CommandList;
}
