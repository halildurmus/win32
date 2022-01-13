// IGetAppTrackerData.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IGetAppTrackerData = '{507C3AC8-3E12-4CB0-9366-653D3E050638}';

/// {@category Interface}
/// {@category com}
class IGetAppTrackerData extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IGetAppTrackerData(Pointer<COMObject> ptr) : super(ptr);

  int GetApplicationProcesses(
    Pointer<GUID> PartitionId,
    Pointer<GUID> ApplicationId,
    int Flags,
    Pointer<Uint32> NumApplicationProcesses,
    Pointer<Pointer<ApplicationProcessSummary>> ApplicationProcesses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> PartitionId,
            Pointer<GUID> ApplicationId,
            Uint32 Flags,
            Pointer<Uint32> NumApplicationProcesses,
            Pointer<Pointer<ApplicationProcessSummary>> ApplicationProcesses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> PartitionId,
            Pointer<GUID> ApplicationId,
            int Flags,
            Pointer<Uint32> NumApplicationProcesses,
            Pointer<Pointer<ApplicationProcessSummary>> ApplicationProcesses,
          )>()(
        ptr.ref.lpVtbl,
        PartitionId,
        ApplicationId,
        Flags,
        NumApplicationProcesses,
        ApplicationProcesses,
      );

  int GetApplicationProcessDetails(
    Pointer<GUID> ApplicationInstanceId,
    int ProcessId,
    int Flags,
    Pointer<ApplicationProcessSummary> Summary,
    Pointer<ApplicationProcessStatistics> Statistics,
    Pointer<ApplicationProcessRecycleInfo> RecycleInfo,
    Pointer<Int32> AnyComponentsHangMonitored,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ApplicationInstanceId,
            Uint32 ProcessId,
            Uint32 Flags,
            Pointer<ApplicationProcessSummary> Summary,
            Pointer<ApplicationProcessStatistics> Statistics,
            Pointer<ApplicationProcessRecycleInfo> RecycleInfo,
            Pointer<Int32> AnyComponentsHangMonitored,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ApplicationInstanceId,
            int ProcessId,
            int Flags,
            Pointer<ApplicationProcessSummary> Summary,
            Pointer<ApplicationProcessStatistics> Statistics,
            Pointer<ApplicationProcessRecycleInfo> RecycleInfo,
            Pointer<Int32> AnyComponentsHangMonitored,
          )>()(
        ptr.ref.lpVtbl,
        ApplicationInstanceId,
        ProcessId,
        Flags,
        Summary,
        Statistics,
        RecycleInfo,
        AnyComponentsHangMonitored,
      );

  int GetApplicationsInProcess(
    Pointer<GUID> ApplicationInstanceId,
    int ProcessId,
    Pointer<GUID> PartitionId,
    int Flags,
    Pointer<Uint32> NumApplicationsInProcess,
    Pointer<Pointer<ApplicationSummary>> Applications,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ApplicationInstanceId,
            Uint32 ProcessId,
            Pointer<GUID> PartitionId,
            Uint32 Flags,
            Pointer<Uint32> NumApplicationsInProcess,
            Pointer<Pointer<ApplicationSummary>> Applications,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ApplicationInstanceId,
            int ProcessId,
            Pointer<GUID> PartitionId,
            int Flags,
            Pointer<Uint32> NumApplicationsInProcess,
            Pointer<Pointer<ApplicationSummary>> Applications,
          )>()(
        ptr.ref.lpVtbl,
        ApplicationInstanceId,
        ProcessId,
        PartitionId,
        Flags,
        NumApplicationsInProcess,
        Applications,
      );

  int GetComponentsInProcess(
    Pointer<GUID> ApplicationInstanceId,
    int ProcessId,
    Pointer<GUID> PartitionId,
    Pointer<GUID> ApplicationId,
    int Flags,
    Pointer<Uint32> NumComponentsInProcess,
    Pointer<Pointer<ComponentSummary>> Components,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ApplicationInstanceId,
            Uint32 ProcessId,
            Pointer<GUID> PartitionId,
            Pointer<GUID> ApplicationId,
            Uint32 Flags,
            Pointer<Uint32> NumComponentsInProcess,
            Pointer<Pointer<ComponentSummary>> Components,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ApplicationInstanceId,
            int ProcessId,
            Pointer<GUID> PartitionId,
            Pointer<GUID> ApplicationId,
            int Flags,
            Pointer<Uint32> NumComponentsInProcess,
            Pointer<Pointer<ComponentSummary>> Components,
          )>()(
        ptr.ref.lpVtbl,
        ApplicationInstanceId,
        ProcessId,
        PartitionId,
        ApplicationId,
        Flags,
        NumComponentsInProcess,
        Components,
      );

  int GetComponentDetails(
    Pointer<GUID> ApplicationInstanceId,
    int ProcessId,
    Pointer<GUID> Clsid,
    int Flags,
    Pointer<ComponentSummary> Summary,
    Pointer<ComponentStatistics> Statistics,
    Pointer<ComponentHangMonitorInfo> HangMonitorInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ApplicationInstanceId,
            Uint32 ProcessId,
            Pointer<GUID> Clsid,
            Uint32 Flags,
            Pointer<ComponentSummary> Summary,
            Pointer<ComponentStatistics> Statistics,
            Pointer<ComponentHangMonitorInfo> HangMonitorInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ApplicationInstanceId,
            int ProcessId,
            Pointer<GUID> Clsid,
            int Flags,
            Pointer<ComponentSummary> Summary,
            Pointer<ComponentStatistics> Statistics,
            Pointer<ComponentHangMonitorInfo> HangMonitorInfo,
          )>()(
        ptr.ref.lpVtbl,
        ApplicationInstanceId,
        ProcessId,
        Clsid,
        Flags,
        Summary,
        Statistics,
        HangMonitorInfo,
      );

  int GetTrackerDataAsCollectionObject(
    Pointer<Pointer<COMObject>> TopLevelCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> TopLevelCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> TopLevelCollection,
          )>()(
        ptr.ref.lpVtbl,
        TopLevelCollection,
      );

  int GetSuggestedPollingInterval(
    Pointer<Uint32> PollingIntervalInSeconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> PollingIntervalInSeconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> PollingIntervalInSeconds,
          )>()(
        ptr.ref.lpVtbl,
        PollingIntervalInSeconds,
      );
}
