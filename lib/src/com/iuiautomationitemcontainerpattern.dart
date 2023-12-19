// iuiautomationitemcontainerpattern.dart

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
const IID_IUIAutomationItemContainerPattern =
    '{c690fdb2-27a8-423c-812d-429773c9084e}';

/// Exposes a method that retrieves an item from a container, such as a
/// virtual list.
///
/// {@category com}
class IUIAutomationItemContainerPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationItemContainerPattern(super.ptr);

  factory IUIAutomationItemContainerPattern.from(IUnknown interface) =>
      IUIAutomationItemContainerPattern(
          interface.toInterface(IID_IUIAutomationItemContainerPattern));

  int findItemByProperty(Pointer<COMObject> pStartAfter, int propertyId,
          VARIANT value, Pointer<Pointer<COMObject>> pFound) =>
      ptr.ref.vtable
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> pStartAfter,
                              Uint32 propertyId,
                              VARIANT value,
                              Pointer<Pointer<COMObject>> pFound)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> pStartAfter,
                      int propertyId,
                      VARIANT value,
                      Pointer<Pointer<COMObject>> pFound)>()(
          ptr.ref.lpVtbl, pStartAfter, propertyId, value, pFound);
}
