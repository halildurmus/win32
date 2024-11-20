// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

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

@Native<Uint32 Function(PCWSTR)>(symbol: 'mciGetDeviceIDW')
external int _mciGetDeviceID(PCWSTR pszDevice);

@Native<Uint32 Function(Uint32, PCWSTR)>(symbol: 'mciGetDeviceIDFromElementIDW')
external int _mciGetDeviceIDFromElementID(int dwElementID, PCWSTR lpstrType);

@Native<BOOL Function(Uint32, PWSTR, Uint32)>(symbol: 'mciGetErrorStringW')
external int _mciGetErrorString(int mcierr, PWSTR pszText, int cchText);

@Native<Uint32 Function(Uint32, Uint32, IntPtr, IntPtr)>(
  symbol: 'mciSendCommandW',
)
external int _mciSendCommand(int mciId, int uMsg, int dwParam1, int dwParam2);

@Native<Uint32 Function(PCWSTR, PWSTR, Uint32, HWND)>(symbol: 'mciSendStringW')
external int _mciSendString(
  PCWSTR lpstrCommand,
  PWSTR lpstrReturnString,
  int uReturnLength,
  int hwndCallback,
);

@Native<Uint32 Function(HMIDI, HMIDIOUT, Pointer)>(symbol: 'midiConnect')
external int _midiConnect(int hmi, int hmo, Pointer pReserved);

@Native<Uint32 Function(HMIDI, HMIDIOUT, Pointer)>(symbol: 'midiDisconnect')
external int _midiDisconnect(int hmi, int hmo, Pointer pReserved);

@Native<Uint32 Function(HMIDIIN, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInAddBuffer',
)
external int _midiInAddBuffer(int hmi, Pointer<MIDIHDR> pmh, int cbmh);

@Native<Uint32 Function(HMIDIIN)>(symbol: 'midiInClose')
external int _midiInClose(int hmi);

@Native<Uint32 Function(IntPtr, Pointer<MIDIINCAPS>, Uint32)>(
  symbol: 'midiInGetDevCapsW',
)
external int _midiInGetDevCaps(
  int uDeviceID,
  Pointer<MIDIINCAPS> pmic,
  int cbmic,
);

@Native<Uint32 Function(Uint32, PWSTR, Uint32)>(symbol: 'midiInGetErrorTextW')
external int _midiInGetErrorText(int mmrError, PWSTR pszText, int cchText);

@Native<Uint32 Function(HMIDIIN, Pointer<Uint32>)>(symbol: 'midiInGetID')
external int _midiInGetID(int hmi, Pointer<Uint32> puDeviceID);

@Native<Uint32 Function()>(symbol: 'midiInGetNumDevs')
external int _midiInGetNumDevs();

@Native<Uint32 Function(HMIDIIN, Uint32, IntPtr, IntPtr)>(
  symbol: 'midiInMessage',
)
external int _midiInMessage(int hmi, int uMsg, int dw1, int dw2);

@Native<Uint32 Function(Pointer<HMIDIIN>, Uint32, IntPtr, IntPtr, Uint32)>(
  symbol: 'midiInOpen',
)
external int _midiInOpen(
  Pointer<HMIDIIN> phmi,
  int uDeviceID,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
);

@Native<Uint32 Function(HMIDIIN, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInPrepareHeader',
)
external int _midiInPrepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh);

@Native<Uint32 Function(HMIDIIN)>(symbol: 'midiInReset')
external int _midiInReset(int hmi);

@Native<Uint32 Function(HMIDIIN)>(symbol: 'midiInStart')
external int _midiInStart(int hmi);

@Native<Uint32 Function(HMIDIIN)>(symbol: 'midiInStop')
external int _midiInStop(int hmi);

@Native<Uint32 Function(HMIDIIN, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInUnprepareHeader',
)
external int _midiInUnprepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh);

@Native<Uint32 Function(HMIDIOUT, Uint32, Pointer<Uint16>, Uint32)>(
  symbol: 'midiOutCacheDrumPatches',
)
external int _midiOutCacheDrumPatches(
  int hmo,
  int uPatch,
  Pointer<Uint16> pwkya,
  int fuCache,
);

@Native<Uint32 Function(HMIDIOUT, Uint32, Pointer<Uint16>, Uint32)>(
  symbol: 'midiOutCachePatches',
)
external int _midiOutCachePatches(
  int hmo,
  int uBank,
  Pointer<Uint16> pwpa,
  int fuCache,
);

@Native<Uint32 Function(HMIDIOUT)>(symbol: 'midiOutClose')
external int _midiOutClose(int hmo);

