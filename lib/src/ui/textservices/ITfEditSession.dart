// ITfEditSession.dart

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
const IID_ITfEditSession = '{AA80E803-2021-11D2-93E0-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class ITfEditSession extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfEditSession(Pointer<COMObject> ptr) : super(ptr);

  int DoEditSession(
    int ec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
          )>()(
        ptr.ref.lpVtbl,
        ec,
      );
}
