// iuiautomationsynchronizedinputpattern.dart

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
const IID_IUIAutomationSynchronizedInputPattern =
    '{2233be0b-afb7-448b-9fda-3b378aa5eae1}';

/// Provides access to the keyboard or mouse input of a control.
///
/// {@category com}
class IUIAutomationSynchronizedInputPattern extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAutomationSynchronizedInputPattern(super.ptr);

  factory IUIAutomationSynchronizedInputPattern.from(IUnknown interface) =>
      IUIAutomationSynchronizedInputPattern(
          interface.toInterface(IID_IUIAutomationSynchronizedInputPattern));

  int startListening(int inputType) => (ptr.ref.vtable + 3)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 inputType)>>>()
      .value
      .asFunction<
          int Function(Pointer, int inputType)>()(ptr.ref.lpVtbl, inputType);

  int cancel() => (ptr.ref.vtable + 4)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}
