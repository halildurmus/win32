// ISpatialAudioObjectForMetadataItems.dart

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
import '../../media/audio/ISpatialAudioMetadataItems.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpatialAudioObjectForMetadataItems =
    '{DDEA49FF-3BC0-4377-8AAD-9FBCFD808566}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioObjectForMetadataItems extends ISpatialAudioObjectBase {
  // vtable begins at 7, is 1 entries long.
  ISpatialAudioObjectForMetadataItems(Pointer<COMObject> ptr) : super(ptr);

  int GetSpatialAudioMetadataItems(
    Pointer<Pointer<COMObject>> metadataItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> metadataItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> metadataItems,
          )>()(
        ptr.ref.lpVtbl,
        metadataItems,
      );
}
