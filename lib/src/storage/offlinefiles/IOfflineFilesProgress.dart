// IOfflineFilesProgress.dart

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
const IID_IOfflineFilesProgress = '{FAD63237-C55B-4911-9850-BCF96D4C979E}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesProgress extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IOfflineFilesProgress(Pointer<COMObject> ptr) : super(ptr);

  int Begin(
    Pointer<Int32> pbAbort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbAbort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbAbort,
          )>()(
        ptr.ref.lpVtbl,
        pbAbort,
      );

  int QueryAbort(
    Pointer<Int32> pbAbort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbAbort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbAbort,
          )>()(
        ptr.ref.lpVtbl,
        pbAbort,
      );

  int End(
    int hrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrResult,
          )>()(
        ptr.ref.lpVtbl,
        hrResult,
      );
}
