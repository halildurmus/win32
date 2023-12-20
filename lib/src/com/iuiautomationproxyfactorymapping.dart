// iuiautomationproxyfactorymapping.dart

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
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationProxyFactoryMapping =
    '{09e31e18-872d-4873-93d1-1e541ec133fd}';

/// Exposes properties and methods for a table of proxy factories. Each
/// table entry is represented by an IUIAutomationProxyFactoryEntry
/// interface. The entries are in the order in which the system will attempt
/// to use the proxies.
///
/// {@category com}
class IUIAutomationProxyFactoryMapping extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IUIAutomationProxyFactoryMapping(super.ptr);

  factory IUIAutomationProxyFactoryMapping.from(IUnknown interface) =>
      IUIAutomationProxyFactoryMapping(
          interface.toInterface(IID_IUIAutomationProxyFactoryMapping));

  int get count {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Uint32> count)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Uint32> count)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getTable(Pointer<Pointer<SAFEARRAY>> table) => ptr.ref.vtable
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<SAFEARRAY>> table)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<SAFEARRAY>> table)>()(
      ptr.ref.lpVtbl, table);

  int getEntry(int index, Pointer<Pointer<COMObject>> entry) => ptr.ref.vtable
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Uint32 index,
                          Pointer<Pointer<COMObject>> entry)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, int index, Pointer<Pointer<COMObject>> entry)>()(
      ptr.ref.lpVtbl, index, entry);

  int setTable(Pointer<SAFEARRAY> factoryList) => ptr.ref.vtable
      .elementAt(6)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Pointer<SAFEARRAY> factoryList)>>>()
      .value
      .asFunction<
          int Function(Pointer,
              Pointer<SAFEARRAY> factoryList)>()(ptr.ref.lpVtbl, factoryList);

  int insertEntries(int before, Pointer<SAFEARRAY> factoryList) =>
      ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 before,
                              Pointer<SAFEARRAY> factoryList)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int before, Pointer<SAFEARRAY> factoryList)>()(
          ptr.ref.lpVtbl, before, factoryList);

  int insertEntry(int before, Pointer<COMObject> factory) => ptr.ref.vtable
      .elementAt(8)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(
                      Pointer, Uint32 before, Pointer<COMObject> factory)>>>()
      .value
      .asFunction<
          int Function(Pointer, int before,
              Pointer<COMObject> factory)>()(ptr.ref.lpVtbl, before, factory);

  int removeEntry(int index) => ptr.ref.vtable
      .elementAt(9)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 index)>>>()
      .value
      .asFunction<int Function(Pointer, int index)>()(ptr.ref.lpVtbl, index);

  int clearTable() => ptr.ref.vtable
      .elementAt(10)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int restoreDefaultTable() => ptr.ref.vtable
      .elementAt(11)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}
