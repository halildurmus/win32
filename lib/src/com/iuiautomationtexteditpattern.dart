// iuiautomationtexteditpattern.dart

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
import 'iuiautomationtextpattern.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTextEditPattern =
    '{17e21576-996c-4870-99d9-bff323380c06}';

/// Provides access to a control that modifies text, for example a control
/// that performs auto-correction or enables input composition through an
/// Input Method Editor (IME).
///
/// {@category com}
class IUIAutomationTextEditPattern extends IUIAutomationTextPattern {
  // vtable begins at 9, is 2 entries long.
  IUIAutomationTextEditPattern(super.ptr);

  factory IUIAutomationTextEditPattern.from(IUnknown interface) =>
      IUIAutomationTextEditPattern(
          interface.toInterface(IID_IUIAutomationTextEditPattern));

  int getActiveComposition(Pointer<Pointer<COMObject>> range) => ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<COMObject>> range)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> range)>()(
      ptr.ref.lpVtbl, range);

  int getConversionTarget(Pointer<Pointer<COMObject>> range) => ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Pointer<Pointer<COMObject>> range)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Pointer<COMObject>> range)>()(
      ptr.ref.lpVtbl, range);
}
