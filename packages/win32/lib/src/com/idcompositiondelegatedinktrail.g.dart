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
final IID_IDCompositionDelegatedInkTrail = GUID.fromComponents(
  0xc2448e9b,
  0x547d,
  0x4057,
  Uint8List.fromList(const [0x8c, 0xf5, 0x81, 0x44, 0xed, 0xe1, 0xc2, 0xda]),
);

/// {@category com}
class IDCompositionDelegatedInkTrail extends IUnknown implements ComInterface {
  /// Creates a new instance of [IDCompositionDelegatedInkTrail] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionDelegatedInkTrail] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IDCompositionDelegatedInkTrail(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionDelegatedInkTrailVtbl>().ref;

  /// Creates a new instance of [IDCompositionDelegatedInkTrail] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionDelegatedInkTrail] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionDelegatedInkTrail.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionDelegatedInkTrailVtbl _vtable;
  late final _AddTrailPointsFn =
      _vtable.AddTrailPoints.asFunction<
        int Function(
          VTablePointer,
          Pointer<DCompositionInkTrailPoint>,
          int,
          Pointer<Uint32>,
        )
      >();
  late final _AddTrailPointsWithPredictionFn =
      _vtable.AddTrailPointsWithPrediction.asFunction<
        int Function(
          VTablePointer,
          Pointer<DCompositionInkTrailPoint>,
          int,
          Pointer<DCompositionInkTrailPoint>,
          int,
          Pointer<Uint32>,
        )
      >();
  late final _RemoveTrailPointsFn =
      _vtable.RemoveTrailPoints.asFunction<int Function(VTablePointer, int)>();
  late final _StartNewTrailFn =
      _vtable.StartNewTrail.asFunction<
        int Function(VTablePointer, Pointer<D2D1_COLOR_F>)
      >();

  /// Throws a [WindowsException] on failure.
  int addTrailPoints(
    Pointer<DCompositionInkTrailPoint> inkPoints,
    int inkPointsCount,
  ) {
    final generationId = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(
      _AddTrailPointsFn(ptr, inkPoints, inkPointsCount, generationId),
    );
    if (hr$.isError) {
      free(generationId);
      throw WindowsException(hr$);
    }
    final result$ = generationId.value;
    free(generationId);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  int addTrailPointsWithPrediction(
    Pointer<DCompositionInkTrailPoint> inkPoints,
    int inkPointsCount,
    Pointer<DCompositionInkTrailPoint> predictedInkPoints,
    int predictedInkPointsCount,
  ) {
    final generationId = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(
      _AddTrailPointsWithPredictionFn(
        ptr,
        inkPoints,
        inkPointsCount,
        predictedInkPoints,
        predictedInkPointsCount,
        generationId,
      ),
    );
    if (hr$.isError) {
      free(generationId);
      throw WindowsException(hr$);
    }
    final result$ = generationId.value;
    free(generationId);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void removeTrailPoints(int generationId) {
    final hr$ = HRESULT(_RemoveTrailPointsFn(ptr, generationId));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void startNewTrail(Pointer<D2D1_COLOR_F> color) {
    final hr$ = HRESULT(_StartNewTrailFn(ptr, color));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionDelegatedInkTrail(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionDelegatedInkTrailVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<DCompositionInkTrailPoint> inkPoints,
        Uint32 inkPointsCount,
        Pointer<Uint32> generationId,
      )
    >
  >
  AddTrailPoints;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<DCompositionInkTrailPoint> inkPoints,
        Uint32 inkPointsCount,
        Pointer<DCompositionInkTrailPoint> predictedInkPoints,
        Uint32 predictedInkPointsCount,
        Pointer<Uint32> generationId,
      )
    >
  >
  AddTrailPointsWithPrediction;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 generationId)>
  >
  RemoveTrailPoints;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D1_COLOR_F> color)
    >
  >
  StartNewTrail;
}

@internal
final class IDCompositionDelegatedInkTrailCompanion
    extends ComCompanion<IDCompositionDelegatedInkTrail> {
  const IDCompositionDelegatedInkTrailCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionDelegatedInkTrail Function(VTablePointer) get fromPointer =>
      IDCompositionDelegatedInkTrail.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionDelegatedInkTrail;
}
