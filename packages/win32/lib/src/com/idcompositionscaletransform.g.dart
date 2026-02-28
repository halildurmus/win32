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
final IID_IDCompositionScaleTransform = GUID.fromComponents(
  0x71fde914,
  0x40ef,
  0x45ef,
  Uint8List.fromList(const [0xbd, 0x51, 0x68, 0xb0, 0x37, 0xc3, 0x39, 0xf9]),
);

/// Represents a 2D transformation that affects the scale of a visual along the
/// x-axis and y-axis.
///
/// The coordinate system is scaled from the specified center point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionscaletransform>.
///
/// {@category com}
class IDCompositionScaleTransform extends IDCompositionTransform
    implements ComInterface {
  /// Creates a new instance of [IDCompositionScaleTransform] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionScaleTransform] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionScaleTransform(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionScaleTransformVtbl>().ref;

  /// Creates a new instance of [IDCompositionScaleTransform] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionScaleTransform] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionScaleTransform.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionScaleTransformVtbl _vtable;
  late final _SetScaleXFn = _vtable
      .SetScaleX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetScaleX2Fn =
      _vtable.SetScaleX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetScaleYFn = _vtable
      .SetScaleY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetScaleY2Fn =
      _vtable.SetScaleY2.asFunction<int Function(VTablePointer, double)>();
  late final _SetCenterXFn = _vtable
      .SetCenterX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCenterX2Fn =
      _vtable.SetCenterX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetCenterYFn = _vtable
      .SetCenterY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetCenterY2Fn =
      _vtable.SetCenterY2.asFunction<int Function(VTablePointer, double)>();

  /// Changes the value of the ScaleX property of a 2D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform-setscalex(float)>.
  @pragma('vm:prefer-inline')
  void setScaleX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetScaleXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the ScaleX property of a 2D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform-setscalex(float)>.
  @pragma('vm:prefer-inline')
  void setScaleX2(double scaleX) {
    final hr$ = HRESULT(_SetScaleX2Fn(ptr, scaleX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the ScaleY property of a 2D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform-setscaley(float)>.
  @pragma('vm:prefer-inline')
  void setScaleY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetScaleYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the ScaleY property of a 2D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform-setscaley(float)>.
  @pragma('vm:prefer-inline')
  void setScaleY2(double scaleY) {
    final hr$ = HRESULT(_SetScaleY2Fn(ptr, scaleY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterX property of a 2D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform-setcenterx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterX property of a 2D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform-setcenterx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterX2(double centerX) {
    final hr$ = HRESULT(_SetCenterX2Fn(ptr, centerX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterY property of a 2D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform-setcentery(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetCenterYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the CenterY property of a 2D scale transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionscaletransform-setcentery(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setCenterY2(double centerY) {
    final hr$ = HRESULT(_SetCenterY2Fn(ptr, centerY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionScaleTransform(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionScaleTransformVtbl extends Struct {
  external IDCompositionTransformVtbl base$;
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
final class IDCompositionScaleTransformCompanion
    extends ComCompanion<IDCompositionScaleTransform> {
  const IDCompositionScaleTransformCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionScaleTransform Function(VTablePointer) get fromPointer =>
      IDCompositionScaleTransform.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionScaleTransform;
}
