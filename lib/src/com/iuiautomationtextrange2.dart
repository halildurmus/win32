// iuiautomationtextrange2.dart

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
import 'iuiautomationtextrange.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTextRange2 = '{bb9b40e0-5e04-46bd-9be0-4b601b9afad4}';

/// Extends the IUIAutomationTextRange interface to enable Microsoft UI
/// Automation clients to programmatically invoke context menus.
///
/// {@category com}
class IUIAutomationTextRange2 extends IUIAutomationTextRange {
  // vtable begins at 21, is 1 entries long.
  IUIAutomationTextRange2(super.ptr);

  factory IUIAutomationTextRange2.from(IUnknown interface) =>
      IUIAutomationTextRange2(
          interface.toInterface(IID_IUIAutomationTextRange2));

  int showContextMenu() => (ptr.ref.vtable + 21)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}
