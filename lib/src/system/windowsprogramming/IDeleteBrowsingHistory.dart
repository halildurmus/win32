// IDeleteBrowsingHistory.dart

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
const IID_IDeleteBrowsingHistory = '{CF38ED4B-2BE7-4461-8B5E-9A466DC82AE3}';

/// {@category Interface}
/// {@category com}
class IDeleteBrowsingHistory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDeleteBrowsingHistory(Pointer<COMObject> ptr) : super(ptr);

  int DeleteBrowsingHistory(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );
}
