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
import 'idcompositionvisual.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionVisual2 = GUID.fromComponents(
  0xe8de1639,
  0x4331,
  0x4b26,
  Uint8List.fromList(const [0xbc, 0x5f, 0x6a, 0x32, 0x1d, 0x34, 0x7a, 0x85]),
);

/// Represents one DirectComposition visual in a visual tree.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionvisual2>.
///
/// {@category com}
class IDCompositionVisual2 extends IDCompositionVisual implements ComInterface {
  /// Creates a new instance of [IDCompositionVisual2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDCompositionVisual2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IDCompositionVisual2(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionVisual2Vtbl>().ref;

  /// Creates a new instance of [IDCompositionVisual2] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionVisual2] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionVisual2.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionVisual2Vtbl _vtable;
  late final _SetOpacityModeFn =
      _vtable.SetOpacityMode.asFunction<int Function(VTablePointer, int)>();
  late final _SetBackFaceVisibilityFn = _vtable
      .SetBackFaceVisibility.asFunction<int Function(VTablePointer, int)>();

  /// Sets the opacity mode for this visual.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual2-setopacitymode>.
  @pragma('vm:prefer-inline')
  void setOpacityMode(DCOMPOSITION_OPACITY_MODE mode) {
    final hr$ = HRESULT(_SetOpacityModeFn(ptr, mode));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies whether or not surfaces that have 3D transformations applied to
  /// them should be displayed when facing away from the observer.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionvisual2-setbackfacevisibility>.
  @pragma('vm:prefer-inline')
  void setBackFaceVisibility(DCOMPOSITION_BACKFACE_VISIBILITY visibility) {
    final hr$ = HRESULT(_SetBackFaceVisibilityFn(ptr, visibility));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionVisual2(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionVisual2Vtbl extends Struct {
  external IDCompositionVisualVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 mode)>
  >
  SetOpacityMode;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 visibility)>
  >
  SetBackFaceVisibility;
}

@internal
final class IDCompositionVisual2Companion
    extends ComCompanion<IDCompositionVisual2> {
  const IDCompositionVisual2Companion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionVisual2 Function(VTablePointer) get fromPointer =>
      IDCompositionVisual2.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionVisual2;
}
