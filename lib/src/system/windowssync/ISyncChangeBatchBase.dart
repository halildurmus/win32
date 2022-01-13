// ISyncChangeBatchBase.dart

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
import '../../system/windowssync/IEnumSyncChanges.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ISyncKnowledge.dart';
import '../../system/windowssync/structs.g.dart';
import '../../system/windowssync/ISyncChangeBuilder.dart';
import '../../system/windowssync/IForgottenKnowledge.dart';

/// @nodoc
const IID_ISyncChangeBatchBase = '{52F6E694-6A71-4494-A184-A8311BF5D227}';

/// {@category Interface}
/// {@category com}
class ISyncChangeBatchBase extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  ISyncChangeBatchBase(Pointer<COMObject> ptr) : super(ptr);

  int GetChangeEnumerator(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetIsLastBatch(
    Pointer<Int32> pfLastBatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfLastBatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfLastBatch,
          )>()(
        ptr.ref.lpVtbl,
        pfLastBatch,
      );

  int GetWorkEstimateForBatch(
    Pointer<Uint32> pdwWorkForBatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwWorkForBatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwWorkForBatch,
          )>()(
        ptr.ref.lpVtbl,
        pdwWorkForBatch,
      );

  int GetRemainingWorkEstimateForSession(
    Pointer<Uint32> pdwRemainingWorkForSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwRemainingWorkForSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwRemainingWorkForSession,
          )>()(
        ptr.ref.lpVtbl,
        pdwRemainingWorkForSession,
      );

  int BeginOrderedGroup(
    Pointer<Uint8> pbLowerBound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbLowerBound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbLowerBound,
          )>()(
        ptr.ref.lpVtbl,
        pbLowerBound,
      );

  int EndOrderedGroup(
    Pointer<Uint8> pbUpperBound,
    Pointer<COMObject> pMadeWithKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbUpperBound,
            Pointer<COMObject> pMadeWithKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbUpperBound,
            Pointer<COMObject> pMadeWithKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pbUpperBound,
        pMadeWithKnowledge,
      );

  int AddItemMetadataToGroup(
    Pointer<Uint8> pbOwnerReplicaId,
    Pointer<Uint8> pbItemId,
    Pointer<SYNC_VERSION> pChangeVersion,
    Pointer<SYNC_VERSION> pCreationVersion,
    int dwFlags,
    int dwWorkForChange,
    Pointer<Pointer<COMObject>> ppChangeBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbOwnerReplicaId,
            Pointer<Uint8> pbItemId,
            Pointer<SYNC_VERSION> pChangeVersion,
            Pointer<SYNC_VERSION> pCreationVersion,
            Uint32 dwFlags,
            Uint32 dwWorkForChange,
            Pointer<Pointer<COMObject>> ppChangeBuilder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbOwnerReplicaId,
            Pointer<Uint8> pbItemId,
            Pointer<SYNC_VERSION> pChangeVersion,
            Pointer<SYNC_VERSION> pCreationVersion,
            int dwFlags,
            int dwWorkForChange,
            Pointer<Pointer<COMObject>> ppChangeBuilder,
          )>()(
        ptr.ref.lpVtbl,
        pbOwnerReplicaId,
        pbItemId,
        pChangeVersion,
        pCreationVersion,
        dwFlags,
        dwWorkForChange,
        ppChangeBuilder,
      );

  int GetLearnedKnowledge(
    Pointer<Pointer<COMObject>> ppLearnedKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLearnedKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLearnedKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        ppLearnedKnowledge,
      );

  int GetPrerequisiteKnowledge(
    Pointer<Pointer<COMObject>> ppPrerequisteKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPrerequisteKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPrerequisteKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        ppPrerequisteKnowledge,
      );

  int GetSourceForgottenKnowledge(
    Pointer<Pointer<COMObject>> ppSourceForgottenKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSourceForgottenKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSourceForgottenKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        ppSourceForgottenKnowledge,
      );

  int SetLastBatch() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int SetWorkEstimateForBatch(
    int dwWorkForBatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwWorkForBatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwWorkForBatch,
          )>()(
        ptr.ref.lpVtbl,
        dwWorkForBatch,
      );

  int SetRemainingWorkEstimateForSession(
    int dwRemainingWorkForSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRemainingWorkForSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRemainingWorkForSession,
          )>()(
        ptr.ref.lpVtbl,
        dwRemainingWorkForSession,
      );

  int Serialize(
    Pointer<Uint8> pbChangeBatch,
    Pointer<Uint32> pcbChangeBatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbChangeBatch,
            Pointer<Uint32> pcbChangeBatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbChangeBatch,
            Pointer<Uint32> pcbChangeBatch,
          )>()(
        ptr.ref.lpVtbl,
        pbChangeBatch,
        pcbChangeBatch,
      );
}
