// IUIAutomationSynchronizedInputPattern.dart

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
import '../../ui/accessibility/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationSynchronizedInputPattern =
    '{2233BE0B-AFB7-448B-9FDA-3B378AA5EAE1}';

/// {@category Interface}
/// {@category com}
class IUIAutomationSynchronizedInputPattern extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAutomationSynchronizedInputPattern(Pointer<COMObject> ptr) : super(ptr);

  int StartListening(
    int inputType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 inputType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int inputType,
          )>()(
        ptr.ref.lpVtbl,
        inputType,
      );

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
