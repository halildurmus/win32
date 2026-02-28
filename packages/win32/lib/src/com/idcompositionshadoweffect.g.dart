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
final IID_IDCompositionShadowEffect = GUID.fromComponents(
  0x4ad18ac0,
  0xcfd2,
  0x4c2f,
  Uint8List.fromList(const [0xbb, 0x62, 0x96, 0xe5, 0x4f, 0xdb, 0x68, 0x79]),
);

/// The shadow effect is used to generate a shadow from the alpha channel of an
/// image.
///
/// The shadow is more opaque for higher alpha values and more transparent for
/// lower alpha values. You can set the amount of blur and the color of the
/// shadow.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionshadoweffect>.
///
/// {@category com}
class IDCompositionShadowEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionShadowEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionShadowEffect] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionShadowEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionShadowEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionShadowEffect] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionShadowEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionShadowEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionShadowEffectVtbl _vtable;
  late final _SetStandardDeviationFn =
      _vtable.SetStandardDeviation.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetStandardDeviation2Fn = _vtable
      .SetStandardDeviation2.asFunction<int Function(VTablePointer, double)>();
  late final _SetColorFn =
      _vtable.SetColor.asFunction<
        int Function(VTablePointer, Pointer<D2D_VECTOR_4F>)
      >();
  late final _SetRedFn =
      _vtable.SetRed.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetRed2Fn =
      _vtable.SetRed2.asFunction<int Function(VTablePointer, double)>();
  late final _SetGreenFn =
      _vtable.SetGreen.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetGreen2Fn =
      _vtable.SetGreen2.asFunction<int Function(VTablePointer, double)>();
  late final _SetBlueFn =
      _vtable.SetBlue.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetBlue2Fn =
      _vtable.SetBlue2.asFunction<int Function(VTablePointer, double)>();
  late final _SetAlphaFn =
      _vtable.SetAlpha.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetAlpha2Fn =
      _vtable.SetAlpha2.asFunction<int Function(VTablePointer, double)>();

  /// Sets the amount of blur to be applied to the alpha channel of the image.
  /// (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionshadoweffect-setstandarddeviation(float)>.
  @pragma('vm:prefer-inline')
  void setStandardDeviation(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(
      _SetStandardDeviationFn(ptr, animation?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the amount of blur to be applied to the alpha channel of the image.
  /// (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionshadoweffect-setstandarddeviation(float)>.
  @pragma('vm:prefer-inline')
  void setStandardDeviation2(double amount) {
    final hr$ = HRESULT(_SetStandardDeviation2Fn(ptr, amount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets color of the shadow.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionshadoweffect-setcolor>.
  @pragma('vm:prefer-inline')
  void setColor(Pointer<D2D_VECTOR_4F> color) {
    final hr$ = HRESULT(_SetColorFn(ptr, color));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the red value for the color of the shadow. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionshadoweffect-setred(float)>.
  @pragma('vm:prefer-inline')
  void setRed(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetRedFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the red value for the color of the shadow. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionshadoweffect-setred(float)>.
  @pragma('vm:prefer-inline')
  void setRed2(double amount) {
    final hr$ = HRESULT(_SetRed2Fn(ptr, amount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the green value for the color of the shadow. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionshadoweffect-setgreen(float)>.
  @pragma('vm:prefer-inline')
  void setGreen(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetGreenFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the green value for the color of the shadow. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionshadoweffect-setgreen(float)>.
  @pragma('vm:prefer-inline')
  void setGreen2(double amount) {
    final hr$ = HRESULT(_SetGreen2Fn(ptr, amount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the blue value for the color of the shadow. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionshadoweffect-setblue(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setBlue(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetBlueFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the blue value for the color of the shadow. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionshadoweffect-setblue(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setBlue2(double amount) {
    final hr$ = HRESULT(_SetBlue2Fn(ptr, amount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the alpha value for the effect. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionshadoweffect-setalpha(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setAlpha(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetAlphaFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the alpha value for the effect. (overload 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionshadoweffect-setalpha(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setAlpha2(double amount) {
    final hr$ = HRESULT(_SetAlpha2Fn(ptr, amount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionShadowEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionShadowEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetStandardDeviation;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float amount)>
  >
  SetStandardDeviation2;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_VECTOR_4F> color)
    >
  >
  SetColor;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetRed;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float amount)>
  >
  SetRed2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetGreen;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float amount)>
  >
  SetGreen2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetBlue;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float amount)>
  >
  SetBlue2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetAlpha;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float amount)>
  >
  SetAlpha2;
}

@internal
final class IDCompositionShadowEffectCompanion
    extends ComCompanion<IDCompositionShadowEffect> {
  const IDCompositionShadowEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionShadowEffect Function(VTablePointer) get fromPointer =>
      IDCompositionShadowEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionShadowEffect;
}
