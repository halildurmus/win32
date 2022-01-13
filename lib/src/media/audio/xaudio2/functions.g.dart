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
import '../../../system/com/IUnknown.dart';
import '../../../media/audio/xaudio2/IXAudio2.dart';
import '../../../media/audio/xaudio2/structs.g.dart';
import '../../../media/audio/xaudio2/IXAPO.dart'; // -----------------------------------------------------------------------

// xaudio2_8.dll
// -----------------------------------------------------------------------
final _xaudio2_8 = DynamicLibrary.open('xaudio2_8.dll');

int CreateAudioReverb(
  Pointer<Pointer<COMObject>> ppApo,
) =>
    _CreateAudioReverb(
      ppApo,
    );

late final _CreateAudioReverb = _xaudio2_8.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppApo,
),
    int Function(
  Pointer<Pointer<COMObject>> ppApo,
)>('CreateAudioReverb');

int CreateAudioVolumeMeter(
  Pointer<Pointer<COMObject>> ppApo,
) =>
    _CreateAudioVolumeMeter(
      ppApo,
    );

late final _CreateAudioVolumeMeter = _xaudio2_8.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppApo,
),
    int Function(
  Pointer<Pointer<COMObject>> ppApo,
)>('CreateAudioVolumeMeter');

int CreateFX(
  Pointer<GUID> clsid,
  Pointer<Pointer<COMObject>> pEffect,
  Pointer pInitDat,
  int InitDataByteSize,
) =>
    _CreateFX(
      clsid,
      pEffect,
      pInitDat,
      InitDataByteSize,
    );

late final _CreateFX = _xaudio2_8.lookupFunction<
    Int32 Function(
  Pointer<GUID> clsid,
  Pointer<Pointer<COMObject>> pEffect,
  Pointer pInitDat,
  Uint32 InitDataByteSize,
),
    int Function(
  Pointer<GUID> clsid,
  Pointer<Pointer<COMObject>> pEffect,
  Pointer pInitDat,
  int InitDataByteSize,
)>('CreateFX');

int XAudio2CreateWithVersionInfo(
  Pointer<Pointer<COMObject>> ppXAudio2,
  int Flags,
  int XAudio2Processor,
  int ntddiVersion,
) =>
    _XAudio2CreateWithVersionInfo(
      ppXAudio2,
      Flags,
      XAudio2Processor,
      ntddiVersion,
    );

late final _XAudio2CreateWithVersionInfo = _xaudio2_8.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppXAudio2,
  Uint32 Flags,
  Uint32 XAudio2Processor,
  Uint32 ntddiVersion,
),
    int Function(
  Pointer<Pointer<COMObject>> ppXAudio2,
  int Flags,
  int XAudio2Processor,
  int ntddiVersion,
)>('XAudio2CreateWithVersionInfo');

// -----------------------------------------------------------------------
// hrtfapo.dll
// -----------------------------------------------------------------------
final _hrtfapo = DynamicLibrary.open('hrtfapo.dll');

int CreateHrtfApo(
  Pointer<HrtfApoInit> init,
  Pointer<Pointer<COMObject>> xApo,
) =>
    _CreateHrtfApo(
      init,
      xApo,
    );

late final _CreateHrtfApo = _hrtfapo.lookupFunction<
    Int32 Function(
  Pointer<HrtfApoInit> init,
  Pointer<Pointer<COMObject>> xApo,
),
    int Function(
  Pointer<HrtfApoInit> init,
  Pointer<Pointer<COMObject>> xApo,
)>('CreateHrtfApo');
