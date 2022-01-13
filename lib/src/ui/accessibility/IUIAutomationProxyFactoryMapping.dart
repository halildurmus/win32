// IUIAutomationProxyFactoryMapping.dart

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
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../ui/accessibility/IUIAutomationProxyFactoryEntry.dart';

/// @nodoc
const IID_IUIAutomationProxyFactoryMapping =
    '{09E31E18-872D-4873-93D1-1E541EC133FD}';

/// {@category Interface}
/// {@category com}
class IUIAutomationProxyFactoryMapping extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IUIAutomationProxyFactoryMapping(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> count,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetTable(
    Pointer<Pointer<SAFEARRAY>> table,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> table,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> table,
          )>()(
        ptr.ref.lpVtbl,
        table,
      );

  int GetEntry(
    int index,
    Pointer<Pointer<COMObject>> entry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> entry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> entry,
          )>()(
        ptr.ref.lpVtbl,
        index,
        entry,
      );

  int SetTable(
    Pointer<SAFEARRAY> factoryList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> factoryList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> factoryList,
          )>()(
        ptr.ref.lpVtbl,
        factoryList,
      );

  int InsertEntries(
    int before,
    Pointer<SAFEARRAY> factoryList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 before,
            Pointer<SAFEARRAY> factoryList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int before,
            Pointer<SAFEARRAY> factoryList,
          )>()(
        ptr.ref.lpVtbl,
        before,
        factoryList,
      );

  int InsertEntry(
    int before,
    Pointer<COMObject> factory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 before,
            Pointer<COMObject> factory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int before,
            Pointer<COMObject> factory,
          )>()(
        ptr.ref.lpVtbl,
        before,
        factory,
      );

  int RemoveEntry(
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
          )>()(
        ptr.ref.lpVtbl,
        index,
      );

  int ClearTable() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int RestoreDefaultTable() => ptr.ref.lpVtbl.value
          .elementAt(11)
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
}
