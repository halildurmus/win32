// ISpatialAudioMetadataWriter.dart

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
const IID_ISpatialAudioMetadataWriter =
    '{1B17CA01-2955-444D-A430-537DC589A844}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioMetadataWriter extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISpatialAudioMetadataWriter(Pointer<COMObject> ptr) : super(ptr);

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

  int WriteNextItem(
    int frameOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 frameOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int frameOffset,
          )>()(
        ptr.ref.lpVtbl,
        frameOffset,
      );

  int WriteNextItemCommand(
    int commandID,
    Pointer valueBuffer,
    int valueBufferLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 commandID,
            Pointer valueBuffer,
            Uint32 valueBufferLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commandID,
            Pointer valueBuffer,
            int valueBufferLength,
          )>()(
        ptr.ref.lpVtbl,
        commandID,
        valueBuffer,
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
