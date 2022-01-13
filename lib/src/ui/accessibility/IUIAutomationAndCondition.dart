// IUIAutomationAndCondition.dart

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
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IUIAutomationAndCondition = '{A7D0AF36-B912-45FE-9855-091DDC174AEC}';

/// {@category Interface}
/// {@category com}
class IUIAutomationAndCondition extends IUIAutomationCondition {
  // vtable begins at 3, is 3 entries long.
  IUIAutomationAndCondition(Pointer<COMObject> ptr) : super(ptr);

  int get ChildCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> childCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> childCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetChildrenAsNativeArray(
    Pointer<Pointer<Pointer<COMObject>>> childArray,
    Pointer<Int32> childArrayCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Pointer<COMObject>>> childArray,
            Pointer<Int32> childArrayCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Pointer<COMObject>>> childArray,
            Pointer<Int32> childArrayCount,
          )>()(
        ptr.ref.lpVtbl,
        childArray,
        childArrayCount,
      );

  int GetChildren(
    Pointer<Pointer<SAFEARRAY>> childArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> childArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> childArray,
          )>()(
        ptr.ref.lpVtbl,
        childArray,
      );
}
