// ISyncCallback2.dart

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

import '../../system/windowssync/ISyncCallback.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncCallback2 = '{47CE84AF-7442-4EAD-8630-12015E030AD7}';

/// {@category Interface}
/// {@category com}
class ISyncCallback2 extends ISyncCallback {
  // vtable begins at 8, is 2 entries long.
  ISyncCallback2(Pointer<COMObject> ptr) : super(ptr);

  int OnChangeApplied(
    int dwChangesApplied,
    int dwChangesFailed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChangesApplied,
            Uint32 dwChangesFailed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChangesApplied,
            int dwChangesFailed,
          )>()(
        ptr.ref.lpVtbl,
        dwChangesApplied,
        dwChangesFailed,
      );

  int OnChangeFailed(
    int dwChangesApplied,
    int dwChangesFailed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChangesApplied,
            Uint32 dwChangesFailed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChangesApplied,
            int dwChangesFailed,
          )>()(
        ptr.ref.lpVtbl,
        dwChangesApplied,
        dwChangesFailed,
      );
}
