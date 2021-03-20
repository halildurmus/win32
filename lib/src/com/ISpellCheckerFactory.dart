// ISpellCheckerFactory.dart

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
const CLSID_SpellCheckerFactory = '{7AB36653-1796-484B-BDFA-E74F1DB7C1DC}';

/// @nodoc
const IID_ISpellCheckerFactory = '{8E018A9D-2415-4677-BF08-794EA61F94BB}';

typedef _get_SupportedLanguages_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_SupportedLanguages_Dart = int Function(
    Pointer obj, Pointer<Pointer> value);

typedef _IsSupported_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> languageTag, Pointer<Int32> value);
typedef _IsSupported_Dart = int Function(
    Pointer obj, Pointer<Utf16> languageTag, Pointer<Int32> value);

typedef _CreateSpellChecker_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> languageTag, Pointer<Pointer> value);
typedef _CreateSpellChecker_Dart = int Function(
    Pointer obj, Pointer<Utf16> languageTag, Pointer<Pointer> value);

/// {@category Interface}
/// {@category com}
class ISpellCheckerFactory extends IUnknown {
  // vtable begins at 3, ends at 5

  ISpellCheckerFactory(Pointer<COMObject> ptr) : super(ptr);

  Pointer get SupportedLanguages {
    final retValuePtr = calloc<Pointer>();

    final hr =
        Pointer<NativeFunction<_get_SupportedLanguages_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(3).value)
                .asFunction<_get_SupportedLanguages_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int IsSupported(Pointer<Utf16> languageTag, Pointer<Int32> value) =>
      Pointer<NativeFunction<_IsSupported_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_IsSupported_Dart>()(ptr.ref.lpVtbl, languageTag, value);

  int CreateSpellChecker(Pointer<Utf16> languageTag, Pointer<Pointer> value) =>
      Pointer<NativeFunction<_CreateSpellChecker_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_CreateSpellChecker_Dart>()(
          ptr.ref.lpVtbl, languageTag, value);
}

/// {@category com}
class SpellCheckerFactory extends ISpellCheckerFactory {
  SpellCheckerFactory(Pointer<COMObject> ptr) : super(ptr);

  factory SpellCheckerFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SpellCheckerFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISpellCheckerFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SpellCheckerFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
