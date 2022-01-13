// ISpatialAudioMetadataCopier.dart

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
import '../../media/audio/structs.g.dart';

/// @nodoc
const IID_ISpatialAudioMetadataCopier =
    '{D224B233-E251-4FD0-9CA2-D5ECF9A68404}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioMetadataCopier extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISpatialAudioMetadataCopier(Pointer<COMObject> ptr) : super(ptr);

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

  int CopyMetadataForFrames(
    int copyFrameCount,
    int copyMode,
    Pointer<COMObject> dstMetadataItems,
    Pointer<Uint16> itemsCopied,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 copyFrameCount,
            Int32 copyMode,
            Pointer<COMObject> dstMetadataItems,
            Pointer<Uint16> itemsCopied,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int copyFrameCount,
            int copyMode,
            Pointer<COMObject> dstMetadataItems,
            Pointer<Uint16> itemsCopied,
          )>()(
        ptr.ref.lpVtbl,
        copyFrameCount,
        copyMode,
        dstMetadataItems,
        itemsCopied,
      );

  int Close() => ptr.ref.lpVtbl.value
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
