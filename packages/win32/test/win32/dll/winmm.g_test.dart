// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('winmm.dll', () {
    test('mciGetDeviceID can be instantiated', () {
      check(_mciGetDeviceID).isA<Function>();
    });
    test('mciGetDeviceIDFromElementID can be instantiated', () {
      check(_mciGetDeviceIDFromElementID).isA<Function>();
    });
    test('mciGetErrorString can be instantiated', () {
      check(_mciGetErrorString).isA<Function>();
    });
    test('mciSendCommand can be instantiated', () {
      check(_mciSendCommand).isA<Function>();
    });
    test('mciSendString can be instantiated', () {
      check(_mciSendString).isA<Function>();
    });
    test('midiConnect can be instantiated', () {
      check(_midiConnect).isA<Function>();
    });
    test('midiDisconnect can be instantiated', () {
      check(_midiDisconnect).isA<Function>();
    });
    test('midiInAddBuffer can be instantiated', () {
      check(_midiInAddBuffer).isA<Function>();
    });
    test('midiInClose can be instantiated', () {
      check(_midiInClose).isA<Function>();
    });
    test('midiInGetDevCaps can be instantiated', () {
      check(_midiInGetDevCaps).isA<Function>();
    });
    test('midiInGetErrorText can be instantiated', () {
      check(_midiInGetErrorText).isA<Function>();
    });
    test('midiInGetID can be instantiated', () {
      check(_midiInGetID).isA<Function>();
    });
    test('midiInGetNumDevs can be instantiated', () {
      check(_midiInGetNumDevs).isA<Function>();
    });
    test('midiInMessage can be instantiated', () {
      check(_midiInMessage).isA<Function>();
    });
    test('midiInOpen can be instantiated', () {
      check(_midiInOpen).isA<Function>();
    });
    test('midiInPrepareHeader can be instantiated', () {
      check(_midiInPrepareHeader).isA<Function>();
    });
    test('midiInReset can be instantiated', () {
      check(_midiInReset).isA<Function>();
    });
    test('midiInStart can be instantiated', () {
      check(_midiInStart).isA<Function>();
    });
    test('midiInStop can be instantiated', () {
      check(_midiInStop).isA<Function>();
    });
    test('midiInUnprepareHeader can be instantiated', () {
      check(_midiInUnprepareHeader).isA<Function>();
    });
    test('midiOutCacheDrumPatches can be instantiated', () {
      check(_midiOutCacheDrumPatches).isA<Function>();
    });
    test('midiOutCachePatches can be instantiated', () {
      check(_midiOutCachePatches).isA<Function>();
    });
    test('midiOutClose can be instantiated', () {
      check(_midiOutClose).isA<Function>();
    });
    test('midiOutGetDevCaps can be instantiated', () {
      check(_midiOutGetDevCaps).isA<Function>();
    });
    test('midiOutGetErrorText can be instantiated', () {
      check(_midiOutGetErrorText).isA<Function>();
    });
    test('midiOutGetID can be instantiated', () {
      check(_midiOutGetID).isA<Function>();
    });
    test('midiOutGetNumDevs can be instantiated', () {
      check(_midiOutGetNumDevs).isA<Function>();
    });
    test('midiOutGetVolume can be instantiated', () {
      check(_midiOutGetVolume).isA<Function>();
    });
    test('midiOutLongMsg can be instantiated', () {
      check(_midiOutLongMsg).isA<Function>();
    });
    test('midiOutMessage can be instantiated', () {
      check(_midiOutMessage).isA<Function>();
    });
    test('midiOutOpen can be instantiated', () {
      check(_midiOutOpen).isA<Function>();
    });
    test('midiOutPrepareHeader can be instantiated', () {
      check(_midiOutPrepareHeader).isA<Function>();
    });
    test('midiOutReset can be instantiated', () {
      check(_midiOutReset).isA<Function>();
    });
    test('midiOutSetVolume can be instantiated', () {
      check(_midiOutSetVolume).isA<Function>();
    });
    test('midiOutShortMsg can be instantiated', () {
      check(_midiOutShortMsg).isA<Function>();
    });
    test('midiOutUnprepareHeader can be instantiated', () {
      check(_midiOutUnprepareHeader).isA<Function>();
    });
    test('PlaySound can be instantiated', () {
      check(_PlaySound).isA<Function>();
    });
    test('timeGetTime can be instantiated', () {
      check(_timeGetTime).isA<Function>();
    });
    test('waveInAddBuffer can be instantiated', () {
      check(_waveInAddBuffer).isA<Function>();
    });
    test('waveInClose can be instantiated', () {
      check(_waveInClose).isA<Function>();
    });
    test('waveInGetDevCaps can be instantiated', () {
      check(_waveInGetDevCaps).isA<Function>();
    });
    test('waveInGetErrorText can be instantiated', () {
      check(_waveInGetErrorText).isA<Function>();
    });
    test('waveInGetID can be instantiated', () {
      check(_waveInGetID).isA<Function>();
    });
    test('waveInGetNumDevs can be instantiated', () {
      check(_waveInGetNumDevs).isA<Function>();
    });
    test('waveInGetPosition can be instantiated', () {
      check(_waveInGetPosition).isA<Function>();
    });
    test('waveInMessage can be instantiated', () {
      check(_waveInMessage).isA<Function>();
    });
    test('waveInOpen can be instantiated', () {
      check(_waveInOpen).isA<Function>();
    });
    test('waveInPrepareHeader can be instantiated', () {
      check(_waveInPrepareHeader).isA<Function>();
    });
    test('waveInReset can be instantiated', () {
      check(_waveInReset).isA<Function>();
    });
    test('waveInStart can be instantiated', () {
      check(_waveInStart).isA<Function>();
    });
    test('waveInStop can be instantiated', () {
      check(_waveInStop).isA<Function>();
    });
    test('waveInUnprepareHeader can be instantiated', () {
      check(_waveInUnprepareHeader).isA<Function>();
    });
    test('waveOutClose can be instantiated', () {
      check(_waveOutClose).isA<Function>();
    });
    test('waveOutGetDevCaps can be instantiated', () {
      check(_waveOutGetDevCaps).isA<Function>();
    });
    test('waveOutGetErrorText can be instantiated', () {
      check(_waveOutGetErrorText).isA<Function>();
    });
    test('waveOutGetID can be instantiated', () {
      check(_waveOutGetID).isA<Function>();
    });
    test('waveOutGetNumDevs can be instantiated', () {
      check(_waveOutGetNumDevs).isA<Function>();
    });
    test('waveOutGetPitch can be instantiated', () {
      check(_waveOutGetPitch).isA<Function>();
    });
    test('waveOutGetPlaybackRate can be instantiated', () {
      check(_waveOutGetPlaybackRate).isA<Function>();
    });
    test('waveOutGetPosition can be instantiated', () {
      check(_waveOutGetPosition).isA<Function>();
    });
    test('waveOutGetVolume can be instantiated', () {
      check(_waveOutGetVolume).isA<Function>();
    });
    test('waveOutMessage can be instantiated', () {
      check(_waveOutMessage).isA<Function>();
    });
    test('waveOutOpen can be instantiated', () {
      check(_waveOutOpen).isA<Function>();
    });
    test('waveOutPause can be instantiated', () {
      check(_waveOutPause).isA<Function>();
    });
    test('waveOutPrepareHeader can be instantiated', () {
      check(_waveOutPrepareHeader).isA<Function>();
    });
    test('waveOutReset can be instantiated', () {
      check(_waveOutReset).isA<Function>();
    });
    test('waveOutRestart can be instantiated', () {
      check(_waveOutRestart).isA<Function>();
    });
    test('waveOutSetPitch can be instantiated', () {
      check(_waveOutSetPitch).isA<Function>();
    });
    test('waveOutSetPlaybackRate can be instantiated', () {
      check(_waveOutSetPlaybackRate).isA<Function>();
    });
    test('waveOutSetVolume can be instantiated', () {
      check(_waveOutSetVolume).isA<Function>();
    });
    test('waveOutUnprepareHeader can be instantiated', () {
      check(_waveOutUnprepareHeader).isA<Function>();
    });
    test('waveOutWrite can be instantiated', () {
      check(_waveOutWrite).isA<Function>();
    });
  });
}

