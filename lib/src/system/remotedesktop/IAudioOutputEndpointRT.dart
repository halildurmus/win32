// IAudioOutputEndpointRT.dart

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
import '../../system/remotedesktop/structs.g.dart';
import '../../media/audio/apo/structs.g.dart';

/// @nodoc
const IID_IAudioOutputEndpointRT = '{8FA906E4-C31C-4E31-932E-19A66385E9AA}';

/// {@category Interface}
/// {@category com}
class IAudioOutputEndpointRT extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAudioOutputEndpointRT(Pointer<COMObject> ptr) : super(ptr);

  int GetOutputDataPointer(
    int u32FrameCount,
    Pointer<AE_CURRENT_POSITION> pAeTimeStamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
            Uint32 u32FrameCount,
            Pointer<AE_CURRENT_POSITION> pAeTimeStamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u32FrameCount,
            Pointer<AE_CURRENT_POSITION> pAeTimeStamp,
          )>()(
        ptr.ref.lpVtbl,
        u32FrameCount,
        pAeTimeStamp,
      );

  void ReleaseOutputDataPointer(
    Pointer<APO_CONNECTION_PROPERTY> pConnectionProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<APO_CONNECTION_PROPERTY> pConnectionProperty,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<APO_CONNECTION_PROPERTY> pConnectionProperty,
          )>()(
        ptr.ref.lpVtbl,
        pConnectionProperty,
      );

  void PulseEndpoint() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
