// IVdsDrive2.dart

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
const IID_IVdsDrive2 = '{60B5A730-ADDF-4436-8CA7-5769E2D1FFA4}';

/// {@category Interface}
/// {@category com}
class IVdsDrive2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IVdsDrive2(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties2(
    Pointer<VDS_DRIVE_PROP2> pDriveProp2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_DRIVE_PROP2> pDriveProp2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_DRIVE_PROP2> pDriveProp2,
          )>()(
        ptr.ref.lpVtbl,
        pDriveProp2,
      );
}
