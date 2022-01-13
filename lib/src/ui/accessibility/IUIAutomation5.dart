// IUIAutomation5.dart

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

import '../../ui/accessibility/IUIAutomation4.dart';
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../ui/accessibility/IUIAutomationCacheRequest.dart';
import '../../ui/accessibility/IUIAutomationNotificationEventHandler.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomation5 = '{25F700C8-D816-4057-A9DC-3CBDEE77E256}';

/// {@category Interface}
/// {@category com}
class IUIAutomation5 extends IUIAutomation4 {
  // vtable begins at 68, is 2 entries long.
  IUIAutomation5(Pointer<COMObject> ptr) : super(ptr);

  int AddNotificationEventHandler(
    Pointer<COMObject> element,
    int scope,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
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

  int RemoveNotificationEventHandler(
    Pointer<COMObject> element,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
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
