// IVssHardwareSnapshotProviderEx.dart

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

import '../../storage/vss/IVssHardwareSnapshotProvider.dart';
import '../../foundation/structs.g.dart';
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../storage/vss/IVssAsync.dart';

/// @nodoc
const IID_IVssHardwareSnapshotProviderEx =
    '{7F5BA925-CDB1-4D11-A71F-339EB7E709FD}';

/// {@category Interface}
/// {@category com}
class IVssHardwareSnapshotProviderEx extends IVssHardwareSnapshotProvider {
  // vtable begins at 9, is 4 entries long.
  IVssHardwareSnapshotProviderEx(Pointer<COMObject> ptr) : super(ptr);

  int GetProviderCapabilities(
    Pointer<Uint64> pllOriginalCapabilityMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pllOriginalCapabilityMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pllOriginalCapabilityMask,
          )>()(
        ptr.ref.lpVtbl,
        pllOriginalCapabilityMask,
      );

  int OnLunStateChange(
    Pointer<VDS_LUN_INFORMATION> pSnapshotLuns,
    Pointer<VDS_LUN_INFORMATION> pOriginalLuns,
    int dwCount,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_LUN_INFORMATION> pSnapshotLuns,
            Pointer<VDS_LUN_INFORMATION> pOriginalLuns,
            Uint32 dwCount,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_LUN_INFORMATION> pSnapshotLuns,
            Pointer<VDS_LUN_INFORMATION> pOriginalLuns,
            int dwCount,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pSnapshotLuns,
        pOriginalLuns,
        dwCount,
        dwFlags,
      );

  int ResyncLuns(
    Pointer<VDS_LUN_INFORMATION> pSourceLuns,
    Pointer<VDS_LUN_INFORMATION> pTargetLuns,
    int dwCount,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_LUN_INFORMATION> pSourceLuns,
            Pointer<VDS_LUN_INFORMATION> pTargetLuns,
            Uint32 dwCount,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_LUN_INFORMATION> pSourceLuns,
            Pointer<VDS_LUN_INFORMATION> pTargetLuns,
            int dwCount,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        pSourceLuns,
        pTargetLuns,
        dwCount,
        ppAsync,
      );

  int OnReuseLuns(
    Pointer<VDS_LUN_INFORMATION> pSnapshotLuns,
    Pointer<VDS_LUN_INFORMATION> pOriginalLuns,
    int dwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_LUN_INFORMATION> pSnapshotLuns,
            Pointer<VDS_LUN_INFORMATION> pOriginalLuns,
            Uint32 dwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_LUN_INFORMATION> pSnapshotLuns,
            Pointer<VDS_LUN_INFORMATION> pOriginalLuns,
            int dwCount,
          )>()(
        ptr.ref.lpVtbl,
        pSnapshotLuns,
        pOriginalLuns,
        dwCount,
      );
}
