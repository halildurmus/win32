// IVdsSubSystem2.dart

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
import '../../storage/virtualdiskservice/IVdsDrive.dart';
import '../../storage/virtualdiskservice/IVdsAsync.dart';

/// @nodoc
const IID_IVdsSubSystem2 = '{BE666735-7800-4A77-9D9C-40F85B87E292}';

/// {@category Interface}
/// {@category com}
class IVdsSubSystem2 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IVdsSubSystem2(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties2(
    Pointer<VDS_SUB_SYSTEM_PROP2> pSubSystemProp2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_SUB_SYSTEM_PROP2> pSubSystemProp2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_SUB_SYSTEM_PROP2> pSubSystemProp2,
          )>()(
        ptr.ref.lpVtbl,
        pSubSystemProp2,
      );

  int GetDrive2(
    int sBusNumber,
    int sSlotNumber,
    int ulEnclosureNumber,
    Pointer<Pointer<COMObject>> ppDrive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 sBusNumber,
            Int16 sSlotNumber,
            Uint32 ulEnclosureNumber,
            Pointer<Pointer<COMObject>> ppDrive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int sBusNumber,
            int sSlotNumber,
            int ulEnclosureNumber,
            Pointer<Pointer<COMObject>> ppDrive,
          )>()(
        ptr.ref.lpVtbl,
        sBusNumber,
        sSlotNumber,
        ulEnclosureNumber,
        ppDrive,
      );

  int CreateLun2(
    int type,
    int ullSizeInBytes,
    Pointer<GUID> pDriveIdArray,
    int lNumberOfDrives,
    Pointer<Utf16> pwszUnmaskingList,
    Pointer<VDS_HINTS2> pHints2,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
            Pointer<VDS_HINTS2> pHints2,
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
            Pointer<VDS_HINTS2> pHints2,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        type,
        ullSizeInBytes,
        pDriveIdArray,
        lNumberOfDrives,
        pwszUnmaskingList,
        pHints2,
        ppAsync,
      );

  int QueryMaxLunCreateSize2(
    int type,
    Pointer<GUID> pDriveIdArray,
    int lNumberOfDrives,
    Pointer<VDS_HINTS2> pHints2,
    Pointer<Uint64> pullMaxLunSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 type,
            Pointer<GUID> pDriveIdArray,
            Int32 lNumberOfDrives,
            Pointer<VDS_HINTS2> pHints2,
            Pointer<Uint64> pullMaxLunSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            Pointer<GUID> pDriveIdArray,
            int lNumberOfDrives,
            Pointer<VDS_HINTS2> pHints2,
            Pointer<Uint64> pullMaxLunSize,
          )>()(
        ptr.ref.lpVtbl,
        type,
        pDriveIdArray,
        lNumberOfDrives,
        pHints2,
        pullMaxLunSize,
      );
}
