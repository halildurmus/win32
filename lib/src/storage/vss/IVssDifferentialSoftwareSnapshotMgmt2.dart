// IVssDifferentialSoftwareSnapshotMgmt2.dart

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

import '../../storage/vss/IVssDifferentialSoftwareSnapshotMgmt.dart';
import '../../foundation/structs.g.dart';
import '../../storage/vss/IVssAsync.dart';

/// @nodoc
const IID_IVssDifferentialSoftwareSnapshotMgmt2 =
    '{949D7353-675F-4275-8969-F044C6277815}';

/// {@category Interface}
/// {@category com}
class IVssDifferentialSoftwareSnapshotMgmt2
    extends IVssDifferentialSoftwareSnapshotMgmt {
  // vtable begins at 9, is 4 entries long.
  IVssDifferentialSoftwareSnapshotMgmt2(Pointer<COMObject> ptr) : super(ptr);

  int ChangeDiffAreaMaximumSizeEx(
    Pointer<Uint16> pwszVolumeName,
    Pointer<Uint16> pwszDiffAreaVolumeName,
    int llMaximumDiffSpace,
    int bVolatile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Uint16> pwszDiffAreaVolumeName,
            Int64 llMaximumDiffSpace,
            Int32 bVolatile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Uint16> pwszDiffAreaVolumeName,
            int llMaximumDiffSpace,
            int bVolatile,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        pwszDiffAreaVolumeName,
        llMaximumDiffSpace,
        bVolatile,
      );

  int MigrateDiffAreas(
    Pointer<Uint16> pwszVolumeName,
    Pointer<Uint16> pwszDiffAreaVolumeName,
    Pointer<Uint16> pwszNewDiffAreaVolumeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Uint16> pwszDiffAreaVolumeName,
            Pointer<Uint16> pwszNewDiffAreaVolumeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Uint16> pwszDiffAreaVolumeName,
            Pointer<Uint16> pwszNewDiffAreaVolumeName,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        pwszDiffAreaVolumeName,
        pwszNewDiffAreaVolumeName,
      );

  int QueryMigrationStatus(
    Pointer<Uint16> pwszVolumeName,
    Pointer<Uint16> pwszDiffAreaVolumeName,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Uint16> pwszDiffAreaVolumeName,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwszVolumeName,
            Pointer<Uint16> pwszDiffAreaVolumeName,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        pwszVolumeName,
        pwszDiffAreaVolumeName,
        ppAsync,
      );

  int SetSnapshotPriority(
    GUID idSnapshot,
    int priority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID idSnapshot,
            Uint8 priority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID idSnapshot,
            int priority,
          )>()(
        ptr.ref.lpVtbl,
        idSnapshot,
        priority,
      );
}
