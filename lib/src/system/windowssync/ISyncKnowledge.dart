// ISyncKnowledge.dart

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
import '../../system/windowssync/IReplicaKeyMap.dart';
import '../../system/windowssync/ISyncKnowledge.dart';

/// @nodoc
const IID_ISyncKnowledge = '{615BBB53-C945-4203-BF4B-2CB65919A0AA}';

/// {@category Interface}
/// {@category com}
class ISyncKnowledge extends IUnknown {
  // vtable begins at 3, is 24 entries long.
  ISyncKnowledge(Pointer<COMObject> ptr) : super(ptr);

  int GetOwnerReplicaId(
    Pointer<Uint8> pbReplicaId,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbReplicaId,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbReplicaId,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbReplicaId,
        pcbIdSize,
      );

  int Serialize(
    int fSerializeReplicaKeyMap,
    Pointer<Uint8> pbKnowledge,
    Pointer<Uint32> pcbKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fSerializeReplicaKeyMap,
            Pointer<Uint8> pbKnowledge,
            Pointer<Uint32> pcbKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSerializeReplicaKeyMap,
            Pointer<Uint8> pbKnowledge,
            Pointer<Uint32> pcbKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        fSerializeReplicaKeyMap,
        pbKnowledge,
        pcbKnowledge,
      );

  int SetLocalTickCount(
    int ullTickCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullTickCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullTickCount,
          )>()(
        ptr.ref.lpVtbl,
        ullTickCount,
      );

  int ContainsChange(
    Pointer<Uint8> pbVersionOwnerReplicaId,
    Pointer<Uint8> pgidItemId,
    Pointer<SYNC_VERSION> pSyncVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVersionOwnerReplicaId,
            Pointer<Uint8> pgidItemId,
            Pointer<SYNC_VERSION> pSyncVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVersionOwnerReplicaId,
            Pointer<Uint8> pgidItemId,
            Pointer<SYNC_VERSION> pSyncVersion,
          )>()(
        ptr.ref.lpVtbl,
        pbVersionOwnerReplicaId,
        pgidItemId,
        pSyncVersion,
      );

  int ContainsChangeUnit(
    Pointer<Uint8> pbVersionOwnerReplicaId,
    Pointer<Uint8> pbItemId,
    Pointer<Uint8> pbChangeUnitId,
    Pointer<SYNC_VERSION> pSyncVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVersionOwnerReplicaId,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<SYNC_VERSION> pSyncVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVersionOwnerReplicaId,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<SYNC_VERSION> pSyncVersion,
          )>()(
        ptr.ref.lpVtbl,
        pbVersionOwnerReplicaId,
        pbItemId,
        pbChangeUnitId,
        pSyncVersion,
      );

  int GetScopeVector(
    Pointer<GUID> riid,
    Pointer<Pointer> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppUnk,
      );

  int GetReplicaKeyMap(
    Pointer<Pointer<COMObject>> ppReplicaKeyMap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppReplicaKeyMap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppReplicaKeyMap,
          )>()(
        ptr.ref.lpVtbl,
        ppReplicaKeyMap,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppClonedKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClonedKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppClonedKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        ppClonedKnowledge,
      );

  int ConvertVersion(
    Pointer<COMObject> pKnowledgeIn,
    Pointer<Uint8> pbCurrentOwnerId,
    Pointer<SYNC_VERSION> pVersionIn,
    Pointer<Uint8> pbNewOwnerId,
    Pointer<Uint32> pcbIdSize,
    Pointer<SYNC_VERSION> pVersionOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pKnowledgeIn,
            Pointer<Uint8> pbCurrentOwnerId,
            Pointer<SYNC_VERSION> pVersionIn,
            Pointer<Uint8> pbNewOwnerId,
            Pointer<Uint32> pcbIdSize,
            Pointer<SYNC_VERSION> pVersionOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pKnowledgeIn,
            Pointer<Uint8> pbCurrentOwnerId,
            Pointer<SYNC_VERSION> pVersionIn,
            Pointer<Uint8> pbNewOwnerId,
            Pointer<Uint32> pcbIdSize,
            Pointer<SYNC_VERSION> pVersionOut,
          )>()(
        ptr.ref.lpVtbl,
        pKnowledgeIn,
        pbCurrentOwnerId,
        pVersionIn,
        pbNewOwnerId,
        pcbIdSize,
        pVersionOut,
      );

