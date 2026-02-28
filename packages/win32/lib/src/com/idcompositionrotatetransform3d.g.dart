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
final IID_IDCompositionRotateTransform3D = GUID.fromComponents(
  0xd8f5b23f,
  0xd429,
  0x4a91,
  Uint8List.fromList(const [0xb5, 0x5a, 0xd2, 0xf4, 0x5f, 0xd7, 0x5b, 0x18]),
);

/// Represents a 3D transformation that affects the rotation of a visual along
/// an arbitrary axis in 3D space.
///
/// The coordinate system is rotated around the specified center point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionrotatetransform3d>.
///
/// {@category com}
class IDCompositionRotateTransform3D extends IDCompositionTransform3D
    implements ComInterface {
  /// Creates a new instance of [IDCompositionRotateTransform3D] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionRotateTransform3D] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionRotateTransform3D(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionRotateTransform3DVtbl>().ref;

  /// Creates a new instance of [IDCompositionRotateTransform3D] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionRotateTransform3D] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionRotateTransform3D.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionRotateTransform3DVtbl _vtable;
  late final _SetAngleFn =
      _vtable.SetAngle.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetAngle2Fn =
      _vtable.SetAngle2.asFunction<int Function(VTablePointer, double)>();
  late final _SetAxisXFn =
      _vtable.SetAxisX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetAxisX2Fn =
      _vtable.SetAxisX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetAxisYFn =
      _vtable.SetAxisY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetAxisY2Fn =
      _vtable.SetAxisY2.asFunction<int Function(VTablePointer, double)>();
  late final _SetAxisZFn =
      _vtable.SetAxisZ.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetAxisZ2Fn =
      _vtable.SetAxisZ2.asFunction<int Function(VTablePointer, double)>();
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

  /// Animates the value of the Angle property of a 3D rotation transform.
  ///
  /// The Angle property specifies the rotation angle. The default value is
  /// zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setangle(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setAngle(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetAngleFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the Angle property of a 3D rotation transform.
  ///
  /// The Angle property specifies the rotation angle. The default value is
  /// zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setangle(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setAngle2(double angle) {
    final hr$ = HRESULT(_SetAngle2Fn(ptr, angle));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the AxisX property of a 3D rotation transform.
  ///
  /// The AxisX property specifies the x-coordinate for the axis vector of
  /// rotation. The default value is zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setaxisx(float)>.
  @pragma('vm:prefer-inline')
  void setAxisX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetAxisXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the AxisX property of a 3D rotation transform.
  ///
  /// The AxisX property specifies the x-coordinate for the axis vector of
  /// rotation. The default value is zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setaxisx(float)>.
  @pragma('vm:prefer-inline')
  void setAxisX2(double axisX) {
    final hr$ = HRESULT(_SetAxisX2Fn(ptr, axisX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the AxisY property of a 3D rotation transform.
  ///
  /// The AxisY property specifies the y-coordinate for the axis vector of
  /// rotation. The default value is zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setaxisy(float)>.
  @pragma('vm:prefer-inline')
  void setAxisY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetAxisYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the AxisY property of a 3D rotation transform.
  ///
  /// The AxisY property specifies the y-coordinate for the axis vector of
  /// rotation. The default value is zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setaxisy(float)>.
  @pragma('vm:prefer-inline')
  void setAxisY2(double axisY) {
    final hr$ = HRESULT(_SetAxisY2Fn(ptr, axisY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the AxisZ property of a 3D rotation transform.
  ///
  /// The AxisZ property specifies the z-coordinate for the axis vector of
  /// rotation. The default value is 1.0.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setaxisz(float)>.
  @pragma('vm:prefer-inline')
  void setAxisZ(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetAxisZFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the AxisZ property of a 3D rotation transform.
  ///
  /// The AxisZ property specifies the z-coordinate for the axis vector of
  /// rotation. The default value is 1.0.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setaxisz(float)>.
  @pragma('vm:prefer-inline')
  void setAxisZ2(double axisZ) {
    final hr$ = HRESULT(_SetAxisZ2Fn(ptr, axisZ));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterX property of a 3D rotation transform.
  ///
  /// The CenterX property specifies the x-coordinate of the point about which
  /// the rotation is performed. The default value is zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setcenterx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterX property of a 3D rotation transform.
  ///
  /// The CenterX property specifies the x-coordinate of the point about which
  /// the rotation is performed. The default value is zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setcenterx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterX2(double centerX) {
    final hr$ = HRESULT(_SetCenterX2Fn(ptr, centerX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterY property of a 3D rotation transform.
  ///
  /// The CenterY property specifies the y-coordinate of the point about which
  /// the rotation is performed. The default value is zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setcentery(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterY property of a 3D rotation transform.
  ///
  /// The CenterY property specifies the y-coordinate of the point about which
  /// the rotation is performed. The default value is zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setcentery(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterY2(double centerY) {
    final hr$ = HRESULT(_SetCenterY2Fn(ptr, centerY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterZ property of a 3D rotation transform.
  ///
  /// The CenterZ property specifies the z-coordinate of the point about which
  /// the rotation is performed. The default value is zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setcenterz(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterZ(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterZFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterZ property of a 3D rotation transform.
  ///
  /// The CenterZ property specifies the z-coordinate of the point about which
  /// the rotation is performed. The default value is zero.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform3d-setcenterz(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterZ2(double centerZ) {
    final hr$ = HRESULT(_SetCenterZ2Fn(ptr, centerZ));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionRotateTransform3D(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionRotateTransform3DVtbl extends Struct {
  external IDCompositionTransform3DVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetAngle;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float angle)>
  >
  SetAngle2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetAxisX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float axisX)>
  >
  SetAxisX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetAxisY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float axisY)>
  >
  SetAxisY2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetAxisZ;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float axisZ)>
  >
  SetAxisZ2;
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
final class IDCompositionRotateTransform3DCompanion
    extends ComCompanion<IDCompositionRotateTransform3D> {
  const IDCompositionRotateTransform3DCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionRotateTransform3D Function(VTablePointer) get fromPointer =>
      IDCompositionRotateTransform3D.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionRotateTransform3D;
}
