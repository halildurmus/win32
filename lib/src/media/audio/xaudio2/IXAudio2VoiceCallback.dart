// IXAudio2VoiceCallback.dart

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

import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXAudio2VoiceCallback = 'null';

/// {@category Interface}
/// {@category com}
class IXAudio2VoiceCallback {
  // vtable begins at 0, is 7 entries long.
  Pointer<COMObject> ptr;

  IXAudio2VoiceCallback(this.ptr);

  void OnVoiceProcessingPassStart(
    int BytesRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 BytesRequired,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int BytesRequired,
          )>()(
        ptr.ref.lpVtbl,
        BytesRequired,
      );

  void OnVoiceProcessingPassEnd() => ptr.ref.lpVtbl.value
          .elementAt(1)
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

  void OnStreamEnd() => ptr.ref.lpVtbl.value
          .elementAt(2)
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

  void OnBufferStart(
    Pointer pBufferContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer pBufferContext,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer pBufferContext,
          )>()(
        ptr.ref.lpVtbl,
        pBufferContext,
      );

  void OnBufferEnd(
    Pointer pBufferContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer pBufferContext,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer pBufferContext,
          )>()(
        ptr.ref.lpVtbl,
        pBufferContext,
      );

  void OnLoopEnd(
    Pointer pBufferContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer pBufferContext,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer pBufferContext,
          )>()(
        ptr.ref.lpVtbl,
        pBufferContext,
      );

  void OnVoiceError(
    Pointer pBufferContext,
    int Error,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer pBufferContext,
            Int32 Error,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer pBufferContext,
            int Error,
          )>()(
        ptr.ref.lpVtbl,
        pBufferContext,
        Error,
      );
}
