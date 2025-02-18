// ispellchecker.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpellChecker = '{b6fd0b71-e2bc-4653-8d05-f197e412770b}';

/// Represents a particular spell checker for a particular language. The
/// `ISpellChecker` can be used to check text, get suggestions, update user
/// dictionaries, and maintain options.
///
/// {@category com}
class ISpellChecker extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  ISpellChecker(super.ptr);

  factory ISpellChecker.from(IUnknown interface) =>
      ISpellChecker(interface.toInterface(IID_ISpellChecker));

  Pointer<Utf16> get languageTag {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 3)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Pointer<Utf16>> value)
              >
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> value)>()(
        ptr.ref.lpVtbl,
        retValuePtr,
      );

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int check(Pointer<Utf16> text, Pointer<Pointer<COMObject>> value) =>
      (ptr.ref.vtable + 4)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> text,
                  Pointer<Pointer<COMObject>> value,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Utf16> text,
              Pointer<Pointer<COMObject>> value,
            )
          >()(ptr.ref.lpVtbl, text, value);

  int suggest(Pointer<Utf16> word, Pointer<Pointer<COMObject>> value) =>
      (ptr.ref.vtable + 5)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> word,
                  Pointer<Pointer<COMObject>> value,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Utf16> word,
              Pointer<Pointer<COMObject>> value,
            )
          >()(ptr.ref.lpVtbl, word, value);

  int add(Pointer<Utf16> word) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Utf16> word)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> word)>()(
    ptr.ref.lpVtbl,
    word,
  );

  int ignore(Pointer<Utf16> word) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Utf16> word)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> word)>()(
    ptr.ref.lpVtbl,
    word,
  );

  int autoCorrect(Pointer<Utf16> from, Pointer<Utf16> to) =>
      (ptr.ref.vtable + 8)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Utf16> from, Pointer<Utf16> to)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Utf16> from, Pointer<Utf16> to)
          >()(ptr.ref.lpVtbl, from, to);

  int getOptionValue(Pointer<Utf16> optionId, Pointer<Uint8> value) =>
      (ptr.ref.vtable + 9)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> optionId,
                  Pointer<Uint8> value,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Utf16> optionId, Pointer<Uint8> value)
          >()(ptr.ref.lpVtbl, optionId, value);

  Pointer<COMObject> get optionIds {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 10)
        .cast<
          Pointer<
            NativeFunction<Int32 Function(Pointer, Pointer<COMObject> value)>
          >
        >()
        .value
        .asFunction<int Function(Pointer, Pointer<COMObject> value)>()(
      ptr.ref.lpVtbl,
      retValuePtr,
    );

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<Utf16> get id {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 11)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Pointer<Utf16>> value)
              >
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> value)>()(
        ptr.ref.lpVtbl,
        retValuePtr,
      );

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get localizedName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 12)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Pointer<Utf16>> value)
              >
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> value)>()(
        ptr.ref.lpVtbl,
        retValuePtr,
      );

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int add_SpellCheckerChanged(
    Pointer<COMObject> handler,
    Pointer<Uint32> eventCookie,
  ) => (ptr.ref.vtable + 13)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<COMObject> handler,
              Pointer<Uint32> eventCookie,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<COMObject> handler,
          Pointer<Uint32> eventCookie,
        )
      >()(ptr.ref.lpVtbl, handler, eventCookie);

  int remove_SpellCheckerChanged(int eventCookie) => (ptr.ref.vtable + 14)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Uint32 eventCookie)>>
      >()
      .value
      .asFunction<int Function(Pointer, int eventCookie)>()(
    ptr.ref.lpVtbl,
    eventCookie,
  );

  int getOptionDescription(
    Pointer<Utf16> optionId,
    Pointer<Pointer<COMObject>> value,
  ) => (ptr.ref.vtable + 15)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> optionId,
              Pointer<Pointer<COMObject>> value,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> optionId,
          Pointer<Pointer<COMObject>> value,
        )
      >()(ptr.ref.lpVtbl, optionId, value);

  int comprehensiveCheck(
    Pointer<Utf16> text,
    Pointer<Pointer<COMObject>> value,
  ) => (ptr.ref.vtable + 16)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> text,
              Pointer<Pointer<COMObject>> value,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> text,
          Pointer<Pointer<COMObject>> value,
        )
      >()(ptr.ref.lpVtbl, text, value);
}
