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
final IID_IDCompositionTranslateTransform3D = GUID.fromComponents(
  0x91636d4b,
  0x9ba1,
  0x4532,
  Uint8List.fromList(const [0xaa, 0xf7, 0xe3, 0x34, 0x49, 0x94, 0xd7, 0x88]),
);

/// Represents a 3D transformation that affects the offset of a visual along the
/// x-axis, y-axis, and z-axis.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositiontranslatetransform3d>.
///
/// {@category com}
class IDCompositionTranslateTransform3D extends IDCompositionTransform3D
    implements ComInterface {
  /// Creates a new instance of [IDCompositionTranslateTransform3D] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionTranslateTransform3D] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionTranslateTransform3D(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionTranslateTransform3DVtbl>().ref;

  /// Creates a new instance of [IDCompositionTranslateTransform3D] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionTranslateTransform3D] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionTranslateTransform3D.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionTranslateTransform3DVtbl _vtable;
  late final _SetOffsetXFn = _vtable
      .SetOffsetX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetOffsetX2Fn =
      _vtable.SetOffsetX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetOffsetYFn = _vtable
      .SetOffsetY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetOffsetY2Fn =
      _vtable.SetOffsetY2.asFunction<int Function(VTablePointer, double)>();
  late final _SetOffsetZFn = _vtable
      .SetOffsetZ.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetOffsetZ2Fn =
      _vtable.SetOffsetZ2.asFunction<int Function(VTablePointer, double)>();

  /// Animates the value of the OffsetX property of a 3D translation transform
  /// effect.
  ///
  /// The OffsetX property specifies the distance to translate along the x-axis.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontranslatetransform3d-setoffsetx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOffsetX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetOffsetXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the OffsetX property of a 3D translation transform
  /// effect.
  ///
  /// The OffsetX property specifies the distance to translate along the x-axis.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontranslatetransform3d-setoffsetx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOffsetX2(double offsetX) {
    final hr$ = HRESULT(_SetOffsetX2Fn(ptr, offsetX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the OffsetY property of a 3D translation transform
  /// effect.
  ///
  /// The OffsetY property specifies the distance to translate along the y-axis.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontranslatetransform3d-setoffsety(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOffsetY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetOffsetYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the OffsetY property of a 3D translation transform
  /// effect.
  ///
  /// The OffsetY property specifies the distance to translate along the y-axis.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontranslatetransform3d-setoffsety(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOffsetY2(double offsetY) {
    final hr$ = HRESULT(_SetOffsetY2Fn(ptr, offsetY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the OffsetZ property of a 3D translation transform
  /// effect.
  ///
  /// The OffsetZ property specifies the distance to translate along the z-axis.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontranslatetransform3d-setoffsetz(float)>.
  @pragma('vm:prefer-inline')
  void setOffsetZ(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetOffsetZFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the OffsetZ property of a 3D translation transform
  /// effect.
  ///
  /// The OffsetZ property specifies the distance to translate along the z-axis.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontranslatetransform3d-setoffsetz(float)>.
  @pragma('vm:prefer-inline')
  void setOffsetZ2(double offsetZ) {
    final hr$ = HRESULT(_SetOffsetZ2Fn(ptr, offsetZ));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionTranslateTransform3D(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionTranslateTransform3DVtbl extends Struct {
  external IDCompositionTransform3DVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetOffsetX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float offsetX)>
  >
  SetOffsetX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetOffsetY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float offsetY)>
  >
  SetOffsetY2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetOffsetZ;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float offsetZ)>
  >
  SetOffsetZ2;
}

@internal
final class IDCompositionTranslateTransform3DCompanion
    extends ComCompanion<IDCompositionTranslateTransform3D> {
  const IDCompositionTranslateTransform3DCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionTranslateTransform3D Function(VTablePointer) get fromPointer =>
      IDCompositionTranslateTransform3D.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionTranslateTransform3D;
}
