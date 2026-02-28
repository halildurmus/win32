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
final IID_ID3D11SwitchToRef = GUID.fromComponents(
  0x1ef337e3,
  0x58e7,
  0x4f83,
  Uint8List.fromList(const [0xa6, 0x92, 0xdb, 0x22, 0x1f, 0x5e, 0xd4, 0x7e]),
);

/// ID3D11SwitchToRef interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nn-d3d11sdklayers-id3d11switchtoref>.
///
/// {@category com}
class ID3D11SwitchToRef extends IUnknown implements ComInterface {
  /// Creates a new instance of [ID3D11SwitchToRef] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ID3D11SwitchToRef]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ID3D11SwitchToRef(super.ptr)
    : _vtable = ptr.value.cast<ID3D11SwitchToRefVtbl>().ref;

  /// Creates a new instance of [ID3D11SwitchToRef] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ID3D11SwitchToRef] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ID3D11SwitchToRef.from(IUnknown interface) =>
      interface.queryInterface();

  final ID3D11SwitchToRefVtbl _vtable;
  late final _SetUseRefFn =
      _vtable.SetUseRef.asFunction<int Function(VTablePointer, int)>();
  late final _GetUseRefFn =
      _vtable.GetUseRef.asFunction<int Function(VTablePointer)>();

  /// ID3D11SwitchToRef::SetUseRef method.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11switchtoref-setuseref>.
  @pragma('vm:prefer-inline')
  bool setUseRef(bool useRef) =>
      _SetUseRefFn(ptr, useRef ? TRUE : FALSE) != FALSE;

  /// ID3D11SwitchToRef::GetUseRef method.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/d3d11sdklayers/nf-d3d11sdklayers-id3d11switchtoref-getuseref>.
  @pragma('vm:prefer-inline')
  bool getUseRef() => _GetUseRefFn(ptr) != FALSE;

  @override
  String toString() => 'ID3D11SwitchToRef(ptr: $ptr)';
}

/// @nodoc
base class ID3D11SwitchToRefVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 useRef)>
  >
  SetUseRef;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  GetUseRef;
}

@internal
final class ID3D11SwitchToRefCompanion extends ComCompanion<ID3D11SwitchToRef> {
  const ID3D11SwitchToRefCompanion();

  @pragma('vm:prefer-inline')
  @override
  ID3D11SwitchToRef Function(VTablePointer) get fromPointer =>
      ID3D11SwitchToRef.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ID3D11SwitchToRef;
}
