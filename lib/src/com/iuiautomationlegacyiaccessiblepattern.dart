// iuiautomationlegacyiaccessiblepattern.dart

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
const IID_IUIAutomationLegacyIAccessiblePattern =
    '{828055ad-355b-4435-86d5-3b51c14a9b1b}';

/// Exposes methods and properties that enable Microsoft UI Automation
/// clients to retrieve UI information from Microsoft Active Accessibility
/// (MSAA) servers.
///
/// {@category com}
class IUIAutomationLegacyIAccessiblePattern extends IUnknown {
  // vtable begins at 3, is 24 entries long.
  IUIAutomationLegacyIAccessiblePattern(super.ptr);

  factory IUIAutomationLegacyIAccessiblePattern.from(IUnknown interface) =>
      IUIAutomationLegacyIAccessiblePattern(
          interface.toInterface(IID_IUIAutomationLegacyIAccessiblePattern));

  int select(int flagsSelect) => (ptr.ref.vtable + 3)
      .cast<
          Pointer<NativeFunction<Int32 Function(Pointer, Int32 flagsSelect)>>>()
      .value
      .asFunction<
          int Function(
              Pointer, int flagsSelect)>()(ptr.ref.lpVtbl, flagsSelect);

  int doDefaultAction() => (ptr.ref.vtable + 4)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int setValue(Pointer<Utf16> szValue) => (ptr.ref.vtable + 5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Utf16> szValue)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Utf16> szValue)>()(
      ptr.ref.lpVtbl, szValue);

  int get currentChildId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> pRetVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> pRetVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> pszName)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> pszName)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentValue {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> pszValue)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> pszValue)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentDescription {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<Utf16>> pszDescription)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<Utf16>> pszDescription)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentRole {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = (ptr.ref.vtable + 10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Uint32> pdwRole)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Uint32> pdwRole)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentState {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = (ptr.ref.vtable + 11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Uint32> pdwState)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Uint32> pdwState)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentHelp {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 12)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> pszHelp)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> pszHelp)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentKeyboardShortcut {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 13)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<Utf16>> pszKeyboardShortcut)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<Utf16>> pszKeyboardShortcut)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int
      getCurrentSelection(
              Pointer<Pointer<COMObject>> pvarSelectedChildren) =>
          (ptr.ref.vtable + 14)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Pointer<Pointer<COMObject>>
                                      pvarSelectedChildren)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer,
                          Pointer<Pointer<COMObject>> pvarSelectedChildren)>()(
              ptr.ref.lpVtbl, pvarSelectedChildren);

  Pointer<Utf16> get currentDefaultAction {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 15)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<Utf16>> pszDefaultAction)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<Utf16>> pszDefaultAction)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedChildId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 16)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> pRetVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> pRetVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 17)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> pszName)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> pszName)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedValue {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 18)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> pszValue)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> pszValue)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedDescription {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 19)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<Utf16>> pszDescription)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<Utf16>> pszDescription)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedRole {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = (ptr.ref.vtable + 20)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Uint32> pdwRole)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Uint32> pdwRole)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedState {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = (ptr.ref.vtable + 21)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Uint32> pdwState)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Uint32> pdwState)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedHelp {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 22)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<Utf16>> pszHelp)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<Utf16>> pszHelp)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedKeyboardShortcut {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 23)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<Utf16>> pszKeyboardShortcut)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<Utf16>> pszKeyboardShortcut)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int
      getCachedSelection(Pointer<Pointer<COMObject>> pvarSelectedChildren) =>
          (ptr.ref.vtable + 24)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Pointer<Pointer<COMObject>>
                                      pvarSelectedChildren)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer,
                          Pointer<Pointer<COMObject>> pvarSelectedChildren)>()(
              ptr.ref.lpVtbl, pvarSelectedChildren);

  Pointer<Utf16> get cachedDefaultAction {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 25)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<Utf16>> pszDefaultAction)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<Utf16>> pszDefaultAction)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getIAccessible(Pointer<Pointer<COMObject>> ppAccessible) =>
      (ptr.ref.vtable + 26)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<COMObject>> ppAccessible)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<COMObject>> ppAccessible)>()(
          ptr.ref.lpVtbl, ppAccessible);
}
