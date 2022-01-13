// IVssDifferentialSoftwareSnapshotMgmt.dart

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
import '../../storage/vss/IVssEnumMgmtObject.dart';

/// @nodoc
const IID_IVssDifferentialSoftwareSnapshotMgmt =
    '{214A0F28-B737-4026-B847-4F9E37D79529}';

/// {@category Interface}
/// {@category com}
class IVssDifferentialSoftwareSnapshotMgmt extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IVssDifferentialSoftwareSnapshotMgmt(Pointer<COMObject> ptr) : super(ptr);

  int AddDiffArea(
    Pointer<Uint16> pwszVolumeName,
    Pointer<Uint16> pwszDiffAreaVolumeName,
    int llMaximumDiffSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Uint16> pwszDiffAreaVolumeName,
            Int64 llMaximumDiffSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Uint16> pwszDiffAreaVolumeName,
            int llMaximumDiffSpace,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        pwszDiffAreaVolumeName,
        llMaximumDiffSpace,
      );

  int ChangeDiffAreaMaximumSize(
    Pointer<Uint16> pwszVolumeName,
    Pointer<Uint16> pwszDiffAreaVolumeName,
    int llMaximumDiffSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Uint16> pwszDiffAreaVolumeName,
            Int64 llMaximumDiffSpace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Uint16> pwszDiffAreaVolumeName,
            int llMaximumDiffSpace,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        pwszDiffAreaVolumeName,
        llMaximumDiffSpace,
      );

  int QueryVolumesSupportedForDiffAreas(
    Pointer<Uint16> pwszOriginalVolumeName,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszOriginalVolumeName,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszOriginalVolumeName,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        pwszOriginalVolumeName,
        ppEnum,
      );

  int QueryDiffAreasForVolume(
    Pointer<Uint16> pwszVolumeName,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        ppEnum,
      );

  int QueryDiffAreasOnVolume(
    Pointer<Uint16> pwszVolumeName,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        ppEnum,
      );

  int QueryDiffAreasForSnapshot(
    GUID SnapshotId,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotId,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotId,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotId,
        ppEnum,
      );
}