@Native<Uint32 Function(Pointer<Utf16>)>(symbol: 'mciGetDeviceIDW')
external int _mciGetDeviceID(Pointer<Utf16> pszDevice);

@Native<Uint32 Function(Uint32, Pointer<Utf16>)>(
  symbol: 'mciGetDeviceIDFromElementIDW',
)
external int _mciGetDeviceIDFromElementID(
  int dwElementID,
  Pointer<Utf16> lpstrType,
);

@Native<Int32 Function(Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'mciGetErrorStringW',
)
external int _mciGetErrorString(
  int mcierr,
  Pointer<Utf16> pszText,
  int cchText,
);

@Native<Uint32 Function(Uint32, Uint32, IntPtr, IntPtr)>(
  symbol: 'mciSendCommandW',
)
external int _mciSendCommand(int mciId, int uMsg, int dwParam1, int dwParam2);

@Native<Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer)>(
  symbol: 'mciSendStringW',
)
external int _mciSendString(
  Pointer<Utf16> lpstrCommand,
  Pointer<Utf16> lpstrReturnString,
  int uReturnLength,
  Pointer hwndCallback,
);

@Native<Uint32 Function(Pointer, Pointer, Pointer)>(symbol: 'midiConnect')
external int _midiConnect(Pointer hmi, Pointer hmo, Pointer pReserved);

