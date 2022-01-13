// ISpatialAudioObjectForMetadataCommands.dart

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

import '../../media/audio/ISpatialAudioObjectBase.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpatialAudioObjectForMetadataCommands =
    '{0DF2C94B-F5F9-472D-AF6B-C46E0AC9CD05}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioObjectForMetadataCommands extends ISpatialAudioObjectBase {
  // vtable begins at 7, is 1 entries long.
  ISpatialAudioObjectForMetadataCommands(Pointer<COMObject> ptr) : super(ptr);

  int WriteNextMetadataCommand(
    int commandID,
    Pointer valueBuffer,
    int valueBufferLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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
}
