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
import 'idcompositiontransform.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionRotateTransform = GUID.fromComponents(
  0x641ed83c,
  0xae96,
  0x46c5,
  Uint8List.fromList(const [0x90, 0xdc, 0x32, 0x77, 0x4c, 0xc5, 0xc6, 0xd5]),
);

/// Represents a 2D transformation that affects the rotation of a visual around
/// the z-axis.
///
/// The coordinate system is rotated around the specified center point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionrotatetransform>.
///
/// {@category com}
class IDCompositionRotateTransform extends IDCompositionTransform
    implements ComInterface {
  /// Creates a new instance of [IDCompositionRotateTransform] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionRotateTransform] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionRotateTransform(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionRotateTransformVtbl>().ref;

  /// Creates a new instance of [IDCompositionRotateTransform] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionRotateTransform] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionRotateTransform.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionRotateTransformVtbl _vtable;
  late final _SetAngleFn =
      _vtable.SetAngle.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetAngle2Fn =
      _vtable.SetAngle2.asFunction<int Function(VTablePointer, double)>();
  late final _SetCenterXFn = _vtable
      .SetCenterX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCenterX2Fn =
      _vtable.SetCenterX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetCenterYFn = _vtable
      .SetCenterY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCenterY2Fn =
      _vtable.SetCenterY2.asFunction<int Function(VTablePointer, double)>();

  /// Animates the value of the Angle property of a 2D rotation transform.
  ///
  /// The Angle property specifies the rotation angle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform-setangle(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setAngle(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetAngleFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the Angle property of a 2D rotation transform.
  ///
  /// The Angle property specifies the rotation angle.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform-setangle(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setAngle2(double angle) {
    final hr$ = HRESULT(_SetAngle2Fn(ptr, angle));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterX property of a 2D rotation transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform-setcenterx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterX property of a 2D rotation transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform-setcenterx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterX2(double centerX) {
    final hr$ = HRESULT(_SetCenterX2Fn(ptr, centerX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the CenterY property of a 2D rotation transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform-setcentery(float)>.
  @pragma('vm:prefer-inline')
  void setCenterY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the CenterY property of a 2D rotation transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionrotatetransform-setcentery(float)>.
  @pragma('vm:prefer-inline')
  void setCenterY2(double centerY) {
    final hr$ = HRESULT(_SetCenterY2Fn(ptr, centerY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionRotateTransform(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionRotateTransformVtbl extends Struct {
  external IDCompositionTransformVtbl base$;
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
}

@internal
final class IDCompositionRotateTransformCompanion
    extends ComCompanion<IDCompositionRotateTransform> {
  const IDCompositionRotateTransformCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionRotateTransform Function(VTablePointer) get fromPointer =>
      IDCompositionRotateTransform.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionRotateTransform;
}
