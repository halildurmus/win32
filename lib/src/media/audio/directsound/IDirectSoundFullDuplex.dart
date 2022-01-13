// IDirectSoundFullDuplex.dart

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
import '../../../foundation/structs.g.dart';
import '../../../media/audio/directsound/IDirectSoundCaptureBuffer8.dart';
import '../../../media/audio/directsound/IDirectSoundBuffer8.dart';

/// @nodoc
const IID_IDirectSoundFullDuplex = '{EDCB4C7A-DAAB-4216-A42E-6C50596DDC1D}';

/// {@category Interface}
/// {@category com}
class IDirectSoundFullDuplex extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDirectSoundFullDuplex(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<GUID> pCaptureGuid,
    Pointer<GUID> pRenderGuid,
    Pointer<DSCBUFFERDESC> lpDscBufferDesc,
    Pointer<DSBUFFERDESC> lpDsBufferDesc,
    int hWnd,
    int dwLevel,
    Pointer<Pointer<COMObject>> lplpDirectSoundCaptureBuffer8,
    Pointer<Pointer<COMObject>> lplpDirectSoundBuffer8,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCaptureGuid,
            Pointer<GUID> pRenderGuid,
            Pointer<DSCBUFFERDESC> lpDscBufferDesc,
            Pointer<DSBUFFERDESC> lpDsBufferDesc,
            IntPtr hWnd,
            Uint32 dwLevel,
            Pointer<Pointer<COMObject>> lplpDirectSoundCaptureBuffer8,
            Pointer<Pointer<COMObject>> lplpDirectSoundBuffer8,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCaptureGuid,
            Pointer<GUID> pRenderGuid,
            Pointer<DSCBUFFERDESC> lpDscBufferDesc,
            Pointer<DSBUFFERDESC> lpDsBufferDesc,
            int hWnd,
            int dwLevel,
            Pointer<Pointer<COMObject>> lplpDirectSoundCaptureBuffer8,
            Pointer<Pointer<COMObject>> lplpDirectSoundBuffer8,
          )>()(
        ptr.ref.lpVtbl,
        pCaptureGuid,
        pRenderGuid,
        lpDscBufferDesc,
        lpDsBufferDesc,
        hWnd,
        dwLevel,
        lplpDirectSoundCaptureBuffer8,
        lplpDirectSoundBuffer8,
      );
}
