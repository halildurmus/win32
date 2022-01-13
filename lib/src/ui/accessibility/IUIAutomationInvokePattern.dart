// IUIAutomationInvokePattern.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationInvokePattern = '{FB377FBE-8EA6-46D5-9C73-6499642D3059}';

/// {@category Interface}
/// {@category com}
class IUIAutomationInvokePattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationInvokePattern(Pointer<COMObject> ptr) : super(ptr);

  int Invoke() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
