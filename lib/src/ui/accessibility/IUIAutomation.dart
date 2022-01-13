// IUIAutomation.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../ui/accessibility/IUIAutomationCacheRequest.dart';
import '../../ui/accessibility/IUIAutomationCondition.dart';
import '../../ui/accessibility/IUIAutomationTreeWalker.dart';
import '../../specialTypes.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../ui/accessibility/IUIAutomationEventHandler.dart';
import '../../ui/accessibility/IUIAutomationPropertyChangedEventHandler.dart';
import '../../ui/accessibility/IUIAutomationStructureChangedEventHandler.dart';
import '../../ui/accessibility/IUIAutomationFocusChangedEventHandler.dart';
import '../../ui/accessibility/IUIAutomationProxyFactory.dart';
import '../../ui/accessibility/IUIAutomationProxyFactoryEntry.dart';
import '../../ui/accessibility/IUIAutomationProxyFactoryMapping.dart';
import '../../ui/accessibility/IAccessible.dart';

/// @nodoc
const IID_IUIAutomation = '{30CBE57D-D9D0-452A-AB13-7AC5AC4825EE}';

/// {@category Interface}
/// {@category com}
class IUIAutomation extends IUnknown {
  // vtable begins at 3, is 55 entries long.
  IUIAutomation(Pointer<COMObject> ptr) : super(ptr);

  int CompareElements(
    Pointer<COMObject> el1,
    Pointer<COMObject> el2,
    Pointer<Int32> areSame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> el1,
            Pointer<COMObject> el2,
            Pointer<Int32> areSame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> el1,
            Pointer<COMObject> el2,
            Pointer<Int32> areSame,
          )>()(
        ptr.ref.lpVtbl,
        el1,
        el2,
        areSame,
      );

  int CompareRuntimeIds(
    Pointer<SAFEARRAY> runtimeId1,
    Pointer<SAFEARRAY> runtimeId2,
    Pointer<Int32> areSame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> runtimeId1,
            Pointer<SAFEARRAY> runtimeId2,
            Pointer<Int32> areSame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> runtimeId1,
            Pointer<SAFEARRAY> runtimeId2,
            Pointer<Int32> areSame,
          )>()(
        ptr.ref.lpVtbl,
        runtimeId1,
        runtimeId2,
        areSame,
      );

  int GetRootElement(
    Pointer<Pointer<COMObject>> root,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> root,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> root,
          )>()(
        ptr.ref.lpVtbl,
        root,
      );

  int ElementFromHandle(
    int hwnd,
    Pointer<Pointer<COMObject>> element,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<Pointer<COMObject>> element,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<Pointer<COMObject>> element,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        element,
      );

  int ElementFromPoint(
    POINT pt,
    Pointer<Pointer<COMObject>> element,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            POINT pt,
            Pointer<Pointer<COMObject>> element,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            POINT pt,
            Pointer<Pointer<COMObject>> element,
          )>()(
        ptr.ref.lpVtbl,
        pt,
        element,
      );

  int GetFocusedElement(
    Pointer<Pointer<COMObject>> element,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> element,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> element,
          )>()(
        ptr.ref.lpVtbl,
        element,
      );

  int GetRootElementBuildCache(
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> root,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> root,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> root,
          )>()(
        ptr.ref.lpVtbl,
        cacheRequest,
        root,
      );

  int ElementFromHandleBuildCache(
    int hwnd,
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> element,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> element,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> element,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        cacheRequest,
        element,
      );

  int ElementFromPointBuildCache(
    POINT pt,
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> element,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            POINT pt,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> element,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            POINT pt,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> element,
          )>()(
        ptr.ref.lpVtbl,
        pt,
        cacheRequest,
        element,
      );

  int GetFocusedElementBuildCache(
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> element,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> element,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> element,
          )>()(
        ptr.ref.lpVtbl,
        cacheRequest,
        element,
      );

  int CreateTreeWalker(
    Pointer<COMObject> pCondition,
    Pointer<Pointer<COMObject>> walker,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCondition,
            Pointer<Pointer<COMObject>> walker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCondition,
            Pointer<Pointer<COMObject>> walker,
          )>()(
        ptr.ref.lpVtbl,
        pCondition,
        walker,
      );

