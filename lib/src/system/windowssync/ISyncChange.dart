// ISyncChange.dart

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
import '../../system/windowssync/IEnumSyncChangeUnits.dart';
import '../../system/windowssync/ISyncKnowledge.dart';

/// @nodoc
const IID_ISyncChange = '{A1952BEB-0F6B-4711-B136-01DA85B968A6}';

/// {@category Interface}
/// {@category com}
class ISyncChange extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  ISyncChange(Pointer<COMObject> ptr) : super(ptr);

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

  int GetRootItemId(
    Pointer<Uint8> pbRootItemId,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbRootItemId,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbRootItemId,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbRootItemId,
        pcbIdSize,
      );

  int GetChangeVersion(
    Pointer<Uint8> pbCurrentReplicaId,
    Pointer<SYNC_VERSION> pVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbCurrentReplicaId,
            Pointer<SYNC_VERSION> pVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbCurrentReplicaId,
            Pointer<SYNC_VERSION> pVersion,
          )>()(
        ptr.ref.lpVtbl,
        pbCurrentReplicaId,
        pVersion,
      );

  int GetCreationVersion(
    Pointer<Uint8> pbCurrentReplicaId,
    Pointer<SYNC_VERSION> pVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbCurrentReplicaId,
            Pointer<SYNC_VERSION> pVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbCurrentReplicaId,
            Pointer<SYNC_VERSION> pVersion,
          )>()(
        ptr.ref.lpVtbl,
        pbCurrentReplicaId,
        pVersion,
      );

  int GetFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );

  int GetWorkEstimate(
    Pointer<Uint32> pdwWork,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwWork,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwWork,
          )>()(
        ptr.ref.lpVtbl,
        pdwWork,
      );

  int GetChangeUnits(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetMadeWithKnowledge(
    Pointer<Pointer<COMObject>> ppMadeWithKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMadeWithKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMadeWithKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        ppMadeWithKnowledge,
      );

  int GetLearnedKnowledge(
    Pointer<Pointer<COMObject>> ppLearnedKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int SetWorkEstimate(
    int dwWork,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwWork,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwWork,
          )>()(
        ptr.ref.lpVtbl,
        dwWork,
      );
}
