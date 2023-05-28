// iuiautomationcustomnavigationpattern.dart

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
const IID_IUIAutomationCustomNavigationPattern =
    '{01ea217a-1766-47ed-a6cc-acf492854b1f}';

/// Exposes a method to support access by a Microsoft UI Automation client
/// to controls that support a custom navigation order.
///
/// {@category Interface}
/// {@category com}
class IUIAutomationCustomNavigationPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationCustomNavigationPattern(super.ptr);

  factory IUIAutomationCustomNavigationPattern.from(IUnknown interface) =>
      IUIAutomationCustomNavigationPattern(
          interface.toInterface(IID_IUIAutomationCustomNavigationPattern));

  int navigate(int direction, Pointer<Pointer<COMObject>> pRetVal) => ptr
          .ref.vtable
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Int32 direction,
                          Pointer<Pointer<COMObject>> pRetVal)>>>()
          .value
          .asFunction<
              int Function(Pointer, int direction,
                  Pointer<Pointer<COMObject>> pRetVal)>()(
      ptr.ref.lpVtbl, direction, pRetVal);
}
