// ISpellChecker.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_ISpellChecker = '{B6FD0B71-E2BC-4653-8D05-F197E412770B}';

typedef _get_LanguageTag_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> value);
typedef _get_LanguageTag_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> value);

typedef _Check_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> text, Pointer<Pointer> value);
typedef _Check_Dart = int Function(
    Pointer obj, Pointer<Utf16> text, Pointer<Pointer> value);

typedef _Suggest_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> word, Pointer<Pointer> value);
typedef _Suggest_Dart = int Function(
    Pointer obj, Pointer<Utf16> word, Pointer<Pointer> value);

typedef _Add_Native = Int32 Function(Pointer obj, Pointer<Utf16> word);
typedef _Add_Dart = int Function(Pointer obj, Pointer<Utf16> word);

typedef _Ignore_Native = Int32 Function(Pointer obj, Pointer<Utf16> word);
typedef _Ignore_Dart = int Function(Pointer obj, Pointer<Utf16> word);

typedef _AutoCorrect_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> from, Pointer<Utf16> to);
typedef _AutoCorrect_Dart = int Function(
    Pointer obj, Pointer<Utf16> from, Pointer<Utf16> to);

typedef _GetOptionValue_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> optionId, Pointer<Uint8> value);
typedef _GetOptionValue_Dart = int Function(
    Pointer obj, Pointer<Utf16> optionId, Pointer<Uint8> value);

typedef _get_OptionIds_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_OptionIds_Dart = int Function(Pointer obj, Pointer<Pointer> value);

typedef _get_Id_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> value);
typedef _get_Id_Dart = int Function(Pointer obj, Pointer<Pointer<Utf16>> value);

typedef _get_LocalizedName_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> value);
typedef _get_LocalizedName_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> value);

typedef _add_SpellCheckerChanged_Native = Int32 Function(
    Pointer obj, Pointer handler, Pointer<Uint32> eventCookie);
typedef _add_SpellCheckerChanged_Dart = int Function(
    Pointer obj, Pointer handler, Pointer<Uint32> eventCookie);

typedef _remove_SpellCheckerChanged_Native = Int32 Function(
    Pointer obj, Uint32 eventCookie);
typedef _remove_SpellCheckerChanged_Dart = int Function(
    Pointer obj, int eventCookie);

typedef _GetOptionDescription_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> optionId, Pointer<Pointer> value);
typedef _GetOptionDescription_Dart = int Function(
    Pointer obj, Pointer<Utf16> optionId, Pointer<Pointer> value);

typedef _ComprehensiveCheck_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> text, Pointer<Pointer> value);
typedef _ComprehensiveCheck_Dart = int Function(
    Pointer obj, Pointer<Utf16> text, Pointer<Pointer> value);

/// {@category Interface}
/// {@category com}
class ISpellChecker extends IUnknown {
  // vtable begins at 3, ends at 16

  ISpellChecker(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get LanguageTag {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<Pointer<NativeFunction<_get_LanguageTag_Native>>>()
          .value
          .asFunction<_get_LanguageTag_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Check(Pointer<Utf16> text, Pointer<Pointer> value) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_Check_Native>>>()
      .value
      .asFunction<_Check_Dart>()(ptr.ref.lpVtbl, text, value);

  int Suggest(Pointer<Utf16> word, Pointer<Pointer> value) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<Pointer<NativeFunction<_Suggest_Native>>>()
          .value
          .asFunction<_Suggest_Dart>()(ptr.ref.lpVtbl, word, value);

  int Add(Pointer<Utf16> word) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_Add_Native>>>()
      .value
      .asFunction<_Add_Dart>()(ptr.ref.lpVtbl, word);

  int Ignore(Pointer<Utf16> word) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_Ignore_Native>>>()
      .value
      .asFunction<_Ignore_Dart>()(ptr.ref.lpVtbl, word);

  int AutoCorrect(Pointer<Utf16> from, Pointer<Utf16> to) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<Pointer<NativeFunction<_AutoCorrect_Native>>>()
          .value
          .asFunction<_AutoCorrect_Dart>()(ptr.ref.lpVtbl, from, to);

  int GetOptionValue(Pointer<Utf16> optionId, Pointer<Uint8> value) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<Pointer<NativeFunction<_GetOptionValue_Native>>>()
          .value
          .asFunction<_GetOptionValue_Dart>()(ptr.ref.lpVtbl, optionId, value);

  Pointer get OptionIds {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<Pointer<NativeFunction<_get_OptionIds_Native>>>()
          .value
          .asFunction<_get_OptionIds_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get Id {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<_get_Id_Native>>>()
          .value
          .asFunction<_get_Id_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get LocalizedName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<Pointer<NativeFunction<_get_LocalizedName_Native>>>()
          .value
          .asFunction<_get_LocalizedName_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int add_SpellCheckerChanged(Pointer handler, Pointer<Uint32> eventCookie) =>
      ptr.ref.lpVtbl.value
              .elementAt(13)
              .cast<Pointer<NativeFunction<_add_SpellCheckerChanged_Native>>>()
              .value
              .asFunction<_add_SpellCheckerChanged_Dart>()(
          ptr.ref.lpVtbl, handler, eventCookie);

  int remove_SpellCheckerChanged(int eventCookie) => ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<Pointer<NativeFunction<_remove_SpellCheckerChanged_Native>>>()
          .value
          .asFunction<_remove_SpellCheckerChanged_Dart>()(
      ptr.ref.lpVtbl, eventCookie);

  int GetOptionDescription(Pointer<Utf16> optionId, Pointer<Pointer> value) =>
      ptr.ref.lpVtbl.value
              .elementAt(15)
              .cast<Pointer<NativeFunction<_GetOptionDescription_Native>>>()
              .value
              .asFunction<_GetOptionDescription_Dart>()(
          ptr.ref.lpVtbl, optionId, value);

  int ComprehensiveCheck(Pointer<Utf16> text, Pointer<Pointer> value) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<Pointer<NativeFunction<_ComprehensiveCheck_Native>>>()
          .value
          .asFunction<_ComprehensiveCheck_Dart>()(ptr.ref.lpVtbl, text, value);
}