@Native<Uint32 Function(Pointer, Pointer, Pointer)>(symbol: 'midiDisconnect')
external int _midiDisconnect(Pointer hmi, Pointer hmo, Pointer pReserved);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInAddBuffer',
)
external int _midiInAddBuffer(Pointer hmi, Pointer<MIDIHDR> pmh, int cbmh);

@Native<Uint32 Function(Pointer)>(symbol: 'midiInClose')
external int _midiInClose(Pointer hmi);

@Native<Uint32 Function(IntPtr, Pointer<MIDIINCAPS>, Uint32)>(
  symbol: 'midiInGetDevCapsW',
)
external int _midiInGetDevCaps(
  int uDeviceID,
  Pointer<MIDIINCAPS> pmic,
  int cbmic,
);

@Native<Uint32 Function(Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'midiInGetErrorTextW',
)
external int _midiInGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'midiInGetID')
external int _midiInGetID(Pointer hmi, Pointer<Uint32> puDeviceID);

@Native<Uint32 Function()>(symbol: 'midiInGetNumDevs')
external int _midiInGetNumDevs();

@Native<Uint32 Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'midiInMessage',
)
external int _midiInMessage(Pointer hmi, int uMsg, int dw1, int dw2);

@Native<Uint32 Function(Pointer<Pointer>, Uint32, IntPtr, IntPtr, Uint32)>(
  symbol: 'midiInOpen',
)
external int _midiInOpen(
  Pointer<Pointer> phmi,
  int uDeviceID,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInPrepareHeader',
)
external int _midiInPrepareHeader(Pointer hmi, Pointer<MIDIHDR> pmh, int cbmh);

@Native<Uint32 Function(Pointer)>(symbol: 'midiInReset')
external int _midiInReset(Pointer hmi);

@Native<Uint32 Function(Pointer)>(symbol: 'midiInStart')
external int _midiInStart(Pointer hmi);

@Native<Uint32 Function(Pointer)>(symbol: 'midiInStop')
external int _midiInStop(Pointer hmi);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInUnprepareHeader',
)
external int _midiInUnprepareHeader(
  Pointer hmi,
  Pointer<MIDIHDR> pmh,
  int cbmh,
);

@Native<Uint32 Function(Pointer, Uint32, Pointer<Uint16>, Uint32)>(
  symbol: 'midiOutCacheDrumPatches',
)
external int _midiOutCacheDrumPatches(
  Pointer hmo,
  int uPatch,
  Pointer<Uint16> pwkya,
  int fuCache,
);

