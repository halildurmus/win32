// iuiautomationscrollitempattern.dart

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
const IID_IUIAutomationScrollItemPattern =
    '{b488300f-d015-4f19-9c29-bb595e3645ef}';

/// Exposes a method that enables an item in a scrollable view to be placed
/// in a visible portion of the view.
///
/// {@category com}
class IUIAutomationScrollItemPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationScrollItemPattern(super.ptr);

  factory IUIAutomationScrollItemPattern.from(IUnknown interface) =>
      IUIAutomationScrollItemPattern(
          interface.toInterface(IID_IUIAutomationScrollItemPattern));

  int scrollIntoView() => (ptr.ref.vtable + 3)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}
