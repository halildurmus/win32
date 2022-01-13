// IAMLatency.dart

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
const IID_IAMLatency = '{62EA93BA-EC62-11D2-B770-00C04FB6BD3D}';

/// {@category Interface}
/// {@category com}
class IAMLatency extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAMLatency(Pointer<COMObject> ptr) : super(ptr);

  int GetLatency(
    Pointer<Int64> prtLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prtLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prtLatency,
          )>()(
        ptr.ref.lpVtbl,
        prtLatency,
      );
}
