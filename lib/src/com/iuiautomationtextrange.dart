// iuiautomationtextrange.dart

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
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTextRange = '{a543cc6a-f4ae-494b-8239-c814481187a8}';

/// Provides access to a span of continuous text in a container that
/// supports the IUIAutomationTextPattern interface. Client applications can
/// use the IUIAutomationTextRange interface to select, compare, and
/// retrieve embedded objects from the text span.
///
/// {@category Interface}
/// {@category com}
class IUIAutomationTextRange extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IUIAutomationTextRange(super.ptr);

  factory IUIAutomationTextRange.from(IUnknown interface) =>
      IUIAutomationTextRange(interface.toInterface(IID_IUIAutomationTextRange));

  int clone(Pointer<Pointer<COMObject>> clonedRange) => ptr.ref.vtable
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<COMObject>> clonedRange)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> clonedRange)>()(
      ptr.ref.lpVtbl, clonedRange);

  int compare(Pointer<COMObject> range, Pointer<Int32> areSame) =>
      ptr.ref.vtable
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<COMObject> range,
                          Pointer<Int32> areSame)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<COMObject> range,
                  Pointer<Int32> areSame)>()(ptr.ref.lpVtbl, range, areSame);

  int compareEndpoints(int srcEndPoint, Pointer<COMObject> range,
          int targetEndPoint, Pointer<Int32> compValue) =>
      ptr.ref.vtable
              .elementAt(5)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Int32 srcEndPoint,
                              Pointer<COMObject> range,
                              Int32 targetEndPoint,
                              Pointer<Int32> compValue)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int srcEndPoint,
                      Pointer<COMObject> range,
                      int targetEndPoint,
                      Pointer<Int32> compValue)>()(
          ptr.ref.lpVtbl, srcEndPoint, range, targetEndPoint, compValue);

  int expandToEnclosingUnit(int textUnit) => ptr.ref.vtable
      .elementAt(6)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 textUnit)>>>()
      .value
      .asFunction<
          int Function(Pointer, int textUnit)>()(ptr.ref.lpVtbl, textUnit);

  int findAttribute(int attr, VARIANT val, int backward,
          Pointer<Pointer<COMObject>> found) =>
      ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 attr,
                              VARIANT val,
                              Int32 backward,
                              Pointer<Pointer<COMObject>> found)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int attr, VARIANT val, int backward,
                      Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, attr, val, backward, found);

  int findText(Pointer<Utf16> text, int backward, int ignoreCase,
          Pointer<Pointer<COMObject>> found) =>
      ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Utf16> text,
                              Int32 backward,
                              Int32 ignoreCase,
                              Pointer<Pointer<COMObject>> found)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> text, int backward,
                      int ignoreCase, Pointer<Pointer<COMObject>> found)>()(
          ptr.ref.lpVtbl, text, backward, ignoreCase, found);

  int getAttributeValue(int attr, Pointer<VARIANT> value) => ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Uint32 attr, Pointer<VARIANT> value)>>>()
          .value
          .asFunction<
              int Function(Pointer, int attr, Pointer<VARIANT> value)>()(
      ptr.ref.lpVtbl, attr, value);

  int getBoundingRectangles(Pointer<Pointer<SAFEARRAY>> boundingRects) => ptr
          .ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer,
                          Pointer<Pointer<SAFEARRAY>> boundingRects)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Pointer<SAFEARRAY>> boundingRects)>()(
      ptr.ref.lpVtbl, boundingRects);

  int getEnclosingElement(Pointer<Pointer<COMObject>> enclosingElement) =>
      ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<COMObject>> enclosingElement)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<COMObject>> enclosingElement)>()(
          ptr.ref.lpVtbl, enclosingElement);

  int getText(int maxLength, Pointer<Pointer<Utf16>> text) => ptr.ref.vtable
      .elementAt(12)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Int32 maxLength,
                      Pointer<Pointer<Utf16>> text)>>>()
      .value
      .asFunction<
          int Function(Pointer, int maxLength,
              Pointer<Pointer<Utf16>> text)>()(ptr.ref.lpVtbl, maxLength, text);

  int move(int unit, int count, Pointer<Int32> moved) => ptr.ref.vtable
      .elementAt(13)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Int32 unit, Int32 count,
                      Pointer<Int32> moved)>>>()
      .value
      .asFunction<
          int Function(Pointer, int unit, int count,
              Pointer<Int32> moved)>()(ptr.ref.lpVtbl, unit, count, moved);

  int moveEndpointByUnit(
          int endpoint, int unit, int count, Pointer<Int32> moved) =>
      ptr
              .ref.vtable
              .elementAt(14)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Int32 endpoint, Int32 unit,
                              Int32 count, Pointer<Int32> moved)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int endpoint, int unit, int count,
                      Pointer<Int32> moved)>()(
          ptr.ref.lpVtbl, endpoint, unit, count, moved);

  int
      moveEndpointByRange(
              int srcEndPoint, Pointer<COMObject> range, int targetEndPoint) =>
          ptr.ref.vtable
                  .elementAt(15)
                  .cast<
                      Pointer<
                          NativeFunction<
                              Int32 Function(
                                  Pointer,
                                  Int32 srcEndPoint,
                                  Pointer<COMObject> range,
                                  Int32 targetEndPoint)>>>()
                  .value
                  .asFunction<
                      int Function(Pointer, int srcEndPoint,
                          Pointer<COMObject> range, int targetEndPoint)>()(
              ptr.ref.lpVtbl, srcEndPoint, range, targetEndPoint);

  int select() => ptr.ref.vtable
      .elementAt(16)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int addToSelection() => ptr.ref.vtable
      .elementAt(17)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int removeFromSelection() => ptr.ref.vtable
      .elementAt(18)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int scrollIntoView(int alignToTop) => ptr.ref.vtable
      .elementAt(19)
      .cast<
          Pointer<NativeFunction<Int32 Function(Pointer, Int32 alignToTop)>>>()
      .value
      .asFunction<
          int Function(Pointer, int alignToTop)>()(ptr.ref.lpVtbl, alignToTop);

  int getChildren(Pointer<Pointer<COMObject>> children) => ptr.ref.vtable
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<COMObject>> children)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> children)>()(
      ptr.ref.lpVtbl, children);
}
