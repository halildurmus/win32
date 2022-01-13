// IRTCSessionPortManagement.dart

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
import '../../system/realtimecommunications/IRTCPortManager.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRTCSessionPortManagement = '{A072F1D6-0286-4E1F-85F2-17A2948456EC}';

/// {@category Interface}
/// {@category com}
class IRTCSessionPortManagement extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRTCSessionPortManagement(Pointer<COMObject> ptr) : super(ptr);

  int SetPortManager(
    Pointer<COMObject> pPortManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPortManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPortManager,
          )>()(
        ptr.ref.lpVtbl,
        pPortManager,
      );
}
