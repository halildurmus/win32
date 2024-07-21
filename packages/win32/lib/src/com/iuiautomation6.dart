// iuiautomation6.dart

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
import 'iuiautomation5.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomation6 = '{aae072da-29e3-413d-87a7-192dbf81ed10}';

/// Extends the IUIAutomation5 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category com}
class IUIAutomation6 extends IUIAutomation5 {
  // vtable begins at 70, is 9 entries long.
  IUIAutomation6(super.ptr);

  factory IUIAutomation6.from(IUnknown interface) =>
      IUIAutomation6(interface.toInterface(IID_IUIAutomation6));

  int createEventHandlerGroup(Pointer<Pointer<COMObject>> handlerGroup) =>
      (ptr.ref.vtable + 70)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<COMObject>> handlerGroup)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<COMObject>> handlerGroup)>()(
          ptr.ref.lpVtbl, handlerGroup);

  int addEventHandlerGroup(
          Pointer<COMObject> element, Pointer<COMObject> handlerGroup) =>
      (ptr.ref.vtable + 71)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> element,
                              Pointer<COMObject> handlerGroup)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> element,
                      Pointer<COMObject> handlerGroup)>()(
          ptr.ref.lpVtbl, element, handlerGroup);

  int removeEventHandlerGroup(
          Pointer<COMObject> element, Pointer<COMObject> handlerGroup) =>
      (ptr.ref.vtable + 72)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> element,
                              Pointer<COMObject> handlerGroup)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> element,
                      Pointer<COMObject> handlerGroup)>()(
          ptr.ref.lpVtbl, element, handlerGroup);

  int get connectionRecoveryBehavior {
    final retValuePtr = calloc<Int32>();

    try {
      final hr =
          (ptr.ref.vtable + 73)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Pointer<Int32>
                                      connectionRecoveryBehaviorOptions)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer,
                          Pointer<Int32> connectionRecoveryBehaviorOptions)>()(
              ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set connectionRecoveryBehavior(int value) {
    final hr = (ptr.ref.vtable + 74)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(Pointer,
                            Int32 connectionRecoveryBehaviorOptions)>>>()
            .value
            .asFunction<
                int Function(Pointer, int connectionRecoveryBehaviorOptions)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get coalesceEvents {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 75)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Int32> coalesceEventsOptions)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Int32> coalesceEventsOptions)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set coalesceEvents(int value) {
    final hr =
        (ptr.ref.vtable + 76)
                .cast<
                    Pointer<
                        NativeFunction<
                            Int32 Function(
                                Pointer, Int32 coalesceEventsOptions)>>>()
                .value
                .asFunction<int Function(Pointer, int coalesceEventsOptions)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int addActiveTextPositionChangedEventHandler(
          Pointer<COMObject> element,
          int scope,
          Pointer<COMObject> cacheRequest,
          Pointer<COMObject> handler) =>
      (ptr.ref.vtable + 77)
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

  int removeActiveTextPositionChangedEventHandler(
          Pointer<COMObject> element, Pointer<COMObject> handler) =>
      (ptr.ref.vtable + 78)
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
}
