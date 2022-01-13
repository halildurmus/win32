// IUIAutomationTextRange.dart

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
import '../../ui/accessibility/IUIAutomationTextRange.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/structs.g.dart';
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../ui/accessibility/IUIAutomationElementArray.dart';

/// @nodoc
const IID_IUIAutomationTextRange = '{A543CC6A-F4AE-494B-8239-C814481187A8}';

/// {@category Interface}
/// {@category com}
class IUIAutomationTextRange extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IUIAutomationTextRange(Pointer<COMObject> ptr) : super(ptr);

  int Clone(
    Pointer<Pointer<COMObject>> clonedRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> clonedRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> clonedRange,
          )>()(
        ptr.ref.lpVtbl,
        clonedRange,
      );

  int Compare(
    Pointer<COMObject> range,
    Pointer<Int32> areSame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> range,
            Pointer<Int32> areSame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> range,
            Pointer<Int32> areSame,
          )>()(
        ptr.ref.lpVtbl,
        range,
        areSame,
      );

  int CompareEndpoints(
    int srcEndPoint,
    Pointer<COMObject> range,
    int targetEndPoint,
    Pointer<Int32> compValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 srcEndPoint,
            Pointer<COMObject> range,
            Int32 targetEndPoint,
            Pointer<Int32> compValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int srcEndPoint,
            Pointer<COMObject> range,
            int targetEndPoint,
            Pointer<Int32> compValue,
          )>()(
        ptr.ref.lpVtbl,
        srcEndPoint,
        range,
        targetEndPoint,
        compValue,
      );

  int ExpandToEnclosingUnit(
    int textUnit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 textUnit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textUnit,
          )>()(
        ptr.ref.lpVtbl,
        textUnit,
      );

  int FindAttribute(
    int attr,
    VARIANT val,
    int backward,
    Pointer<Pointer<COMObject>> found,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 attr,
            VARIANT val,
            Int32 backward,
            Pointer<Pointer<COMObject>> found,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int attr,
            VARIANT val,
            int backward,
            Pointer<Pointer<COMObject>> found,
          )>()(
        ptr.ref.lpVtbl,
        attr,
        val,
        backward,
        found,
      );

  int FindText(
    Pointer<Utf16> text,
    int backward,
    int ignoreCase,
    Pointer<Pointer<COMObject>> found,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> text,
            Int32 backward,
            Int32 ignoreCase,
            Pointer<Pointer<COMObject>> found,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> text,
            int backward,
            int ignoreCase,
            Pointer<Pointer<COMObject>> found,
          )>()(
        ptr.ref.lpVtbl,
        text,
        backward,
        ignoreCase,
        found,
      );

  int GetAttributeValue(
    int attr,
    Pointer<VARIANT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 attr,
            Pointer<VARIANT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int attr,
            Pointer<VARIANT> value,
          )>()(
        ptr.ref.lpVtbl,
        attr,
        value,
      );

  int GetBoundingRectangles(
    Pointer<Pointer<SAFEARRAY>> boundingRects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> boundingRects,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> boundingRects,
          )>()(
        ptr.ref.lpVtbl,
        boundingRects,
      );

  int GetEnclosingElement(
    Pointer<Pointer<COMObject>> enclosingElement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> enclosingElement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> enclosingElement,
          )>()(
        ptr.ref.lpVtbl,
        enclosingElement,
      );

  int GetText(
    int maxLength,
    Pointer<Pointer<Utf16>> text,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 maxLength,
            Pointer<Pointer<Utf16>> text,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int maxLength,
            Pointer<Pointer<Utf16>> text,
          )>()(
        ptr.ref.lpVtbl,
        maxLength,
        text,
      );

  int Move(
    int unit,
    int count,
    Pointer<Int32> moved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 unit,
            Int32 count,
            Pointer<Int32> moved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int unit,
            int count,
            Pointer<Int32> moved,
          )>()(
        ptr.ref.lpVtbl,
        unit,
        count,
        moved,
      );

  int MoveEndpointByUnit(
    int endpoint,
    int unit,
    int count,
    Pointer<Int32> moved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 endpoint,
            Int32 unit,
            Int32 count,
            Pointer<Int32> moved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int endpoint,
            int unit,
            int count,
            Pointer<Int32> moved,
          )>()(
        ptr.ref.lpVtbl,
        endpoint,
        unit,
        count,
        moved,
      );

  int MoveEndpointByRange(
    int srcEndPoint,
    Pointer<COMObject> range,
    int targetEndPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 srcEndPoint,
            Pointer<COMObject> range,
            Int32 targetEndPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int srcEndPoint,
            Pointer<COMObject> range,
            int targetEndPoint,
          )>()(
        ptr.ref.lpVtbl,
        srcEndPoint,
        range,
        targetEndPoint,
      );

  int Select() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int AddToSelection() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int RemoveFromSelection() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int ScrollIntoView(
    int alignToTop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 alignToTop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int alignToTop,
          )>()(
        ptr.ref.lpVtbl,
        alignToTop,
      );

  int GetChildren(
    Pointer<Pointer<COMObject>> children,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> children,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> children,
          )>()(
        ptr.ref.lpVtbl,
        children,
      );
}
