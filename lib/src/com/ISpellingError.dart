// ISpellingError.dart

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
const IID_ISpellingError = '{B7C82D61-FBE8-4B47-9B27-6C0D2E0DE0A3}';

typedef _get_StartIndex_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> value);
typedef _get_StartIndex_Dart = int Function(Pointer obj, Pointer<Uint32> value);

typedef _get_Length_Native = Int32 Function(Pointer obj, Pointer<Uint32> value);
typedef _get_Length_Dart = int Function(Pointer obj, Pointer<Uint32> value);

typedef _get_CorrectiveAction_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> value);
typedef _get_CorrectiveAction_Dart = int Function(
    Pointer obj, Pointer<Uint32> value);

typedef _get_Replacement_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> value);
typedef _get_Replacement_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> value);

/// {@category Interface}
/// {@category com}
class ISpellingError extends IUnknown {
  // vtable begins at 3, ends at 6

  ISpellingError(Pointer<COMObject> ptr) : super(ptr);

  int get StartIndex {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<Pointer<NativeFunction<_get_StartIndex_Native>>>()
          .value
          .asFunction<_get_StartIndex_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Length {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<Pointer<NativeFunction<_get_Length_Native>>>()
          .value
          .asFunction<_get_Length_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CorrectiveAction {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_get_CorrectiveAction_Native>>>()
              .value
              .asFunction<_get_CorrectiveAction_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get Replacement {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<Pointer<NativeFunction<_get_Replacement_Native>>>()
          .value
          .asFunction<_get_Replacement_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
