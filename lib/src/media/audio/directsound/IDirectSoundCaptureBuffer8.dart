// IDirectSoundCaptureBuffer8.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../media/audio/directsound/IDirectSoundCaptureBuffer.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectSoundCaptureBuffer8 = '{00990DF4-0DBB-4872-833E-6D303E80AEB6}';

/// {@category Interface}
/// {@category com}
class IDirectSoundCaptureBuffer8 extends IDirectSoundCaptureBuffer {
  // vtable begins at 12, is 2 entries long.
  IDirectSoundCaptureBuffer8(Pointer<COMObject> ptr) : super(ptr);

  int GetObjectInPath(
    Pointer<GUID> rguidObject,
    int dwIndex,
    Pointer<GUID> rguidInterface,
    Pointer<Pointer> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidObject,
            Uint32 dwIndex,
            Pointer<GUID> rguidInterface,
            Pointer<Pointer> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidObject,
            int dwIndex,
            Pointer<GUID> rguidInterface,
            Pointer<Pointer> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        rguidObject,
        dwIndex,
        rguidInterface,
        ppObject,
      );

  int GetFXStatus(
    int dwEffectsCount,
    Pointer<Uint32> pdwFXStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEffectsCount,
            Pointer<Uint32> pdwFXStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEffectsCount,
            Pointer<Uint32> pdwFXStatus,
          )>()(
        ptr.ref.lpVtbl,
        dwEffectsCount,
        pdwFXStatus,
      );
}
