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
final IID_IDCompositionSkewTransform = GUID.fromComponents(
  0xe57aa735,
  0xdcdb,
  0x4c72,
  Uint8List.fromList(const [0x9c, 0x61, 0x5, 0x91, 0xf5, 0x88, 0x89, 0xee]),
);

/// Represents a 2D transformation that affects the skew of a visual along the
/// x-axis and y-axis.
///
/// The coordinate system is skewed around the specified center point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionskewtransform>.
///
/// {@category com}
class IDCompositionSkewTransform extends IDCompositionTransform
    implements ComInterface {
  /// Creates a new instance of [IDCompositionSkewTransform] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionSkewTransform] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionSkewTransform(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionSkewTransformVtbl>().ref;

  /// Creates a new instance of [IDCompositionSkewTransform] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionSkewTransform] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionSkewTransform.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionSkewTransformVtbl _vtable;
  late final _SetAngleXFn = _vtable
      .SetAngleX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetAngleX2Fn =
      _vtable.SetAngleX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetAngleYFn = _vtable
      .SetAngleY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetAngleY2Fn =
      _vtable.SetAngleY2.asFunction<int Function(VTablePointer, double)>();
  late final _SetCenterXFn = _vtable
      .SetCenterX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCenterX2Fn =
      _vtable.SetCenterX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetCenterYFn = _vtable
      .SetCenterY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCenterY2Fn =
      _vtable.SetCenterY2.asFunction<int Function(VTablePointer, double)>();

  /// Changes the value of the AngleX property of a 2D skew transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionskewtransform-setanglex(float)>.
  @pragma('vm:prefer-inline')
  void setAngleX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetAngleXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the AngleX property of a 2D skew transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionskewtransform-setanglex(float)>.
  @pragma('vm:prefer-inline')
  void setAngleX2(double angleX) {
    final hr$ = HRESULT(_SetAngleX2Fn(ptr, angleX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the AngleY property of a 2D skew transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionskewtransform-setangley(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setAngleY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetAngleYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the AngleY property of a 2D skew transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionskewtransform-setangley(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setAngleY2(double angleY) {
    final hr$ = HRESULT(_SetAngleY2Fn(ptr, angleY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterX property of a 2D skew transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionskewtransform-setcenterx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterX property of a 2D skew transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionskewtransform-setcenterx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterX2(double centerX) {
    final hr$ = HRESULT(_SetCenterX2Fn(ptr, centerX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterY property of a 2D skew transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionskewtransform-setcentery(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterY property of a 2D skew transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionskewtransform-setcentery(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterY2(double centerY) {
    final hr$ = HRESULT(_SetCenterY2Fn(ptr, centerY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionSkewTransform(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionSkewTransformVtbl extends Struct {
  external IDCompositionTransformVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetAngleX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float angleX)>
  >
  SetAngleX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetAngleY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float angleY)>
  >
  SetAngleY2;
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
final class IDCompositionSkewTransformCompanion
    extends ComCompanion<IDCompositionSkewTransform> {
  const IDCompositionSkewTransformCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionSkewTransform Function(VTablePointer) get fromPointer =>
      IDCompositionSkewTransform.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionSkewTransform;
}
