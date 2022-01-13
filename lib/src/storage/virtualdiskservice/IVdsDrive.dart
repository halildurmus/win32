// IVdsDrive.dart

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

/// @nodoc
const IID_IVdsDrive = '{FF24EFA4-AADE-4B6B-898B-EAA6A20887C7}';

/// {@category Interface}
/// {@category com}
class IVdsDrive extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IVdsDrive(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties(
    Pointer<VDS_DRIVE_PROP> pDriveProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_DRIVE_PROP> pDriveProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_DRIVE_PROP> pDriveProp,
          )>()(
        ptr.ref.lpVtbl,
        pDriveProp,
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

  int QueryExtents(
    Pointer<Pointer<VDS_DRIVE_EXTENT>> ppExtentArray,
    Pointer<Int32> plNumberOfExtents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<VDS_DRIVE_EXTENT>> ppExtentArray,
            Pointer<Int32> plNumberOfExtents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<VDS_DRIVE_EXTENT>> ppExtentArray,
            Pointer<Int32> plNumberOfExtents,
          )>()(
        ptr.ref.lpVtbl,
        ppExtentArray,
        plNumberOfExtents,
      );

  int SetFlags(
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
      );

  int ClearFlags(
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
      );

  int SetStatus(
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
}
