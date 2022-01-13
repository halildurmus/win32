// IAudioProcessingObjectVBR.dart

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
const IID_IAudioProcessingObjectVBR = '{7BA1DB8F-78AD-49CD-9591-F79D80A17C81}';

/// {@category Interface}
/// {@category com}
class IAudioProcessingObjectVBR extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioProcessingObjectVBR(Pointer<COMObject> ptr) : super(ptr);

  int CalcMaxInputFrames(
    int u32MaxOutputFrameCount,
    Pointer<Uint32> pu32InputFrameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 u32MaxOutputFrameCount,
            Pointer<Uint32> pu32InputFrameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u32MaxOutputFrameCount,
            Pointer<Uint32> pu32InputFrameCount,
          )>()(
        ptr.ref.lpVtbl,
        u32MaxOutputFrameCount,
        pu32InputFrameCount,
      );

  int CalcMaxOutputFrames(
    int u32MaxInputFrameCount,
    Pointer<Uint32> pu32OutputFrameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 u32MaxInputFrameCount,
            Pointer<Uint32> pu32OutputFrameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u32MaxInputFrameCount,
            Pointer<Uint32> pu32OutputFrameCount,
          )>()(
        ptr.ref.lpVtbl,
        u32MaxInputFrameCount,
        pu32OutputFrameCount,
      );
}
