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
final IID_IDCompositionLinearTransferEffect = GUID.fromComponents(
  0x4305ee5b,
  0xc4a0,
  0x4c88,
  Uint8List.fromList(const [0x93, 0x85, 0x67, 0x12, 0x4e, 0x1, 0x76, 0x83]),
);

/// The linear transfer effect is used to map the color intensities of an image
/// using a linear function created from a list of values you provide for each
/// channel.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionlineartransfereffect>.
///
/// {@category com}
class IDCompositionLinearTransferEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionLinearTransferEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionLinearTransferEffect] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionLinearTransferEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionLinearTransferEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionLinearTransferEffect] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionLinearTransferEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionLinearTransferEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionLinearTransferEffectVtbl _vtable;
  late final _SetRedYInterceptFn =
      _vtable.SetRedYIntercept.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetRedYIntercept2Fn = _vtable
      .SetRedYIntercept2.asFunction<int Function(VTablePointer, double)>();
  late final _SetRedSlopeFn = _vtable
      .SetRedSlope.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetRedSlope2Fn =
      _vtable.SetRedSlope2.asFunction<int Function(VTablePointer, double)>();
  late final _SetRedDisableFn =
      _vtable.SetRedDisable.asFunction<int Function(VTablePointer, int)>();
  late final _SetGreenYInterceptFn =
      _vtable.SetGreenYIntercept.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetGreenYIntercept2Fn = _vtable
      .SetGreenYIntercept2.asFunction<int Function(VTablePointer, double)>();
  late final _SetGreenSlopeFn = _vtable
      .SetGreenSlope.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetGreenSlope2Fn =
      _vtable.SetGreenSlope2.asFunction<int Function(VTablePointer, double)>();
  late final _SetGreenDisableFn =
      _vtable.SetGreenDisable.asFunction<int Function(VTablePointer, int)>();
  late final _SetBlueYInterceptFn =
      _vtable.SetBlueYIntercept.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetBlueYIntercept2Fn = _vtable
      .SetBlueYIntercept2.asFunction<int Function(VTablePointer, double)>();
  late final _SetBlueSlopeFn = _vtable
      .SetBlueSlope.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetBlueSlope2Fn =
      _vtable.SetBlueSlope2.asFunction<int Function(VTablePointer, double)>();
  late final _SetBlueDisableFn =
      _vtable.SetBlueDisable.asFunction<int Function(VTablePointer, int)>();
  late final _SetAlphaYInterceptFn =
      _vtable.SetAlphaYIntercept.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _SetAlphaYIntercept2Fn = _vtable
      .SetAlphaYIntercept2.asFunction<int Function(VTablePointer, double)>();
  late final _SetAlphaSlopeFn = _vtable
      .SetAlphaSlope.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetAlphaSlope2Fn =
      _vtable.SetAlphaSlope2.asFunction<int Function(VTablePointer, double)>();
  late final _SetAlphaDisableFn =
      _vtable.SetAlphaDisable.asFunction<int Function(VTablePointer, int)>();
  late final _SetClampOutputFn =
      _vtable.SetClampOutput.asFunction<int Function(VTablePointer, int)>();

  /// Sets the Y-intercept of the linear function for the red channel. (overload
  /// 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setredyintercept(float)>.
  @pragma('vm:prefer-inline')
  void setRedYIntercept(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetRedYInterceptFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Y-intercept of the linear function for the red channel. (overload
  /// 1/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setredyintercept(float)>.
  @pragma('vm:prefer-inline')
  void setRedYIntercept2(double redYIntercept) {
    final hr$ = HRESULT(_SetRedYIntercept2Fn(ptr, redYIntercept));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the slope of the linear function for the red channel. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setredslope(float)>.
  @pragma('vm:prefer-inline')
  void setRedSlope(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetRedSlopeFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the slope of the linear function for the red channel. (overload 2/2).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setredslope(float)>.
  @pragma('vm:prefer-inline')
  void setRedSlope2(double redSlope) {
    final hr$ = HRESULT(_SetRedSlope2Fn(ptr, redSlope));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether to apply the transfer function to the red channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setreddisable>.
  @pragma('vm:prefer-inline')
  void setRedDisable(bool redDisable) {
    final hr$ = HRESULT(_SetRedDisableFn(ptr, redDisable ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Y-intercept of the linear function for the green channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setgreenyintercept(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setGreenYIntercept(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetGreenYInterceptFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Y-intercept of the linear function for the green channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setgreenyintercept(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setGreenYIntercept2(double greenYIntercept) {
    final hr$ = HRESULT(_SetGreenYIntercept2Fn(ptr, greenYIntercept));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the slope of the linear function for the green channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setgreenslope(float)>.
  @pragma('vm:prefer-inline')
  void setGreenSlope(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetGreenSlopeFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the slope of the linear function for the green channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setgreenslope(float)>.
  @pragma('vm:prefer-inline')
  void setGreenSlope2(double greenSlope) {
    final hr$ = HRESULT(_SetGreenSlope2Fn(ptr, greenSlope));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether to apply the transfer function to the green channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setgreendisable>.
  @pragma('vm:prefer-inline')
  void setGreenDisable(bool greenDisable) {
    final hr$ = HRESULT(_SetGreenDisableFn(ptr, greenDisable ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// The
  /// IDCompositionLinearTransferEffect::SetBlueYIntercept(IDCompositionAnimation)
  /// method sets the Y-intercept of the linear function for the blue channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setblueyintercept(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setBlueYIntercept(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetBlueYInterceptFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// The
  /// IDCompositionLinearTransferEffect::SetBlueYIntercept(IDCompositionAnimation)
  /// method sets the Y-intercept of the linear function for the blue channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setblueyintercept(idcompositionanimation)>.
  @pragma('vm:prefer-inline')
  void setBlueYIntercept2(double blueYIntercept) {
    final hr$ = HRESULT(_SetBlueYIntercept2Fn(ptr, blueYIntercept));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the slope of the linear function for the blue channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setblueslope(float)>.
  @pragma('vm:prefer-inline')
  void setBlueSlope(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetBlueSlopeFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the slope of the linear function for the blue channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setblueslope(float)>.
  @pragma('vm:prefer-inline')
  void setBlueSlope2(double blueSlope) {
    final hr$ = HRESULT(_SetBlueSlope2Fn(ptr, blueSlope));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether to apply the transfer function to the blue channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setbluedisable>.
  @pragma('vm:prefer-inline')
  void setBlueDisable(bool blueDisable) {
    final hr$ = HRESULT(_SetBlueDisableFn(ptr, blueDisable ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Y-intercept of the linear function for the alpha channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setalphayintercept(float)>.
  @pragma('vm:prefer-inline')
  void setAlphaYIntercept(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetAlphaYInterceptFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the Y-intercept of the linear function for the alpha channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setalphayintercept(float)>.
  @pragma('vm:prefer-inline')
  void setAlphaYIntercept2(double alphaYIntercept) {
    final hr$ = HRESULT(_SetAlphaYIntercept2Fn(ptr, alphaYIntercept));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the slope of the linear function for the alpha channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setalphaslope(float)>.
  @pragma('vm:prefer-inline')
  void setAlphaSlope(IDCompositionAnimation? animation) {
    final hr$ = HRESULT(_SetAlphaSlopeFn(ptr, animation?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the slope of the linear function for the alpha channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setalphaslope(float)>.
  @pragma('vm:prefer-inline')
  void setAlphaSlope2(double alphaSlope) {
    final hr$ = HRESULT(_SetAlphaSlope2Fn(ptr, alphaSlope));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether to apply the transfer function to the alpha channel.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setalphadisable>.
  @pragma('vm:prefer-inline')
  void setAlphaDisable(bool alphaDisable) {
    final hr$ = HRESULT(_SetAlphaDisableFn(ptr, alphaDisable ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether the effect clamps color values to between 0 and 1 before
  /// the effect passes the values to the next effect in the graph.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionlineartransfereffect-setclampoutput>.
  @pragma('vm:prefer-inline')
  void setClampOutput(bool clampOutput) {
    final hr$ = HRESULT(_SetClampOutputFn(ptr, clampOutput ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionLinearTransferEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionLinearTransferEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetRedYIntercept;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float redYIntercept)>
  >
  SetRedYIntercept2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetRedSlope;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float redSlope)>
  >
  SetRedSlope2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 redDisable)>
  >
  SetRedDisable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetGreenYIntercept;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float greenYIntercept)>
  >
  SetGreenYIntercept2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetGreenSlope;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float greenSlope)>
  >
  SetGreenSlope2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 greenDisable)>
  >
  SetGreenDisable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetBlueYIntercept;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float blueYIntercept)>
  >
  SetBlueYIntercept2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetBlueSlope;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float blueSlope)>
  >
  SetBlueSlope2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 blueDisable)>
  >
  SetBlueDisable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetAlphaYIntercept;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float alphaYIntercept)>
  >
  SetAlphaYIntercept2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer animation)>
  >
  SetAlphaSlope;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Float alphaSlope)>
  >
  SetAlphaSlope2;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 alphaDisable)>
  >
  SetAlphaDisable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 clampOutput)>
  >
  SetClampOutput;
}

@internal
final class IDCompositionLinearTransferEffectCompanion
    extends ComCompanion<IDCompositionLinearTransferEffect> {
  const IDCompositionLinearTransferEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionLinearTransferEffect Function(VTablePointer) get fromPointer =>
      IDCompositionLinearTransferEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionLinearTransferEffect;
}
