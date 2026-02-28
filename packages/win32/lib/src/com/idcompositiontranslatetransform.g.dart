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
final IID_IDCompositionTranslateTransform = GUID.fromComponents(
  0x6791122,
  0xc6f0,
  0x417d,
  Uint8List.fromList(const [0x83, 0x23, 0x26, 0x9e, 0x98, 0x7f, 0x59, 0x54]),
);

/// Represents a 2D transformation that affects only the offset of a visual
/// along the x-axis and y-axis.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositiontranslatetransform>.
///
/// {@category com}
class IDCompositionTranslateTransform extends IDCompositionTransform
    implements ComInterface {
  /// Creates a new instance of [IDCompositionTranslateTransform] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionTranslateTransform] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionTranslateTransform(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionTranslateTransformVtbl>().ref;

  /// Creates a new instance of [IDCompositionTranslateTransform] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionTranslateTransform] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionTranslateTransform.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionTranslateTransformVtbl _vtable;
  late final _SetOffsetXFn = _vtable
      .SetOffsetX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetOffsetX2Fn =
      _vtable.SetOffsetX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetOffsetYFn = _vtable
      .SetOffsetY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetOffsetY2Fn =
      _vtable.SetOffsetY2.asFunction<int Function(VTablePointer, double)>();

  /// Animates the value of the OffsetX property of a 2D translation transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontranslatetransform-setoffsetx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOffsetX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetOffsetXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Animates the value of the OffsetX property of a 2D translation transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontranslatetransform-setoffsetx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setOffsetX2(double offsetX) {
    final hr$ = HRESULT(_SetOffsetX2Fn(ptr, offsetX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the OffsetY property of a 2D translation transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontranslatetransform-setoffsety(float)>.
  @pragma('vm:prefer-inline')
  void setOffsetY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetOffsetYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the value of the OffsetY property of a 2D translation transform.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositiontranslatetransform-setoffsety(float)>.
  @pragma('vm:prefer-inline')
  void setOffsetY2(double offsetY) {
    final hr$ = HRESULT(_SetOffsetY2Fn(ptr, offsetY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionTranslateTransform(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionTranslateTransformVtbl extends Struct {
  external IDCompositionTransformVtbl base$;
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
}

@internal
final class IDCompositionTranslateTransformCompanion
    extends ComCompanion<IDCompositionTranslateTransform> {
  const IDCompositionTranslateTransformCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionTranslateTransform Function(VTablePointer) get fromPointer =>
      IDCompositionTranslateTransform.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionTranslateTransform;
}
