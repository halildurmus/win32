// iuiautomationannotationpattern.dart

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
const IID_IUIAutomationAnnotationPattern =
    '{9a175b21-339e-41b1-8e8b-623f6b681098}';

/// Provides access to the properties of an annotation in a document.
///
/// {@category com}
class IUIAutomationAnnotationPattern extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IUIAutomationAnnotationPattern(super.ptr);

  factory IUIAutomationAnnotationPattern.from(IUnknown interface) =>
      IUIAutomationAnnotationPattern(
          interface.toInterface(IID_IUIAutomationAnnotationPattern));

  int get currentAnnotationTypeId {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Uint32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Uint32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentAnnotationTypeName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentAuthor {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(5)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentDateTime {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get currentTarget {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Pointer<COMObject> retVal)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int get cachedAnnotationTypeId {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Uint32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Uint32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedAnnotationTypeName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedAuthor {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedDateTime {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get cachedTarget {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Pointer<COMObject> retVal)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> retVal)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }
}
