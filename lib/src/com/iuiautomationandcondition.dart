// iuiautomationandcondition.dart

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
const IID_IUIAutomationAndCondition = '{a7d0af36-b912-45fe-9855-091ddc174aec}';

/// Exposes properties and methods that Microsoft UI Automation client
/// applications can use to retrieve information about an AND-based property
/// condition.
///
/// {@category com}
class IUIAutomationAndCondition extends IUIAutomationCondition {
  // vtable begins at 3, is 3 entries long.
  IUIAutomationAndCondition(super.ptr);

  factory IUIAutomationAndCondition.from(IUnknown interface) =>
      IUIAutomationAndCondition(
          interface.toInterface(IID_IUIAutomationAndCondition));

  int get childCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(3)
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
      ptr.ref.vtable
              .elementAt(4)
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

  int getChildren(Pointer<Pointer<SAFEARRAY>> childArray) => ptr.ref.vtable
          .elementAt(5)
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
