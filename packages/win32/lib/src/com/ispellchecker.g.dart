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
import 'ienumspellingerror.g.dart';
import 'ienumstring.g.dart';
import 'interface.g.dart';
import 'ioptiondescription.g.dart';
import 'ispellcheckerchangedeventhandler.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpellChecker = Guid.fromComponents(
  0xb6fd0b71,
  0xe2bc,
  0x4653,
  Uint8List.fromList(const [0x8d, 0x5, 0xf1, 0x97, 0xe4, 0x12, 0x77, 0xb]),
);

/// Represents a particular spell checker for a particular language.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ispellchecker>.
///
/// {@category com}
class ISpellChecker extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISpellChecker] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpellChecker]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpellChecker(super.ptr) : _vtable = ptr.value.cast<ISpellCheckerVtbl>().ref;

  /// Creates a new instance of [ISpellChecker] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpellChecker] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpellChecker.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpellCheckerVtbl _vtable;
  late final _get_LanguageTagFn = _vtable.get_LanguageTag
      .asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _CheckFn =
      _vtable.Check.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _SuggestFn =
      _vtable.Suggest.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _AddFn =
      _vtable.Add.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _IgnoreFn =
      _vtable.Ignore.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _AutoCorrectFn = _vtable
      .AutoCorrect.asFunction<int Function(VTablePointer, PCWSTR, PCWSTR)>();
  late final _GetOptionValueFn =
      _vtable.GetOptionValue.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<Uint8>)
      >();
  late final _get_OptionIdsFn = _vtable.get_OptionIds
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_IdFn = _vtable.get_Id
      .asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _get_LocalizedNameFn = _vtable.get_LocalizedName
      .asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _add_SpellCheckerChangedFn = _vtable.add_SpellCheckerChanged
      .asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<Uint32>)
      >();
  late final _remove_SpellCheckerChangedFn = _vtable.remove_SpellCheckerChanged
      .asFunction<int Function(VTablePointer, int)>();
  late final _GetOptionDescriptionFn =
      _vtable.GetOptionDescription.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _ComprehensiveCheckFn =
      _vtable.ComprehensiveCheck.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();

  /// Gets the BCP47 language tag this instance of the spell checker supports.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-get_languagetag>.
  PWSTR get languageTag {
    final value = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_get_LanguageTagFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  /// Checks the spelling of the supplied text and returns a collection of
  /// spelling errors.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-check>.
  IEnumSpellingError? check(PCWSTR text) {
    final value = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CheckFn(ptr, text, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    if (result$.isNull) return null;
    return IEnumSpellingError(result$);
  }

  /// Retrieves spelling suggestions for the supplied text.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-suggest>.
  IEnumString? suggest(PCWSTR word) {
    final value = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_SuggestFn(ptr, word, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    if (result$.isNull) return null;
    return IEnumString(result$);
  }

  /// Treats the provided word as though it were part of the original
  /// dictionary.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-add>.
  @pragma('vm:prefer-inline')
  void add(PCWSTR word) {
    final hr$ = HRESULT(_AddFn(ptr, word));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Ignores the provided word for the rest of this session.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-ignore>.
  @pragma('vm:prefer-inline')
  void ignore(PCWSTR word) {
    final hr$ = HRESULT(_IgnoreFn(ptr, word));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Causes occurrences of one word to be replaced by another.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-autocorrect>.
  @pragma('vm:prefer-inline')
  void autoCorrect(PCWSTR from, PCWSTR to) {
    final hr$ = HRESULT(_AutoCorrectFn(ptr, from, to));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the value associated with the given option.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-getoptionvalue>.
  int getOptionValue(PCWSTR optionId) {
    final value = loggingCalloc<Uint8>();
    final hr$ = HRESULT(_GetOptionValueFn(ptr, optionId, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  /// Gets all of the declared option identifiers.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-get_optionids>.
  IEnumString? get optionIds {
    final value = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_OptionIdsFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    if (result$.isNull) return null;
    return IEnumString(result$);
  }

  /// Gets the identifier for this spell checker.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-get_id>.
  PWSTR get id {
    final value = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_get_IdFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  /// Gets text, suitable to display to the user, that describes this spell
  /// checker.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-get_localizedname>.
  PWSTR get localizedName {
    final value = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_get_LocalizedNameFn(ptr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    return result$;
  }

  /// Adds an event handler (ISpellCheckerChangedEventHandler) for the
  /// SpellCheckerChanged event.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-add_spellcheckerchanged>.
  int addSpellCheckerChanged(ISpellCheckerChangedEventHandler? handler) {
    final eventCookie = loggingCalloc<Uint32>();
    final hr$ = HRESULT(
      _add_SpellCheckerChangedFn(ptr, handler?.ptr ?? nullptr, eventCookie),
    );
    if (hr$.isError) {
      free(eventCookie);
      throw WindowsException(hr$);
    }
    final result$ = eventCookie.value;
    free(eventCookie);
    return result$;
  }

  /// Removes an event handler (ISpellCheckerChangedEventHandler) that has been
  /// added for the SpellCheckerChanged event.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-remove_spellcheckerchanged>.
  @pragma('vm:prefer-inline')
  void removeSpellCheckerChanged(int eventCookie) {
    final hr$ = HRESULT(_remove_SpellCheckerChangedFn(ptr, eventCookie));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the information (id, description, heading and labels) of a
  /// specific option.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-getoptiondescription>.
  IOptionDescription? getOptionDescription(PCWSTR optionId) {
    final value = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetOptionDescriptionFn(ptr, optionId, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    if (result$.isNull) return null;
    return IOptionDescription(result$);
  }

  /// Checks the spelling of the supplied text in a more thorough manner than
  /// `ISpellChecker.check`, and returns a collection of spelling errors.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/spellcheck/nf-spellcheck-ispellchecker-comprehensivecheck>.
  IEnumSpellingError? comprehensiveCheck(PCWSTR text) {
    final value = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_ComprehensiveCheckFn(ptr, text, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    final result$ = value.value;
    free(value);
    if (result$.isNull) return null;
    return IEnumSpellingError(result$);
  }

  @override
  String toString() => 'ISpellChecker(ptr: $ptr)';
}

/// @nodoc
base class ISpellCheckerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> value)>
  >
  get_LanguageTag;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR text,
        Pointer<VTablePointer> value,
      )
    >
  >
  Check;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR word,
        Pointer<VTablePointer> value,
      )
    >
  >
  Suggest;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR word)>
  >
  Add;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR word)>
  >
  Ignore;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR from, PCWSTR to)>
  >
  AutoCorrect;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR optionId, Pointer<Uint8> value)
    >
  >
  GetOptionValue;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> value)
    >
  >
  get_OptionIds;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> value)>
  >
  get_Id;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> value)>
  >
  get_LocalizedName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer handler,
        Pointer<Uint32> eventCookie,
      )
    >
  >
  add_SpellCheckerChanged;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 eventCookie)>
  >
  remove_SpellCheckerChanged;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR optionId,
        Pointer<VTablePointer> value,
      )
    >
  >
  GetOptionDescription;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR text,
        Pointer<VTablePointer> value,
      )
    >
  >
  ComprehensiveCheck;
}

@internal
final class ISpellCheckerCompanion extends ComCompanion<ISpellChecker> {
  const ISpellCheckerCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpellChecker Function(VTablePointer) get fromPointer => ISpellChecker.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpellChecker;
}