  int MapRemoteToLocal(
    Pointer<COMObject> pRemoteKnowledge,
    Pointer<Pointer<COMObject>> ppMappedKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRemoteKnowledge,
            Pointer<Pointer<COMObject>> ppMappedKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRemoteKnowledge,
            Pointer<Pointer<COMObject>> ppMappedKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pRemoteKnowledge,
        ppMappedKnowledge,
      );

  int $Union(
    Pointer<COMObject> pKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pKnowledge,
      );

  int ProjectOntoItem(
    Pointer<Uint8> pbItemId,
    Pointer<Pointer<COMObject>> ppKnowledgeOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Pointer<COMObject>> ppKnowledgeOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Pointer<COMObject>> ppKnowledgeOut,
          )>()(
        ptr.ref.lpVtbl,
        pbItemId,
        ppKnowledgeOut,
      );

  int ProjectOntoChangeUnit(
    Pointer<Uint8> pbItemId,
    Pointer<Uint8> pbChangeUnitId,
    Pointer<Pointer<COMObject>> ppKnowledgeOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<Pointer<COMObject>> ppKnowledgeOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<Pointer<COMObject>> ppKnowledgeOut,
          )>()(
        ptr.ref.lpVtbl,
        pbItemId,
        pbChangeUnitId,
        ppKnowledgeOut,
      );

  int ProjectOntoRange(
    Pointer<SYNC_RANGE> psrngSyncRange,
    Pointer<Pointer<COMObject>> ppKnowledgeOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYNC_RANGE> psrngSyncRange,
            Pointer<Pointer<COMObject>> ppKnowledgeOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYNC_RANGE> psrngSyncRange,
            Pointer<Pointer<COMObject>> ppKnowledgeOut,
          )>()(
        ptr.ref.lpVtbl,
        psrngSyncRange,
        ppKnowledgeOut,
      );

  int ExcludeItem(
    Pointer<Uint8> pbItemId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbItemId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbItemId,
          )>()(
        ptr.ref.lpVtbl,
        pbItemId,
      );

  int ExcludeChangeUnit(
    Pointer<Uint8> pbItemId,
    Pointer<Uint8> pbChangeUnitId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
          )>()(
        ptr.ref.lpVtbl,
        pbItemId,
        pbChangeUnitId,
      );

  int ContainsKnowledge(
    Pointer<COMObject> pKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pKnowledge,
      );

  int FindMinTickCountForReplica(
    Pointer<Uint8> pbReplicaId,
    Pointer<Uint64> pullReplicaTickCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbReplicaId,
            Pointer<Uint64> pullReplicaTickCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbReplicaId,
            Pointer<Uint64> pullReplicaTickCount,
          )>()(
        ptr.ref.lpVtbl,
        pbReplicaId,
        pullReplicaTickCount,
      );

  int GetRangeExceptions(
    Pointer<GUID> riid,
    Pointer<Pointer> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppUnk,
      );

  int GetSingleItemExceptions(
    Pointer<GUID> riid,
    Pointer<Pointer> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppUnk,
      );

  int GetChangeUnitExceptions(
    Pointer<GUID> riid,
    Pointer<Pointer> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppUnk,
      );

  int FindClockVectorForItem(
    Pointer<Uint8> pbItemId,
    Pointer<GUID> riid,
    Pointer<Pointer> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        pbItemId,
        riid,
        ppUnk,
      );

  int FindClockVectorForChangeUnit(
    Pointer<Uint8> pbItemId,
    Pointer<Uint8> pbChangeUnitId,
    Pointer<GUID> riid,
    Pointer<Pointer> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbItemId,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        pbItemId,
        pbChangeUnitId,
        riid,
        ppUnk,
      );

  int GetVersion(
    Pointer<Uint32> pdwVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>()(
        ptr.ref.lpVtbl,
        pdwVersion,
      );
}
