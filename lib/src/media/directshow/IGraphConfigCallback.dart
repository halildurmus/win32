// IGraphConfigCallback.dart

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
const IID_IGraphConfigCallback = '{ADE0FD60-D19D-11D2-ABF6-00A0C905F375}';

/// {@category Interface}
/// {@category com}
class IGraphConfigCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IGraphConfigCallback(Pointer<COMObject> ptr) : super(ptr);

  int Reconfigure(
    Pointer pvContext,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pvContext,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pvContext,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pvContext,
        dwFlags,
      );
}
