// ISpatialAudioMetadataItems.dart

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
import '../../media/audio/structs.g.dart';

/// @nodoc
const IID_ISpatialAudioMetadataItems = '{BCD7C78F-3098-4F22-B547-A2F25A381269}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioMetadataItems extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISpatialAudioMetadataItems(Pointer<COMObject> ptr) : super(ptr);

  int GetFrameCount(
    Pointer<Uint16> frameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> frameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> frameCount,
          )>()(
        ptr.ref.lpVtbl,
        frameCount,
      );

  int GetItemCount(
    Pointer<Uint16> itemCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> itemCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> itemCount,
          )>()(
        ptr.ref.lpVtbl,
        itemCount,
      );

  int GetMaxItemCount(
    Pointer<Uint16> maxItemCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> maxItemCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> maxItemCount,
          )>()(
        ptr.ref.lpVtbl,
        maxItemCount,
      );

  int GetMaxValueBufferLength(
    Pointer<Uint32> maxValueBufferLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> maxValueBufferLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> maxValueBufferLength,
          )>()(
        ptr.ref.lpVtbl,
        maxValueBufferLength,
      );

  int GetInfo(
    Pointer<SpatialAudioMetadataItemsInfo> info,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SpatialAudioMetadataItemsInfo> info,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SpatialAudioMetadataItemsInfo> info,
          )>()(
        ptr.ref.lpVtbl,
        info,
      );
}
