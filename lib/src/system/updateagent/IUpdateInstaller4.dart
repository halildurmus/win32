// IUpdateInstaller4.dart

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

import '../../system/updateagent/IUpdateInstaller3.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUpdateInstaller4 = '{EF8208EA-2304-492D-9109-23813B0958E1}';

/// {@category Interface}
/// {@category com}
class IUpdateInstaller4 extends IUpdateInstaller3 {
  // vtable begins at 32, is 1 entries long.
  IUpdateInstaller4(Pointer<COMObject> ptr) : super(ptr);

  int Commit(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
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