  Pointer<COMObject> get ControlViewWalker {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> walker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> walker,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get ContentViewWalker {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> walker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> walker,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get RawViewWalker {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> walker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> walker,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get RawViewCondition {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> condition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> condition,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get ControlViewCondition {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> condition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> condition,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get ContentViewCondition {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> condition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> condition,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CreateCacheRequest(
    Pointer<Pointer<COMObject>> cacheRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> cacheRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> cacheRequest,
          )>()(
        ptr.ref.lpVtbl,
        cacheRequest,
      );

  int CreateTrueCondition(
    Pointer<Pointer<COMObject>> newCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> newCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> newCondition,
          )>()(
        ptr.ref.lpVtbl,
        newCondition,
      );

  int CreateFalseCondition(
    Pointer<Pointer<COMObject>> newCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> newCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> newCondition,
          )>()(
        ptr.ref.lpVtbl,
        newCondition,
      );

  int CreatePropertyCondition(
    int propertyId,
    VARIANT value,
    Pointer<Pointer<COMObject>> newCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propertyId,
            VARIANT value,
            Pointer<Pointer<COMObject>> newCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propertyId,
            VARIANT value,
            Pointer<Pointer<COMObject>> newCondition,
          )>()(
        ptr.ref.lpVtbl,
        propertyId,
        value,
        newCondition,
      );

  int CreatePropertyConditionEx(
    int propertyId,
    VARIANT value,
    int flags,
    Pointer<Pointer<COMObject>> newCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propertyId,
            VARIANT value,
            Int32 flags,
            Pointer<Pointer<COMObject>> newCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propertyId,
            VARIANT value,
            int flags,
            Pointer<Pointer<COMObject>> newCondition,
          )>()(
        ptr.ref.lpVtbl,
        propertyId,
        value,
        flags,
        newCondition,
      );

  int CreateAndCondition(
    Pointer<COMObject> condition1,
    Pointer<COMObject> condition2,
    Pointer<Pointer<COMObject>> newCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> condition1,
            Pointer<COMObject> condition2,
            Pointer<Pointer<COMObject>> newCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> condition1,
            Pointer<COMObject> condition2,
            Pointer<Pointer<COMObject>> newCondition,
          )>()(
        ptr.ref.lpVtbl,
        condition1,
        condition2,
        newCondition,
      );

  int CreateAndConditionFromArray(
    Pointer<SAFEARRAY> conditions,
    Pointer<Pointer<COMObject>> newCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> conditions,
            Pointer<Pointer<COMObject>> newCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> conditions,
            Pointer<Pointer<COMObject>> newCondition,
          )>()(
        ptr.ref.lpVtbl,
        conditions,
        newCondition,
      );

  int CreateAndConditionFromNativeArray(
    Pointer<Pointer<COMObject>> conditions,
    int conditionCount,
    Pointer<Pointer<COMObject>> newCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> conditions,
            Int32 conditionCount,
            Pointer<Pointer<COMObject>> newCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> conditions,
            int conditionCount,
            Pointer<Pointer<COMObject>> newCondition,
          )>()(
        ptr.ref.lpVtbl,
        conditions,
        conditionCount,
        newCondition,
      );

  int CreateOrCondition(
    Pointer<COMObject> condition1,
    Pointer<COMObject> condition2,
    Pointer<Pointer<COMObject>> newCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> condition1,
            Pointer<COMObject> condition2,
            Pointer<Pointer<COMObject>> newCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> condition1,
            Pointer<COMObject> condition2,
            Pointer<Pointer<COMObject>> newCondition,
          )>()(
        ptr.ref.lpVtbl,
        condition1,
        condition2,
        newCondition,
      );

  int CreateOrConditionFromArray(
    Pointer<SAFEARRAY> conditions,
    Pointer<Pointer<COMObject>> newCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> conditions,
            Pointer<Pointer<COMObject>> newCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> conditions,
            Pointer<Pointer<COMObject>> newCondition,
          )>()(
        ptr.ref.lpVtbl,
        conditions,
        newCondition,
      );

  int CreateOrConditionFromNativeArray(
    Pointer<Pointer<COMObject>> conditions,
    int conditionCount,
    Pointer<Pointer<COMObject>> newCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> conditions,
            Int32 conditionCount,
            Pointer<Pointer<COMObject>> newCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> conditions,
            int conditionCount,
            Pointer<Pointer<COMObject>> newCondition,
          )>()(
        ptr.ref.lpVtbl,
        conditions,
        conditionCount,
        newCondition,
      );

  int CreateNotCondition(
    Pointer<COMObject> condition,
    Pointer<Pointer<COMObject>> newCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> condition,
            Pointer<Pointer<COMObject>> newCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> condition,
            Pointer<Pointer<COMObject>> newCondition,
          )>()(
        ptr.ref.lpVtbl,
        condition,
        newCondition,
      );

  int AddAutomationEventHandler(
    int eventId,
    Pointer<COMObject> element,
    int scope,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eventId,
            Pointer<COMObject> element,
            Int32 scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eventId,
            Pointer<COMObject> element,
            int scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        eventId,
        element,
        scope,
        cacheRequest,
        handler,
      );

  int RemoveAutomationEventHandler(
    int eventId,
    Pointer<COMObject> element,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eventId,
            Pointer<COMObject> element,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eventId,
            Pointer<COMObject> element,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        eventId,
        element,
        handler,
      );

  int AddPropertyChangedEventHandlerNativeArray(
    Pointer<COMObject> element,
    int scope,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
    Pointer<Int32> propertyArray,
    int propertyCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Int32 scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
            Pointer<Int32> propertyArray,
            Int32 propertyCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            int scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
            Pointer<Int32> propertyArray,
            int propertyCount,
          )>()(
        ptr.ref.lpVtbl,
        element,
        scope,
        cacheRequest,
        handler,
        propertyArray,
        propertyCount,
      );

  int AddPropertyChangedEventHandler(
    Pointer<COMObject> element,
    int scope,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
    Pointer<SAFEARRAY> propertyArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Int32 scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
            Pointer<SAFEARRAY> propertyArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            int scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
            Pointer<SAFEARRAY> propertyArray,
          )>()(
        ptr.ref.lpVtbl,
        element,
        scope,
        cacheRequest,
        handler,
        propertyArray,
      );

  int RemovePropertyChangedEventHandler(
    Pointer<COMObject> element,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        element,
        handler,
      );

  int AddStructureChangedEventHandler(
    Pointer<COMObject> element,
    int scope,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Int32 scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            int scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        element,
        scope,
        cacheRequest,
        handler,
      );

  int RemoveStructureChangedEventHandler(
    Pointer<COMObject> element,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        element,
        handler,
      );

  int AddFocusChangedEventHandler(
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        cacheRequest,
        handler,
      );

  int RemoveFocusChangedEventHandler(
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        handler,
      );

  int RemoveAllEventHandlers() => ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int IntNativeArrayToSafeArray(
    Pointer<Int32> array,
    int arrayCount,
    Pointer<Pointer<SAFEARRAY>> safeArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> array,
            Int32 arrayCount,
            Pointer<Pointer<SAFEARRAY>> safeArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> array,
            int arrayCount,
            Pointer<Pointer<SAFEARRAY>> safeArray,
          )>()(
        ptr.ref.lpVtbl,
        array,
        arrayCount,
        safeArray,
      );

  int IntSafeArrayToNativeArray(
    Pointer<SAFEARRAY> intArray,
    Pointer<Pointer<Int32>> array,
    Pointer<Int32> arrayCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> intArray,
            Pointer<Pointer<Int32>> array,
            Pointer<Int32> arrayCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> intArray,
            Pointer<Pointer<Int32>> array,
            Pointer<Int32> arrayCount,
          )>()(
        ptr.ref.lpVtbl,
        intArray,
        array,
        arrayCount,
      );

  int RectToVariant(
    RECT rc,
    Pointer<VARIANT> $var,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            RECT rc,
            Pointer<VARIANT> $var,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            RECT rc,
            Pointer<VARIANT> $var,
          )>()(
        ptr.ref.lpVtbl,
        rc,
        $var,
      );

  int VariantToRect(
    VARIANT $var,
    Pointer<RECT> rc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT $var,
            Pointer<RECT> rc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT $var,
            Pointer<RECT> rc,
          )>()(
        ptr.ref.lpVtbl,
        $var,
        rc,
      );

  int SafeArrayToRectNativeArray(
    Pointer<SAFEARRAY> rects,
    Pointer<Pointer<RECT>> rectArray,
    Pointer<Int32> rectArrayCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> rects,
            Pointer<Pointer<RECT>> rectArray,
            Pointer<Int32> rectArrayCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> rects,
            Pointer<Pointer<RECT>> rectArray,
            Pointer<Int32> rectArrayCount,
          )>()(
        ptr.ref.lpVtbl,
        rects,
        rectArray,
        rectArrayCount,
      );

  int CreateProxyFactoryEntry(
    Pointer<COMObject> factory,
    Pointer<Pointer<COMObject>> factoryEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> factory,
            Pointer<Pointer<COMObject>> factoryEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> factory,
            Pointer<Pointer<COMObject>> factoryEntry,
          )>()(
        ptr.ref.lpVtbl,
        factory,
        factoryEntry,
      );

  Pointer<COMObject> get ProxyFactoryMapping {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> factoryMapping,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> factoryMapping,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetPropertyProgrammaticName(
    int property,
    Pointer<Pointer<Utf16>> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 property,
            Pointer<Pointer<Utf16>> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int property,
            Pointer<Pointer<Utf16>> name,
          )>()(
        ptr.ref.lpVtbl,
        property,
        name,
      );

  int GetPatternProgrammaticName(
    int pattern,
    Pointer<Pointer<Utf16>> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 pattern,
            Pointer<Pointer<Utf16>> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pattern,
            Pointer<Pointer<Utf16>> name,
          )>()(
        ptr.ref.lpVtbl,
        pattern,
        name,
      );

  int PollForPotentialSupportedPatterns(
    Pointer<COMObject> pElement,
    Pointer<Pointer<SAFEARRAY>> patternIds,
    Pointer<Pointer<SAFEARRAY>> patternNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pElement,
            Pointer<Pointer<SAFEARRAY>> patternIds,
            Pointer<Pointer<SAFEARRAY>> patternNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pElement,
            Pointer<Pointer<SAFEARRAY>> patternIds,
            Pointer<Pointer<SAFEARRAY>> patternNames,
          )>()(
        ptr.ref.lpVtbl,
        pElement,
        patternIds,
        patternNames,
      );

  int PollForPotentialSupportedProperties(
    Pointer<COMObject> pElement,
    Pointer<Pointer<SAFEARRAY>> propertyIds,
    Pointer<Pointer<SAFEARRAY>> propertyNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pElement,
            Pointer<Pointer<SAFEARRAY>> propertyIds,
            Pointer<Pointer<SAFEARRAY>> propertyNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pElement,
            Pointer<Pointer<SAFEARRAY>> propertyIds,
            Pointer<Pointer<SAFEARRAY>> propertyNames,
          )>()(
        ptr.ref.lpVtbl,
        pElement,
        propertyIds,
        propertyNames,
      );

  int CheckNotSupported(
    VARIANT value,
    Pointer<Int32> isNotSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT value,
            Pointer<Int32> isNotSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT value,
            Pointer<Int32> isNotSupported,
          )>()(
        ptr.ref.lpVtbl,
        value,
        isNotSupported,
      );

  Pointer<COMObject> get ReservedNotSupportedValue {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> notSupportedValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> notSupportedValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get ReservedMixedAttributeValue {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> mixedAttributeValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> mixedAttributeValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int ElementFromIAccessible(
    Pointer<COMObject> accessible,
    int childId,
    Pointer<Pointer<COMObject>> element,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> accessible,
            Int32 childId,
            Pointer<Pointer<COMObject>> element,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> accessible,
            int childId,
            Pointer<Pointer<COMObject>> element,
          )>()(
        ptr.ref.lpVtbl,
        accessible,
        childId,
        element,
      );

  int ElementFromIAccessibleBuildCache(
    Pointer<COMObject> accessible,
    int childId,
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> element,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> accessible,
            Int32 childId,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> element,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> accessible,
            int childId,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> element,
          )>()(
        ptr.ref.lpVtbl,
        accessible,
        childId,
        cacheRequest,
        element,
      );
}
