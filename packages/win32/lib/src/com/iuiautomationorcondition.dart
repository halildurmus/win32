// iuiautomationorcondition.dart

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
import 'iuiautomationcondition.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationOrCondition = '{8753f032-3db1-47b5-a1fc-6e34a266c712}';

/// Represents a condition made up of multiple conditions, at least one of
/// which must be true.
///
/// {@category com}
class IUIAutomationOrCondition extends IUIAutomationCondition {
  // vtable begins at 3, is 3 entries long.
  IUIAutomationOrCondition(super.ptr);

  factory IUIAutomationOrCondition.from(IUnknown interface) =>
      IUIAutomationOrCondition(
          interface.toInterface(IID_IUIAutomationOrCondition));

  int get childCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = (ptr.ref.vtable + 3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Int32> childCount)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<Int32> childCount)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getChildrenAsNativeArray(Pointer<Pointer<Pointer<COMObject>>> childArray,
          Pointer<Int32> childArrayCount) =>
      (ptr.ref.vtable + 4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer<Pointer<COMObject>>> childArray,
                              Pointer<Int32> childArrayCount)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer<Pointer<COMObject>>> childArray,
                      Pointer<Int32> childArrayCount)>()(
          ptr.ref.lpVtbl, childArray, childArrayCount);

  int getChildren(Pointer<Pointer<SAFEARRAY>> childArray) => (ptr.ref.vtable +
              5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<SAFEARRAY>> childArray)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<SAFEARRAY>> childArray)>()(
      ptr.ref.lpVtbl, childArray);
}
