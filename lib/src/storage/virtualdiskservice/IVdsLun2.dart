// IVdsLun2.dart

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
const IID_IVdsLun2 = '{E5B3A735-9EFB-499A-8071-4394D9EE6FCB}';

/// {@category Interface}
/// {@category com}
class IVdsLun2 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IVdsLun2(Pointer<COMObject> ptr) : super(ptr);

  int QueryHints2(
    Pointer<VDS_HINTS2> pHints2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_HINTS2> pHints2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_HINTS2> pHints2,
          )>()(
        ptr.ref.lpVtbl,
        pHints2,
      );

  int ApplyHints2(
    Pointer<VDS_HINTS2> pHints2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VDS_HINTS2> pHints2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VDS_HINTS2> pHints2,
          )>()(
        ptr.ref.lpVtbl,
        pHints2,
      );
}
