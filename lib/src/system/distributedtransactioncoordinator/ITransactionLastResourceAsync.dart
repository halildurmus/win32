// ITransactionLastResourceAsync.dart

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
import '../../system/distributedtransactioncoordinator/structs.g.dart';

/// @nodoc
const IID_ITransactionLastResourceAsync =
    '{C82BD532-5B30-11D3-8A91-00C04F79EB6D}';

/// {@category Interface}
/// {@category com}
class ITransactionLastResourceAsync extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITransactionLastResourceAsync(Pointer<COMObject> ptr) : super(ptr);

  int DelegateCommit(
    int grfRM,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfRM,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfRM,
          )>()(
        ptr.ref.lpVtbl,
        grfRM,
      );

  int ForgetRequest(
    Pointer<BOID> pNewUOW,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BOID> pNewUOW,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BOID> pNewUOW,
          )>()(
        ptr.ref.lpVtbl,
        pNewUOW,
      );
}
