// IAudioProcessingObjectRT.dart

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
import '../../../media/audio/apo/structs.g.dart';

/// @nodoc
const IID_IAudioProcessingObjectRT = '{9E1D6A6D-DDBC-4E95-A4C7-AD64BA37846C}';

/// {@category Interface}
/// {@category com}
class IAudioProcessingObjectRT extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAudioProcessingObjectRT(Pointer<COMObject> ptr) : super(ptr);

  void APOProcess(
    int u32NumInputConnections,
    Pointer<Pointer<APO_CONNECTION_PROPERTY>> ppInputConnections,
    int u32NumOutputConnections,
    Pointer<Pointer<APO_CONNECTION_PROPERTY>> ppOutputConnections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 u32NumInputConnections,
            Pointer<Pointer<APO_CONNECTION_PROPERTY>> ppInputConnections,
            Uint32 u32NumOutputConnections,
            Pointer<Pointer<APO_CONNECTION_PROPERTY>> ppOutputConnections,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int u32NumInputConnections,
            Pointer<Pointer<APO_CONNECTION_PROPERTY>> ppInputConnections,
            int u32NumOutputConnections,
            Pointer<Pointer<APO_CONNECTION_PROPERTY>> ppOutputConnections,
          )>()(
        ptr.ref.lpVtbl,
        u32NumInputConnections,
        ppInputConnections,
        u32NumOutputConnections,
        ppOutputConnections,
      );

  int CalcInputFrames(
    int u32OutputFrameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 u32OutputFrameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u32OutputFrameCount,
          )>()(
        ptr.ref.lpVtbl,
        u32OutputFrameCount,
      );

  int CalcOutputFrames(
    int u32InputFrameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 u32InputFrameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u32InputFrameCount,
          )>()(
        ptr.ref.lpVtbl,
        u32InputFrameCount,
      );
}
