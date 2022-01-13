// IAudioEndpoint.dart

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
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioEndpoint = '{30A99515-1527-4451-AF9F-00C5F0234DAF}';

/// {@category Interface}
/// {@category com}
class IAudioEndpoint extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IAudioEndpoint(Pointer<COMObject> ptr) : super(ptr);

  int GetFrameFormat(
    Pointer<Pointer<WAVEFORMATEX>> ppFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<WAVEFORMATEX>> ppFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<WAVEFORMATEX>> ppFormat,
          )>()(
        ptr.ref.lpVtbl,
        ppFormat,
      );

  int GetFramesPerPacket(
    Pointer<Uint32> pFramesPerPacket,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFramesPerPacket,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFramesPerPacket,
          )>()(
        ptr.ref.lpVtbl,
        pFramesPerPacket,
      );

  int GetLatency(
    Pointer<Int64> pLatency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pLatency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pLatency,
          )>()(
        ptr.ref.lpVtbl,
        pLatency,
      );

  int SetStreamFlags(
    int streamFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 streamFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int streamFlags,
          )>()(
        ptr.ref.lpVtbl,
        streamFlags,
      );

  int SetEventHandle(
    int eventHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr eventHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eventHandle,
          )>()(
        ptr.ref.lpVtbl,
        eventHandle,
      );
}
