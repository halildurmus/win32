// iuiautomationtreewalker.dart

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
const IID_IUIAutomationTreeWalker = '{4042c624-389c-4afc-a630-9df854a541fc}';

/// Exposes properties and methods that UI Automation client applications
/// use to view and navigate the UI Automation elements on the desktop.
///
/// {@category Interface}
/// {@category com}
class IUIAutomationTreeWalker extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IUIAutomationTreeWalker(super.ptr);

  factory IUIAutomationTreeWalker.from(IUnknown interface) =>
      IUIAutomationTreeWalker(
          interface.toInterface(IID_IUIAutomationTreeWalker));

  int getParentElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> parent) =>
      ptr.ref.vtable
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> element,
                              Pointer<Pointer<COMObject>> parent)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> element,
                      Pointer<Pointer<COMObject>> parent)>()(
          ptr.ref.lpVtbl, element, parent);

  int getFirstChildElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> first) =>
      ptr.ref.vtable
              .elementAt(4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> element,
                              Pointer<Pointer<COMObject>> first)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> element,
                      Pointer<Pointer<COMObject>> first)>()(
          ptr.ref.lpVtbl, element, first);

  int getLastChildElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> last) =>
      ptr.ref.vtable
              .elementAt(5)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> element,
                              Pointer<Pointer<COMObject>> last)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> element,
                      Pointer<Pointer<COMObject>> last)>()(
          ptr.ref.lpVtbl, element, last);

  int getNextSiblingElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> next) =>
      ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> element,
                              Pointer<Pointer<COMObject>> next)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> element,
                      Pointer<Pointer<COMObject>> next)>()(
          ptr.ref.lpVtbl, element, next);

  int getPreviousSiblingElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> previous) =>
      ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> element,
                              Pointer<Pointer<COMObject>> previous)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> element,
                      Pointer<Pointer<COMObject>> previous)>()(
          ptr.ref.lpVtbl, element, previous);

  int normalizeElement(
          Pointer<COMObject> element, Pointer<Pointer<COMObject>> normalized) =>
      ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> element,
                              Pointer<Pointer<COMObject>> normalized)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> element,
                      Pointer<Pointer<COMObject>> normalized)>()(
          ptr.ref.lpVtbl, element, normalized);

  int getParentElementBuildCache(
          Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> parent) =>
      ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> element,
                              Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> parent)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> element,
                      Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> parent)>()(
          ptr.ref.lpVtbl, element, cacheRequest, parent);

  int getFirstChildElementBuildCache(Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> first) =>
      ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> element,
                              Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> first)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> element,
                      Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> first)>()(
          ptr.ref.lpVtbl, element, cacheRequest, first);

  int getLastChildElementBuildCache(Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> last) =>
      ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> element,
                              Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> last)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> element,
                      Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> last)>()(
          ptr.ref.lpVtbl, element, cacheRequest, last);

  int getNextSiblingElementBuildCache(Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest, Pointer<Pointer<COMObject>> next) =>
      ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> element,
                              Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> next)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> element,
                      Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> next)>()(
          ptr.ref.lpVtbl, element, cacheRequest, next);

  int getPreviousSiblingElementBuildCache(
          Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> previous) =>
      ptr.ref.vtable
              .elementAt(13)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> element,
                              Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> previous)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> element,
                      Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> previous)>()(
          ptr.ref.lpVtbl, element, cacheRequest, previous);

  int normalizeElementBuildCache(
          Pointer<COMObject> element,
          Pointer<COMObject> cacheRequest,
          Pointer<Pointer<COMObject>> normalized) =>
      ptr.ref.vtable
              .elementAt(14)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> element,
                              Pointer<COMObject> cacheRequest,
                              Pointer<Pointer<COMObject>> normalized)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> element,
                      Pointer<COMObject> cacheRequest,
                      Pointer<Pointer<COMObject>> normalized)>()(
          ptr.ref.lpVtbl, element, cacheRequest, normalized);

  Pointer<COMObject> get condition {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(15)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer,
                              Pointer<Pointer<COMObject>> condition)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, Pointer<Pointer<COMObject>> condition)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
