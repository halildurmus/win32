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
import 'idcompositionanimation.g.dart';
import 'idcompositioneffect.g.dart';
import 'idcompositiontransform3d.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionEffectGroup = GUID.fromComponents(
  0xa7929a74,
  0xe6b2,
  0x4bd6,
  Uint8List.fromList(const [0x8b, 0x95, 0x40, 0x40, 0x11, 0x9c, 0xa3, 0x4d]),
);

/// Represents a group of bitmap effects that are applied together to modify the
/// rasterization of a visual's subtree.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositioneffectgroup>.
///
/// {@category com}
class IDCompositionEffectGroup extends IDCompositionEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionEffectGroup] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionEffectGroup] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionEffectGroup(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionEffectGroupVtbl>().ref;

  /// Creates a new instance of [IDCompositionEffectGroup] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionEffectGroup] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionEffectGroup.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionEffectGroupVtbl _vtable;
  late final _SetOpacityFn = _vtable
      .SetOpacity.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetOpacity2Fn =
      _vtable.SetOpacity2.asFunction<int Function(VTablePointer, double)>();
  late final _SetTransform3DFn = _vtable
      .SetTransform3D.asFunction<int Function(VTablePointer, VTablePointer)>();

  /// Animates the value of the Opacity property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositioneffectgroup-setopacity(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOpacity(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetOpacityFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the Opacity property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositioneffectgroup-setopacity(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOpacity2(double opacity) {
    final hr$ = HRESULT(_SetOpacity2Fn(ptr, opacity));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the 3D transformation effect object that modifies the rasterization
  /// of the visuals that this effect group is applied to.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositioneffectgroup-settransform3d>.
  @pragma('vm:prefer-inline')
  void setTransform3D(IDCompositionTransform3D? transform3D) {
    final hr$ = HRESULT(_SetTransform3DFn(ptr, transform3D?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionEffectGroup(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionEffectGroupVtbl extends Struct {
  external IDCompositionEffectVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetOpacity;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float opacity)>
  >
  SetOpacity2;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer transform3D)
    >
  >
  SetTransform3D;
}

@internal
final class IDCompositionEffectGroupCompanion
    extends ComCompanion<IDCompositionEffectGroup> {
  const IDCompositionEffectGroupCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionEffectGroup Function(VTablePointer) get fromPointer =>
      IDCompositionEffectGroup.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionEffectGroup;
}
