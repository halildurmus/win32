// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

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

final _winmm = DynamicLibrary.open('winmm.dll');

final _mciGetDeviceID = _winmm
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('mciGetDeviceIDW');

final _mciGetDeviceIDFromElementID = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('mciGetDeviceIDFromElementIDW');

final _mciGetErrorString = _winmm
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('mciGetErrorStringW');

final _mciSendCommand = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Uint32, IntPtr, IntPtr),
      int Function(int, int, int, int)
    >('mciSendCommandW');

final _mciSendString = _winmm
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer)
    >('mciSendStringW');

final _midiConnect = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer, Pointer),
      int Function(Pointer, Pointer, Pointer)
    >('midiConnect');

final _midiDisconnect = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer, Pointer),
      int Function(Pointer, Pointer, Pointer)
    >('midiDisconnect');

final _midiInAddBuffer = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiInAddBuffer');

final _midiInClose = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiInClose',
    );

final _midiInGetDevCaps = _winmm
    .lookupFunction<
      Uint32 Function(IntPtr, Pointer<MIDIINCAPS>, Uint32),
      int Function(int, Pointer<MIDIINCAPS>, int)
    >('midiInGetDevCapsW');

final _midiInGetErrorText = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('midiInGetErrorTextW');

final _midiInGetID = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('midiInGetID');

final _midiInGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('midiInGetNumDevs');

final _midiInMessage = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('midiInMessage');

final _midiInOpen = _winmm
    .lookupFunction<
      Uint32 Function(Pointer<Pointer>, Uint32, IntPtr, IntPtr, Uint32),
      int Function(Pointer<Pointer>, int, int, int, int)
    >('midiInOpen');

final _midiInPrepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiInPrepareHeader');

final _midiInReset = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiInReset',
    );

final _midiInStart = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiInStart',
    );

final _midiInStop = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiInStop',
    );

final _midiInUnprepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiInUnprepareHeader');

final _midiOutCacheDrumPatches = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<Uint16>, Uint32),
      int Function(Pointer, int, Pointer<Uint16>, int)
    >('midiOutCacheDrumPatches');

final _midiOutCachePatches = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<Uint16>, Uint32),
      int Function(Pointer, int, Pointer<Uint16>, int)
    >('midiOutCachePatches');

final _midiOutClose = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiOutClose',
    );

final _midiOutGetDevCaps = _winmm
    .lookupFunction<
      Uint32 Function(IntPtr, Pointer<MIDIOUTCAPS>, Uint32),
      int Function(int, Pointer<MIDIOUTCAPS>, int)
    >('midiOutGetDevCapsW');

final _midiOutGetErrorText = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('midiOutGetErrorTextW');

final _midiOutGetID = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('midiOutGetID');

final _midiOutGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('midiOutGetNumDevs');

final _midiOutGetVolume = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('midiOutGetVolume');

final _midiOutLongMsg = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiOutLongMsg');

final _midiOutMessage = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('midiOutMessage');

final _midiOutOpen = _winmm
    .lookupFunction<
      Uint32 Function(Pointer<Pointer>, Uint32, IntPtr, IntPtr, Uint32),
      int Function(Pointer<Pointer>, int, int, int, int)
    >('midiOutOpen');

final _midiOutPrepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiOutPrepareHeader');

final _midiOutReset = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiOutReset',
    );

final _midiOutSetVolume = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('midiOutSetVolume');

final _midiOutShortMsg = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('midiOutShortMsg');

final _midiOutUnprepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiOutUnprepareHeader');

final _PlaySound = _winmm
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer, Uint32),
      int Function(Pointer<Utf16>, Pointer, int)
    >('PlaySoundW');

final _timeGetTime = _winmm.lookupFunction<Uint32 Function(), int Function()>(
  'timeGetTime',
);

final _waveInAddBuffer = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveInAddBuffer');

final _waveInClose = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveInClose',
    );

final _waveInGetDevCaps = _winmm
    .lookupFunction<
      Uint32 Function(IntPtr, Pointer<WAVEINCAPS>, Uint32),
      int Function(int, Pointer<WAVEINCAPS>, int)
    >('waveInGetDevCapsW');

final _waveInGetErrorText = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('waveInGetErrorTextW');

final _waveInGetID = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('waveInGetID');

final _waveInGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('waveInGetNumDevs');

final _waveInGetPosition = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MMTIME>, Uint32),
      int Function(Pointer, Pointer<MMTIME>, int)
    >('waveInGetPosition');

final _waveInMessage = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('waveInMessage');

final _waveInOpen = _winmm
    .lookupFunction<
      Uint32 Function(
        Pointer<Pointer>,
        Uint32,
        Pointer<WAVEFORMATEX>,
        IntPtr,
        IntPtr,
        Uint32,
      ),
      int Function(Pointer<Pointer>, int, Pointer<WAVEFORMATEX>, int, int, int)
    >('waveInOpen');

final _waveInPrepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveInPrepareHeader');

final _waveInReset = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveInReset',
    );

final _waveInStart = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveInStart',
    );

final _waveInStop = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveInStop',
    );

final _waveInUnprepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveInUnprepareHeader');

final _waveOutClose = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveOutClose',
    );

final _waveOutGetDevCaps = _winmm
    .lookupFunction<
      Uint32 Function(IntPtr, Pointer<WAVEOUTCAPS>, Uint32),
      int Function(int, Pointer<WAVEOUTCAPS>, int)
    >('waveOutGetDevCapsW');

final _waveOutGetErrorText = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('waveOutGetErrorTextW');

final _waveOutGetID = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('waveOutGetID');

final _waveOutGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('waveOutGetNumDevs');

final _waveOutGetPitch = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('waveOutGetPitch');

final _waveOutGetPlaybackRate = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('waveOutGetPlaybackRate');

final _waveOutGetPosition = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MMTIME>, Uint32),
      int Function(Pointer, Pointer<MMTIME>, int)
    >('waveOutGetPosition');

final _waveOutGetVolume = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('waveOutGetVolume');

final _waveOutMessage = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('waveOutMessage');

final _waveOutOpen = _winmm
    .lookupFunction<
      Uint32 Function(
        Pointer<Pointer>,
        Uint32,
        Pointer<WAVEFORMATEX>,
        IntPtr,
        IntPtr,
        Uint32,
      ),
      int Function(Pointer<Pointer>, int, Pointer<WAVEFORMATEX>, int, int, int)
    >('waveOutOpen');

final _waveOutPause = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveOutPause',
    );

final _waveOutPrepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveOutPrepareHeader');

final _waveOutReset = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveOutReset',
    );

final _waveOutRestart = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveOutRestart',
    );

final _waveOutSetPitch = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('waveOutSetPitch');

final _waveOutSetPlaybackRate = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('waveOutSetPlaybackRate');

final _waveOutSetVolume = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('waveOutSetVolume');

final _waveOutUnprepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveOutUnprepareHeader');

final _waveOutWrite = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveOutWrite');
