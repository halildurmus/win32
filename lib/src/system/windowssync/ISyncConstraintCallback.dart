// ISyncConstraintCallback.dart

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
import '../../system/windowssync/IConstraintConflict.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncConstraintCallback = '{8AF3843E-75B3-438C-BB51-6F020D70D3CB}';

/// {@category Interface}
/// {@category com}
class ISyncConstraintCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncConstraintCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnConstraintConflict(
    Pointer<COMObject> pConflict,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConflict,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConflict,
          )>()(
        ptr.ref.lpVtbl,
        pConflict,
      );
}
