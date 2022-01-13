// IUIAutomationTextEditPattern.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../ui/accessibility/IUIAutomationTextPattern.dart';
import '../../ui/accessibility/IUIAutomationTextRange.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationTextEditPattern =
    '{17E21576-996C-4870-99D9-BFF323380C06}';

/// {@category Interface}
/// {@category com}
class IUIAutomationTextEditPattern extends IUIAutomationTextPattern {
  // vtable begins at 9, is 2 entries long.
  IUIAutomationTextEditPattern(Pointer<COMObject> ptr) : super(ptr);

  int GetActiveComposition(
    Pointer<Pointer<COMObject>> range,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> range,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> range,
          )>()(
        ptr.ref.lpVtbl,
        range,
      );

  int GetConversionTarget(
    Pointer<Pointer<COMObject>> range,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> range,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> range,
          )>()(
        ptr.ref.lpVtbl,
        range,
      );
}
