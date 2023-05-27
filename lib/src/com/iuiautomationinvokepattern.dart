// iuiautomationinvokepattern.dart

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
const IID_IUIAutomationInvokePattern = '{fb377fbe-8ea6-46d5-9c73-6499642d3059}';

/// Exposes a method that enables a client application to invoke the action
/// of a control (typically a button).
///
/// {@category Interface}
/// {@category com}
class IUIAutomationInvokePattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationInvokePattern(super.ptr);

  factory IUIAutomationInvokePattern.from(IUnknown interface) =>
      IUIAutomationInvokePattern(
          interface.toInterface(IID_IUIAutomationInvokePattern));

  int invoke() => ptr.ref.vtable
      .elementAt(3)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}
