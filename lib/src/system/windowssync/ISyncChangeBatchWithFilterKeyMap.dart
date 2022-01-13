// ISyncChangeBatchWithFilterKeyMap.dart

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
import '../../system/windowssync/IFilterKeyMap.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ISyncKnowledge.dart';
import '../../system/windowssync/IEnumItemIds.dart';

/// @nodoc
const IID_ISyncChangeBatchWithFilterKeyMap =
    '{DE247002-566D-459A-A6ED-A5AAB3459FB7}';

/// {@category Interface}
/// {@category com}
class ISyncChangeBatchWithFilterKeyMap extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ISyncChangeBatchWithFilterKeyMap(Pointer<COMObject> ptr) : super(ptr);

  int GetFilterKeyMap(
    Pointer<Pointer<COMObject>> ppIFilterKeyMap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFilterKeyMap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFilterKeyMap,
          )>()(
        ptr.ref.lpVtbl,
        ppIFilterKeyMap,
      );

  int SetFilterKeyMap(
    Pointer<COMObject> pIFilterKeyMap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIFilterKeyMap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIFilterKeyMap,
          )>()(
        ptr.ref.lpVtbl,
        pIFilterKeyMap,
      );

  int SetFilterForgottenKnowledge(
    int dwFilterKey,
    Pointer<COMObject> pFilterForgottenKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFilterKey,
            Pointer<COMObject> pFilterForgottenKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFilterKey,
            Pointer<COMObject> pFilterForgottenKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        dwFilterKey,
        pFilterForgottenKnowledge,
      );

  int GetFilteredReplicaLearnedKnowledge(
    Pointer<COMObject> pDestinationKnowledge,
    Pointer<COMObject> pNewMoveins,
    Pointer<Pointer<COMObject>> ppLearnedForgottenKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetLearnedFilterForgottenKnowledge(
    Pointer<COMObject> pDestinationKnowledge,
    Pointer<COMObject> pNewMoveins,
    int dwFilterKey,
    Pointer<Pointer<COMObject>> ppLearnedFilterForgottenKnowledge,
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
          .elementAt(8)
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

  int GetLearnedFilterForgottenKnowledgeAfterRecoveryComplete(
    Pointer<COMObject> pDestinationKnowledge,
    Pointer<COMObject> pNewMoveins,
    int dwFilterKey,
    Pointer<Pointer<COMObject>> ppLearnedFilterForgottenKnowledge,
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
