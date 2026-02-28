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
import 'idcompositioneffect.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDCompositionFilterEffect = GUID.fromComponents(
  0x30c421d5,
  0x8cb2,
  0x4e9f,
  Uint8List.fromList(const [0xb1, 0x33, 0x37, 0xbe, 0x27, 0xd, 0x4a, 0xc2]),
);

/// Represents a filter effect.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dcomp/nn-dcomp-idcompositionfiltereffect>.
///
/// {@category com}
class IDCompositionFilterEffect extends IDCompositionEffect
    implements ComInterface {
  /// Creates a new instance of [IDCompositionFilterEffect] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IDCompositionFilterEffect] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IDCompositionFilterEffect(super.ptr)
    : _vtable = ptr.value.cast<IDCompositionFilterEffectVtbl>().ref;

  /// Creates a new instance of [IDCompositionFilterEffect] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDCompositionFilterEffect] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDCompositionFilterEffect.from(IUnknown interface) =>
      interface.queryInterface();

  final IDCompositionFilterEffectVtbl _vtable;
  late final _SetInputFn =
      _vtable.SetInput.asFunction<
        int Function(VTablePointer, int, VTablePointer, int)
      >();

  /// Sets the the input at an index to the specified filter effect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dcomp/nf-dcomp-idcompositionfiltereffect-setinput>.
  @pragma('vm:prefer-inline')
  void setInput(int index, IUnknown? input, int flags) {
    final hr$ = HRESULT(_SetInputFn(ptr, index, input?.ptr ?? nullptr, flags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IDCompositionFilterEffect(ptr: $ptr)';
}

/// @nodoc
base class IDCompositionFilterEffectVtbl extends Struct {
  external IDCompositionEffectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 index,
        VTablePointer input,
        Uint32 flags,
      )
    >
  >
  SetInput;
}

@internal
final class IDCompositionFilterEffectCompanion
    extends ComCompanion<IDCompositionFilterEffect> {
  const IDCompositionFilterEffectCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDCompositionFilterEffect Function(VTablePointer) get fromPointer =>
      IDCompositionFilterEffect.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDCompositionFilterEffect;
}
