// IUPnPAsyncResult.dart

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

/// @nodoc
const IID_IUPnPAsyncResult = '{4D65FD08-D13E-4274-9C8B-DD8D028C8644}';

/// {@category Interface}
/// {@category com}
class IUPnPAsyncResult extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUPnPAsyncResult(Pointer<COMObject> ptr) : super(ptr);

  int AsyncOperationComplete(
    int ullRequestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullRequestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullRequestID,
          )>()(
        ptr.ref.lpVtbl,
        ullRequestID,
      );
}
