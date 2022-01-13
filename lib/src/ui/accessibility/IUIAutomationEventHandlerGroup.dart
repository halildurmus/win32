// IUIAutomationEventHandlerGroup.dart

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
import '../../ui/accessibility/structs.g.dart';
import '../../ui/accessibility/IUIAutomationCacheRequest.dart';
import '../../ui/accessibility/IUIAutomationActiveTextPositionChangedEventHandler.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/IUIAutomationEventHandler.dart';
import '../../ui/accessibility/IUIAutomationChangesEventHandler.dart';
import '../../ui/accessibility/IUIAutomationNotificationEventHandler.dart';
import '../../ui/accessibility/IUIAutomationPropertyChangedEventHandler.dart';
import '../../ui/accessibility/IUIAutomationStructureChangedEventHandler.dart';
import '../../ui/accessibility/IUIAutomationTextEditTextChangedEventHandler.dart';

/// @nodoc
const IID_IUIAutomationEventHandlerGroup =
    '{C9EE12F2-C13B-4408-997C-639914377F4E}';

/// {@category Interface}
/// {@category com}
class IUIAutomationEventHandlerGroup extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IUIAutomationEventHandlerGroup(Pointer<COMObject> ptr) : super(ptr);

  int AddActiveTextPositionChangedEventHandler(
    int scope,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        scope,
        cacheRequest,
        handler,
      );

  int AddAutomationEventHandler(
    int eventId,
    int scope,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eventId,
            Int32 scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eventId,
            int scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        eventId,
        scope,
        cacheRequest,
        handler,
      );

  int AddChangesEventHandler(
    int scope,
    Pointer<Int32> changeTypes,
    int changesCount,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scope,
            Pointer<Int32> changeTypes,
            Int32 changesCount,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scope,
            Pointer<Int32> changeTypes,
            int changesCount,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        scope,
        changeTypes,
        changesCount,
        cacheRequest,
        handler,
      );

  int AddNotificationEventHandler(
    int scope,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        scope,
        cacheRequest,
        handler,
      );

  int AddPropertyChangedEventHandler(
    int scope,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
    Pointer<Int32> propertyArray,
    int propertyCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
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
            int scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
            Pointer<Int32> propertyArray,
            int propertyCount,
          )>()(
        ptr.ref.lpVtbl,
        scope,
        cacheRequest,
        handler,
        propertyArray,
        propertyCount,
      );

  int AddStructureChangedEventHandler(
    int scope,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scope,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        scope,
        cacheRequest,
        handler,
      );

  int AddTextEditTextChangedEventHandler(
    int scope,
    int textEditChangeType,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scope,
            Int32 textEditChangeType,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scope,
            int textEditChangeType,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        scope,
        textEditChangeType,
        cacheRequest,
        handler,
      );
}
