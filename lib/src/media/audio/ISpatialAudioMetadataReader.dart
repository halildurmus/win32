// ISpatialAudioMetadataReader.dart

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
import '../../media/audio/ISpatialAudioMetadataItems.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpatialAudioMetadataReader =
    '{B78E86A2-31D9-4C32-94D2-7DF40FC7EBEC}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioMetadataReader extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISpatialAudioMetadataReader(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<COMObject> metadataItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> metadataItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> metadataItems,
          )>()(
        ptr.ref.lpVtbl,
        metadataItems,
      );

  int ReadNextItem(
    Pointer<Uint8> commandCount,
    Pointer<Uint16> frameOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> commandCount,
            Pointer<Uint16> frameOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> commandCount,
            Pointer<Uint16> frameOffset,
          )>()(
        ptr.ref.lpVtbl,
        commandCount,
        frameOffset,
      );

  int ReadNextItemCommand(
    Pointer<Uint8> commandID,
    Pointer valueBuffer,
    int maxValueBufferLength,
    Pointer<Uint32> valueBufferLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> commandID,
            Pointer valueBuffer,
            Uint32 maxValueBufferLength,
            Pointer<Uint32> valueBufferLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> commandID,
            Pointer valueBuffer,
            int maxValueBufferLength,
            Pointer<Uint32> valueBufferLength,
          )>()(
        ptr.ref.lpVtbl,
        commandID,
        valueBuffer,
        maxValueBufferLength,
        valueBufferLength,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
