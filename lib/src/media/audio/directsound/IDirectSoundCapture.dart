// IDirectSoundCapture.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../media/audio/directsound/structs.g.dart';
import '../../../media/audio/directsound/IDirectSoundCaptureBuffer.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectSoundCapture = '{B0210781-89CD-11D0-AF08-00A0C925CD16}';

/// {@category Interface}
/// {@category com}
class IDirectSoundCapture extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDirectSoundCapture(Pointer<COMObject> ptr) : super(ptr);

  int CreateCaptureBuffer(
    Pointer<DSCBUFFERDESC> pcDSCBufferDesc,
    Pointer<Pointer<COMObject>> ppDSCBuffer,
    Pointer<COMObject> pUnkOuter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSCBUFFERDESC> pcDSCBufferDesc,
            Pointer<Pointer<COMObject>> ppDSCBuffer,
            Pointer<COMObject> pUnkOuter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSCBUFFERDESC> pcDSCBufferDesc,
            Pointer<Pointer<COMObject>> ppDSCBuffer,
            Pointer<COMObject> pUnkOuter,
          )>()(
        ptr.ref.lpVtbl,
        pcDSCBufferDesc,
        ppDSCBuffer,
        pUnkOuter,
      );

  int GetCaps(
    Pointer<DSCCAPS> pDSCCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSCCAPS> pDSCCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSCCAPS> pDSCCaps,
          )>()(
        ptr.ref.lpVtbl,
        pDSCCaps,
      );

  int Initialize(
    Pointer<GUID> pcGuidDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pcGuidDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pcGuidDevice,
          )>()(
        ptr.ref.lpVtbl,
        pcGuidDevice,
      );
}
