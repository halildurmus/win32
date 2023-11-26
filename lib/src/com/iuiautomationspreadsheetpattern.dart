// iuiautomationspreadsheetpattern.dart

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
const IID_IUIAutomationSpreadsheetPattern =
    '{7517a7c8-faae-4de9-9f08-29b91e8595c1}';

/// Enables a client application to access the items (cells) in a
/// spreadsheet.
///
/// {@category com}
class IUIAutomationSpreadsheetPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationSpreadsheetPattern(super.ptr);

  factory IUIAutomationSpreadsheetPattern.from(IUnknown interface) =>
      IUIAutomationSpreadsheetPattern(
          interface.toInterface(IID_IUIAutomationSpreadsheetPattern));

  int getItemByName(Pointer<Utf16> name, Pointer<Pointer<COMObject>> element) =>
      ptr.ref.vtable
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Utf16> name,
                              Pointer<Pointer<COMObject>> element)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> name,
                      Pointer<Pointer<COMObject>> element)>()(
          ptr.ref.lpVtbl, name, element);
}
