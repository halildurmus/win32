// IPMEnumerationManager.dart

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
import '../../system/applicationinstallationandservicing/IPMApplicationInfoEnumerator.dart';
import '../../system/applicationinstallationandservicing/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/applicationinstallationandservicing/IPMTileInfoEnumerator.dart';
import '../../system/applicationinstallationandservicing/IPMTaskInfoEnumerator.dart';
import '../../system/applicationinstallationandservicing/IPMExtensionInfoEnumerator.dart';
import '../../system/applicationinstallationandservicing/IPMBackgroundServiceAgentInfoEnumerator.dart';
import '../../system/applicationinstallationandservicing/IPMBackgroundWorkerInfoEnumerator.dart';
import '../../system/applicationinstallationandservicing/IPMApplicationInfo.dart';
import '../../system/applicationinstallationandservicing/IPMTileInfo.dart';
import '../../system/applicationinstallationandservicing/IPMTaskInfo.dart';
import '../../system/applicationinstallationandservicing/IPMBackgroundServiceAgentInfo.dart';
import '../../system/applicationinstallationandservicing/IPMLiveTileJobInfoEnumerator.dart';
import '../../system/applicationinstallationandservicing/IPMLiveTileJobInfo.dart';

/// @nodoc
const IID_IPMEnumerationManager = '{698D57C2-292D-4CF3-B73C-D95A6922ED9A}';

