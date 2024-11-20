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
import 'ispellingerror.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IEnumSpellingError = GUID.fromComponents(
  0x803e3bd4,
  0x2828,
  0x4410,
  Uint8List.fromList(const [0x82, 0x90, 0x41, 0x8d, 0x1d, 0x73, 0xc7, 0x62]),
);

/// An enumeration of the spelling errors.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ienumspellingerror>.
///
/// {@category com}
class IEnumSpellingError extends IUnknown implements ComInterface {
  /// Creates a new instance of [IEnumSpellingError] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IEnumSpellingError]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  IEnumSpellingError(super.ptr)
    : _vtable = ptr.value.cast<IEnumSpellingErrorVtbl>().ref;

  /// Creates a new instance of [IEnumSpellingError] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IEnumSpellingError] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IEnumSpellingError.from(IUnknown interface) =>
      interface.queryInterface();

  final IEnumSpellingErrorVtbl _vtable;
  late final _NextFn = _vtable
      .Next.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Gets the next spelling error.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ienumspellingerror-next>.
  @pragma('vm:prefer-inline')
  HRESULT next(Pointer<VTablePointer> value) => HRESULT(_NextFn(ptr, value));

  @override
  String toString() => 'IEnumSpellingError(ptr: $ptr)';
}

/// @nodoc
base class IEnumSpellingErrorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> value)
    >
  >
  Next;
}

@internal
final class IEnumSpellingErrorCompanion
    extends ComCompanion<IEnumSpellingError> {
  const IEnumSpellingErrorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IEnumSpellingError Function(VTablePointer) get fromPointer =>
      IEnumSpellingError.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IEnumSpellingError;
}
