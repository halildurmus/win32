// IUIAutomationTextPattern2.dart

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
import '../../ui/accessibility/IUIAutomationElement.dart';
import '../../ui/accessibility/IUIAutomationTextRange.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationTextPattern2 = '{506A921A-FCC9-409F-B23B-37EB74106872}';

/// {@category Interface}
/// {@category com}
class IUIAutomationTextPattern2 extends IUIAutomationTextPattern {
  // vtable begins at 9, is 2 entries long.
  IUIAutomationTextPattern2(Pointer<COMObject> ptr) : super(ptr);

  int RangeFromAnnotation(
    Pointer<COMObject> annotation,
    Pointer<Pointer<COMObject>> range,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> annotation,
            Pointer<Pointer<COMObject>> range,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> annotation,
            Pointer<Pointer<COMObject>> range,
          )>()(
        ptr.ref.lpVtbl,
        annotation,
        range,
      );

  int GetCaretRange(
    Pointer<Int32> isActive,
    Pointer<Pointer<COMObject>> range,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isActive,
            Pointer<Pointer<COMObject>> range,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isActive,
            Pointer<Pointer<COMObject>> range,
          )>()(
        ptr.ref.lpVtbl,
        isActive,
        range,
      );
}
