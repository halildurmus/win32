// IUIAutomation4.dart

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

import '../../ui/accessibility/IUIAutomation3.dart';
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../ui/accessibility/IUIAutomationCacheRequest.dart';
import '../../ui/accessibility/IUIAutomationChangesEventHandler.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomation4 = '{1189C02A-05F8-4319-8E21-E817E3DB2860}';

/// {@category Interface}
/// {@category com}
class IUIAutomation4 extends IUIAutomation3 {
  // vtable begins at 66, is 2 entries long.
  IUIAutomation4(Pointer<COMObject> ptr) : super(ptr);

  int AddChangesEventHandler(
    Pointer<COMObject> element,
    int scope,
    Pointer<Int32> changeTypes,
    int changesCount,
    Pointer<COMObject> pCacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Int32 scope,
            Pointer<Int32> changeTypes,
            Int32 changesCount,
            Pointer<COMObject> pCacheRequest,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            int scope,
            Pointer<Int32> changeTypes,
            int changesCount,
            Pointer<COMObject> pCacheRequest,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        element,
        scope,
        changeTypes,
        changesCount,
        pCacheRequest,
        handler,
      );

  int RemoveChangesEventHandler(
    Pointer<COMObject> element,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
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
