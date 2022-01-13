// IWSManEx2.dart

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

import '../../system/remotemanagement/IWSManEx.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSManEx2 = '{1D1B5AE0-42D9-4021-8261-3987619512E9}';

/// {@category Interface}
/// {@category com}
class IWSManEx2 extends IWSManEx {
  // vtable begins at 31, is 1 entries long.
  IWSManEx2(Pointer<COMObject> ptr) : super(ptr);

  int SessionFlagUseClientCertificate(
    Pointer<Int32> flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );
}