@Native<Uint32 Function(IntPtr, Pointer<MIDIOUTCAPS>, Uint32)>(
  symbol: 'midiOutGetDevCapsW',
)
external int _midiOutGetDevCaps(
  int uDeviceID,
  Pointer<MIDIOUTCAPS> pmoc,
  int cbmoc,
);

@Native<Uint32 Function(Uint32, PWSTR, Uint32)>(symbol: 'midiOutGetErrorTextW')
external int _midiOutGetErrorText(int mmrError, PWSTR pszText, int cchText);

@Native<Uint32 Function(HMIDIOUT, Pointer<Uint32>)>(symbol: 'midiOutGetID')
external int _midiOutGetID(int hmo, Pointer<Uint32> puDeviceID);

@Native<Uint32 Function()>(symbol: 'midiOutGetNumDevs')
external int _midiOutGetNumDevs();

@Native<Uint32 Function(HMIDIOUT, Pointer<Uint32>)>(symbol: 'midiOutGetVolume')
external int _midiOutGetVolume(int hmo, Pointer<Uint32> pdwVolume);

@Native<Uint32 Function(HMIDIOUT, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutLongMsg',
)
external int _midiOutLongMsg(int hmo, Pointer<MIDIHDR> pmh, int cbmh);

@Native<Uint32 Function(HMIDIOUT, Uint32, IntPtr, IntPtr)>(
  symbol: 'midiOutMessage',
)
external int _midiOutMessage(int hmo, int uMsg, int dw1, int dw2);

@Native<Uint32 Function(Pointer<HMIDIOUT>, Uint32, IntPtr, IntPtr, Uint32)>(
  symbol: 'midiOutOpen',
)
external int _midiOutOpen(
  Pointer<HMIDIOUT> phmo,
  int uDeviceID,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
);

@Native<Uint32 Function(HMIDIOUT, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutPrepareHeader',
)
external int _midiOutPrepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh);

@Native<Uint32 Function(HMIDIOUT)>(symbol: 'midiOutReset')
external int _midiOutReset(int hmo);

@Native<Uint32 Function(HMIDIOUT, Uint32)>(symbol: 'midiOutSetVolume')
external int _midiOutSetVolume(int hmo, int dwVolume);

@Native<Uint32 Function(HMIDIOUT, Uint32)>(symbol: 'midiOutShortMsg')
external int _midiOutShortMsg(int hmo, int dwMsg);

@Native<Uint32 Function(HMIDIOUT, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutUnprepareHeader',
)
external int _midiOutUnprepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh);

@Native<BOOL Function(PCWSTR, HMODULE, Uint32)>(symbol: 'PlaySoundW')
external int _PlaySound(PCWSTR pszSound, int hmod, int fdwSound);

@Native<Uint32 Function(HWAVEIN, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInAddBuffer',
)
external int _waveInAddBuffer(int hwi, Pointer<WAVEHDR> pwh, int cbwh);

@Native<Uint32 Function(HWAVEIN)>(symbol: 'waveInClose')
external int _waveInClose(int hwi);

@Native<Uint32 Function(IntPtr, Pointer<WAVEINCAPS>, Uint32)>(
  symbol: 'waveInGetDevCapsW',
)
external int _waveInGetDevCaps(
  int uDeviceID,
  Pointer<WAVEINCAPS> pwic,
  int cbwic,
);

@Native<Uint32 Function(Uint32, PWSTR, Uint32)>(symbol: 'waveInGetErrorTextW')
external int _waveInGetErrorText(int mmrError, PWSTR pszText, int cchText);

@Native<Uint32 Function(HWAVEIN, Pointer<Uint32>)>(symbol: 'waveInGetID')
external int _waveInGetID(int hwi, Pointer<Uint32> puDeviceID);

@Native<Uint32 Function()>(symbol: 'waveInGetNumDevs')
external int _waveInGetNumDevs();

@Native<Uint32 Function(HWAVEIN, Pointer<MMTIME>, Uint32)>(
  symbol: 'waveInGetPosition',
)
external int _waveInGetPosition(int hwi, Pointer<MMTIME> pmmt, int cbmmt);

@Native<Uint32 Function(HWAVEIN, Uint32, IntPtr, IntPtr)>(
  symbol: 'waveInMessage',
)
external int _waveInMessage(int hwi, int uMsg, int dw1, int dw2);

@Native<
  Uint32 Function(
    Pointer<HWAVEIN>,
    Uint32,
    Pointer<WAVEFORMATEX>,
    IntPtr,
    IntPtr,
    Uint32,
  )
