// IAudioRenderClient.dart

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
const IID_IAudioRenderClient = '{F294ACFC-3146-4483-A7BF-ADDCA7C260E2}';

/// {@category Interface}
/// {@category com}
class IAudioRenderClient extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioRenderClient(Pointer<COMObject> ptr) : super(ptr);

  int GetBuffer(
    int NumFramesRequested,
    Pointer<Pointer<Uint8>> ppData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumFramesRequested,
            Pointer<Pointer<Uint8>> ppData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumFramesRequested,
            Pointer<Pointer<Uint8>> ppData,
          )>()(
        ptr.ref.lpVtbl,
        NumFramesRequested,
        ppData,
      );

  int ReleaseBuffer(
    int NumFramesWritten,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumFramesWritten,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumFramesWritten,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        NumFramesWritten,
        dwFlags,
      );
}
