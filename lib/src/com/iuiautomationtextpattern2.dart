// iuiautomationtextpattern2.dart

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
import 'iuiautomationtextpattern.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IUIAutomationTextPattern2 = '{506a921a-fcc9-409f-b23b-37eb74106872}';

/// Extends the IUIAutomationTextPattern interface.
///
/// {@category com}
class IUIAutomationTextPattern2 extends IUIAutomationTextPattern {
  // vtable begins at 9, is 2 entries long.
  IUIAutomationTextPattern2(super.ptr);

  factory IUIAutomationTextPattern2.from(IUnknown interface) =>
      IUIAutomationTextPattern2(
          interface.toInterface(IID_IUIAutomationTextPattern2));

  int rangeFromAnnotation(
          Pointer<COMObject> annotation, Pointer<Pointer<COMObject>> range) =>
      ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<COMObject> annotation,
                              Pointer<Pointer<COMObject>> range)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<COMObject> annotation,
                      Pointer<Pointer<COMObject>> range)>()(
          ptr.ref.lpVtbl, annotation, range);

  int getCaretRange(
          Pointer<Int32> isActive, Pointer<Pointer<COMObject>> range) =>
      ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Int32> isActive,
                              Pointer<Pointer<COMObject>> range)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Int32> isActive,
                      Pointer<Pointer<COMObject>> range)>()(
          ptr.ref.lpVtbl, isActive, range);
}
