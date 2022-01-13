// IAMAudioRendererStats.dart

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
const IID_IAMAudioRendererStats = '{22320CB2-D41A-11D2-BF7C-D7CB9DF0BF93}';

/// {@category Interface}
/// {@category com}
class IAMAudioRendererStats extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAMAudioRendererStats(Pointer<COMObject> ptr) : super(ptr);

  int GetStatParam(
    int dwParam,
    Pointer<Uint32> pdwParam1,
    Pointer<Uint32> pdwParam2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwParam,
            Pointer<Uint32> pdwParam1,
            Pointer<Uint32> pdwParam2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwParam,
            Pointer<Uint32> pdwParam1,
            Pointer<Uint32> pdwParam2,
          )>()(
        ptr.ref.lpVtbl,
        dwParam,
        pdwParam1,
        pdwParam2,
      );
}
