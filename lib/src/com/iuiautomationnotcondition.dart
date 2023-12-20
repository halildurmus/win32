// iuiautomationnotcondition.dart

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
const IID_IUIAutomationNotCondition = '{f528b657-847b-498c-8896-d52b565407a1}';

/// Represents a condition that is the negative of another condition.
///
/// {@category com}
class IUIAutomationNotCondition extends IUIAutomationCondition {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationNotCondition(super.ptr);

  factory IUIAutomationNotCondition.from(IUnknown interface) =>
      IUIAutomationNotCondition(
          interface.toInterface(IID_IUIAutomationNotCondition));

  int getChild(Pointer<Pointer<COMObject>> condition) => ptr.ref.vtable
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<COMObject>> condition)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> condition)>()(
      ptr.ref.lpVtbl, condition);
}
