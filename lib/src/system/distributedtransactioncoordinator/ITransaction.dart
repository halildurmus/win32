// ITransaction.dart

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
const IID_ITransaction = '{0FB15084-AF41-11CE-BD2B-204C4F4F5020}';

/// {@category Interface}
/// {@category com}
class ITransaction extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITransaction(Pointer<COMObject> ptr) : super(ptr);

  int Commit(
    int fRetaining,
    int grfTC,
    int grfRM,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fRetaining,
            Uint32 grfTC,
            Uint32 grfRM,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRetaining,
            int grfTC,
            int grfRM,
          )>()(
        ptr.ref.lpVtbl,
        fRetaining,
        grfTC,
        grfRM,
      );

  int Abort(
    Pointer<BOID> pboidReason,
    int fRetaining,
    int fAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BOID> pboidReason,
            Int32 fRetaining,
            Int32 fAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BOID> pboidReason,
            int fRetaining,
            int fAsync,
          )>()(
        ptr.ref.lpVtbl,
        pboidReason,
        fRetaining,
        fAsync,
      );

  int GetTransactionInfo(
    Pointer<XACTTRANSINFO> pinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XACTTRANSINFO> pinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XACTTRANSINFO> pinfo,
          )>()(
        ptr.ref.lpVtbl,
        pinfo,
      );
}
