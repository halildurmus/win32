// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpellingError = Guid.fromComponents(
  0xb7c82d61,
  0xfbe8,
  0x4b47,
  Uint8List.fromList(const [0x9b, 0x27, 0x6c, 0xd, 0x2e, 0xd, 0xe0, 0xa3]),
);

/// Provides information about a spelling error.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ispellingerror>.
///
/// {@category com}
class ISpellingError extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISpellingError] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpellingError]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpellingError(super.ptr)
    : _vtable = ptr.value.cast<ISpellingErrorVtbl>().ref;

  /// Creates a new instance of [ISpellingError] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpellingError] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpellingError.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpellingErrorVtbl _vtable;
  late final _get_StartIndexFn = _vtable.get_StartIndex
      .asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _get_LengthFn = _vtable.get_Length
      .asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _get_CorrectiveActionFn = _vtable.get_CorrectiveAction
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_ReplacementFn = _vtable.get_Replacement
      .asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();

  /// Gets the position in the checked text where the error begins.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellingerror-get_startindex>.
  int get startIndex {
    final value = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_get_StartIndexFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  /// Gets the length of the erroneous text.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellingerror-get_length>.
  int get length {
    final value = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_get_LengthFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  /// Indicates which corrective action should be taken for the spelling error.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellingerror-get_correctiveaction>.
  CORRECTIVE_ACTION get correctiveAction {
    final value = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CorrectiveActionFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return CORRECTIVE_ACTION(result$);
  }

  /// Gets the text to use as replacement text when the corrective action is
  /// replace.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellingerror-get_replacement>.
  PWSTR get replacement {
    final value = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_get_ReplacementFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  @override
  String toString() => 'ISpellingError(ptr: $ptr)';
}

/// @nodoc
base class ISpellingErrorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> value)>
  >
  get_StartIndex;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> value)>
  >
  get_Length;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> value)>
  >
  get_CorrectiveAction;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> value)>
  >
  get_Replacement;
}

@internal
final class ISpellingErrorCompanion extends ComCompanion<ISpellingError> {
  const ISpellingErrorCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpellingError Function(VTablePointer) get fromPointer => ISpellingError.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpellingError;
}
