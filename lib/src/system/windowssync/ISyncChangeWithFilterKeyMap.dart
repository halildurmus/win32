// ISyncChangeWithFilterKeyMap.dart

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
import '../../system/windowssync/ISyncKnowledge.dart';
import '../../system/windowssync/IEnumItemIds.dart';

/// @nodoc
const IID_ISyncChangeWithFilterKeyMap =
    '{BFE1EF00-E87D-42FD-A4E9-242D70414AEF}';

/// {@category Interface}
/// {@category com}
class ISyncChangeWithFilterKeyMap extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  ISyncChangeWithFilterKeyMap(Pointer<COMObject> ptr) : super(ptr);

  int GetFilterCount(
    Pointer<Uint32> pdwFilterCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFilterCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFilterCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwFilterCount,
      );

  int GetFilterChange(
    int dwFilterKey,
    Pointer<SYNC_FILTER_CHANGE> pFilterChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFilterKey,
            Pointer<SYNC_FILTER_CHANGE> pFilterChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFilterKey,
            Pointer<SYNC_FILTER_CHANGE> pFilterChange,
          )>()(
        ptr.ref.lpVtbl,
        dwFilterKey,
        pFilterChange,
      );

  int GetAllChangeUnitsPresentFlag(
    Pointer<Int32> pfAllChangeUnitsPresent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfAllChangeUnitsPresent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfAllChangeUnitsPresent,
          )>()(
        ptr.ref.lpVtbl,
        pfAllChangeUnitsPresent,
      );

  int GetFilterForgottenKnowledge(
    int dwFilterKey,
    Pointer<Pointer<COMObject>> ppIFilterForgottenKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFilterKey,
            Pointer<Pointer<COMObject>> ppIFilterForgottenKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFilterKey,
            Pointer<Pointer<COMObject>> ppIFilterForgottenKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        dwFilterKey,
        ppIFilterForgottenKnowledge,
      );

  int GetFilteredReplicaLearnedKnowledge(
    Pointer<COMObject> pDestinationKnowledge,
    Pointer<COMObject> pNewMoveins,
    Pointer<Pointer<COMObject>> ppLearnedKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<COMObject> pNewMoveins,
            Pointer<Pointer<COMObject>> ppLearnedKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<COMObject> pNewMoveins,
            Pointer<Pointer<COMObject>> ppLearnedKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pDestinationKnowledge,
        pNewMoveins,
        ppLearnedKnowledge,
      );

  int GetLearnedFilterForgottenKnowledge(
    Pointer<COMObject> pDestinationKnowledge,
    Pointer<COMObject> pNewMoveins,
    int dwFilterKey,
    Pointer<Pointer<COMObject>> ppLearnedFilterForgottenKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<COMObject> pNewMoveins,
            Uint32 dwFilterKey,
            Pointer<Pointer<COMObject>> ppLearnedFilterForgottenKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<COMObject> pNewMoveins,
            int dwFilterKey,
            Pointer<Pointer<COMObject>> ppLearnedFilterForgottenKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pDestinationKnowledge,
        pNewMoveins,
        dwFilterKey,
        ppLearnedFilterForgottenKnowledge,
      );

  int GetFilteredReplicaLearnedForgottenKnowledge(
    Pointer<COMObject> pDestinationKnowledge,
    Pointer<COMObject> pNewMoveins,
    Pointer<Pointer<COMObject>> ppLearnedForgottenKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<COMObject> pNewMoveins,
            Pointer<Pointer<COMObject>> ppLearnedForgottenKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<COMObject> pNewMoveins,
            Pointer<Pointer<COMObject>> ppLearnedForgottenKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pDestinationKnowledge,
        pNewMoveins,
        ppLearnedForgottenKnowledge,
      );

  int GetFilteredReplicaLearnedForgottenKnowledgeAfterRecoveryComplete(
    Pointer<COMObject> pDestinationKnowledge,
    Pointer<COMObject> pNewMoveins,
    Pointer<Pointer<COMObject>> ppLearnedForgottenKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<COMObject> pNewMoveins,
            Pointer<Pointer<COMObject>> ppLearnedForgottenKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<COMObject> pNewMoveins,
            Pointer<Pointer<COMObject>> ppLearnedForgottenKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pDestinationKnowledge,
        pNewMoveins,
        ppLearnedForgottenKnowledge,
      );

  int GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete(
    Pointer<COMObject> pDestinationKnowledge,
    Pointer<COMObject> pNewMoveins,
    int dwFilterKey,
    Pointer<Pointer<COMObject>> ppLearnedFilterForgottenKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<COMObject> pNewMoveins,
            Uint32 dwFilterKey,
            Pointer<Pointer<COMObject>> ppLearnedFilterForgottenKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<COMObject> pNewMoveins,
            int dwFilterKey,
            Pointer<Pointer<COMObject>> ppLearnedFilterForgottenKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pDestinationKnowledge,
        pNewMoveins,
        dwFilterKey,
        ppLearnedFilterForgottenKnowledge,
      );
}
