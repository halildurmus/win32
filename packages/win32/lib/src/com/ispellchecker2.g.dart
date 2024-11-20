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
import 'ispellchecker.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpellChecker2 = Guid.fromComponents(
  0xe7ed1c71,
  0x87f7,
  0x4378,
  Uint8List.fromList(const [0xa8, 0x40, 0xc9, 0x20, 0xd, 0xac, 0xee, 0x47]),
);

/// Represents a particular spell checker for a particular language, with the
/// added ability to remove words from the added words dictionary, or from the
/// ignore list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ispellchecker2>.
///
/// {@category com}
class ISpellChecker2 extends ISpellChecker implements ComInterface {
  /// Creates a new instance of [ISpellChecker2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpellChecker2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpellChecker2(super.ptr)
    : _vtable = ptr.value.cast<ISpellChecker2Vtbl>().ref;

  /// Creates a new instance of [ISpellChecker2] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpellChecker2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpellChecker2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpellChecker2Vtbl _vtable;
  late final _RemoveFn =
      _vtable.Remove.asFunction<int Function(VTablePointer, PCWSTR)>();

  /// Removes a word that was previously added by ISpellChecker.Add, or set by
  /// ISpellChecker.Ignore to be ignored.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker2-remove>.
  @pragma('vm:prefer-inline')
  void remove(PCWSTR word) {
    final hr$ = HRESULT(_RemoveFn(ptr, word));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISpellChecker2(ptr: $ptr)';
}

/// @nodoc
base class ISpellChecker2Vtbl extends Struct {
  external ISpellCheckerVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR word)>
  >
  Remove;
}

@internal
final class ISpellChecker2Companion extends ComCompanion<ISpellChecker2> {
  const ISpellChecker2Companion();

  @pragma('vm:prefer-inline')
  @override
  ISpellChecker2 Function(VTablePointer) get fromPointer => ISpellChecker2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpellChecker2;
}
