// IInputPanelInvocationConfiguration.dart

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
const IID_IInputPanelInvocationConfiguration =
    '{A213F136-3B45-4362-A332-EFB6547CD432}';

/// {@category Interface}
/// {@category com}
class IInputPanelInvocationConfiguration extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInputPanelInvocationConfiguration(Pointer<COMObject> ptr) : super(ptr);

  int RequireTouchInEditControl() => ptr.ref.lpVtbl.value
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
