// iuiautomationvirtualizeditempattern.dart

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
const IID_IUIAutomationVirtualizedItemPattern =
    '{6ba3d7a6-04cf-4f11-8793-a8d1cde9969f}';

/// Represents a virtualized item, which is an item that is represented by a
/// placeholder automation element in the Microsoft UI Automation tree.
///
/// {@category Interface}
/// {@category com}
class IUIAutomationVirtualizedItemPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationVirtualizedItemPattern(super.ptr);

  factory IUIAutomationVirtualizedItemPattern.from(IUnknown interface) =>
      IUIAutomationVirtualizedItemPattern(
          interface.toInterface(IID_IUIAutomationVirtualizedItemPattern));

  int realize() => ptr.ref.vtable
      .elementAt(3)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}
