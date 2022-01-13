// IDirectSoundBuffer8.dart

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

import '../../../media/audio/directsound/IDirectSoundBuffer.dart';
import '../../../media/audio/directsound/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectSoundBuffer8 = '{6825A449-7524-4D82-920F-50E36AB3AB1E}';

/// {@category Interface}
/// {@category com}
class IDirectSoundBuffer8 extends IDirectSoundBuffer {
  // vtable begins at 21, is 3 entries long.
  IDirectSoundBuffer8(Pointer<COMObject> ptr) : super(ptr);

  int SetFX(
    int dwEffectsCount,
    Pointer<DSEFFECTDESC> pDSFXDesc,
    Pointer<Uint32> pdwResultCodes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEffectsCount,
            Pointer<DSEFFECTDESC> pDSFXDesc,
            Pointer<Uint32> pdwResultCodes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEffectsCount,
            Pointer<DSEFFECTDESC> pDSFXDesc,
            Pointer<Uint32> pdwResultCodes,
          )>()(
        ptr.ref.lpVtbl,
        dwEffectsCount,
        pDSFXDesc,
        pdwResultCodes,
      );

  int AcquireResources(
    int dwFlags,
    int dwEffectsCount,
    Pointer<Uint32> pdwResultCodes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Uint32 dwEffectsCount,
            Pointer<Uint32> pdwResultCodes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int dwEffectsCount,
            Pointer<Uint32> pdwResultCodes,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        dwEffectsCount,
        pdwResultCodes,
      );

  int GetObjectInPath(
    Pointer<GUID> rguidObject,
    int dwIndex,
    Pointer<GUID> rguidInterface,
    Pointer<Pointer> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
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
}
