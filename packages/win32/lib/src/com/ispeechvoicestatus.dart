// ispeechvoicestatus.dart

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
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISpeechVoiceStatus = '{8be47b07-57f6-11d2-9eee-00c04f797396}';

/// The ISpeechVoiceStatus automation interface defines the types of
/// information returned by the SpVoice.Status method.
///
/// {@category com}
class ISpeechVoiceStatus extends IDispatch {
  // vtable begins at 7, is 12 entries long.
  ISpeechVoiceStatus(super.ptr);

  factory ISpeechVoiceStatus.from(IUnknown interface) =>
      ISpeechVoiceStatus(interface.toInterface(IID_ISpeechVoiceStatus));

  int get currentStreamNumber {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int32> StreamNumber)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Int32> StreamNumber)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get lastStreamNumberQueued {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int32> StreamNumber)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Int32> StreamNumber)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get lastHResult {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> HResult)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> HResult)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get runningState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> State)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> State)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get inputWordPosition {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> Position)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> Position)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get inputWordLength {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 12)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> Length)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> Length)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get inputSentencePosition {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 13)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> Position)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> Position)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get inputSentenceLength {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 14)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> Length)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> Length)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get lastBookmark {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 15)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> Bookmark)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> Bookmark)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get lastBookmarkId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int32> BookmarkId)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Int32> BookmarkId)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get phonemeId {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = (ptr.ref.vtable + 17)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int16> PhoneId)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int16> PhoneId)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get visemeId {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = (ptr.ref.vtable + 18)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int16> VisemeId)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int16> VisemeId)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
