// ispellingerror.dart

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
const IID_ISpellingError = '{b7c82d61-fbe8-4b47-9b27-6c0d2e0de0a3}';

/// Provides information about a spelling error.
///
/// {@category com}
class ISpellingError extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISpellingError(super.ptr);

  factory ISpellingError.from(IUnknown interface) =>
      ISpellingError(interface.toInterface(IID_ISpellingError));

  int get startIndex {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = (ptr.ref.vtable + 3)
          .cast<
            Pointer<
              NativeFunction<Int32 Function(Pointer, Pointer<Uint32> value)>
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> value)>()(
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

  int get length {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = (ptr.ref.vtable + 4)
          .cast<
            Pointer<
              NativeFunction<Int32 Function(Pointer, Pointer<Uint32> value)>
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> value)>()(
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

  int get correctiveAction {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 5)
          .cast<
            Pointer<
              NativeFunction<Int32 Function(Pointer, Pointer<Int32> value)>
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Int32> value)>()(
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

  Pointer<Utf16> get replacement {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 6)
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
}
