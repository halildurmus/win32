// IKnowledgeSyncProvider.dart

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

import '../../system/windowssync/ISyncProvider.dart';
import '../../system/windowssync/structs.g.dart';
import '../../system/windowssync/ISyncSessionState.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ISyncKnowledge.dart';
import '../../system/windowssync/ISyncChangeBatch.dart';
import '../../specialTypes.dart';
import '../../system/windowssync/ISyncFullEnumerationChangeBatch.dart';
import '../../system/windowssync/ISyncCallback.dart';

/// @nodoc
const IID_IKnowledgeSyncProvider = '{43434A49-8DA4-47F2-8172-AD7B8B024978}';

/// {@category Interface}
/// {@category com}
class IKnowledgeSyncProvider extends ISyncProvider {
  // vtable begins at 4, is 7 entries long.
  IKnowledgeSyncProvider(Pointer<COMObject> ptr) : super(ptr);

  int BeginSession(
    int role,
    Pointer<COMObject> pSessionState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 role,
            Pointer<COMObject> pSessionState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int role,
            Pointer<COMObject> pSessionState,
          )>()(
        ptr.ref.lpVtbl,
        role,
        pSessionState,
      );

  int GetSyncBatchParameters(
    Pointer<Pointer<COMObject>> ppSyncKnowledge,
    Pointer<Uint32> pdwRequestedBatchSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSyncKnowledge,
            Pointer<Uint32> pdwRequestedBatchSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSyncKnowledge,
            Pointer<Uint32> pdwRequestedBatchSize,
          )>()(
        ptr.ref.lpVtbl,
        ppSyncKnowledge,
        pdwRequestedBatchSize,
      );

  int GetChangeBatch(
    int dwBatchSize,
    Pointer<COMObject> pSyncKnowledge,
    Pointer<Pointer<COMObject>> ppSyncChangeBatch,
    Pointer<Pointer<COMObject>> ppUnkDataRetriever,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBatchSize,
            Pointer<COMObject> pSyncKnowledge,
            Pointer<Pointer<COMObject>> ppSyncChangeBatch,
            Pointer<Pointer<COMObject>> ppUnkDataRetriever,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBatchSize,
            Pointer<COMObject> pSyncKnowledge,
            Pointer<Pointer<COMObject>> ppSyncChangeBatch,
            Pointer<Pointer<COMObject>> ppUnkDataRetriever,
          )>()(
        ptr.ref.lpVtbl,
        dwBatchSize,
        pSyncKnowledge,
        ppSyncChangeBatch,
        ppUnkDataRetriever,
      );

  int GetFullEnumerationChangeBatch(
    int dwBatchSize,
    Pointer<Uint8> pbLowerEnumerationBound,
    Pointer<COMObject> pSyncKnowledge,
    Pointer<Pointer<COMObject>> ppSyncChangeBatch,
    Pointer<Pointer<COMObject>> ppUnkDataRetriever,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBatchSize,
            Pointer<Uint8> pbLowerEnumerationBound,
            Pointer<COMObject> pSyncKnowledge,
            Pointer<Pointer<COMObject>> ppSyncChangeBatch,
            Pointer<Pointer<COMObject>> ppUnkDataRetriever,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBatchSize,
            Pointer<Uint8> pbLowerEnumerationBound,
            Pointer<COMObject> pSyncKnowledge,
            Pointer<Pointer<COMObject>> ppSyncChangeBatch,
            Pointer<Pointer<COMObject>> ppUnkDataRetriever,
          )>()(
        ptr.ref.lpVtbl,
        dwBatchSize,
        pbLowerEnumerationBound,
        pSyncKnowledge,
        ppSyncChangeBatch,
        ppUnkDataRetriever,
      );

  int ProcessChangeBatch(
    int resolutionPolicy,
    Pointer<COMObject> pSourceChangeBatch,
    Pointer<COMObject> pUnkDataRetriever,
    Pointer<COMObject> pCallback,
    Pointer<SYNC_SESSION_STATISTICS> pSyncSessionStatistics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 resolutionPolicy,
            Pointer<COMObject> pSourceChangeBatch,
            Pointer<COMObject> pUnkDataRetriever,
            Pointer<COMObject> pCallback,
            Pointer<SYNC_SESSION_STATISTICS> pSyncSessionStatistics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int resolutionPolicy,
            Pointer<COMObject> pSourceChangeBatch,
            Pointer<COMObject> pUnkDataRetriever,
            Pointer<COMObject> pCallback,
            Pointer<SYNC_SESSION_STATISTICS> pSyncSessionStatistics,
          )>()(
        ptr.ref.lpVtbl,
        resolutionPolicy,
        pSourceChangeBatch,
        pUnkDataRetriever,
        pCallback,
        pSyncSessionStatistics,
      );

  int ProcessFullEnumerationChangeBatch(
    int resolutionPolicy,
    Pointer<COMObject> pSourceChangeBatch,
    Pointer<COMObject> pUnkDataRetriever,
    Pointer<COMObject> pCallback,
    Pointer<SYNC_SESSION_STATISTICS> pSyncSessionStatistics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 resolutionPolicy,
            Pointer<COMObject> pSourceChangeBatch,
            Pointer<COMObject> pUnkDataRetriever,
            Pointer<COMObject> pCallback,
            Pointer<SYNC_SESSION_STATISTICS> pSyncSessionStatistics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int resolutionPolicy,
            Pointer<COMObject> pSourceChangeBatch,
            Pointer<COMObject> pUnkDataRetriever,
            Pointer<COMObject> pCallback,
            Pointer<SYNC_SESSION_STATISTICS> pSyncSessionStatistics,
          )>()(
        ptr.ref.lpVtbl,
        resolutionPolicy,
        pSourceChangeBatch,
        pUnkDataRetriever,
        pCallback,
        pSyncSessionStatistics,
      );

  int EndSession(
    Pointer<COMObject> pSessionState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSessionState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSessionState,
          )>()(
        ptr.ref.lpVtbl,
        pSessionState,
      );
}
