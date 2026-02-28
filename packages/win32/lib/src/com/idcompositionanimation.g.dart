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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionAnimation = GUID.fromComponents(
  0xcbfd91d9,
  0x51b2,
  0x45e4,
  Uint8List.fromList(const [0xb3, 0xde, 0xd1, 0x9c, 0xcf, 0xb8, 0x63, 0xc5]),
);

/// Represents a function for animating one or more properties of one or more
/// Microsoft DirectComposition objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcompanimation/nn-dcompanimation-idcompositionanimation>.
///
/// {@category com}
class IDCompositionAnimation extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionAnimation] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionAnimation]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionAnimation(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionAnimationVtbl>().ref;

  /// Creates a new instance of [IDCompositionAnimation] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionAnimation] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionAnimation.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionAnimationVtbl _vtable;
  late final _ResetFn = _vtable.Reset.asFunction<int Function(VTablePointer)>();
  late final _SetAbsoluteBeginTimeFn = _vtable
      .SetAbsoluteBeginTime.asFunction<int Function(VTablePointer, int)>();
  late final _AddCubicFn =
      _vtable.AddCubic.asFunction<
        int Function(VTablePointer, double, double, double, double, double)
      >();
  late final _AddSinusoidalFn =
      _vtable.AddSinusoidal.asFunction<
        int Function(VTablePointer, double, double, double, double, double)
      >();
  late final _AddRepeatFn = _vtable
      .AddRepeat.asFunction<int Function(VTablePointer, double, double)>();
  late final _EndFn =
      _vtable.End.asFunction<int Function(VTablePointer, double, double)>();

  /// Resets the animation function so that it contains no segments.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcompanimation/nf-dcompanimation-idcompositionanimation-reset>.
  @pragma('vm:prefer-inline')
  void reset() {
    final hr$ = HRESULT(_ResetFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the absolute time at which the animation function starts.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcompanimation/nf-dcompanimation-idcompositionanimation-setabsolutebegintime>.
  @pragma('vm:prefer-inline')
  void setAbsoluteBeginTime(int beginTime) {
    final hr$ = HRESULT(_SetAbsoluteBeginTimeFn(ptr, beginTime));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a cubic polynomial segment to the animation function.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcompanimation/nf-dcompanimation-idcompositionanimation-addcubic>.
  @pragma('vm:prefer-inline')
  void addCubic(
    double beginOffset,
    double constantCoefficient,
    double linearCoefficient,
    double quadraticCoefficient,
    double cubicCoefficient,
  ) {
    final hr$ = HRESULT(
      _AddCubicFn(
        ptr,
        beginOffset,
        constantCoefficient,
        linearCoefficient,
        quadraticCoefficient,
        cubicCoefficient,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a sinusoidal segment to the animation function.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcompanimation/nf-dcompanimation-idcompositionanimation-addsinusoidal>.
  @pragma('vm:prefer-inline')
  void addSinusoidal(
    double beginOffset,
    double bias,
    double amplitude,
    double frequency,
    double phase,
  ) {
    final hr$ = HRESULT(
      _AddSinusoidalFn(ptr, beginOffset, bias, amplitude, frequency, phase),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds a repeat segment that causes the specified portion of an animation
  /// function to be repeated.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcompanimation/nf-dcompanimation-idcompositionanimation-addrepeat>.
  @pragma('vm:prefer-inline')
  void addRepeat(double beginOffset, double durationToRepeat) {
    final hr$ = HRESULT(_AddRepeatFn(ptr, beginOffset, durationToRepeat));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds an end segment that marks the end of an animation function.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcompanimation/nf-dcompanimation-idcompositionanimation-end>.
  @pragma('vm:prefer-inline')
  void end(double endOffset, double endValue) {
    final hr$ = HRESULT(_EndFn(ptr, endOffset, endValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionAnimation(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionAnimationVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Reset;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int64 beginTime)>
  >
  SetAbsoluteBeginTime;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Double beginOffset,
        Float constantCoefficient,
        Float linearCoefficient,
        Float quadraticCoefficient,
        Float cubicCoefficient,
      )
    >
  >
  AddCubic;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Double beginOffset,
        Float bias,
        Float amplitude,
        Float frequency,
        Float phase,
      )
    >
  >
  AddSinusoidal;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Double beginOffset,
        Double durationToRepeat,
      )
    >
  >
  AddRepeat;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Double endOffset, Float endValue)
    >
  >
  End;
}

@internal
final class IDCompositionAnimationCompanion
    extends ComCompanion<IDCompositionAnimation> {
  const IDCompositionAnimationCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionAnimation Function(VTablePointer) get fromPointer =>
      IDCompositionAnimation.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionAnimation;
}
