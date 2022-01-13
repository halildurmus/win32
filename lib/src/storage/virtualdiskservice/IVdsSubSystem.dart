// IVdsSubSystem.dart

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
import '../../storage/virtualdiskservice/IVdsProvider.dart';
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';
import '../../storage/virtualdiskservice/IVdsDrive.dart';
import '../../storage/virtualdiskservice/IVdsAsync.dart';

/// @nodoc
const IID_IVdsSubSystem = '{6FCEE2D3-6D90-4F91-80E2-A5C7CAACA9D8}';

/// {@category Interface}
/// {@category com}
class IVdsSubSystem extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IVdsSubSystem(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties(
    Pointer<VDS_SUB_SYSTEM_PROP> pSubSystemProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_SUB_SYSTEM_PROP> pSubSystemProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_SUB_SYSTEM_PROP> pSubSystemProp,
          )>()(
        ptr.ref.lpVtbl,
        pSubSystemProp,
      );

  int GetProvider(
    Pointer<Pointer<COMObject>> ppProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProvider,
          )>()(
        ptr.ref.lpVtbl,
        ppProvider,
      );

  int QueryControllers(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int QueryLuns(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int QueryDrives(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetDrive(
    int sBusNumber,
    int sSlotNumber,
    Pointer<Pointer<COMObject>> ppDrive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 sBusNumber,
            Int16 sSlotNumber,
            Pointer<Pointer<COMObject>> ppDrive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sBusNumber,
            int sSlotNumber,
            Pointer<Pointer<COMObject>> ppDrive,
          )>()(
        ptr.ref.lpVtbl,
        sBusNumber,
        sSlotNumber,
        ppDrive,
      );

  int Reenumerate() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetControllerStatus(
    Pointer<GUID> pOnlineControllerIdArray,
    int lNumberOfOnlineControllers,
    Pointer<GUID> pOfflineControllerIdArray,
    int lNumberOfOfflineControllers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pOnlineControllerIdArray,
            Int32 lNumberOfOnlineControllers,
            Pointer<GUID> pOfflineControllerIdArray,
            Int32 lNumberOfOfflineControllers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pOnlineControllerIdArray,
            int lNumberOfOnlineControllers,
            Pointer<GUID> pOfflineControllerIdArray,
            int lNumberOfOfflineControllers,
          )>()(
        ptr.ref.lpVtbl,
        pOnlineControllerIdArray,
        lNumberOfOnlineControllers,
        pOfflineControllerIdArray,
        lNumberOfOfflineControllers,
      );

  int CreateLun(
    int type,
    int ullSizeInBytes,
    Pointer<GUID> pDriveIdArray,
    int lNumberOfDrives,
    Pointer<Utf16> pwszUnmaskingList,
    Pointer<VDS_HINTS> pHints,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 type,
            Uint64 ullSizeInBytes,
            Pointer<GUID> pDriveIdArray,
            Int32 lNumberOfDrives,
            Pointer<Utf16> pwszUnmaskingList,
            Pointer<VDS_HINTS> pHints,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            int ullSizeInBytes,
            Pointer<GUID> pDriveIdArray,
            int lNumberOfDrives,
            Pointer<Utf16> pwszUnmaskingList,
            Pointer<VDS_HINTS> pHints,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        type,
        ullSizeInBytes,
        pDriveIdArray,
        lNumberOfDrives,
        pwszUnmaskingList,
        pHints,
        ppAsync,
      );

  int ReplaceDrive(
    GUID DriveToBeReplaced,
    GUID ReplacementDrive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID DriveToBeReplaced,
            GUID ReplacementDrive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID DriveToBeReplaced,
            GUID ReplacementDrive,
          )>()(
        ptr.ref.lpVtbl,
        DriveToBeReplaced,
        ReplacementDrive,
      );

  int SetStatus(
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        status,
      );

  int QueryMaxLunCreateSize(
    int type,
    Pointer<GUID> pDriveIdArray,
    int lNumberOfDrives,
    Pointer<VDS_HINTS> pHints,
    Pointer<Uint64> pullMaxLunSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 type,
            Pointer<GUID> pDriveIdArray,
            Int32 lNumberOfDrives,
            Pointer<VDS_HINTS> pHints,
            Pointer<Uint64> pullMaxLunSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            Pointer<GUID> pDriveIdArray,
            int lNumberOfDrives,
            Pointer<VDS_HINTS> pHints,
            Pointer<Uint64> pullMaxLunSize,
          )>()(
        ptr.ref.lpVtbl,
        type,
        pDriveIdArray,
        lNumberOfDrives,
        pHints,
        pullMaxLunSize,
      );
}
