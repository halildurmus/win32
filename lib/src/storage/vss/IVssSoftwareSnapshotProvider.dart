// IVssSoftwareSnapshotProvider.dart

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
import '../../storage/vss/structs.g.dart';
import '../../storage/vss/IVssEnumObject.dart';
import '../../specialTypes.dart';
import '../../storage/vss/IVssAsync.dart';

/// @nodoc
const IID_IVssSoftwareSnapshotProvider =
    '{609E123E-2C5A-44D3-8F01-0B1D9A47D1FF}';

/// {@category Interface}
/// {@category com}
class IVssSoftwareSnapshotProvider extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IVssSoftwareSnapshotProvider(Pointer<COMObject> ptr) : super(ptr);

  int SetContext(
    int lContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lContext,
          )>()(
        ptr.ref.lpVtbl,
        lContext,
      );

  int GetSnapshotProperties(
    GUID SnapshotId,
    Pointer<VSS_SNAPSHOT_PROP> pProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotId,
            Pointer<VSS_SNAPSHOT_PROP> pProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotId,
            Pointer<VSS_SNAPSHOT_PROP> pProp,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotId,
        pProp,
      );

  int Query(
    GUID QueriedObjectId,
    int eQueriedObjectType,
    int eReturnedObjectsType,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID QueriedObjectId,
            Int32 eQueriedObjectType,
            Int32 eReturnedObjectsType,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID QueriedObjectId,
            int eQueriedObjectType,
            int eReturnedObjectsType,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        QueriedObjectId,
        eQueriedObjectType,
        eReturnedObjectsType,
        ppEnum,
      );

  int DeleteSnapshots(
    GUID SourceObjectId,
    int eSourceObjectType,
    int bForceDelete,
    Pointer<Int32> plDeletedSnapshots,
    Pointer<GUID> pNondeletedSnapshotID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SourceObjectId,
            Int32 eSourceObjectType,
            Int32 bForceDelete,
            Pointer<Int32> plDeletedSnapshots,
            Pointer<GUID> pNondeletedSnapshotID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SourceObjectId,
            int eSourceObjectType,
            int bForceDelete,
            Pointer<Int32> plDeletedSnapshots,
            Pointer<GUID> pNondeletedSnapshotID,
          )>()(
        ptr.ref.lpVtbl,
        SourceObjectId,
        eSourceObjectType,
        bForceDelete,
        plDeletedSnapshots,
        pNondeletedSnapshotID,
      );

  int BeginPrepareSnapshot(
    GUID SnapshotSetId,
    GUID SnapshotId,
    Pointer<Uint16> pwszVolumeName,
    int lNewContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotSetId,
            GUID SnapshotId,
            Pointer<Uint16> pwszVolumeName,
            Int32 lNewContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotSetId,
            GUID SnapshotId,
            Pointer<Uint16> pwszVolumeName,
            int lNewContext,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotSetId,
        SnapshotId,
        pwszVolumeName,
        lNewContext,
      );

  int IsVolumeSupported(
    Pointer<Uint16> pwszVolumeName,
    Pointer<Int32> pbSupportedByThisProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Int32> pbSupportedByThisProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Int32> pbSupportedByThisProvider,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        pbSupportedByThisProvider,
      );

  int IsVolumeSnapshotted(
    Pointer<Uint16> pwszVolumeName,
    Pointer<Int32> pbSnapshotsPresent,
    Pointer<Int32> plSnapshotCompatibility,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Int32> pbSnapshotsPresent,
            Pointer<Int32> plSnapshotCompatibility,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Int32> pbSnapshotsPresent,
            Pointer<Int32> plSnapshotCompatibility,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        pbSnapshotsPresent,
        plSnapshotCompatibility,
      );

  int SetSnapshotProperty(
    GUID SnapshotId,
    int eSnapshotPropertyId,
    VARIANT vProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotId,
            Int32 eSnapshotPropertyId,
            VARIANT vProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotId,
            int eSnapshotPropertyId,
            VARIANT vProperty,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotId,
        eSnapshotPropertyId,
        vProperty,
      );

  int RevertToSnapshot(
    GUID SnapshotId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotId,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotId,
      );

  int QueryRevertStatus(
    Pointer<Uint16> pwszVolume,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolume,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolume,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolume,
        ppAsync,
      );
}
