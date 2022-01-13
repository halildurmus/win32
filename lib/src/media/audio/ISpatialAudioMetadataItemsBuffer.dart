// ISpatialAudioMetadataItemsBuffer.dart

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
const IID_ISpatialAudioMetadataItemsBuffer =
    '{42640A16-E1BD-42D9-9FF6-031AB71A2DBA}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioMetadataItemsBuffer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISpatialAudioMetadataItemsBuffer(Pointer<COMObject> ptr) : super(ptr);

  int AttachToBuffer(
    Pointer<Uint8> buffer,
    int bufferLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> buffer,
            Uint32 bufferLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> buffer,
            int bufferLength,
          )>()(
        ptr.ref.lpVtbl,
        buffer,
        bufferLength,
      );

  int AttachToPopulatedBuffer(
    Pointer<Uint8> buffer,
    int bufferLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> buffer,
            Uint32 bufferLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> buffer,
            int bufferLength,
          )>()(
        ptr.ref.lpVtbl,
        buffer,
        bufferLength,
      );

  int DetachBuffer() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
