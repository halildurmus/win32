// IOfflineFilesSuspendInfo.dart

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
const IID_IOfflineFilesSuspendInfo = '{A457C25B-4E9C-4B04-85AF-8932CCD97889}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesSuspendInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IOfflineFilesSuspendInfo(Pointer<COMObject> ptr) : super(ptr);

  int IsSuspended(
    Pointer<Int32> pbSuspended,
    Pointer<Int32> pbSuspendedRoot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbSuspended,
            Pointer<Int32> pbSuspendedRoot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbSuspended,
            Pointer<Int32> pbSuspendedRoot,
          )>()(
        ptr.ref.lpVtbl,
        pbSuspended,
        pbSuspendedRoot,
      );
}
