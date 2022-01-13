// IVdsLun.dart

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
import '../../storage/virtualdiskservice/IVdsSubSystem.dart';
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';
import '../../storage/virtualdiskservice/IVdsAsync.dart';

/// @nodoc
const IID_IVdsLun = '{3540A9C7-E60F-4111-A840-8BBA6C2C83D8}';

/// {@category Interface}
/// {@category com}
class IVdsLun extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IVdsLun(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties(
    Pointer<VDS_LUN_PROP> pLunProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_LUN_PROP> pLunProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_LUN_PROP> pLunProp,
          )>()(
        ptr.ref.lpVtbl,
        pLunProp,
      );

  int GetSubSystem(
    Pointer<Pointer<COMObject>> ppSubSystem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSubSystem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSubSystem,
          )>()(
        ptr.ref.lpVtbl,
        ppSubSystem,
      );

  int GetIdentificationData(
    Pointer<VDS_LUN_INFORMATION> pLunInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_LUN_INFORMATION> pLunInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_LUN_INFORMATION> pLunInfo,
          )>()(
        ptr.ref.lpVtbl,
        pLunInfo,
      );

  int QueryActiveControllers(
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

  int Extend(
    int ullNumberOfBytesToAdd,
    Pointer<GUID> pDriveIdArray,
    int lNumberOfDrives,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullNumberOfBytesToAdd,
            Pointer<GUID> pDriveIdArray,
            Int32 lNumberOfDrives,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullNumberOfBytesToAdd,
            Pointer<GUID> pDriveIdArray,
            int lNumberOfDrives,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        ullNumberOfBytesToAdd,
        pDriveIdArray,
        lNumberOfDrives,
        ppAsync,
      );

  int Shrink(
    int ullNumberOfBytesToRemove,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 ullNumberOfBytesToRemove,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ullNumberOfBytesToRemove,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        ullNumberOfBytesToRemove,
        ppAsync,
      );

  int QueryPlexes(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int AddPlex(
    GUID lunId,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID lunId,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID lunId,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        lunId,
        ppAsync,
      );

  int RemovePlex(
    GUID plexId,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID plexId,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID plexId,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        plexId,
        ppAsync,
      );

  int Recover(
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAsync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        ppAsync,
      );

  int SetMask(
    Pointer<Utf16> pwszUnmaskingList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszUnmaskingList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszUnmaskingList,
          )>()(
        ptr.ref.lpVtbl,
        pwszUnmaskingList,
      );

  int Delete() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int AssociateControllers(
    Pointer<GUID> pActiveControllerIdArray,
    int lNumberOfActiveControllers,
    Pointer<GUID> pInactiveControllerIdArray,
    int lNumberOfInactiveControllers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pActiveControllerIdArray,
            Int32 lNumberOfActiveControllers,
            Pointer<GUID> pInactiveControllerIdArray,
            Int32 lNumberOfInactiveControllers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pActiveControllerIdArray,
            int lNumberOfActiveControllers,
            Pointer<GUID> pInactiveControllerIdArray,
            int lNumberOfInactiveControllers,
          )>()(
        ptr.ref.lpVtbl,
        pActiveControllerIdArray,
        lNumberOfActiveControllers,
        pInactiveControllerIdArray,
        lNumberOfInactiveControllers,
      );

  int QueryHints(
    Pointer<VDS_HINTS> pHints,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_HINTS> pHints,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_HINTS> pHints,
          )>()(
        ptr.ref.lpVtbl,
        pHints,
      );

  int ApplyHints(
    Pointer<VDS_HINTS> pHints,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_HINTS> pHints,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_HINTS> pHints,
          )>()(
        ptr.ref.lpVtbl,
        pHints,
      );

  int SetStatus(
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int QueryMaxLunExtendSize(
    Pointer<GUID> pDriveIdArray,
    int lNumberOfDrives,
    Pointer<Uint64> pullMaxBytesToBeAdded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pDriveIdArray,
            Int32 lNumberOfDrives,
            Pointer<Uint64> pullMaxBytesToBeAdded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pDriveIdArray,
            int lNumberOfDrives,
            Pointer<Uint64> pullMaxBytesToBeAdded,
          )>()(
        ptr.ref.lpVtbl,
        pDriveIdArray,
        lNumberOfDrives,
        pullMaxBytesToBeAdded,
      );
}
