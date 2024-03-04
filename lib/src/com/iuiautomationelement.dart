// iuiautomationelement.dart

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
const IID_IUIAutomationElement = '{d22108aa-8ac5-49a5-837b-37bbb3d7591e}';

/// Exposes methods and properties for a UI Automation element, which
/// represents a UI item.
///
/// {@category com}
class IUIAutomationElement extends IUnknown {
  // vtable begins at 3, is 82 entries long.
  IUIAutomationElement(super.ptr);

  factory IUIAutomationElement.from(IUnknown interface) =>
      IUIAutomationElement(interface.toInterface(IID_IUIAutomationElement));

  int setFocus() => (ptr.ref.vtable + 3)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int getRuntimeId(Pointer<Pointer<SAFEARRAY>> runtimeId) => (ptr.ref.vtable +
              4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<SAFEARRAY>> runtimeId)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<SAFEARRAY>> runtimeId)>()(
      ptr.ref.lpVtbl, runtimeId);

  int findFirst(int scope, Pointer<COMObject> condition,
          Pointer<Pointer<COMObject>> found) =>
      (ptr.ref.vtable + 5)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 scope,
                              Pointer<COMObject> condition,
                              Pointer<Pointer<COMObject>> found)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int scope, Pointer<COMObject> condition,
                      Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, found);

  int findAll(int scope, Pointer<COMObject> condition,
          Pointer<Pointer<COMObject>> found) =>
      (ptr.ref.vtable + 6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 scope,
                              Pointer<COMObject> condition,
                              Pointer<Pointer<COMObject>> found)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int scope, Pointer<COMObject> condition,
                      Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, found);

  int findFirstBuildCache(int scope, Pointer<COMObject> condition,
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> found) =>
      (ptr.ref.vtable + 7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 scope,
                              Pointer<COMObject> condition,
                              Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> found)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int scope,
                      Pointer<COMObject> condition,
                      Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, cacheRequest, found);

  int findAllBuildCache(int scope, Pointer<COMObject> condition,
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> found) =>
      (ptr.ref.vtable + 8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 scope,
                              Pointer<COMObject> condition,
                              Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> found)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int scope,
                      Pointer<COMObject> condition,
                      Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, scope, condition, cacheRequest, found);

  int buildUpdatedCache(Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> updatedElement) =>
      (ptr.ref.vtable + 9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> updatedElement)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> updatedElement)>()(
          ptr.ref.lpVtbl, cacheRequest, updatedElement);

  int getCurrentPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      (ptr.ref.vtable + 10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 propertyId,
                              Pointer<VARIANT> retVal)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int propertyId, Pointer<VARIANT> retVal)>()(
          ptr.ref.lpVtbl, propertyId, retVal);

  int getCurrentPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      (ptr.ref.vtable + 11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 propertyId,
                              Int32 ignoreDefaultValue,
                              Pointer<VARIANT> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int propertyId, int ignoreDefaultValue,
                      Pointer<VARIANT> retVal)>()(
          ptr.ref.lpVtbl, propertyId, ignoreDefaultValue, retVal);

  int getCachedPropertyValue(int propertyId, Pointer<VARIANT> retVal) =>
      (ptr.ref.vtable + 12)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 propertyId,
                              Pointer<VARIANT> retVal)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int propertyId, Pointer<VARIANT> retVal)>()(
          ptr.ref.lpVtbl, propertyId, retVal);

  int getCachedPropertyValueEx(
          int propertyId, int ignoreDefaultValue, Pointer<VARIANT> retVal) =>
      (ptr.ref.vtable + 13)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 propertyId,
                              Int32 ignoreDefaultValue,
                              Pointer<VARIANT> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int propertyId, int ignoreDefaultValue,
                      Pointer<VARIANT> retVal)>()(
          ptr.ref.lpVtbl, propertyId, ignoreDefaultValue, retVal);

  int getCurrentPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      (ptr.ref.vtable + 14)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 patternId,
                              Pointer<GUID> riid,
                              Pointer<Pointer> patternObject)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int patternId, Pointer<GUID> riid,
                      Pointer<Pointer> patternObject)>()(
          ptr.ref.lpVtbl, patternId, riid, patternObject);

  int getCachedPatternAs(
          int patternId, Pointer<GUID> riid, Pointer<Pointer> patternObject) =>
      (ptr.ref.vtable + 15)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 patternId,
                              Pointer<GUID> riid,
                              Pointer<Pointer> patternObject)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int patternId, Pointer<GUID> riid,
                      Pointer<Pointer> patternObject)>()(
          ptr.ref.lpVtbl, patternId, riid, patternObject);

  int getCurrentPattern(
          int patternId, Pointer<Pointer<COMObject>> patternObject) =>
      (ptr.ref.vtable + 16)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 patternId,
                              Pointer<Pointer<COMObject>> patternObject)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int patternId,
                      Pointer<Pointer<COMObject>> patternObject)>()(
          ptr.ref.lpVtbl, patternId, patternObject);

  int getCachedPattern(
          int patternId, Pointer<Pointer<COMObject>> patternObject) =>
      (ptr.ref.vtable + 17)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 patternId,
                              Pointer<Pointer<COMObject>> patternObject)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int patternId,
                      Pointer<Pointer<COMObject>> patternObject)>()(
          ptr.ref.lpVtbl, patternId, patternObject);

  int getCachedParent(Pointer<Pointer<COMObject>> parent) =>
      (ptr.ref.vtable + 18)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<COMObject>> parent)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<COMObject>> parent)>()(
          ptr.ref.lpVtbl, parent);

  int getCachedChildren(Pointer<Pointer<COMObject>> children) =>
      (ptr.ref.vtable + 19)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<COMObject>> children)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<COMObject>> children)>()(
          ptr.ref.lpVtbl, children);

  int get currentProcessId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 20)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentControlType {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = (ptr.ref.vtable + 21)
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

  Pointer<Utf16> get currentLocalizedControlType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 22)
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

  Pointer<Utf16> get currentName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 23)
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

  Pointer<Utf16> get currentAcceleratorKey {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 24)
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

  Pointer<Utf16> get currentAccessKey {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 25)
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

  int get currentHasKeyboardFocus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 26)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsKeyboardFocusable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 27)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsEnabled {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 28)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentAutomationId {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 29)
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

  Pointer<Utf16> get currentClassName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 30)
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

  Pointer<Utf16> get currentHelpText {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 31)
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

  int get currentCulture {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 32)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsControlElement {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 33)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsContentElement {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 34)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentIsPassword {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 35)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentNativeWindowHandle {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = (ptr.ref.vtable + 36)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<IntPtr> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<IntPtr> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentItemType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 37)
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

  int get currentIsOffscreen {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 38)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get currentOrientation {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 39)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentFrameworkId {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 40)
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

  int get currentIsRequiredForForm {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 41)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get currentItemStatus {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 42)
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

  RECT get currentBoundingRectangle {
    final retValuePtr = calloc<RECT>();

    try {
      final hr = (ptr.ref.vtable + 43)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<RECT> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<RECT> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get currentLabeledBy {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 44)
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

  Pointer<Utf16> get currentAriaRole {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 45)
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

  Pointer<Utf16> get currentAriaProperties {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 46)
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

  int get currentIsDataValidForForm {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 47)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get currentControllerFor {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 48)
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

  Pointer<COMObject> get currentDescribedBy {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 49)
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

  Pointer<COMObject> get currentFlowsTo {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 50)
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

  Pointer<Utf16> get currentProviderDescription {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 51)
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

  int get cachedProcessId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 52)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedControlType {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = (ptr.ref.vtable + 53)
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

  Pointer<Utf16> get cachedLocalizedControlType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 54)
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

  Pointer<Utf16> get cachedName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 55)
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

  Pointer<Utf16> get cachedAcceleratorKey {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 56)
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

  Pointer<Utf16> get cachedAccessKey {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 57)
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

  int get cachedHasKeyboardFocus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 58)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsKeyboardFocusable {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 59)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsEnabled {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 60)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedAutomationId {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 61)
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

  Pointer<Utf16> get cachedClassName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 62)
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

  Pointer<Utf16> get cachedHelpText {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 63)
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

  int get cachedCulture {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 64)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsControlElement {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 65)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsContentElement {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 66)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedIsPassword {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 67)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedNativeWindowHandle {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = (ptr.ref.vtable + 68)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<IntPtr> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<IntPtr> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedItemType {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 69)
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

  int get cachedIsOffscreen {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 70)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get cachedOrientation {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 71)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedFrameworkId {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 72)
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

  int get cachedIsRequiredForForm {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 73)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get cachedItemStatus {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 74)
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

  RECT get cachedBoundingRectangle {
    final retValuePtr = calloc<RECT>();

    try {
      final hr = (ptr.ref.vtable + 75)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<RECT> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<RECT> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get cachedLabeledBy {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 76)
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

  Pointer<Utf16> get cachedAriaRole {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 77)
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

  Pointer<Utf16> get cachedAriaProperties {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 78)
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

  int get cachedIsDataValidForForm {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 79)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> retVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> retVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get cachedControllerFor {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 80)
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

  Pointer<COMObject> get cachedDescribedBy {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 81)
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

  Pointer<COMObject> get cachedFlowsTo {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 82)
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

  Pointer<Utf16> get cachedProviderDescription {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = (ptr.ref.vtable + 83)
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

  int getClickablePoint(
          Pointer<POINT> clickable, Pointer<Int32> gotClickable) =>
      (ptr.ref.vtable + 84)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<POINT> clickable,
                              Pointer<Int32> gotClickable)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<POINT> clickable,
                      Pointer<Int32> gotClickable)>()(
          ptr.ref.lpVtbl, clickable, gotClickable);
}
