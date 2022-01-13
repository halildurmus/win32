// ISpatialAudioMetadataClient.dart

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
import '../../media/audio/ISpatialAudioMetadataItemsBuffer.dart';
import '../../media/audio/ISpatialAudioMetadataItems.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/audio/ISpatialAudioMetadataWriter.dart';
import '../../media/audio/ISpatialAudioMetadataCopier.dart';
import '../../media/audio/ISpatialAudioMetadataReader.dart';

/// @nodoc
const IID_ISpatialAudioMetadataClient =
    '{777D4A3B-F6FF-4A26-85DC-68D7CDEDA1D4}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioMetadataClient extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISpatialAudioMetadataClient(Pointer<COMObject> ptr) : super(ptr);

  int ActivateSpatialAudioMetadataItems(
    int maxItemCount,
    int frameCount,
    Pointer<Pointer<COMObject>> metadataItemsBuffer,
    Pointer<Pointer<COMObject>> metadataItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 maxItemCount,
            Uint16 frameCount,
            Pointer<Pointer<COMObject>> metadataItemsBuffer,
            Pointer<Pointer<COMObject>> metadataItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int maxItemCount,
            int frameCount,
            Pointer<Pointer<COMObject>> metadataItemsBuffer,
            Pointer<Pointer<COMObject>> metadataItems,
          )>()(
        ptr.ref.lpVtbl,
        maxItemCount,
        frameCount,
        metadataItemsBuffer,
        metadataItems,
      );

  int GetSpatialAudioMetadataItemsBufferLength(
    int maxItemCount,
    Pointer<Uint32> bufferLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 maxItemCount,
            Pointer<Uint32> bufferLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int maxItemCount,
            Pointer<Uint32> bufferLength,
          )>()(
        ptr.ref.lpVtbl,
        maxItemCount,
        bufferLength,
      );

  int ActivateSpatialAudioMetadataWriter(
    int overflowMode,
    Pointer<Pointer<COMObject>> metadataWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 overflowMode,
            Pointer<Pointer<COMObject>> metadataWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int overflowMode,
            Pointer<Pointer<COMObject>> metadataWriter,
          )>()(
        ptr.ref.lpVtbl,
        overflowMode,
        metadataWriter,
      );

  int ActivateSpatialAudioMetadataCopier(
    Pointer<Pointer<COMObject>> metadataCopier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> metadataCopier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> metadataCopier,
          )>()(
        ptr.ref.lpVtbl,
        metadataCopier,
      );

  int ActivateSpatialAudioMetadataReader(
    Pointer<Pointer<COMObject>> metadataReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> metadataReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> metadataReader,
          )>()(
        ptr.ref.lpVtbl,
        metadataReader,
      );
}
