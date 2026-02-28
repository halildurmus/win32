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
import 'idcompositionvisual.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionTarget = GUID.fromComponents(
  0xeacdd04c,
  0x117e,
  0x4e17,
  Uint8List.fromList(const [0x88, 0xf4, 0xd1, 0xb1, 0x2b, 0xe, 0x3d, 0x89]),
);

/// Represents a binding between a Microsoft DirectComposition visual tree and a
/// destination on top of which the visual tree should be composed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositiontarget>.
///
/// {@category com}
class IDCompositionTarget extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionTarget] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionTarget]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionTarget(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionTargetVtbl>().ref;

  /// Creates a new instance of [IDCompositionTarget] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionTarget] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionTarget.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionTargetVtbl _vtable;
  late final _SetRootFn =
      _vtable.SetRoot.asFunction<int Function(VTablePointer, VTablePointer)>();

  /// Sets a visual object as the new root object of a visual tree.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontarget-setroot>.
  @pragma('vm:prefer-inline')
  void setRoot(IDCompositionVisual? visual) {
    final hr$ = HRESULT(_SetRootFn(ptr, visual?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionTarget(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionTargetVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer visual)>
  >
  SetRoot;
}

@internal
final class IDCompositionTargetCompanion
    extends ComCompanion<IDCompositionTarget> {
  const IDCompositionTargetCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionTarget Function(VTablePointer) get fromPointer =>
      IDCompositionTarget.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionTarget;
}
