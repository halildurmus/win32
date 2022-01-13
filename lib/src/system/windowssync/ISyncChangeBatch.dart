// ISyncChangeBatch.dart

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

import '../../system/windowssync/ISyncChangeBatchBase.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ISyncKnowledge.dart';
import '../../system/windowssync/structs.g.dart';
import '../../system/windowssync/ISyncChangeBuilder.dart';

/// @nodoc
const IID_ISyncChangeBatch = '{70C64DEE-380F-4C2E-8F70-31C55BD5F9B3}';

/// {@category Interface}
/// {@category com}
class ISyncChangeBatch extends ISyncChangeBatchBase {
  // vtable begins at 17, is 3 entries long.
  ISyncChangeBatch(Pointer<COMObject> ptr) : super(ptr);

  int BeginUnorderedGroup() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int EndUnorderedGroup(
    Pointer<COMObject> pMadeWithKnowledge,
    int fAllChangesForKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMadeWithKnowledge,
            Int32 fAllChangesForKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMadeWithKnowledge,
            int fAllChangesForKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pMadeWithKnowledge,
        fAllChangesForKnowledge,
      );

  int AddLoggedConflict(
    Pointer<Uint8> pbOwnerReplicaId,
    Pointer<Uint8> pbItemId,
    Pointer<SYNC_VERSION> pChangeVersion,
    Pointer<SYNC_VERSION> pCreationVersion,
    int dwFlags,
    int dwWorkForChange,
    Pointer<COMObject> pConflictKnowledge,
    Pointer<Pointer<COMObject>> ppChangeBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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
            Pointer<COMObject> pConflictKnowledge,
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
            Pointer<COMObject> pConflictKnowledge,
            Pointer<Pointer<COMObject>> ppChangeBuilder,
          )>()(
        ptr.ref.lpVtbl,
        pbOwnerReplicaId,
        pbItemId,
        pChangeVersion,
        pCreationVersion,
        dwFlags,
        dwWorkForChange,
        pConflictKnowledge,
        ppChangeBuilder,
      );
}
