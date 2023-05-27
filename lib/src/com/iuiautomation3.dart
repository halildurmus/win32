// iuiautomation3.dart

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
import 'iuiautomation2.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomation3 = '{73d768da-9b51-4b89-936e-c209290973e7}';

/// Extends the IUIAutomation2 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category Interface}
/// {@category com}
class IUIAutomation3 extends IUIAutomation2 {
  // vtable begins at 64, is 2 entries long.
  IUIAutomation3(super.ptr);

  factory IUIAutomation3.from(IUnknown interface) =>
      IUIAutomation3(interface.toInterface(IID_IUIAutomation3));

  int addTextEditTextChangedEventHandler(
          Pointer<COMObject> element,
          int scope,
          int textEditChangeType,
          Pointer<COMObject> cacheRequest,
          Pointer<COMObject> handler) =>
      ptr.ref.vtable
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
                              Pointer<COMObject> handler)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> element,
                      int scope,
                      int textEditChangeType,
                      Pointer<COMObject> cacheRequest,
                      Pointer<COMObject> handler)>()(ptr.ref.lpVtbl, element,
          scope, textEditChangeType, cacheRequest, handler);

  int removeTextEditTextChangedEventHandler(
          Pointer<COMObject> element, Pointer<COMObject> handler) =>
      ptr.ref.vtable
              .elementAt(65)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> element,
                              Pointer<COMObject> handler)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> element,
                      Pointer<COMObject> handler)>()(
          ptr.ref.lpVtbl, element, handler);
}