@Native<Uint32 Function(Pointer, Uint32, Pointer<Uint16>, Uint32)>(
  symbol: 'midiOutCachePatches',
)
external int _midiOutCachePatches(
  Pointer hmo,
  int uBank,
  Pointer<Uint16> pwpa,
  int fuCache,
);

@Native<Uint32 Function(Pointer)>(symbol: 'midiOutClose')
external int _midiOutClose(Pointer hmo);

@Native<Uint32 Function(IntPtr, Pointer<MIDIOUTCAPS>, Uint32)>(
  symbol: 'midiOutGetDevCapsW',
)
external int _midiOutGetDevCaps(
  int uDeviceID,
  Pointer<MIDIOUTCAPS> pmoc,
  int cbmoc,
);

@Native<Uint32 Function(Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'midiOutGetErrorTextW',
)
external int _midiOutGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'midiOutGetID')
external int _midiOutGetID(Pointer hmo, Pointer<Uint32> puDeviceID);

@Native<Uint32 Function()>(symbol: 'midiOutGetNumDevs')
external int _midiOutGetNumDevs();

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'midiOutGetVolume')
external int _midiOutGetVolume(Pointer hmo, Pointer<Uint32> pdwVolume);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutLongMsg',
)
external int _midiOutLongMsg(Pointer hmo, Pointer<MIDIHDR> pmh, int cbmh);

@Native<Uint32 Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'midiOutMessage',
)
external int _midiOutMessage(Pointer hmo, int uMsg, int dw1, int dw2);

@Native<Uint32 Function(Pointer<Pointer>, Uint32, IntPtr, IntPtr, Uint32)>(
  symbol: 'midiOutOpen',
)
external int _midiOutOpen(
  Pointer<Pointer> phmo,
  int uDeviceID,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutPrepareHeader',
)
external int _midiOutPrepareHeader(Pointer hmo, Pointer<MIDIHDR> pmh, int cbmh);

@Native<Uint32 Function(Pointer)>(symbol: 'midiOutReset')
external int _midiOutReset(Pointer hmo);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'midiOutSetVolume')
external int _midiOutSetVolume(Pointer hmo, int dwVolume);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'midiOutShortMsg')
external int _midiOutShortMsg(Pointer hmo, int dwMsg);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutUnprepareHeader',
)
external int _midiOutUnprepareHeader(
  Pointer hmo,
  Pointer<MIDIHDR> pmh,
  int cbmh,
);

@Native<Int32 Function(Pointer<Utf16>, Pointer, Uint32)>(symbol: 'PlaySoundW')
external int _PlaySound(Pointer<Utf16> pszSound, Pointer hmod, int fdwSound);

@Native<Uint32 Function()>(symbol: 'timeGetTime')
external int _timeGetTime();

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInAddBuffer',
)
external int _waveInAddBuffer(Pointer hwi, Pointer<WAVEHDR> pwh, int cbwh);

@Native<Uint32 Function(Pointer)>(symbol: 'waveInClose')
external int _waveInClose(Pointer hwi);

@Native<Uint32 Function(IntPtr, Pointer<WAVEINCAPS>, Uint32)>(
  symbol: 'waveInGetDevCapsW',
)
external int _waveInGetDevCaps(
  int uDeviceID,
  Pointer<WAVEINCAPS> pwic,
  int cbwic,
);

@Native<Uint32 Function(Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'waveInGetErrorTextW',
)
external int _waveInGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'waveInGetID')
external int _waveInGetID(Pointer hwi, Pointer<Uint32> puDeviceID);

@Native<Uint32 Function()>(symbol: 'waveInGetNumDevs')
external int _waveInGetNumDevs();

@Native<Uint32 Function(Pointer, Pointer<MMTIME>, Uint32)>(
  symbol: 'waveInGetPosition',
)
external int _waveInGetPosition(Pointer hwi, Pointer<MMTIME> pmmt, int cbmmt);

@Native<Uint32 Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'waveInMessage',
)
external int _waveInMessage(Pointer hwi, int uMsg, int dw1, int dw2);

