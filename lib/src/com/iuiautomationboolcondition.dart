// iuiautomationboolcondition.dart

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
const IID_IUIAutomationBoolCondition = '{1b4e1f2e-75eb-4d0b-8952-5a69988e2307}';

/// Represents a condition that can be either TRUE (selects all elements) or
/// FALSE (selects no elements).
///
/// {@category com}
class IUIAutomationBoolCondition extends IUIAutomationCondition {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationBoolCondition(super.ptr);

  factory IUIAutomationBoolCondition.from(IUnknown interface) =>
      IUIAutomationBoolCondition(
          interface.toInterface(IID_IUIAutomationBoolCondition));

  int get booleanValue {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> boolVal)>>>()
              .value
              .asFunction<int Function(Pointer, Pointer<Int32> boolVal)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
