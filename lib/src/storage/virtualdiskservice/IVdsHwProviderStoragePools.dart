// IVdsHwProviderStoragePools.dart

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
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';
import '../../foundation/structs.g.dart';
import '../../storage/virtualdiskservice/IVdsAsync.dart';

/// @nodoc
const IID_IVdsHwProviderStoragePools = '{D5B5937A-F188-4C79-B86C-11C920AD11B8}';

/// {@category Interface}
/// {@category com}
class IVdsHwProviderStoragePools extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IVdsHwProviderStoragePools(Pointer<COMObject> ptr) : super(ptr);

  int QueryStoragePools(
    int ulFlags,
    int ullRemainingFreeSpace,
    Pointer<VDS_POOL_ATTRIBUTES> pPoolAttributes,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Uint64 ullRemainingFreeSpace,
            Pointer<VDS_POOL_ATTRIBUTES> pPoolAttributes,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            int ullRemainingFreeSpace,
            Pointer<VDS_POOL_ATTRIBUTES> pPoolAttributes,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        ullRemainingFreeSpace,
        pPoolAttributes,
        ppEnum,
      );

  int CreateLunInStoragePool(
    int type,
    int ullSizeInBytes,
    GUID StoragePoolId,
    Pointer<Utf16> pwszUnmaskingList,
    Pointer<VDS_HINTS2> pHints2,
    Pointer<Pointer<COMObject>> ppAsync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 type,
            Uint64 ullSizeInBytes,
            GUID StoragePoolId,
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
            GUID StoragePoolId,
            Pointer<Utf16> pwszUnmaskingList,
            Pointer<VDS_HINTS2> pHints2,
            Pointer<Pointer<COMObject>> ppAsync,
          )>()(
        ptr.ref.lpVtbl,
        type,
        ullSizeInBytes,
        StoragePoolId,
        pwszUnmaskingList,
        pHints2,
        ppAsync,
      );

  int QueryMaxLunCreateSizeInStoragePool(
    int type,
    GUID StoragePoolId,
    Pointer<VDS_HINTS2> pHints2,
    Pointer<Uint64> pullMaxLunSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 type,
            GUID StoragePoolId,
            Pointer<VDS_HINTS2> pHints2,
            Pointer<Uint64> pullMaxLunSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            GUID StoragePoolId,
            Pointer<VDS_HINTS2> pHints2,
            Pointer<Uint64> pullMaxLunSize,
          )>()(
        ptr.ref.lpVtbl,
        type,
        StoragePoolId,
        pHints2,
        pullMaxLunSize,
      );
}
