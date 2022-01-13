// ISpatialAudioObjectRenderStreamForMetadata.dart

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

import '../../media/audio/ISpatialAudioObjectRenderStreamBase.dart';
import '../../media/audio/structs.g.dart';
import '../../media/audio/ISpatialAudioObjectForMetadataCommands.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/ISpatialAudioObjectForMetadataItems.dart';

/// @nodoc
const IID_ISpatialAudioObjectRenderStreamForMetadata =
    '{BBC9C907-48D5-4A2E-A0C7-F7F0D67C1FB1}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioObjectRenderStreamForMetadata
    extends ISpatialAudioObjectRenderStreamBase {
  // vtable begins at 10, is 2 entries long.
  ISpatialAudioObjectRenderStreamForMetadata(Pointer<COMObject> ptr)
      : super(ptr);

  int ActivateSpatialAudioObjectForMetadataCommands(
    int type,
    Pointer<Pointer<COMObject>> audioObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 type,
            Pointer<Pointer<COMObject>> audioObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            Pointer<Pointer<COMObject>> audioObject,
          )>()(
        ptr.ref.lpVtbl,
        type,
        audioObject,
      );

  int ActivateSpatialAudioObjectForMetadataItems(
    int type,
    Pointer<Pointer<COMObject>> audioObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 type,
            Pointer<Pointer<COMObject>> audioObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            Pointer<Pointer<COMObject>> audioObject,
          )>()(
        ptr.ref.lpVtbl,
        type,
        audioObject,
      );
}
