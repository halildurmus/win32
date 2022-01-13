// IAudioInputEndpointRT.dart

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
import '../../media/audio/apo/structs.g.dart';
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_IAudioInputEndpointRT = '{8026AB61-92B2-43C1-A1DF-5C37EBD08D82}';

/// {@category Interface}
/// {@category com}
class IAudioInputEndpointRT extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAudioInputEndpointRT(Pointer<COMObject> ptr) : super(ptr);

  void GetInputDataPointer(
    Pointer<APO_CONNECTION_PROPERTY> pConnectionProperty,
    Pointer<AE_CURRENT_POSITION> pAeTimeStamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<APO_CONNECTION_PROPERTY> pConnectionProperty,
            Pointer<AE_CURRENT_POSITION> pAeTimeStamp,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<APO_CONNECTION_PROPERTY> pConnectionProperty,
            Pointer<AE_CURRENT_POSITION> pAeTimeStamp,
          )>()(
        ptr.ref.lpVtbl,
        pConnectionProperty,
        pAeTimeStamp,
      );

  void ReleaseInputDataPointer(
    int u32FrameCount,
    int pDataPointer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 u32FrameCount,
            IntPtr pDataPointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int u32FrameCount,
            int pDataPointer,
          )>()(
        ptr.ref.lpVtbl,
        u32FrameCount,
        pDataPointer,
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
