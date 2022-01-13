// IMFSpatialAudioObjectBuffer.dart

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

import '../../media/mediafoundation/IMFMediaBuffer.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/audio/ISpatialAudioMetadataItems.dart';

/// @nodoc
const IID_IMFSpatialAudioObjectBuffer =
    '{D396EC8C-605E-4249-978D-72AD1C312872}';

/// {@category Interface}
/// {@category com}
class IMFSpatialAudioObjectBuffer extends IMFMediaBuffer {
  // vtable begins at 8, is 5 entries long.
  IMFSpatialAudioObjectBuffer(Pointer<COMObject> ptr) : super(ptr);

  int SetID(
    int u32ID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 u32ID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u32ID,
          )>()(
        ptr.ref.lpVtbl,
        u32ID,
      );

  int GetID(
    Pointer<Uint32> pu32ID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pu32ID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pu32ID,
          )>()(
        ptr.ref.lpVtbl,
        pu32ID,
      );

  int SetType(
    int type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
          )>()(
        ptr.ref.lpVtbl,
        type,
      );

  int GetType(
    Pointer<Uint32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pType,
          )>()(
        ptr.ref.lpVtbl,
        pType,
      );

  int GetMetadataItems(
    Pointer<Pointer<COMObject>> ppMetadataItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMetadataItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMetadataItems,
          )>()(
        ptr.ref.lpVtbl,
        ppMetadataItems,
      );
}
