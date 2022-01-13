// ISyncChangeBatch2.dart

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

import '../../system/windowssync/ISyncChangeBatch.dart';
import '../../system/windowssync/structs.g.dart';
import '../../system/windowssync/ISyncChangeBuilder.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ISyncKnowledge.dart';

/// @nodoc
const IID_ISyncChangeBatch2 = '{225F4A33-F5EE-4CC7-B039-67A262B4B2AC}';

/// {@category Interface}
/// {@category com}
class ISyncChangeBatch2 extends ISyncChangeBatch {
  // vtable begins at 20, is 2 entries long.
  ISyncChangeBatch2(Pointer<COMObject> ptr) : super(ptr);

  int AddMergeTombstoneMetadataToGroup(
    Pointer<Uint8> pbOwnerReplicaId,
    Pointer<Uint8> pbWinnerItemId,
    Pointer<Uint8> pbItemId,
    Pointer<SYNC_VERSION> pChangeVersion,
    Pointer<SYNC_VERSION> pCreationVersion,
    int dwWorkForChange,
    Pointer<Pointer<COMObject>> ppChangeBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbOwnerReplicaId,
            Pointer<Uint8> pbWinnerItemId,
            Pointer<Uint8> pbItemId,
            Pointer<SYNC_VERSION> pChangeVersion,
            Pointer<SYNC_VERSION> pCreationVersion,
            Uint32 dwWorkForChange,
            Pointer<Pointer<COMObject>> ppChangeBuilder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbOwnerReplicaId,
            Pointer<Uint8> pbWinnerItemId,
            Pointer<Uint8> pbItemId,
            Pointer<SYNC_VERSION> pChangeVersion,
            Pointer<SYNC_VERSION> pCreationVersion,
            int dwWorkForChange,
            Pointer<Pointer<COMObject>> ppChangeBuilder,
          )>()(
        ptr.ref.lpVtbl,
        pbOwnerReplicaId,
        pbWinnerItemId,
        pbItemId,
        pChangeVersion,
        pCreationVersion,
        dwWorkForChange,
        ppChangeBuilder,
      );

  int AddMergeTombstoneLoggedConflict(
    Pointer<Uint8> pbOwnerReplicaId,
    Pointer<Uint8> pbWinnerItemId,
    Pointer<Uint8> pbItemId,
    Pointer<SYNC_VERSION> pChangeVersion,
    Pointer<SYNC_VERSION> pCreationVersion,
    int dwWorkForChange,
    Pointer<COMObject> pConflictKnowledge,
    Pointer<Pointer<COMObject>> ppChangeBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbOwnerReplicaId,
            Pointer<Uint8> pbWinnerItemId,
            Pointer<Uint8> pbItemId,
            Pointer<SYNC_VERSION> pChangeVersion,
            Pointer<SYNC_VERSION> pCreationVersion,
            Uint32 dwWorkForChange,
            Pointer<COMObject> pConflictKnowledge,
            Pointer<Pointer<COMObject>> ppChangeBuilder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbOwnerReplicaId,
            Pointer<Uint8> pbWinnerItemId,
            Pointer<Uint8> pbItemId,
            Pointer<SYNC_VERSION> pChangeVersion,
            Pointer<SYNC_VERSION> pCreationVersion,
            int dwWorkForChange,
            Pointer<COMObject> pConflictKnowledge,
            Pointer<Pointer<COMObject>> ppChangeBuilder,
          )>()(
        ptr.ref.lpVtbl,
        pbOwnerReplicaId,
        pbWinnerItemId,
        pbItemId,
        pChangeVersion,
        pCreationVersion,
        dwWorkForChange,
        pConflictKnowledge,
        ppChangeBuilder,
      );
}
