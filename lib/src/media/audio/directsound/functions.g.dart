// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../media/audio/directsound/IDirectSoundCapture.dart';
import '../../../system/com/IUnknown.dart';
import '../../../media/audio/directsound/callbacks.g.dart';
import '../../../media/audio/directsound/IDirectSound.dart';
import '../../../media/audio/directsound/IDirectSound8.dart';
import '../../../media/audio/directsound/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/directsound/IDirectSoundFullDuplex.dart';
import '../../../media/audio/directsound/IDirectSoundCaptureBuffer8.dart';
import '../../../media/audio/directsound/IDirectSoundBuffer8.dart'; // -----------------------------------------------------------------------

// dsound.dll
// -----------------------------------------------------------------------
final _dsound = DynamicLibrary.open('dsound.dll');

int DirectSoundCaptureCreate(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDSC,
  Pointer<COMObject> pUnkOuter,
) =>
    _DirectSoundCaptureCreate(
      pcGuidDevice,
      ppDSC,
      pUnkOuter,
    );

late final _DirectSoundCaptureCreate = _dsound.lookupFunction<
    Int32 Function(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDSC,
  Pointer<COMObject> pUnkOuter,
),
    int Function(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDSC,
  Pointer<COMObject> pUnkOuter,
)>('DirectSoundCaptureCreate');

int DirectSoundCaptureCreate8(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDSC8,
  Pointer<COMObject> pUnkOuter,
) =>
    _DirectSoundCaptureCreate8(
      pcGuidDevice,
      ppDSC8,
      pUnkOuter,
    );

late final _DirectSoundCaptureCreate8 = _dsound.lookupFunction<
    Int32 Function(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDSC8,
  Pointer<COMObject> pUnkOuter,
),
    int Function(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDSC8,
  Pointer<COMObject> pUnkOuter,
)>('DirectSoundCaptureCreate8');

int DirectSoundCaptureEnumerate(
  Pointer<NativeFunction<LPDSENUMCALLBACKW>> pDSEnumCallback,
  Pointer pContext,
) =>
    _DirectSoundCaptureEnumerate(
      pDSEnumCallback,
      pContext,
    );

late final _DirectSoundCaptureEnumerate = _dsound.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LPDSENUMCALLBACKW>> pDSEnumCallback,
  Pointer pContext,
),
    int Function(
  Pointer<NativeFunction<LPDSENUMCALLBACKW>> pDSEnumCallback,
  Pointer pContext,
)>('DirectSoundCaptureEnumerateW');

int DirectSoundCreate(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDS,
  Pointer<COMObject> pUnkOuter,
) =>
    _DirectSoundCreate(
      pcGuidDevice,
      ppDS,
      pUnkOuter,
    );

late final _DirectSoundCreate = _dsound.lookupFunction<
    Int32 Function(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDS,
  Pointer<COMObject> pUnkOuter,
),
    int Function(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDS,
  Pointer<COMObject> pUnkOuter,
)>('DirectSoundCreate');

int DirectSoundCreate8(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDS8,
  Pointer<COMObject> pUnkOuter,
) =>
    _DirectSoundCreate8(
      pcGuidDevice,
      ppDS8,
      pUnkOuter,
    );

late final _DirectSoundCreate8 = _dsound.lookupFunction<
    Int32 Function(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDS8,
  Pointer<COMObject> pUnkOuter,
),
    int Function(
  Pointer<GUID> pcGuidDevice,
  Pointer<Pointer<COMObject>> ppDS8,
  Pointer<COMObject> pUnkOuter,
)>('DirectSoundCreate8');

int DirectSoundEnumerate(
  Pointer<NativeFunction<LPDSENUMCALLBACKW>> pDSEnumCallback,
  Pointer pContext,
) =>
    _DirectSoundEnumerate(
      pDSEnumCallback,
      pContext,
    );

late final _DirectSoundEnumerate = _dsound.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LPDSENUMCALLBACKW>> pDSEnumCallback,
  Pointer pContext,
),
    int Function(
  Pointer<NativeFunction<LPDSENUMCALLBACKW>> pDSEnumCallback,
  Pointer pContext,
)>('DirectSoundEnumerateW');

int DirectSoundFullDuplexCreate(
  Pointer<GUID> pcGuidCaptureDevice,
  Pointer<GUID> pcGuidRenderDevice,
  Pointer<DSCBUFFERDESC> pcDSCBufferDesc,
  Pointer<DSBUFFERDESC> pcDSBufferDesc,
  int hWnd,
  int dwLevel,
  Pointer<Pointer<COMObject>> ppDSFD,
  Pointer<Pointer<COMObject>> ppDSCBuffer8,
  Pointer<Pointer<COMObject>> ppDSBuffer8,
  Pointer<COMObject> pUnkOuter,
) =>
    _DirectSoundFullDuplexCreate(
      pcGuidCaptureDevice,
      pcGuidRenderDevice,
      pcDSCBufferDesc,
      pcDSBufferDesc,
      hWnd,
      dwLevel,
      ppDSFD,
      ppDSCBuffer8,
      ppDSBuffer8,
      pUnkOuter,
    );

late final _DirectSoundFullDuplexCreate = _dsound.lookupFunction<
    Int32 Function(
  Pointer<GUID> pcGuidCaptureDevice,
  Pointer<GUID> pcGuidRenderDevice,
  Pointer<DSCBUFFERDESC> pcDSCBufferDesc,
  Pointer<DSBUFFERDESC> pcDSBufferDesc,
  IntPtr hWnd,
  Uint32 dwLevel,
  Pointer<Pointer<COMObject>> ppDSFD,
  Pointer<Pointer<COMObject>> ppDSCBuffer8,
  Pointer<Pointer<COMObject>> ppDSBuffer8,
  Pointer<COMObject> pUnkOuter,
),
    int Function(
  Pointer<GUID> pcGuidCaptureDevice,
  Pointer<GUID> pcGuidRenderDevice,
  Pointer<DSCBUFFERDESC> pcDSCBufferDesc,
  Pointer<DSBUFFERDESC> pcDSBufferDesc,
  int hWnd,
  int dwLevel,
  Pointer<Pointer<COMObject>> ppDSFD,
  Pointer<Pointer<COMObject>> ppDSCBuffer8,
  Pointer<Pointer<COMObject>> ppDSBuffer8,
  Pointer<COMObject> pUnkOuter,
)>('DirectSoundFullDuplexCreate');

int GetDeviceID(
  Pointer<GUID> pGuidSrc,
  Pointer<GUID> pGuidDest,
) =>
    _GetDeviceID(
      pGuidSrc,
      pGuidDest,
    );

late final _GetDeviceID = _dsound.lookupFunction<
    Int32 Function(
  Pointer<GUID> pGuidSrc,
  Pointer<GUID> pGuidDest,
),
    int Function(
  Pointer<GUID> pGuidSrc,
  Pointer<GUID> pGuidDest,
)>('GetDeviceID');
