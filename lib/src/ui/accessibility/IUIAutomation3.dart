// IUIAutomation3.dart

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

import '../../ui/accessibility/IUIAutomation2.dart';
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../ui/accessibility/IUIAutomationCacheRequest.dart';
import '../../ui/accessibility/IUIAutomationTextEditTextChangedEventHandler.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomation3 = '{73D768DA-9B51-4B89-936E-C209290973E7}';

/// {@category Interface}
/// {@category com}
class IUIAutomation3 extends IUIAutomation2 {
  // vtable begins at 64, is 2 entries long.
  IUIAutomation3(Pointer<COMObject> ptr) : super(ptr);

  int AddTextEditTextChangedEventHandler(
    Pointer<COMObject> element,
    int scope,
    int textEditChangeType,
    Pointer<COMObject> cacheRequest,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Int32 scope,
            Int32 textEditChangeType,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            int scope,
            int textEditChangeType,
            Pointer<COMObject> cacheRequest,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        element,
        scope,
        textEditChangeType,
        cacheRequest,
        handler,
      );

  int RemoveTextEditTextChangedEventHandler(
    Pointer<COMObject> element,
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
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
