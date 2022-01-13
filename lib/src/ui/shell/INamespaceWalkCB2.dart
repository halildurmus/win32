// INamespaceWalkCB2.dart

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

import '../../ui/shell/INamespaceWalkCB.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INamespaceWalkCB2 = '{7AC7492B-C38E-438A-87DB-68737844FF70}';

/// {@category Interface}
/// {@category com}
class INamespaceWalkCB2 extends INamespaceWalkCB {
  // vtable begins at 7, is 1 entries long.
  INamespaceWalkCB2(Pointer<COMObject> ptr) : super(ptr);

  int WalkComplete(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        hr,
      );
}
