// IVdsStoragePool.dart

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
import '../../storage/virtualdiskservice/IVdsProvider.dart';
import '../../foundation/structs.g.dart';
import '../../storage/virtualdiskservice/structs.g.dart';
import '../../storage/virtualdiskservice/IEnumVdsObject.dart';

/// @nodoc
const IID_IVdsStoragePool = '{932CA8CF-0EB3-4BA8-9620-22665D7F8450}';

/// {@category Interface}
/// {@category com}
class IVdsStoragePool extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IVdsStoragePool(Pointer<COMObject> ptr) : super(ptr);

  int GetProvider(
    Pointer<Pointer<COMObject>> ppProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetProperties(
    Pointer<VDS_STORAGE_POOL_PROP> pStoragePoolProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_STORAGE_POOL_PROP> pStoragePoolProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_STORAGE_POOL_PROP> pStoragePoolProp,
          )>()(
        ptr.ref.lpVtbl,
        pStoragePoolProp,
      );

  int GetAttributes(
    Pointer<VDS_POOL_ATTRIBUTES> pStoragePoolAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_POOL_ATTRIBUTES> pStoragePoolAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_POOL_ATTRIBUTES> pStoragePoolAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pStoragePoolAttributes,
      );

  int QueryDriveExtents(
    Pointer<Pointer<VDS_STORAGE_POOL_DRIVE_EXTENT>> ppExtentArray,
    Pointer<Int32> plNumberOfExtents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<VDS_STORAGE_POOL_DRIVE_EXTENT>> ppExtentArray,
            Pointer<Int32> plNumberOfExtents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<VDS_STORAGE_POOL_DRIVE_EXTENT>> ppExtentArray,
            Pointer<Int32> plNumberOfExtents,
          )>()(
        ptr.ref.lpVtbl,
        ppExtentArray,
        plNumberOfExtents,
      );

  int QueryAllocatedLuns(
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

  int QueryAllocatedStoragePools(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
}
