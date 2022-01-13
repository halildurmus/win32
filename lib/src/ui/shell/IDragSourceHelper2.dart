// IDragSourceHelper2.dart

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

import '../../ui/shell/IDragSourceHelper.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDragSourceHelper2 = '{83E07D0D-0C5F-4163-BF1A-60B274051E40}';

/// {@category Interface}
/// {@category com}
class IDragSourceHelper2 extends IDragSourceHelper {
  // vtable begins at 5, is 1 entries long.
  IDragSourceHelper2(Pointer<COMObject> ptr) : super(ptr);

  int SetFlags(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
