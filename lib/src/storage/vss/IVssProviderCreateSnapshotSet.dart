// IVssProviderCreateSnapshotSet.dart

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

/// @nodoc
const IID_IVssProviderCreateSnapshotSet =
    '{5F894E5B-1E39-4778-8E23-9ABAD9F0E08C}';

/// {@category Interface}
/// {@category com}
class IVssProviderCreateSnapshotSet extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IVssProviderCreateSnapshotSet(Pointer<COMObject> ptr) : super(ptr);

  int EndPrepareSnapshots(
    GUID SnapshotSetId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotSetId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotSetId,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotSetId,
      );

  int PreCommitSnapshots(
    GUID SnapshotSetId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotSetId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotSetId,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotSetId,
      );

  int CommitSnapshots(
    GUID SnapshotSetId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotSetId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotSetId,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotSetId,
      );

  int PostCommitSnapshots(
    GUID SnapshotSetId,
    int lSnapshotsCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotSetId,
            Int32 lSnapshotsCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotSetId,
            int lSnapshotsCount,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotSetId,
        lSnapshotsCount,
      );

  int PreFinalCommitSnapshots(
    GUID SnapshotSetId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotSetId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotSetId,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotSetId,
      );

  int PostFinalCommitSnapshots(
    GUID SnapshotSetId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotSetId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotSetId,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotSetId,
      );

  int AbortSnapshots(
    GUID SnapshotSetId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotSetId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotSetId,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotSetId,
      );
}
