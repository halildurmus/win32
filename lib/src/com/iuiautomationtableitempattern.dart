// iuiautomationtableitempattern.dart

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
const IID_IUIAutomationTableItemPattern =
    '{0b964eb3-ef2e-4464-9c79-61d61737a27e}';

/// Provides access to a child element in a container that supports
/// IUIAutomationTablePattern.
///
/// {@category com}
class IUIAutomationTableItemPattern extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IUIAutomationTableItemPattern(super.ptr);

  factory IUIAutomationTableItemPattern.from(IUnknown interface) =>
      IUIAutomationTableItemPattern(
          interface.toInterface(IID_IUIAutomationTableItemPattern));

  int getCurrentRowHeaderItems(Pointer<Pointer<COMObject>> retVal) => ptr
          .ref.vtable
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<COMObject>> retVal)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> retVal)>()(
      ptr.ref.lpVtbl, retVal);

  int getCurrentColumnHeaderItems(Pointer<Pointer<COMObject>> retVal) =>
      ptr.ref.vtable
              .elementAt(4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<COMObject>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<COMObject>> retVal)>()(
          ptr.ref.lpVtbl, retVal);

  int getCachedRowHeaderItems(Pointer<Pointer<COMObject>> retVal) =>
      ptr.ref.vtable
              .elementAt(5)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<COMObject>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<COMObject>> retVal)>()(
          ptr.ref.lpVtbl, retVal);

  int getCachedColumnHeaderItems(Pointer<Pointer<COMObject>> retVal) =>
      ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer, Pointer<Pointer<COMObject>> retVal)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Pointer<COMObject>> retVal)>()(
          ptr.ref.lpVtbl, retVal);
}
