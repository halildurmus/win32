// IDebugInputCallbacks.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugInputCallbacks = '{9F50E42C-F136-499E-9A97-73036C94ED2D}';

/// {@category Interface}
/// {@category com}
class IDebugInputCallbacks extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDebugInputCallbacks(Pointer<COMObject> ptr) : super(ptr);

  int StartInput(
    int BufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 BufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BufferSize,
          )>()(
        ptr.ref.lpVtbl,
        BufferSize,
      );

  int EndInput() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
