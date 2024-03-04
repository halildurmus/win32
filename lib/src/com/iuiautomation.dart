// iuiautomation.dart

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
const IID_IUIAutomation = '{30cbe57d-d9d0-452a-ab13-7ac5ac4825ee}';

/// Exposes methods that enable Microsoft UI Automation client applications
/// to discover, access, and filter UI Automation elements.
///
/// {@category com}
class IUIAutomation extends IUnknown {
  // vtable begins at 3, is 55 entries long.
  IUIAutomation(super.ptr);

  factory IUIAutomation.from(IUnknown interface) =>
      IUIAutomation(interface.toInterface(IID_IUIAutomation));

  int compareElements(Pointer<COMObject> el1, Pointer<COMObject> el2,
          Pointer<Int32> areSame) =>
      (ptr.ref.vtable + 3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<COMObject> el1,
                          Pointer<COMObject> el2, Pointer<Int32> areSame)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> el1,
                  Pointer<COMObject> el2,
                  Pointer<Int32> areSame)>()(ptr.ref.lpVtbl, el1, el2, areSame);

  int compareRuntimeIds(Pointer<SAFEARRAY> runtimeId1,
          Pointer<SAFEARRAY> runtimeId2, Pointer<Int32> areSame) =>
      (ptr.ref.vtable + 4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<SAFEARRAY> runtimeId1,
                              Pointer<SAFEARRAY> runtimeId2,
                              Pointer<Int32> areSame)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<SAFEARRAY> runtimeId1,
                      Pointer<SAFEARRAY> runtimeId2, Pointer<Int32> areSame)>()(
          ptr.ref.lpVtbl, runtimeId1, runtimeId2, areSame);

  int getRootElement(Pointer<Pointer<COMObject>> root) => (ptr.ref.vtable + 5)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Pointer<Pointer<COMObject>> root)>>>()
      .value
      .asFunction<
          int Function(Pointer,
              Pointer<Pointer<COMObject>> root)>()(ptr.ref.lpVtbl, root);

  int elementFromHandle(int hwnd, Pointer<Pointer<COMObject>> element) =>
      (ptr.ref.vtable + 6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, IntPtr hwnd,
                              Pointer<Pointer<COMObject>> element)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int hwnd,
                      Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, hwnd, element);

  int elementFromPoint(POINT pt, Pointer<Pointer<COMObject>> element) =>
      (ptr.ref.vtable + 7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, POINT pt,
                              Pointer<Pointer<COMObject>> element)>>>()
              .value
              .asFunction<
                  int Function(Pointer, POINT pt,
                      Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, pt, element);

  int getFocusedElement(Pointer<Pointer<COMObject>> element) =>
      (ptr.ref.vtable +
                  8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<COMObject>> element)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, element);

  int getRootElementBuildCache(
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> root) =>
      (ptr.ref.vtable + 9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<COMObject> cacheRequest,
                          Pointer<Pointer<COMObject>> root)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>>
                      root)>()(ptr.ref.lpVtbl, cacheRequest, root);

  int elementFromHandleBuildCache(int hwnd, Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> element) =>
      (ptr.ref.vtable + 10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              IntPtr hwnd,
                              Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> element)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int hwnd,
                      Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, hwnd, cacheRequest, element);

  int elementFromPointBuildCache(POINT pt, Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> element) =>
      (ptr.ref.vtable + 11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              POINT pt,
                              Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> element)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      POINT pt,
                      Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, pt, cacheRequest, element);

  int getFocusedElementBuildCache(Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> element) =>
      (ptr.ref.vtable + 12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<COMObject> cacheRequest,
                          Pointer<Pointer<COMObject>> element)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> cacheRequest,
                  Pointer<Pointer<COMObject>>
                      element)>()(ptr.ref.lpVtbl, cacheRequest, element);

  int createTreeWalker(
          Pointer<COMObject> pCondition, Pointer<Pointer<COMObject>> walker) =>
      (ptr.ref.vtable + 13)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> pCondition,
                              Pointer<Pointer<COMObject>> walker)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> pCondition,
                      Pointer<Pointer<COMObject>> walker)>()(
          ptr.ref.lpVtbl, pCondition, walker);

  Pointer<COMObject> get controlViewWalker {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 14)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Pointer<COMObject> walker)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> walker)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get contentViewWalker {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 15)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Pointer<COMObject> walker)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> walker)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get rawViewWalker {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 16)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer, Pointer<COMObject> walker)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject> walker)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get rawViewCondition {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 17)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(Pointer, Pointer<COMObject> condition)>>>()
        .value
        .asFunction<
            int Function(Pointer,
                Pointer<COMObject> condition)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get controlViewCondition {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(Pointer, Pointer<COMObject> condition)>>>()
        .value
        .asFunction<
            int Function(Pointer,
                Pointer<COMObject> condition)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get contentViewCondition {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 19)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(Pointer, Pointer<COMObject> condition)>>>()
        .value
        .asFunction<
            int Function(Pointer,
                Pointer<COMObject> condition)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int createCacheRequest(Pointer<Pointer<COMObject>> cacheRequest) =>
      (ptr.ref.vtable + 20)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<COMObject>> cacheRequest)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<COMObject>> cacheRequest)>()(
          ptr.ref.lpVtbl, cacheRequest);

  int createTrueCondition(Pointer<Pointer<COMObject>> newCondition) =>
      (ptr.ref.vtable + 21)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<COMObject>> newCondition)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, newCondition);

  int createFalseCondition(Pointer<Pointer<COMObject>> newCondition) =>
      (ptr.ref.vtable + 22)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<COMObject>> newCondition)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, newCondition);

  int
      createPropertyCondition(int propertyId, VARIANT value,
              Pointer<Pointer<COMObject>> newCondition) =>
          (ptr.ref.vtable + 23)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Uint32 propertyId,
                                  VARIANT value,
                                  Pointer<Pointer<COMObject>> newCondition)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer, int propertyId, VARIANT value,
                          Pointer<Pointer<COMObject>> newCondition)>()(
              ptr.ref.lpVtbl, propertyId, value, newCondition);

  int createPropertyConditionEx(int propertyId, VARIANT value, int flags,
          Pointer<Pointer<COMObject>> newCondition) =>
      (ptr.ref.vtable + 24)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 propertyId,
                              VARIANT value,
                              Int32 flags,
                              Pointer<Pointer<COMObject>> newCondition)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int propertyId, VARIANT value,
                      int flags, Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, propertyId, value, flags, newCondition);

  int createAndCondition(
          Pointer<COMObject> condition1,
          Pointer<COMObject> condition2,
          Pointer<Pointer<COMObject>> newCondition) =>
      (ptr.ref.vtable + 25)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> condition1,
                              Pointer<COMObject> condition2,
                              Pointer<Pointer<COMObject>> newCondition)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> condition1,
                      Pointer<COMObject> condition2,
                      Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, condition1, condition2, newCondition);

  int createAndConditionFromArray(Pointer<SAFEARRAY> conditions,
          Pointer<Pointer<COMObject>> newCondition) =>
      (ptr.ref.vtable + 26)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<SAFEARRAY> conditions,
                              Pointer<Pointer<COMObject>> newCondition)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<SAFEARRAY> conditions,
                      Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, conditions, newCondition);

  int createAndConditionFromNativeArray(Pointer<Pointer<COMObject>> conditions,
          int conditionCount, Pointer<Pointer<COMObject>> newCondition) =>
      (ptr.ref.vtable + 27)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer<COMObject>> conditions,
                              Int32 conditionCount,
                              Pointer<Pointer<COMObject>> newCondition)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer<COMObject>> conditions,
                      int conditionCount,
                      Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, conditions, conditionCount, newCondition);

  int createOrCondition(
          Pointer<COMObject> condition1,
          Pointer<COMObject> condition2,
          Pointer<Pointer<COMObject>> newCondition) =>
      (ptr.ref.vtable + 28)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> condition1,
                              Pointer<COMObject> condition2,
                              Pointer<Pointer<COMObject>> newCondition)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> condition1,
                      Pointer<COMObject> condition2,
                      Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, condition1, condition2, newCondition);

  int createOrConditionFromArray(Pointer<SAFEARRAY> conditions,
          Pointer<Pointer<COMObject>> newCondition) =>
      (ptr.ref.vtable + 29)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<SAFEARRAY> conditions,
                              Pointer<Pointer<COMObject>> newCondition)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<SAFEARRAY> conditions,
                      Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, conditions, newCondition);

  int createOrConditionFromNativeArray(Pointer<Pointer<COMObject>> conditions,
          int conditionCount, Pointer<Pointer<COMObject>> newCondition) =>
      (ptr.ref.vtable + 30)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer<COMObject>> conditions,
                              Int32 conditionCount,
                              Pointer<Pointer<COMObject>> newCondition)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer<COMObject>> conditions,
                      int conditionCount,
                      Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, conditions, conditionCount, newCondition);

  int createNotCondition(Pointer<COMObject> condition,
          Pointer<Pointer<COMObject>> newCondition) =>
      (ptr.ref.vtable + 31)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> condition,
                              Pointer<Pointer<COMObject>> newCondition)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> condition,
                      Pointer<Pointer<COMObject>> newCondition)>()(
          ptr.ref.lpVtbl, condition, newCondition);

  int addAutomationEventHandler(
          int eventId,
          Pointer<COMObject> element,
          int scope,
          Pointer<COMObject> cacheRequest,
          Pointer<COMObject> handler) =>
      (ptr.ref.vtable + 32)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 eventId,
                              Pointer<COMObject> element,
                              Int32 scope,
                              Pointer<COMObject> cacheRequest,
                              Pointer<COMObject> handler)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int eventId,
                      Pointer<COMObject> element,
                      int scope,
                      Pointer<COMObject> cacheRequest,
                      Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, eventId, element, scope, cacheRequest, handler);

  int removeAutomationEventHandler(int eventId, Pointer<COMObject> element,
          Pointer<COMObject> handler) =>
      (ptr.ref.vtable + 33)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 eventId,
                              Pointer<COMObject> element,
                              Pointer<COMObject> handler)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int eventId, Pointer<COMObject> element,
                      Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, eventId, element, handler);

  int addPropertyChangedEventHandlerNativeArray(
          Pointer<COMObject> element,
          int scope,
          Pointer<COMObject> cacheRequest,
          Pointer<COMObject> handler,
          Pointer<Uint32> propertyArray,
          int propertyCount) =>
      (ptr.ref.vtable + 34)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> element,
                              Int32 scope,
                              Pointer<COMObject> cacheRequest,
                              Pointer<COMObject> handler,
                              Pointer<Uint32> propertyArray,
                              Int32 propertyCount)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> element,
                      int scope,
                      Pointer<COMObject> cacheRequest,
                      Pointer<COMObject> handler,
                      Pointer<Uint32> propertyArray,
                      int propertyCount)>()(ptr.ref.lpVtbl, element, scope,
          cacheRequest, handler, propertyArray, propertyCount);

  int addPropertyChangedEventHandler(
          Pointer<COMObject> element,
          int scope,
          Pointer<COMObject> cacheRequest,
          Pointer<COMObject> handler,
          Pointer<SAFEARRAY> propertyArray) =>
      (ptr.ref.vtable + 35)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> element,
                              Int32 scope,
                              Pointer<COMObject> cacheRequest,
                              Pointer<COMObject> handler,
                              Pointer<SAFEARRAY> propertyArray)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> element,
                      int scope,
                      Pointer<COMObject> cacheRequest,
                      Pointer<COMObject> handler,
                      Pointer<SAFEARRAY> propertyArray)>()(
          ptr.ref.lpVtbl, element, scope, cacheRequest, handler, propertyArray);

  int removePropertyChangedEventHandler(
          Pointer<COMObject> element, Pointer<COMObject> handler) =>
      (ptr.ref.vtable + 36)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> element,
                              Pointer<COMObject> handler)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> element,
                      Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, element, handler);

  int addStructureChangedEventHandler(Pointer<COMObject> element, int scope,
          Pointer<COMObject> cacheRequest, Pointer<COMObject> handler) =>
      (ptr.ref.vtable + 37)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> element,
                              Int32 scope,
                              Pointer<COMObject> cacheRequest,
                              Pointer<COMObject> handler)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> element,
                      int scope,
                      Pointer<COMObject> cacheRequest,
                      Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, element, scope, cacheRequest, handler);

  int removeStructureChangedEventHandler(
          Pointer<COMObject> element, Pointer<COMObject> handler) =>
      (ptr.ref.vtable + 38)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> element,
                              Pointer<COMObject> handler)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> element,
                      Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, element, handler);

  int addFocusChangedEventHandler(
          Pointer<COMObject> cacheRequest, Pointer<COMObject> handler) =>
      (ptr.ref.vtable + 39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<COMObject> cacheRequest,
                          Pointer<COMObject> handler)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer,
                  Pointer<COMObject> cacheRequest,
                  Pointer<COMObject>
                      handler)>()(ptr.ref.lpVtbl, cacheRequest, handler);

  int removeFocusChangedEventHandler(Pointer<COMObject> handler) => (ptr
                  .ref.vtable +
              40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<COMObject> handler)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<COMObject> handler)>()(
      ptr.ref.lpVtbl, handler);

  int removeAllEventHandlers() => (ptr.ref.vtable + 41)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int intNativeArrayToSafeArray(Pointer<Int32> array, int arrayCount,
          Pointer<Pointer<SAFEARRAY>> safeArray) =>
      (ptr.ref.vtable + 42)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Int32> array,
                              Int32 arrayCount,
                              Pointer<Pointer<SAFEARRAY>> safeArray)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Int32> array, int arrayCount,
                      Pointer<Pointer<SAFEARRAY>> safeArray)>()(
          ptr.ref.lpVtbl, array, arrayCount, safeArray);

  int intSafeArrayToNativeArray(Pointer<SAFEARRAY> intArray,
          Pointer<Pointer<Int32>> array, Pointer<Int32> arrayCount) =>
      (ptr.ref.vtable + 43)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<SAFEARRAY> intArray,
                              Pointer<Pointer<Int32>> array,
                              Pointer<Int32> arrayCount)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<SAFEARRAY> intArray,
                      Pointer<Pointer<Int32>> array,
                      Pointer<Int32> arrayCount)>()(
          ptr.ref.lpVtbl, intArray, array, arrayCount);

  int rectToVariant(RECT rc, Pointer<VARIANT> var_) => (ptr.ref.vtable + 44)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, RECT rc, Pointer<VARIANT> var_)>>>()
      .value
      .asFunction<
          int Function(Pointer, RECT rc,
              Pointer<VARIANT> var_)>()(ptr.ref.lpVtbl, rc, var_);

  int variantToRect(VARIANT var_, Pointer<RECT> rc) => (ptr.ref.vtable + 45)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, VARIANT var_, Pointer<RECT> rc)>>>()
      .value
      .asFunction<
          int Function(Pointer, VARIANT var_,
              Pointer<RECT> rc)>()(ptr.ref.lpVtbl, var_, rc);

  int safeArrayToRectNativeArray(Pointer<SAFEARRAY> rects,
          Pointer<Pointer<RECT>> rectArray, Pointer<Int32> rectArrayCount) =>
      (ptr.ref.vtable + 46)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<SAFEARRAY> rects,
                              Pointer<Pointer<RECT>> rectArray,
                              Pointer<Int32> rectArrayCount)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<SAFEARRAY> rects,
                      Pointer<Pointer<RECT>> rectArray,
                      Pointer<Int32> rectArrayCount)>()(
          ptr.ref.lpVtbl, rects, rectArray, rectArrayCount);

  int createProxyFactoryEntry(Pointer<COMObject> factory,
          Pointer<Pointer<COMObject>> factoryEntry) =>
      (ptr.ref.vtable + 47)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> factory,
                              Pointer<Pointer<COMObject>> factoryEntry)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> factory,
                      Pointer<Pointer<COMObject>> factoryEntry)>()(
          ptr.ref.lpVtbl, factory, factoryEntry);

  Pointer<COMObject> get proxyFactoryMapping {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 48)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(
                            Pointer, Pointer<COMObject> factoryMapping)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> factoryMapping)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int getPropertyProgrammaticName(int property, Pointer<Pointer<Utf16>> name) =>
      (ptr.ref.vtable + 49)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 property,
                              Pointer<Pointer<Utf16>> name)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int property, Pointer<Pointer<Utf16>> name)>()(
          ptr.ref.lpVtbl, property, name);

  int getPatternProgrammaticName(int pattern, Pointer<Pointer<Utf16>> name) =>
      (ptr.ref.vtable + 50)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 pattern,
                              Pointer<Pointer<Utf16>> name)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int pattern, Pointer<Pointer<Utf16>> name)>()(
          ptr.ref.lpVtbl, pattern, name);

  int pollForPotentialSupportedPatterns(
          Pointer<COMObject> pElement,
          Pointer<Pointer<SAFEARRAY>> patternIds,
          Pointer<Pointer<SAFEARRAY>> patternNames) =>
      (ptr.ref.vtable + 51)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> pElement,
                              Pointer<Pointer<SAFEARRAY>> patternIds,
                              Pointer<Pointer<SAFEARRAY>> patternNames)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> pElement,
                      Pointer<Pointer<SAFEARRAY>> patternIds,
                      Pointer<Pointer<SAFEARRAY>> patternNames)>()(
          ptr.ref.lpVtbl, pElement, patternIds, patternNames);

  int pollForPotentialSupportedProperties(
          Pointer<COMObject> pElement,
          Pointer<Pointer<SAFEARRAY>> propertyIds,
          Pointer<Pointer<SAFEARRAY>> propertyNames) =>
      (ptr.ref.vtable + 52)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> pElement,
                              Pointer<Pointer<SAFEARRAY>> propertyIds,
                              Pointer<Pointer<SAFEARRAY>> propertyNames)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> pElement,
                      Pointer<Pointer<SAFEARRAY>> propertyIds,
                      Pointer<Pointer<SAFEARRAY>> propertyNames)>()(
          ptr.ref.lpVtbl, pElement, propertyIds, propertyNames);

  int checkNotSupported(VARIANT value, Pointer<Int32> isNotSupported) =>
      (ptr.ref.vtable + 53)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, VARIANT value,
                              Pointer<Int32> isNotSupported)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, VARIANT value, Pointer<Int32> isNotSupported)>()(
          ptr.ref.lpVtbl, value, isNotSupported);

  Pointer<COMObject> get reservedNotSupportedValue {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 54)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(
                            Pointer, Pointer<COMObject> notSupportedValue)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<COMObject> notSupportedValue)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> get reservedMixedAttributeValue {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 55)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer,
                            Pointer<COMObject> mixedAttributeValue)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> mixedAttributeValue)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int elementFromIAccessible(Pointer<COMObject> accessible, int childId,
          Pointer<Pointer<COMObject>> element) =>
      (ptr.ref.vtable + 56)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> accessible,
                              Int32 childId,
                              Pointer<Pointer<COMObject>> element)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> accessible,
                      int childId, Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, accessible, childId, element);

  int elementFromIAccessibleBuildCache(
          Pointer<COMObject> accessible,
          int childId,
          Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> element) =>
      (ptr.ref.vtable + 57)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> accessible,
                              Int32 childId,
                              Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> element)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> accessible,
                      int childId,
                      Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, accessible, childId, cacheRequest, element);
}

/// @nodoc
const CLSID_CUIAutomation = '{ff48dba4-60ef-4201-aa87-54103eef594e}';

/// {@category com}
class CUIAutomation extends IUIAutomation {
  CUIAutomation(super.ptr);

  factory CUIAutomation.createInstance() => CUIAutomation(
      COMObject.createFromID(CLSID_CUIAutomation, IID_IUIAutomation));
}
