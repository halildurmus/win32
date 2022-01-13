// IFileOperation2.dart

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

import '../../ui/shell/IFileOperation.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFileOperation2 = '{CD8F23C1-8F61-4916-909D-55BDD0918753}';

/// {@category Interface}
/// {@category com}
class IFileOperation2 extends IFileOperation {
  // vtable begins at 23, is 1 entries long.
  IFileOperation2(Pointer<COMObject> ptr) : super(ptr);

  int SetOperationFlags2(
    int operationFlags2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 operationFlags2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int operationFlags2,
          )>()(
        ptr.ref.lpVtbl,
        operationFlags2,
      );
}
