// IUIAutomation6.dart

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

import '../../ui/accessibility/IUIAutomation5.dart';
import '../../ui/accessibility/IUIAutomationEventHandlerGroup.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../ui/accessibility/IUIAutomationCacheRequest.dart';
import '../../ui/accessibility/IUIAutomationActiveTextPositionChangedEventHandler.dart';

/// @nodoc
const IID_IUIAutomation6 = '{AAE072DA-29E3-413D-87A7-192DBF81ED10}';

/// {@category Interface}
/// {@category com}
class IUIAutomation6 extends IUIAutomation5 {
  // vtable begins at 70, is 9 entries long.
  IUIAutomation6(Pointer<COMObject> ptr) : super(ptr);

  int CreateEventHandlerGroup(
    Pointer<Pointer<COMObject>> handlerGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> handlerGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> handlerGroup,
          )>()(
        ptr.ref.lpVtbl,
        handlerGroup,
      );

  int AddEventHandlerGroup(
    Pointer<COMObject> element,
    Pointer<COMObject> handlerGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> handlerGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> handlerGroup,
          )>()(
        ptr.ref.lpVtbl,
        element,
        handlerGroup,
      );

  int RemoveEventHandlerGroup(
    Pointer<COMObject> element,
    Pointer<COMObject> handlerGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> handlerGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> handlerGroup,
          )>()(
        ptr.ref.lpVtbl,
        element,
        handlerGroup,
      );

  int get ConnectionRecoveryBehavior {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> connectionRecoveryBehaviorOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> connectionRecoveryBehaviorOptions,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ConnectionRecoveryBehavior(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(74)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 connectionRecoveryBehaviorOptions,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int connectionRecoveryBehaviorOptions,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get CoalesceEvents {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> coalesceEventsOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> coalesceEventsOptions,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CoalesceEvents(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(76)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 coalesceEventsOptions,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int coalesceEventsOptions,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int AddActiveTextPositionChangedEventHandler(
    Pointer<COMObject> element,
    int scope,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
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

  int RemoveActiveTextPositionChangedEventHandler(
    Pointer<COMObject> element,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
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
}
