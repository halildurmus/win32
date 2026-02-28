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
import 'idcompositiontransform3d.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionScaleTransform3D = GUID.fromComponents(
  0x2a9e9ead,
  0x364b,
  0x4b15,
  Uint8List.fromList(const [0xa7, 0xc4, 0xa1, 0x99, 0x7f, 0x78, 0xb3, 0x89]),
);

/// Represents a 3D transformation effect that affects the scale of a visual
/// along the x-axis, y-axis, and z-axis.
///
/// The coordinate system is scaled from the specified center point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionscaletransform3d>.
///
/// {@category com}
class IDCompositionScaleTransform3D extends IDCompositionTransform3D
    implements ComInterface {
  /// Creates a new instance of [IDCompositionScaleTransform3D] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionScaleTransform3D] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionScaleTransform3D(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionScaleTransform3DVtbl>().ref;

  /// Creates a new instance of [IDCompositionScaleTransform3D] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionScaleTransform3D] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionScaleTransform3D.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionScaleTransform3DVtbl _vtable;
  late final _SetScaleXFn = _vtable
      .SetScaleX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetScaleX2Fn =
      _vtable.SetScaleX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetScaleYFn = _vtable
      .SetScaleY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetScaleY2Fn =
      _vtable.SetScaleY2.asFunction<int Function(VTablePointer, double)>();
  late final _SetScaleZFn = _vtable
      .SetScaleZ.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetScaleZ2Fn =
      _vtable.SetScaleZ2.asFunction<int Function(VTablePointer, double)>();
  late final _SetCenterXFn = _vtable
      .SetCenterX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCenterX2Fn =
      _vtable.SetCenterX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetCenterYFn = _vtable
      .SetCenterY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCenterY2Fn =
      _vtable.SetCenterY2.asFunction<int Function(VTablePointer, double)>();
  late final _SetCenterZFn = _vtable
      .SetCenterZ.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCenterZ2Fn =
      _vtable.SetCenterZ2.asFunction<int Function(VTablePointer, double)>();

  /// Animates the value of the ScaleX property of a scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setscalex(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setScaleX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetScaleXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the ScaleX property of a scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setscalex(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setScaleX2(double scaleX) {
    final hr$ = HRESULT(_SetScaleX2Fn(ptr, scaleX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the ScaleY property of a 3D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setscaley(float)>.
  @pragma('vm:prefer-inline')
  void setScaleY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetScaleYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the ScaleY property of a 3D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setscaley(float)>.
  @pragma('vm:prefer-inline')
  void setScaleY2(double scaleY) {
    final hr$ = HRESULT(_SetScaleY2Fn(ptr, scaleY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the ScaleZ property of a scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setscalez(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setScaleZ(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetScaleZFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the ScaleZ property of a scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setscalez(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setScaleZ2(double scaleZ) {
    final hr$ = HRESULT(_SetScaleZ2Fn(ptr, scaleZ));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the CenterX property of a 3D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setcenterx(float)>.
  @pragma('vm:prefer-inline')
  void setCenterX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the CenterX property of a 3D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setcenterx(float)>.
  @pragma('vm:prefer-inline')
  void setCenterX2(double centerX) {
    final hr$ = HRESULT(_SetCenterX2Fn(ptr, centerX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterY property of a 3D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setcentery(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterY property of a 3D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setcentery(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterY2(double centerY) {
    final hr$ = HRESULT(_SetCenterY2Fn(ptr, centerY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterZ property of a 3D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setcenterz(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterZ(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterZFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterZ property of a 3D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform3d-setcenterz(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterZ2(double centerZ) {
    final hr$ = HRESULT(_SetCenterZ2Fn(ptr, centerZ));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionScaleTransform3D(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionScaleTransform3DVtbl extends Struct {
  external IDCompositionTransform3DVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetScaleX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float scaleX)>
  >
  SetScaleX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetScaleY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float scaleY)>
  >
  SetScaleY2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetScaleZ;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float scaleZ)>
  >
  SetScaleZ2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetCenterX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float centerX)>
  >
  SetCenterX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetCenterY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float centerY)>
  >
  SetCenterY2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetCenterZ;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float centerZ)>
  >
  SetCenterZ2;
}

@internal
final class IDCompositionScaleTransform3DCompanion
    extends ComCompanion<IDCompositionScaleTransform3D> {
  const IDCompositionScaleTransform3DCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionScaleTransform3D Function(VTablePointer) get fromPointer =>
      IDCompositionScaleTransform3D.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionScaleTransform3D;
}
