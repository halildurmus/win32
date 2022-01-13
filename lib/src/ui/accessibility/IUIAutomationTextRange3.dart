// IUIAutomationTextRange3.dart

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

import '../../ui/accessibility/IUIAutomationTextRange2.dart';
import '../../ui/accessibility/IUIAutomationCacheRequest.dart';
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/IUIAutomationElementArray.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IUIAutomationTextRange3 = '{6A315D69-5512-4C2E-85F0-53FCE6DD4BC2}';

/// {@category Interface}
/// {@category com}
class IUIAutomationTextRange3 extends IUIAutomationTextRange2 {
  // vtable begins at 22, is 3 entries long.
  IUIAutomationTextRange3(Pointer<COMObject> ptr) : super(ptr);

  int GetEnclosingElementBuildCache(
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> enclosingElement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> enclosingElement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> enclosingElement,
          )>()(
        ptr.ref.lpVtbl,
        cacheRequest,
        enclosingElement,
      );

  int GetChildrenBuildCache(
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> children,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> children,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> children,
          )>()(
        ptr.ref.lpVtbl,
        cacheRequest,
        children,
      );

  int GetAttributeValues(
    Pointer<Int32> attributeIds,
    int attributeIdCount,
    Pointer<Pointer<SAFEARRAY>> attributeValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> attributeIds,
            Int32 attributeIdCount,
            Pointer<Pointer<SAFEARRAY>> attributeValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> attributeIds,
            int attributeIdCount,
            Pointer<Pointer<SAFEARRAY>> attributeValues,
          )>()(
        ptr.ref.lpVtbl,
        attributeIds,
        attributeIdCount,
        attributeValues,
      );
}
