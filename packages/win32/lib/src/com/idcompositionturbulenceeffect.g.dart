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
import '../enums.g.dart';
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
import 'idcompositionfiltereffect.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionTurbulenceEffect = GUID.fromComponents(
  0xa6a55bda,
  0xc09c,
  0x49f3,
  Uint8List.fromList(const [0x91, 0x93, 0xa4, 0x19, 0x22, 0xc8, 0x97, 0x15]),
);

/// The turbulence effect is used to generate a bitmap based on the Perlin noise
/// function.
///
/// The turbulence effect has no input image.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionturbulenceeffect>.
///
/// {@category com}
class IDCompositionTurbulenceEffect extends IDCompositionFilterEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionTurbulenceEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionTurbulenceEffect] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionTurbulenceEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionTurbulenceEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionTurbulenceEffect] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionTurbulenceEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionTurbulenceEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionTurbulenceEffectVtbl _vtable;
  late final _SetOffsetFn =
      _vtable.SetOffset.asFunction<
        int Function(VTablePointer, Pointer<D2D_VECTOR_2F>)
      >();
  late final _SetBaseFrequencyFn =
      _vtable.SetBaseFrequency.asFunction<
        int Function(VTablePointer, Pointer<D2D_VECTOR_2F>)
      >();
  late final _SetSizeFn =
      _vtable.SetSize.asFunction<
        int Function(VTablePointer, Pointer<D2D_VECTOR_2F>)
      >();
  late final _SetNumOctavesFn =
      _vtable.SetNumOctaves.asFunction<int Function(VTablePointer, int)>();
  late final _SetSeedFn =
      _vtable.SetSeed.asFunction<int Function(VTablePointer, int)>();
  late final _SetNoiseFn =
      _vtable.SetNoise.asFunction<int Function(VTablePointer, int)>();
  late final _SetStitchableFn =
      _vtable.SetStitchable.asFunction<int Function(VTablePointer, int)>();

  /// Sets the coordinates where the turbulence output is generated.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionturbulenceeffect-setoffset>.
  @pragma('vm:prefer-inline')
  void setOffset(Pointer<D2D_VECTOR_2F> offset) {
    final hr$ = HRESULT(_SetOffsetFn(ptr, offset));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the base frequencies in the X and Y direction.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionturbulenceeffect-setbasefrequency>.
  @pragma('vm:prefer-inline')
  void setBaseFrequency(Pointer<D2D_VECTOR_2F> frequency) {
    final hr$ = HRESULT(_SetBaseFrequencyFn(ptr, frequency));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the size of the turbulence output.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionturbulenceeffect-setsize>.
  @pragma('vm:prefer-inline')
  void setSize(Pointer<D2D_VECTOR_2F> size) {
    final hr$ = HRESULT(_SetSizeFn(ptr, size));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the number of octaves for the noise function.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionturbulenceeffect-setnumoctaves>.
  @pragma('vm:prefer-inline')
  void setNumOctaves(int numOctaves) {
    final hr$ = HRESULT(_SetNumOctavesFn(ptr, numOctaves));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the seed for the pseudo random generator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionturbulenceeffect-setseed>.
  @pragma('vm:prefer-inline')
  void setSeed(int seed) {
    final hr$ = HRESULT(_SetSeedFn(ptr, seed));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the turbulence noise mode.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionturbulenceeffect-setnoise>.
  @pragma('vm:prefer-inline')
  void setNoise(D2D1_TURBULENCE_NOISE noise) {
    final hr$ = HRESULT(_SetNoiseFn(ptr, noise));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether stitching is on or off.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionturbulenceeffect-setstitchable>.
  @pragma('vm:prefer-inline')
  void setStitchable(bool stitchable) {
    final hr$ = HRESULT(_SetStitchableFn(ptr, stitchable ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionTurbulenceEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionTurbulenceEffectVtbl extends Struct {
  external IDCompositionFilterEffectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_VECTOR_2F> offset)
    >
  >
  SetOffset;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_VECTOR_2F> frequency)
    >
  >
  SetBaseFrequency;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D_VECTOR_2F> size)
    >
  >
  SetSize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 numOctaves)>
  >
  SetNumOctaves;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 seed)>
  >
  SetSeed;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 noise)>
  >
  SetNoise;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 stitchable)>
  >
  SetStitchable;
}

@internal
final class IDCompositionTurbulenceEffectCompanion
    extends ComCompanion<IDCompositionTurbulenceEffect> {
  const IDCompositionTurbulenceEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionTurbulenceEffect Function(VTablePointer) get fromPointer =>
      IDCompositionTurbulenceEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionTurbulenceEffect;
}
