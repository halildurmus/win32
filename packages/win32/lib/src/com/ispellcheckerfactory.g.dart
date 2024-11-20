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
import 'ienumstring.g.dart';
import 'interface.g.dart';
import 'ispellchecker.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpellCheckerFactory = Guid.fromComponents(
  0x8e018a9d,
  0x2415,
  0x4677,
  Uint8List.fromList(const [0xbf, 0x8, 0x79, 0x4e, 0xa6, 0x1f, 0x94, 0xbb]),
);

/// A factory for instantiating a spell checker (ISpellChecker) as well as
/// providing functionality for determining which languages are supported.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ispellcheckerfactory>.
///
/// {@category com}
class ISpellCheckerFactory extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISpellCheckerFactory] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpellCheckerFactory]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpellCheckerFactory(super.ptr)
    : _vtable = ptr.value.cast<ISpellCheckerFactoryVtbl>().ref;

  /// Creates a new instance of [ISpellCheckerFactory] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpellCheckerFactory] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpellCheckerFactory.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpellCheckerFactoryVtbl _vtable;
  late final _get_SupportedLanguagesFn = _vtable.get_SupportedLanguages
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _IsSupportedFn =
      _vtable.IsSupported.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<BOOL>)
      >();
  late final _CreateSpellCheckerFn =
      _vtable.CreateSpellChecker.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();

  /// Gets the set of languages/dialects supported by any of the registered
  /// spell checkers.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellcheckerfactory-get_supportedlanguages>.
  IEnumString? get supportedLanguages {
    final value = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_SupportedLanguagesFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    if (result$.isNull) return null;
    return IEnumString(result$);
  }

  /// Determines if the specified language is supported by a registered spell
  /// checker.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellcheckerfactory-issupported>.
  bool isSupported(PCWSTR languageTag) {
    final value = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_IsSupportedFn(ptr, languageTag, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$ != FALSE;
  }

  /// Creates a spell checker that supports the specified language.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellcheckerfactory-createspellchecker>.
  ISpellChecker? createSpellChecker(PCWSTR languageTag) {
    final value = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateSpellCheckerFn(ptr, languageTag, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    if (result$.isNull) return null;
    return ISpellChecker(result$);
  }

  @override
  String toString() => 'ISpellCheckerFactory(ptr: $ptr)';
}

/// @nodoc
base class ISpellCheckerFactoryVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> value)
    >
  >
  get_SupportedLanguages;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR languageTag,
        Pointer<BOOL> value,
      )
    >
  >
  IsSupported;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR languageTag,
        Pointer<VTablePointer> value,
      )
    >
  >
  CreateSpellChecker;
}

@internal
final class ISpellCheckerFactoryCompanion
    extends ComCompanion<ISpellCheckerFactory> {
  const ISpellCheckerFactoryCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpellCheckerFactory Function(VTablePointer) get fromPointer =>
      ISpellCheckerFactory.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpellCheckerFactory;
}
