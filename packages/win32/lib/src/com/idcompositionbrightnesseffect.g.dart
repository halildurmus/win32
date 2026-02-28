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
import 'idcompositionfiltereffect.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionBrightnessEffect = GUID.fromComponents(
  0x6027496e,
  0xcb3a,
  0x49ab,
  Uint8List.fromList(const [0x93, 0x4f, 0xd7, 0x98, 0xda, 0x4f, 0x7d, 0xa6]),
);

/// The brightness effect controls the brightness of the image.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionbrightnesseffect>.
///
/// {@category com}
class IDCompositionBrightnessEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionBrightnessEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionBrightnessEffect] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionBrightnessEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionBrightnessEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionBrightnessEffect] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionBrightnessEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionBrightnessEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionBrightnessEffectVtbl _vtable;
  late final _SetWhitePointFn =
      _vtable.SetWhitePoint.asFunction<
        int Function(VTablePointer, Pointer<D2D_VECTOR_2F>)
      >();
  late final _SetBlackPointFn =
      _vtable.SetBlackPoint.asFunction<
        int Function(VTablePointer, Pointer<D2D_VECTOR_2F>)
      >();
  late final _SetWhitePointXFn = _vtable
      .SetWhitePointX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetWhitePointX2Fn =
      _vtable.SetWhitePointX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetWhitePointYFn = _vtable
      .SetWhitePointY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetWhitePointY2Fn =
      _vtable.SetWhitePointY2.asFunction<int Function(VTablePointer, double)>();
  late final _SetBlackPointXFn = _vtable
      .SetBlackPointX.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetBlackPointX2Fn =
      _vtable.SetBlackPointX2.asFunction<int Function(VTablePointer, double)>();
  late final _SetBlackPointYFn = _vtable
      .SetBlackPointY.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetBlackPointY2Fn =
      _vtable.SetBlackPointY2.asFunction<int Function(VTablePointer, double)>();

  /// Sets the upper portion of the brightness transfer curve.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionbrightnesseffect-setwhitepoint>.
  @pragma('vm:prefer-inline')
  void setWhitePoint(Pointer<D2D_VECTOR_2F> whitePoint) {
    final hr$ = HRESULT(_SetWhitePointFn(ptr, whitePoint));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies the lower portion of the brightness transfer curve for the
  /// brightness effect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionbrightnesseffect-setblackpoint>.
  @pragma('vm:prefer-inline')
  void setBlackPoint(Pointer<D2D_VECTOR_2F> blackPoint) {
    final hr$ = HRESULT(_SetBlackPointFn(ptr, blackPoint));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the x value of the white point. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionbrightnesseffect-setwhitepointx(float)>.
  @pragma('vm:prefer-inline')
  void setWhitePointX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetWhitePointXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the x value of the white point. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionbrightnesseffect-setwhitepointx(float)>.
  @pragma('vm:prefer-inline')
  void setWhitePointX2(double whitePointX) {
    final hr$ = HRESULT(_SetWhitePointX2Fn(ptr, whitePointX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the y value of the white point. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionbrightnesseffect-setwhitepointy(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setWhitePointY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetWhitePointYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the y value of the white point. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionbrightnesseffect-setwhitepointy(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setWhitePointY2(double whitePointY) {
    final hr$ = HRESULT(_SetWhitePointY2Fn(ptr, whitePointY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the x value of the black point. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionbrightnesseffect-setblackpointx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setBlackPointX(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetBlackPointXFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the x value of the black point. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionbrightnesseffect-setblackpointx(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setBlackPointX2(double blackPointX) {
    final hr$ = HRESULT(_SetBlackPointX2Fn(ptr, blackPointX));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the y value of the black point. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionbrightnesseffect-setblackpointy(float)>.
  @pragma('vm:prefer-inline')
  void setBlackPointY(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetBlackPointYFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the y value of the black point. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionbrightnesseffect-setblackpointy(float)>.
  @pragma('vm:prefer-inline')
  void setBlackPointY2(double blackPointY) {
    final hr$ = HRESULT(_SetBlackPointY2Fn(ptr, blackPointY));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionBrightnessEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionBrightnessEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_VECTOR_2F> whitePoint)
    >
  >
  SetWhitePoint;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_VECTOR_2F> blackPoint)
    >
  >
  SetBlackPoint;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetWhitePointX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float whitePointX)>
  >
  SetWhitePointX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetWhitePointY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float whitePointY)>
  >
  SetWhitePointY2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetBlackPointX;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float blackPointX)>
  >
  SetBlackPointX2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetBlackPointY;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float blackPointY)>
  >
  SetBlackPointY2;
}

@internal
final class IDCompositionBrightnessEffectCompanion
    extends ComCompanion<IDCompositionBrightnessEffect> {
  const IDCompositionBrightnessEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionBrightnessEffect Function(VTablePointer) get fromPointer =>
      IDCompositionBrightnessEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionBrightnessEffect;
}
