// iuiautomation4.dart

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
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iuiautomation3.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomation4 = '{1189c02a-05f8-4319-8e21-e817e3db2860}';

/// Extends the IUIAutomation3 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// {@category com}
class IUIAutomation4 extends IUIAutomation3 {
  // vtable begins at 66, is 2 entries long.
  IUIAutomation4(super.ptr);

  factory IUIAutomation4.from(IUnknown interface) =>
      IUIAutomation4(interface.toInterface(IID_IUIAutomation4));

  int addChangesEventHandler(
          Pointer<COMObject> element,
          int scope,
          Pointer<Int32> changeTypes,
          int changesCount,
          Pointer<COMObject> pCacheRequest,
          Pointer<COMObject> handler) =>
      ptr.ref.vtable
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
                              Pointer<COMObject> handler)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> element,
                      int scope,
                      Pointer<Int32> changeTypes,
                      int changesCount,
                      Pointer<COMObject> pCacheRequest,
                      Pointer<COMObject> handler)>()(ptr.ref.lpVtbl, element,
          scope, changeTypes, changesCount, pCacheRequest, handler);

  int removeChangesEventHandler(
          Pointer<COMObject> element, Pointer<COMObject> handler) =>
      ptr.ref.vtable
              .elementAt(67)
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