>(symbol: 'waveInOpen')
external int _waveInOpen(
  Pointer<HWAVEIN> phwi,
  int uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
);

@Native<Uint32 Function(HWAVEIN, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInPrepareHeader',
)
external int _waveInPrepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh);

@Native<Uint32 Function(HWAVEIN)>(symbol: 'waveInReset')
external int _waveInReset(int hwi);

@Native<Uint32 Function(HWAVEIN)>(symbol: 'waveInStart')
external int _waveInStart(int hwi);

@Native<Uint32 Function(HWAVEIN)>(symbol: 'waveInStop')
external int _waveInStop(int hwi);

@Native<Uint32 Function(HWAVEIN, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInUnprepareHeader',
)
external int _waveInUnprepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh);

@Native<Uint32 Function(HWAVEOUT)>(symbol: 'waveOutClose')
external int _waveOutClose(int hwo);

@Native<Uint32 Function(IntPtr, Pointer<WAVEOUTCAPS>, Uint32)>(
  symbol: 'waveOutGetDevCapsW',
)
external int _waveOutGetDevCaps(
  int uDeviceID,
  Pointer<WAVEOUTCAPS> pwoc,
  int cbwoc,
);

@Native<Uint32 Function(Uint32, PWSTR, Uint32)>(symbol: 'waveOutGetErrorTextW')
external int _waveOutGetErrorText(int mmrError, PWSTR pszText, int cchText);

@Native<Uint32 Function(HWAVEOUT, Pointer<Uint32>)>(symbol: 'waveOutGetID')
external int _waveOutGetID(int hwo, Pointer<Uint32> puDeviceID);

@Native<Uint32 Function()>(symbol: 'waveOutGetNumDevs')
external int _waveOutGetNumDevs();

@Native<Uint32 Function(HWAVEOUT, Pointer<Uint32>)>(symbol: 'waveOutGetPitch')
external int _waveOutGetPitch(int hwo, Pointer<Uint32> pdwPitch);

@Native<Uint32 Function(HWAVEOUT, Pointer<Uint32>)>(
  symbol: 'waveOutGetPlaybackRate',
)
external int _waveOutGetPlaybackRate(int hwo, Pointer<Uint32> pdwRate);

@Native<Uint32 Function(HWAVEOUT, Pointer<MMTIME>, Uint32)>(
  symbol: 'waveOutGetPosition',
)
external int _waveOutGetPosition(int hwo, Pointer<MMTIME> pmmt, int cbmmt);

@Native<Uint32 Function(HWAVEOUT, Pointer<Uint32>)>(symbol: 'waveOutGetVolume')
external int _waveOutGetVolume(int hwo, Pointer<Uint32> pdwVolume);

@Native<Uint32 Function(HWAVEOUT, Uint32, IntPtr, IntPtr)>(
  symbol: 'waveOutMessage',
)
external int _waveOutMessage(int hwo, int uMsg, int dw1, int dw2);

@Native<
  Uint32 Function(
    Pointer<HWAVEOUT>,
    Uint32,
    Pointer<WAVEFORMATEX>,
    IntPtr,
    IntPtr,
    Uint32,
  )
>(symbol: 'waveOutOpen')
external int _waveOutOpen(
  Pointer<HWAVEOUT> phwo,
  int uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
);

@Native<Uint32 Function(HWAVEOUT)>(symbol: 'waveOutPause')
external int _waveOutPause(int hwo);

@Native<Uint32 Function(HWAVEOUT, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutPrepareHeader',
)
external int _waveOutPrepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh);

@Native<Uint32 Function(HWAVEOUT)>(symbol: 'waveOutReset')
external int _waveOutReset(int hwo);

@Native<Uint32 Function(HWAVEOUT)>(symbol: 'waveOutRestart')
external int _waveOutRestart(int hwo);

@Native<Uint32 Function(HWAVEOUT, Uint32)>(symbol: 'waveOutSetPitch')
external int _waveOutSetPitch(int hwo, int dwPitch);

@Native<Uint32 Function(HWAVEOUT, Uint32)>(symbol: 'waveOutSetPlaybackRate')
external int _waveOutSetPlaybackRate(int hwo, int dwRate);

@Native<Uint32 Function(HWAVEOUT, Uint32)>(symbol: 'waveOutSetVolume')
external int _waveOutSetVolume(int hwo, int dwVolume);

@Native<Uint32 Function(HWAVEOUT, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutUnprepareHeader',
)
external int _waveOutUnprepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh);

@Native<Uint32 Function(HWAVEOUT, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutWrite',
)
external int _waveOutWrite(int hwo, Pointer<WAVEHDR> pwh, int cbwh);
