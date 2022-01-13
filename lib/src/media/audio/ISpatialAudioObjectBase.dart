// ISpatialAudioObjectBase.dart

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
const IID_ISpatialAudioObjectBase = '{CCE0B8F2-8D4D-4EFB-A8CF-3D6ECF1C30E0}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioObjectBase extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISpatialAudioObjectBase(Pointer<COMObject> ptr) : super(ptr);

  int GetBuffer(
    Pointer<Pointer<Uint8>> buffer,
    Pointer<Uint32> bufferLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> buffer,
            Pointer<Uint32> bufferLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> buffer,
            Pointer<Uint32> bufferLength,
          )>()(
        ptr.ref.lpVtbl,
        buffer,
        bufferLength,
      );

  int SetEndOfStream(
    int frameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 frameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int frameCount,
          )>()(
        ptr.ref.lpVtbl,
        frameCount,
      );

  int IsActive(
    Pointer<Int32> isActive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isActive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isActive,
          )>()(
        ptr.ref.lpVtbl,
        isActive,
      );

  int GetAudioObjectType(
    Pointer<Uint32> audioObjectType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> audioObjectType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> audioObjectType,
          )>()(
        ptr.ref.lpVtbl,
        audioObjectType,
      );
}
