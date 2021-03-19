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

    final hr = Pointer<NativeFunction<_get_LanguageTag_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(3).value)
        .asFunction<_get_LanguageTag_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int Check(Pointer<Utf16> text, Pointer<Pointer> value) =>
      Pointer<NativeFunction<_Check_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_Check_Dart>()(ptr.ref.lpVtbl, text, value);

  int Suggest(Pointer<Utf16> word, Pointer<Pointer> value) =>
      Pointer<NativeFunction<_Suggest_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_Suggest_Dart>()(ptr.ref.lpVtbl, word, value);

  int Add(Pointer<Utf16> word) =>
      Pointer<NativeFunction<_Add_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_Add_Dart>()(ptr.ref.lpVtbl, word);

  int Ignore(Pointer<Utf16> word) =>
      Pointer<NativeFunction<_Ignore_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_Ignore_Dart>()(ptr.ref.lpVtbl, word);

  int AutoCorrect(Pointer<Utf16> from, Pointer<Utf16> to) =>
      Pointer<NativeFunction<_AutoCorrect_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_AutoCorrect_Dart>()(ptr.ref.lpVtbl, from, to);

  int GetOptionValue(Pointer<Utf16> optionId, Pointer<Uint8> value) =>
      Pointer<NativeFunction<_GetOptionValue_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_GetOptionValue_Dart>()(ptr.ref.lpVtbl, optionId, value);

  Pointer get OptionIds {
    final retValuePtr = calloc<Pointer>();

    final hr = Pointer<NativeFunction<_get_OptionIds_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(10).value)
        .asFunction<_get_OptionIds_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  Pointer<Utf16> get Id {
    final retValuePtr = calloc<Pointer<Utf16>>();

    final hr = Pointer<NativeFunction<_get_Id_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(11).value)
        .asFunction<_get_Id_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  Pointer<Utf16> get LocalizedName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    final hr = Pointer<NativeFunction<_get_LocalizedName_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(12).value)
        .asFunction<_get_LocalizedName_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int add_SpellCheckerChanged(Pointer handler, Pointer<Uint32> eventCookie) =>
      Pointer<NativeFunction<_add_SpellCheckerChanged_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<_add_SpellCheckerChanged_Dart>()(
          ptr.ref.lpVtbl, handler, eventCookie);

  int remove_SpellCheckerChanged(int eventCookie) =>
      Pointer<NativeFunction<_remove_SpellCheckerChanged_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<_remove_SpellCheckerChanged_Dart>()(
          ptr.ref.lpVtbl, eventCookie);

  int GetOptionDescription(Pointer<Utf16> optionId, Pointer<Pointer> value) =>
      Pointer<NativeFunction<_GetOptionDescription_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<_GetOptionDescription_Dart>()(
          ptr.ref.lpVtbl, optionId, value);

  int ComprehensiveCheck(Pointer<Utf16> text, Pointer<Pointer> value) =>
      Pointer<NativeFunction<_ComprehensiveCheck_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<_ComprehensiveCheck_Dart>()(ptr.ref.lpVtbl, text, value);
}
