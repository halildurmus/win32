// IVssHardwareSnapshotProvider.dart

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
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVssHardwareSnapshotProvider =
    '{9593A157-44E9-4344-BBEB-44FBF9B06B10}';

/// {@category Interface}
/// {@category com}
class IVssHardwareSnapshotProvider extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IVssHardwareSnapshotProvider(Pointer<COMObject> ptr) : super(ptr);

  int AreLunsSupported(
    int lLunCount,
    int lContext,
    Pointer<Pointer<Uint16>> rgwszDevices,
    Pointer<VDS_LUN_INFORMATION> pLunInformation,
    Pointer<Int32> pbIsSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLunCount,
            Int32 lContext,
            Pointer<Pointer<Uint16>> rgwszDevices,
            Pointer<VDS_LUN_INFORMATION> pLunInformation,
            Pointer<Int32> pbIsSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLunCount,
            int lContext,
            Pointer<Pointer<Uint16>> rgwszDevices,
            Pointer<VDS_LUN_INFORMATION> pLunInformation,
            Pointer<Int32> pbIsSupported,
          )>()(
        ptr.ref.lpVtbl,
        lLunCount,
        lContext,
        rgwszDevices,
        pLunInformation,
        pbIsSupported,
      );

  int FillInLunInfo(
    Pointer<Uint16> wszDeviceName,
    Pointer<VDS_LUN_INFORMATION> pLunInfo,
    Pointer<Int32> pbIsSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> wszDeviceName,
            Pointer<VDS_LUN_INFORMATION> pLunInfo,
            Pointer<Int32> pbIsSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> wszDeviceName,
            Pointer<VDS_LUN_INFORMATION> pLunInfo,
            Pointer<Int32> pbIsSupported,
          )>()(
        ptr.ref.lpVtbl,
        wszDeviceName,
        pLunInfo,
        pbIsSupported,
      );

  int BeginPrepareSnapshot(
    GUID SnapshotSetId,
    GUID SnapshotId,
    int lContext,
    int lLunCount,
    Pointer<Pointer<Uint16>> rgDeviceNames,
    Pointer<VDS_LUN_INFORMATION> rgLunInformation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID SnapshotSetId,
            GUID SnapshotId,
            Int32 lContext,
            Int32 lLunCount,
            Pointer<Pointer<Uint16>> rgDeviceNames,
            Pointer<VDS_LUN_INFORMATION> rgLunInformation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID SnapshotSetId,
            GUID SnapshotId,
            int lContext,
            int lLunCount,
            Pointer<Pointer<Uint16>> rgDeviceNames,
            Pointer<VDS_LUN_INFORMATION> rgLunInformation,
          )>()(
        ptr.ref.lpVtbl,
        SnapshotSetId,
        SnapshotId,
        lContext,
        lLunCount,
        rgDeviceNames,
        rgLunInformation,
      );

  int GetTargetLuns(
    int lLunCount,
    Pointer<Pointer<Uint16>> rgDeviceNames,
    Pointer<VDS_LUN_INFORMATION> rgSourceLuns,
    Pointer<VDS_LUN_INFORMATION> rgDestinationLuns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLunCount,
            Pointer<Pointer<Uint16>> rgDeviceNames,
            Pointer<VDS_LUN_INFORMATION> rgSourceLuns,
            Pointer<VDS_LUN_INFORMATION> rgDestinationLuns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLunCount,
            Pointer<Pointer<Uint16>> rgDeviceNames,
            Pointer<VDS_LUN_INFORMATION> rgSourceLuns,
            Pointer<VDS_LUN_INFORMATION> rgDestinationLuns,
          )>()(
        ptr.ref.lpVtbl,
        lLunCount,
        rgDeviceNames,
        rgSourceLuns,
        rgDestinationLuns,
      );

  int LocateLuns(
    int lLunCount,
    Pointer<VDS_LUN_INFORMATION> rgSourceLuns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lLunCount,
            Pointer<VDS_LUN_INFORMATION> rgSourceLuns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lLunCount,
            Pointer<VDS_LUN_INFORMATION> rgSourceLuns,
          )>()(
        ptr.ref.lpVtbl,
        lLunCount,
        rgSourceLuns,
      );

  int OnLunEmpty(
    Pointer<Uint16> wszDeviceName,
    Pointer<VDS_LUN_INFORMATION> pInformation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> wszDeviceName,
            Pointer<VDS_LUN_INFORMATION> pInformation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> wszDeviceName,
            Pointer<VDS_LUN_INFORMATION> pInformation,
          )>()(
        ptr.ref.lpVtbl,
        wszDeviceName,
        pInformation,
      );
}