@Native<
  Uint32 Function(
    Pointer<Pointer>,
    Uint32,
    Pointer<WAVEFORMATEX>,
    IntPtr,
    IntPtr,
    Uint32,
  )
>(symbol: 'waveInOpen')
external int _waveInOpen(
  Pointer<Pointer> phwi,
  int uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
);

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInPrepareHeader',
)
external int _waveInPrepareHeader(Pointer hwi, Pointer<WAVEHDR> pwh, int cbwh);

@Native<Uint32 Function(Pointer)>(symbol: 'waveInReset')
external int _waveInReset(Pointer hwi);

@Native<Uint32 Function(Pointer)>(symbol: 'waveInStart')
external int _waveInStart(Pointer hwi);

@Native<Uint32 Function(Pointer)>(symbol: 'waveInStop')
external int _waveInStop(Pointer hwi);

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInUnprepareHeader',
)
external int _waveInUnprepareHeader(
  Pointer hwi,
  Pointer<WAVEHDR> pwh,
  int cbwh,
);

@Native<Uint32 Function(Pointer)>(symbol: 'waveOutClose')
external int _waveOutClose(Pointer hwo);

@Native<Uint32 Function(IntPtr, Pointer<WAVEOUTCAPS>, Uint32)>(
  symbol: 'waveOutGetDevCapsW',
)
external int _waveOutGetDevCaps(
  int uDeviceID,
  Pointer<WAVEOUTCAPS> pwoc,
  int cbwoc,
);

@Native<Uint32 Function(Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'waveOutGetErrorTextW',
)
external int _waveOutGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'waveOutGetID')
external int _waveOutGetID(Pointer hwo, Pointer<Uint32> puDeviceID);

@Native<Uint32 Function()>(symbol: 'waveOutGetNumDevs')
external int _waveOutGetNumDevs();

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'waveOutGetPitch')
external int _waveOutGetPitch(Pointer hwo, Pointer<Uint32> pdwPitch);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(
  symbol: 'waveOutGetPlaybackRate',
)
external int _waveOutGetPlaybackRate(Pointer hwo, Pointer<Uint32> pdwRate);

@Native<Uint32 Function(Pointer, Pointer<MMTIME>, Uint32)>(
  symbol: 'waveOutGetPosition',
)
external int _waveOutGetPosition(Pointer hwo, Pointer<MMTIME> pmmt, int cbmmt);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'waveOutGetVolume')
external int _waveOutGetVolume(Pointer hwo, Pointer<Uint32> pdwVolume);

@Native<Uint32 Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'waveOutMessage',
)
external int _waveOutMessage(Pointer hwo, int uMsg, int dw1, int dw2);

@Native<
  Uint32 Function(
    Pointer<Pointer>,
    Uint32,
    Pointer<WAVEFORMATEX>,
    IntPtr,
    IntPtr,
    Uint32,
  )
>(symbol: 'waveOutOpen')
external int _waveOutOpen(
  Pointer<Pointer> phwo,
  int uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
);

@Native<Uint32 Function(Pointer)>(symbol: 'waveOutPause')
external int _waveOutPause(Pointer hwo);

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutPrepareHeader',
)
external int _waveOutPrepareHeader(Pointer hwo, Pointer<WAVEHDR> pwh, int cbwh);

@Native<Uint32 Function(Pointer)>(symbol: 'waveOutReset')
external int _waveOutReset(Pointer hwo);

@Native<Uint32 Function(Pointer)>(symbol: 'waveOutRestart')
external int _waveOutRestart(Pointer hwo);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'waveOutSetPitch')
external int _waveOutSetPitch(Pointer hwo, int dwPitch);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'waveOutSetPlaybackRate')
external int _waveOutSetPlaybackRate(Pointer hwo, int dwRate);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'waveOutSetVolume')
external int _waveOutSetVolume(Pointer hwo, int dwVolume);

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutUnprepareHeader',
)
external int _waveOutUnprepareHeader(
  Pointer hwo,
  Pointer<WAVEHDR> pwh,
  int cbwh,
);

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutWrite',
)
external int _waveOutWrite(Pointer hwo, Pointer<WAVEHDR> pwh, int cbwh);
