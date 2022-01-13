// ITransactionResource.dart

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
const IID_ITransactionResource = '{EE5FF7B3-4572-11D0-9452-00A0C905416E}';

/// {@category Interface}
/// {@category com}
class ITransactionResource extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITransactionResource(Pointer<COMObject> ptr) : super(ptr);

  int PrepareRequest(
    int fRetaining,
    int grfRM,
    int fWantMoniker,
    int fSinglePhase,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fRetaining,
            Uint32 grfRM,
            Int32 fWantMoniker,
            Int32 fSinglePhase,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRetaining,
            int grfRM,
            int fWantMoniker,
            int fSinglePhase,
          )>()(
        ptr.ref.lpVtbl,
        fRetaining,
        grfRM,
        fWantMoniker,
        fSinglePhase,
      );

  int CommitRequest(
    int grfRM,
    Pointer<BOID> pNewUOW,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfRM,
            Pointer<BOID> pNewUOW,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfRM,
            Pointer<BOID> pNewUOW,
          )>()(
        ptr.ref.lpVtbl,
        grfRM,
        pNewUOW,
      );

  int AbortRequest(
    Pointer<BOID> pboidReason,
    int fRetaining,
    Pointer<BOID> pNewUOW,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BOID> pboidReason,
            Int32 fRetaining,
            Pointer<BOID> pNewUOW,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BOID> pboidReason,
            int fRetaining,
            Pointer<BOID> pNewUOW,
          )>()(
        ptr.ref.lpVtbl,
        pboidReason,
        fRetaining,
        pNewUOW,
      );

  int TMDown() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