/// {@category Interface}
/// {@category com}
class IPMEnumerationManager extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IPMEnumerationManager(Pointer<COMObject> ptr) : super(ptr);

  int get_AllApplications(
    Pointer<Pointer<COMObject>> ppAppEnum,
    PM_ENUM_FILTER Filter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAppEnum,
            PM_ENUM_FILTER Filter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAppEnum,
            PM_ENUM_FILTER Filter,
          )>()(
        ptr.ref.lpVtbl,
        ppAppEnum,
        Filter,
      );

  int get_AllTiles(
    Pointer<Pointer<COMObject>> ppTileEnum,
    PM_ENUM_FILTER Filter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTileEnum,
            PM_ENUM_FILTER Filter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTileEnum,
            PM_ENUM_FILTER Filter,
          )>()(
        ptr.ref.lpVtbl,
        ppTileEnum,
        Filter,
      );

  int get_AllTasks(
    Pointer<Pointer<COMObject>> ppTaskEnum,
    PM_ENUM_FILTER Filter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTaskEnum,
            PM_ENUM_FILTER Filter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTaskEnum,
            PM_ENUM_FILTER Filter,
          )>()(
        ptr.ref.lpVtbl,
        ppTaskEnum,
        Filter,
      );

  int get_AllExtensions(
    Pointer<Pointer<COMObject>> ppExtensionEnum,
    PM_ENUM_FILTER Filter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppExtensionEnum,
            PM_ENUM_FILTER Filter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppExtensionEnum,
            PM_ENUM_FILTER Filter,
          )>()(
        ptr.ref.lpVtbl,
        ppExtensionEnum,
        Filter,
      );

  int get_AllBackgroundServiceAgents(
    Pointer<Pointer<COMObject>> ppBSAEnum,
    PM_ENUM_FILTER Filter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBSAEnum,
            PM_ENUM_FILTER Filter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBSAEnum,
            PM_ENUM_FILTER Filter,
          )>()(
        ptr.ref.lpVtbl,
        ppBSAEnum,
        Filter,
      );

  int get_AllBackgroundWorkers(
    Pointer<Pointer<COMObject>> ppBSWEnum,
    PM_ENUM_FILTER Filter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBSWEnum,
            PM_ENUM_FILTER Filter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppBSWEnum,
            PM_ENUM_FILTER Filter,
          )>()(
        ptr.ref.lpVtbl,
        ppBSWEnum,
        Filter,
      );

  int get_ApplicationInfo(
    GUID ProductID,
    Pointer<Pointer<COMObject>> ppAppInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            Pointer<Pointer<COMObject>> ppAppInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            Pointer<Pointer<COMObject>> ppAppInfo,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        ppAppInfo,
      );

  int get_TileInfo(
    GUID ProductID,
    Pointer<Utf16> TileID,
    Pointer<Pointer<COMObject>> ppTileInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            Pointer<Utf16> TileID,
            Pointer<Pointer<COMObject>> ppTileInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            Pointer<Utf16> TileID,
            Pointer<Pointer<COMObject>> ppTileInfo,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        TileID,
        ppTileInfo,
      );

  int get_TaskInfo(
    GUID ProductID,
    Pointer<Utf16> TaskID,
    Pointer<Pointer<COMObject>> ppTaskInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            Pointer<Utf16> TaskID,
            Pointer<Pointer<COMObject>> ppTaskInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            Pointer<Utf16> TaskID,
            Pointer<Pointer<COMObject>> ppTaskInfo,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        TaskID,
        ppTaskInfo,
      );

  int get_TaskInfoEx(
    GUID ProductID,
    Pointer<Utf16> TaskID,
    Pointer<Pointer<COMObject>> ppTaskInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            Pointer<Utf16> TaskID,
            Pointer<Pointer<COMObject>> ppTaskInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            Pointer<Utf16> TaskID,
            Pointer<Pointer<COMObject>> ppTaskInfo,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        TaskID,
        ppTaskInfo,
      );

  int get_BackgroundServiceAgentInfo(
    int BSAID,
    Pointer<Pointer<COMObject>> ppTaskInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 BSAID,
            Pointer<Pointer<COMObject>> ppTaskInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BSAID,
            Pointer<Pointer<COMObject>> ppTaskInfo,
          )>()(
        ptr.ref.lpVtbl,
        BSAID,
        ppTaskInfo,
      );

  Pointer<COMObject> get AllLiveTileJobs {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLiveTileJobEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLiveTileJobEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_LiveTileJob(
    GUID ProductID,
    Pointer<Utf16> TileID,
    int RecurrenceType,
    Pointer<Pointer<COMObject>> ppLiveTileJobInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            Pointer<Utf16> TileID,
            Int32 RecurrenceType,
            Pointer<Pointer<COMObject>> ppLiveTileJobInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            Pointer<Utf16> TileID,
            int RecurrenceType,
            Pointer<Pointer<COMObject>> ppLiveTileJobInfo,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        TileID,
        RecurrenceType,
        ppLiveTileJobInfo,
      );

  int get_ApplicationInfoExternal(
    GUID ProductID,
    Pointer<Pointer<COMObject>> ppAppInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            Pointer<Pointer<COMObject>> ppAppInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            Pointer<Pointer<COMObject>> ppAppInfo,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        ppAppInfo,
      );

  int get_FileHandlerGenericLogo(
    Pointer<Utf16> FileType,
    int LogoSize,
    Pointer<Pointer<Utf16>> pLogo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FileType,
            Int32 LogoSize,
            Pointer<Pointer<Utf16>> pLogo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FileType,
            int LogoSize,
            Pointer<Pointer<Utf16>> pLogo,
          )>()(
        ptr.ref.lpVtbl,
        FileType,
        LogoSize,
        pLogo,
      );

  int get_ApplicationInfoFromAccessClaims(
    Pointer<Utf16> SysAppID0,
    Pointer<Utf16> SysAppID1,
    Pointer<Pointer<COMObject>> ppAppInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> SysAppID0,
            Pointer<Utf16> SysAppID1,
            Pointer<Pointer<COMObject>> ppAppInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> SysAppID0,
            Pointer<Utf16> SysAppID1,
            Pointer<Pointer<COMObject>> ppAppInfo,
          )>()(
        ptr.ref.lpVtbl,
        SysAppID0,
        SysAppID1,
        ppAppInfo,
      );

  int get_StartTileEnumeratorBlob(
    PM_ENUM_FILTER Filter,
    Pointer<Uint32> pcTiles,
    Pointer<Pointer<PM_STARTTILEBLOB>> ppTileBlobs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            PM_ENUM_FILTER Filter,
            Pointer<Uint32> pcTiles,
            Pointer<Pointer<PM_STARTTILEBLOB>> ppTileBlobs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            PM_ENUM_FILTER Filter,
            Pointer<Uint32> pcTiles,
            Pointer<Pointer<PM_STARTTILEBLOB>> ppTileBlobs,
          )>()(
        ptr.ref.lpVtbl,
        Filter,
        pcTiles,
        ppTileBlobs,
      );

  int get_StartAppEnumeratorBlob(
    PM_ENUM_FILTER Filter,
    Pointer<Uint32> pcApps,
    Pointer<Pointer<PM_STARTAPPBLOB>> ppAppBlobs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            PM_ENUM_FILTER Filter,
            Pointer<Uint32> pcApps,
            Pointer<Pointer<PM_STARTAPPBLOB>> ppAppBlobs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            PM_ENUM_FILTER Filter,
            Pointer<Uint32> pcApps,
            Pointer<Pointer<PM_STARTAPPBLOB>> ppAppBlobs,
          )>()(
        ptr.ref.lpVtbl,
        Filter,
        pcApps,
        ppAppBlobs,
      );
}
