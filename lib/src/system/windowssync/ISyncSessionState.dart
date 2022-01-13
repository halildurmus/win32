// ISyncSessionState.dart

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
import '../../system/windowssync/structs.g.dart';

/// @nodoc
const IID_ISyncSessionState = '{B8A940FE-9F01-483B-9434-C37D361225D9}';

/// {@category Interface}
/// {@category com}
class ISyncSessionState extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ISyncSessionState(Pointer<COMObject> ptr) : super(ptr);

  int IsCanceled(
    Pointer<Int32> pfIsCanceled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsCanceled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsCanceled,
          )>()(
        ptr.ref.lpVtbl,
        pfIsCanceled,
      );

  int GetInfoForChangeApplication(
    Pointer<Uint8> pbChangeApplierInfo,
    Pointer<Uint32> pcbChangeApplierInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbChangeApplierInfo,
            Pointer<Uint32> pcbChangeApplierInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbChangeApplierInfo,
            Pointer<Uint32> pcbChangeApplierInfo,
          )>()(
        ptr.ref.lpVtbl,
        pbChangeApplierInfo,
        pcbChangeApplierInfo,
      );

  int LoadInfoFromChangeApplication(
    Pointer<Uint8> pbChangeApplierInfo,
    int cbChangeApplierInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbChangeApplierInfo,
            Uint32 cbChangeApplierInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbChangeApplierInfo,
            int cbChangeApplierInfo,
          )>()(
        ptr.ref.lpVtbl,
        pbChangeApplierInfo,
        cbChangeApplierInfo,
      );

  int GetForgottenKnowledgeRecoveryRangeStart(
    Pointer<Uint8> pbRangeStart,
    Pointer<Uint32> pcbRangeStart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbRangeStart,
            Pointer<Uint32> pcbRangeStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbRangeStart,
            Pointer<Uint32> pcbRangeStart,
          )>()(
        ptr.ref.lpVtbl,
        pbRangeStart,
        pcbRangeStart,
      );

  int GetForgottenKnowledgeRecoveryRangeEnd(
    Pointer<Uint8> pbRangeEnd,
    Pointer<Uint32> pcbRangeEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbRangeEnd,
            Pointer<Uint32> pcbRangeEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbRangeEnd,
            Pointer<Uint32> pcbRangeEnd,
          )>()(
        ptr.ref.lpVtbl,
        pbRangeEnd,
        pcbRangeEnd,
      );

  int SetForgottenKnowledgeRecoveryRange(
    Pointer<SYNC_RANGE> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYNC_RANGE> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYNC_RANGE> pRange,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
      );

  int OnProgress(
    int provider,
    int syncStage,
    int dwCompletedWork,
    int dwTotalWork,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 provider,
            Int32 syncStage,
            Uint32 dwCompletedWork,
            Uint32 dwTotalWork,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int provider,
            int syncStage,
            int dwCompletedWork,
            int dwTotalWork,
          )>()(
        ptr.ref.lpVtbl,
        provider,
        syncStage,
        dwCompletedWork,
        dwTotalWork,
      );
}
