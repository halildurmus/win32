// IRTCClientProvisioning2.dart

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

import '../../system/realtimecommunications/IRTCClientProvisioning.dart';
import '../../system/realtimecommunications/IRTCProfile.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRTCClientProvisioning2 = '{A70909B5-F40E-4587-BB75-E6BC0845023E}';

/// {@category Interface}
/// {@category com}
class IRTCClientProvisioning2 extends IRTCClientProvisioning {
  // vtable begins at 10, is 1 entries long.
  IRTCClientProvisioning2(Pointer<COMObject> ptr) : super(ptr);

  int EnableProfileEx(
    Pointer<COMObject> pProfile,
    int lRegisterFlags,
    int lRoamingFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProfile,
            Int32 lRegisterFlags,
            Int32 lRoamingFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProfile,
            int lRegisterFlags,
            int lRoamingFlags,
          )>()(
        ptr.ref.lpVtbl,
        pProfile,
        lRegisterFlags,
        lRoamingFlags,
      );
}
