// IUIAutomationTreeWalker.dart

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
import '../../ui/accessibility/IUIAutomationCacheRequest.dart';
import '../../ui/accessibility/IUIAutomationCondition.dart';

/// @nodoc
const IID_IUIAutomationTreeWalker = '{4042C624-389C-4AFC-A630-9DF854A541FC}';

/// {@category Interface}
/// {@category com}
class IUIAutomationTreeWalker extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IUIAutomationTreeWalker(Pointer<COMObject> ptr) : super(ptr);

  int GetParentElement(
    Pointer<COMObject> element,
    Pointer<Pointer<COMObject>> parent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> parent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> parent,
          )>()(
        ptr.ref.lpVtbl,
        element,
        parent,
      );

  int GetFirstChildElement(
    Pointer<COMObject> element,
    Pointer<Pointer<COMObject>> first,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> first,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> first,
          )>()(
        ptr.ref.lpVtbl,
        element,
        first,
      );

  int GetLastChildElement(
    Pointer<COMObject> element,
    Pointer<Pointer<COMObject>> last,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> last,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> last,
          )>()(
        ptr.ref.lpVtbl,
        element,
        last,
      );

  int GetNextSiblingElement(
    Pointer<COMObject> element,
    Pointer<Pointer<COMObject>> next,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> next,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> next,
          )>()(
        ptr.ref.lpVtbl,
        element,
        next,
      );

  int GetPreviousSiblingElement(
    Pointer<COMObject> element,
    Pointer<Pointer<COMObject>> previous,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> previous,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> previous,
          )>()(
        ptr.ref.lpVtbl,
        element,
        previous,
      );

  int NormalizeElement(
    Pointer<COMObject> element,
    Pointer<Pointer<COMObject>> normalized,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> normalized,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<Pointer<COMObject>> normalized,
          )>()(
        ptr.ref.lpVtbl,
        element,
        normalized,
      );

  int GetParentElementBuildCache(
    Pointer<COMObject> element,
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> parent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> parent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> parent,
          )>()(
        ptr.ref.lpVtbl,
        element,
        cacheRequest,
        parent,
      );

  int GetFirstChildElementBuildCache(
    Pointer<COMObject> element,
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> first,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> first,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> first,
          )>()(
        ptr.ref.lpVtbl,
        element,
        cacheRequest,
        first,
      );

  int GetLastChildElementBuildCache(
    Pointer<COMObject> element,
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> last,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> last,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> last,
          )>()(
        ptr.ref.lpVtbl,
        element,
        cacheRequest,
        last,
      );

  int GetNextSiblingElementBuildCache(
    Pointer<COMObject> element,
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> next,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> next,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> next,
          )>()(
        ptr.ref.lpVtbl,
        element,
        cacheRequest,
        next,
      );

  int GetPreviousSiblingElementBuildCache(
    Pointer<COMObject> element,
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> previous,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> previous,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> previous,
          )>()(
        ptr.ref.lpVtbl,
        element,
        cacheRequest,
        previous,
      );

  int NormalizeElementBuildCache(
    Pointer<COMObject> element,
    Pointer<COMObject> cacheRequest,
    Pointer<Pointer<COMObject>> normalized,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> normalized,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> element,
            Pointer<COMObject> cacheRequest,
            Pointer<Pointer<COMObject>> normalized,
          )>()(
        ptr.ref.lpVtbl,
        element,
        cacheRequest,
        normalized,
      );

  Pointer<COMObject> get Condition {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
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
}
