// ISyncMgrUIOperation.dart

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
const IID_ISyncMgrUIOperation = '{FC7CFA47-DFE1-45B5-A049-8CFD82BEC271}';

/// {@category Interface}
/// {@category com}
class ISyncMgrUIOperation extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncMgrUIOperation(Pointer<COMObject> ptr) : super(ptr);

  int Run(
    int hwndOwner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndOwner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndOwner,
          )>()(
        ptr.ref.lpVtbl,
        hwndOwner,
      );
}
