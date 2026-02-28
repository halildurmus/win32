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
import 'idcompositionvisual2.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionVisualDebug = GUID.fromComponents(
  0xfed2b808,
  0x5eb4,
  0x43a0,
  Uint8List.fromList(const [0xae, 0xa3, 0x35, 0xf6, 0x52, 0x80, 0xf9, 0x1b]),
);

/// Represents a debug visual.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionvisualdebug>.
///
/// {@category com}
class IDCompositionVisualDebug extends IDCompositionVisual2
    implements ComInterface {
  /// Creates a new instance of [IDCompositionVisualDebug] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionVisualDebug] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionVisualDebug(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionVisualDebugVtbl>().ref;

  /// Creates a new instance of [IDCompositionVisualDebug] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionVisualDebug] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionVisualDebug.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionVisualDebugVtbl _vtable;
  late final _EnableHeatMapFn =
      _vtable.EnableHeatMap.asFunction<
        int Function(VTablePointer, Pointer<D2D1_COLOR_F>)
      >();
  late final _DisableHeatMapFn =
      _vtable.DisableHeatMap.asFunction<int Function(VTablePointer)>();
  late final _EnableRedrawRegionsFn =
      _vtable.EnableRedrawRegions.asFunction<int Function(VTablePointer)>();
  late final _DisableRedrawRegionsFn =
      _vtable.DisableRedrawRegions.asFunction<int Function(VTablePointer)>();

  /// Enables a visual heatmap that represents overdraw regions.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisualdebug-enableheatmap>.
  @pragma('vm:prefer-inline')
  void enableHeatMap(Pointer<D2D1_COLOR_F> color) {
    final hr$ = HRESULT(_EnableHeatMapFn(ptr, color));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Disables visual heatmaps.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisualdebug-disableheatmap>.
  @pragma('vm:prefer-inline')
  void disableHeatMap() {
    final hr$ = HRESULT(_DisableHeatMapFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Enables highlighting visuals when content is being redrawn.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisualdebug-enableredrawregions>.
  @pragma('vm:prefer-inline')
  void enableRedrawRegions() {
    final hr$ = HRESULT(_EnableRedrawRegionsFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Disables visual redraw regions.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisualdebug-disableredrawregions>.
  @pragma('vm:prefer-inline')
  void disableRedrawRegions() {
    final hr$ = HRESULT(_DisableRedrawRegionsFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionVisualDebug(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionVisualDebugVtbl extends Struct {
  external IDCompositionVisual2Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<D2D1_COLOR_F> color)
    >
  >
  EnableHeatMap;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  DisableHeatMap;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  EnableRedrawRegions;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  DisableRedrawRegions;
}

@internal
final class IDCompositionVisualDebugCompanion
    extends ComCompanion<IDCompositionVisualDebug> {
  const IDCompositionVisualDebugCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionVisualDebug Function(VTablePointer) get fromPointer =>
      IDCompositionVisualDebug.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionVisualDebug;
}
