// IWebAppDiagnosticsObjectInitialization.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IWebAppDiagnosticsObjectInitialization =
    '{16FF3A42-A5F5-432B-B625-8E8E16F57E15}';

/// {@category Interface}
/// {@category com}
class IWebAppDiagnosticsObjectInitialization extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWebAppDiagnosticsObjectInitialization(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int hPassedHandle,
    Pointer<COMObject> pDebugApplication,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hPassedHandle,
            Pointer<COMObject> pDebugApplication,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hPassedHandle,
            Pointer<COMObject> pDebugApplication,
          )>()(
        ptr.ref.lpVtbl,
        hPassedHandle,
        pDebugApplication,
      );
}
