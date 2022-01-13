// IAudioEndpointOffloadStreamMute.dart

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
const IID_IAudioEndpointOffloadStreamMute =
    '{DFE21355-5EC2-40E0-8D6B-710AC3C00249}';

/// {@category Interface}
/// {@category com}
class IAudioEndpointOffloadStreamMute extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioEndpointOffloadStreamMute(Pointer<COMObject> ptr) : super(ptr);

  int SetMute(
    int bMuted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bMuted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bMuted,
          )>()(
        ptr.ref.lpVtbl,
        bMuted,
      );

  int GetMute(
    Pointer<Uint8> pbMuted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbMuted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbMuted,
          )>()(
        ptr.ref.lpVtbl,
        pbMuted,
      );
}
