// IVssSnapshotMgmt2.dart

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
const IID_IVssSnapshotMgmt2 = '{0F61EC39-FE82-45F2-A3F0-768B5D427102}';

/// {@category Interface}
/// {@category com}
class IVssSnapshotMgmt2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IVssSnapshotMgmt2(Pointer<COMObject> ptr) : super(ptr);

  int GetMinDiffAreaSize(
    Pointer<Int64> pllMinDiffAreaSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pllMinDiffAreaSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pllMinDiffAreaSize,
          )>()(
        ptr.ref.lpVtbl,
        pllMinDiffAreaSize,
      );
}
