// IUIAutomationBoolCondition.dart

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

import '../../ui/accessibility/IUIAutomationCondition.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationBoolCondition = '{1B4E1F2E-75EB-4D0B-8952-5A69988E2307}';

/// {@category Interface}
/// {@category com}
class IUIAutomationBoolCondition extends IUIAutomationCondition {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationBoolCondition(Pointer<COMObject> ptr) : super(ptr);

  int get BooleanValue {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> boolVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> boolVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
