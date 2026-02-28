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
import 'idcompositionanimation.g.dart';
import 'idcompositiontransform3d.g.dart';
import 'idcompositionvisualdebug.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionVisual3 = GUID.fromComponents(
  0x2775f462,
  0xb6c1,
  0x4015,
  Uint8List.fromList(const [0xb0, 0xbe, 0xb3, 0xe7, 0xd6, 0xa4, 0x97, 0x6d]),
);

/// Represents one DirectComposition visual in a visual tree.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionvisual3>.
///
/// {@category com}
class IDCompositionVisual3 extends IDCompositionVisualDebug
    implements ComInterface {
  /// Creates a new instance of [IDCompositionVisual3] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionVisual3]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionVisual3(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionVisual3Vtbl>().ref;

  /// Creates a new instance of [IDCompositionVisual3] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionVisual3] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionVisual3.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionVisual3Vtbl _vtable;
  late final _SetDepthModeFn =
      _vtable.SetDepthMode.asFunction<int Function(VTablePointer, int)>();
  late final _SetOffsetZFn = _vtable
      .SetOffsetZ.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetOffsetZ2Fn =
      _vtable.SetOffsetZ2.asFunction<int Function(VTablePointer, double)>();
  late final _SetOpacityFn = _vtable
      .SetOpacity.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetOpacity2Fn =
      _vtable.SetOpacity2.asFunction<int Function(VTablePointer, double)>();
  late final _SetTransform3Fn = _vtable
      .SetTransform3.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetTransform4Fn =
      _vtable.SetTransform4.asFunction<
        int Function(VTablePointer, Pointer<D2D_MATRIX_4X4_F>)
      >();
  late final _SetVisibleFn =
      _vtable.SetVisible.asFunction<int Function(VTablePointer, int)>();

  /// Sets the depth mode property associated with this visual.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual3-setdepthmode>.
  @pragma('vm:prefer-inline')
  void setDepthMode(DCOMPOSITION_DEPTH_MODE mode) {
    final hr$ = HRESULT(_SetDepthModeFn(ptr, mode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of OffsetZ property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual3-setoffsetz(float)>.
  @pragma('vm:prefer-inline')
  void setOffsetZ(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetOffsetZFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of OffsetZ property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual3-setoffsetz(float)>.
  @pragma('vm:prefer-inline')
  void setOffsetZ2(double offsetZ) {
    final hr$ = HRESULT(_SetOffsetZ2Fn(ptr, offsetZ));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the visual's opacity property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual3-setopacity(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOpacity(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetOpacityFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the visual's opacity property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual3-setopacity(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOpacity2(double opacity) {
    final hr$ = HRESULT(_SetOpacity2Fn(ptr, opacity));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Transform property of this visual to the specified 4-by-4
  /// transform matrix.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual3-settransform(constd2d_matrix_4x4_f_)>.
  @pragma('vm:prefer-inline')
  void setTransform3(IDCompositionTransform3D? transform) {
    final hr$ = HRESULT(_SetTransform3Fn(ptr, transform?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Transform property of this visual to the specified 4-by-4
  /// transform matrix.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual3-settransform(constd2d_matrix_4x4_f_)>.
  @pragma('vm:prefer-inline')
  void setTransform4(Pointer<D2D_MATRIX_4X4_F> matrix) {
    final hr$ = HRESULT(_SetTransform4Fn(ptr, matrix));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the visual's Visible property.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual3-setvisible>.
  @pragma('vm:prefer-inline')
  void setVisible(bool visible) {
    final hr$ = HRESULT(_SetVisibleFn(ptr, visible ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionVisual3(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionVisual3Vtbl extends Struct {
  external IDCompositionVisualDebugVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 mode)>
  >
  SetDepthMode;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetOffsetZ;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float offsetZ)>
  >
  SetOffsetZ2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetOpacity;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float opacity)>
  >
  SetOpacity2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer transform)>
  >
  SetTransform3;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_MATRIX_4X4_F> matrix)
    >
  >
  SetTransform4;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 visible)>
  >
  SetVisible;
}

@internal
final class IDCompositionVisual3Companion
    extends ComCompanion<IDCompositionVisual3> {
  const IDCompositionVisual3Companion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionVisual3 Function(VTablePointer) get fromPointer =>
      IDCompositionVisual3.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionVisual3;
}
