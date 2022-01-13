// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../media/audio/IMessageFilter.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/audio/IActivateAudioInterfaceCompletionHandler.dart';
import '../../media/audio/IActivateAudioInterfaceAsyncOperation.dart';
import '../../media/audio/IAudioStateMonitor.dart';
import '../../media/audio/callbacks.g.dart'; // -----------------------------------------------------------------------

// ole32.dll
// -----------------------------------------------------------------------
final _ole32 = DynamicLibrary.open('ole32.dll');

int CoRegisterMessageFilter(
  Pointer<COMObject> lpMessageFilter,
  Pointer<Pointer<COMObject>> lplpMessageFilter,
) =>
    _CoRegisterMessageFilter(
      lpMessageFilter,
      lplpMessageFilter,
    );

late final _CoRegisterMessageFilter = _ole32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> lpMessageFilter,
  Pointer<Pointer<COMObject>> lplpMessageFilter,
),
    int Function(
  Pointer<COMObject> lpMessageFilter,
  Pointer<Pointer<COMObject>> lplpMessageFilter,
)>('CoRegisterMessageFilter');

// -----------------------------------------------------------------------
// winmm.dll
// -----------------------------------------------------------------------
final _winmm = DynamicLibrary.open('winmm.dll');

int PlaySound(
  Pointer<Utf16> pszSound,
  int hmod,
  int fdwSound,
) =>
    _PlaySound(
      pszSound,
      hmod,
      fdwSound,
    );

late final _PlaySound = _winmm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszSound,
  IntPtr hmod,
  Uint32 fdwSound,
),
    int Function(
  Pointer<Utf16> pszSound,
  int hmod,
  int fdwSound,
)>('PlaySoundW');

int auxGetDevCaps(
  int uDeviceID,
  Pointer<AUXCAPS> pac,
  int cbac,
) =>
    _auxGetDevCaps(
      uDeviceID,
      pac,
      cbac,
    );

late final _auxGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr uDeviceID,
  Pointer<AUXCAPS> pac,
  Uint32 cbac,
),
    int Function(
  int uDeviceID,
  Pointer<AUXCAPS> pac,
  int cbac,
)>('auxGetDevCapsW');

int auxGetNumDevs() => _auxGetNumDevs();

late final _auxGetNumDevs =
    _winmm.lookupFunction<Uint32 Function(), int Function()>('auxGetNumDevs');

int auxGetVolume(
  int uDeviceID,
  Pointer<Uint32> pdwVolume,
) =>
    _auxGetVolume(
      uDeviceID,
      pdwVolume,
    );

late final _auxGetVolume = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uDeviceID,
  Pointer<Uint32> pdwVolume,
),
    int Function(
  int uDeviceID,
  Pointer<Uint32> pdwVolume,
)>('auxGetVolume');

int auxOutMessage(
  int uDeviceID,
  int uMsg,
  int dw1,
  int dw2,
) =>
    _auxOutMessage(
      uDeviceID,
      uMsg,
      dw1,
      dw2,
    );

late final _auxOutMessage = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uDeviceID,
  Uint32 uMsg,
  IntPtr dw1,
  IntPtr dw2,
),
    int Function(
  int uDeviceID,
  int uMsg,
  int dw1,
  int dw2,
)>('auxOutMessage');

int auxSetVolume(
  int uDeviceID,
  int dwVolume,
) =>
    _auxSetVolume(
      uDeviceID,
      dwVolume,
    );

late final _auxSetVolume = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uDeviceID,
  Uint32 dwVolume,
),
    int Function(
  int uDeviceID,
  int dwVolume,
)>('auxSetVolume');

int midiConnect(
  int hmi,
  int hmo,
  Pointer pReserved,
) =>
    _midiConnect(
      hmi,
      hmo,
      pReserved,
    );

late final _midiConnect = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmi,
  IntPtr hmo,
  Pointer pReserved,
),
    int Function(
  int hmi,
  int hmo,
  Pointer pReserved,
)>('midiConnect');

int midiDisconnect(
  int hmi,
  int hmo,
  Pointer pReserved,
) =>
    _midiDisconnect(
      hmi,
      hmo,
      pReserved,
    );

late final _midiDisconnect = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmi,
  IntPtr hmo,
  Pointer pReserved,
),
    int Function(
  int hmi,
  int hmo,
  Pointer pReserved,
)>('midiDisconnect');

int midiInAddBuffer(
  int hmi,
  Pointer<MIDIHDR> pmh,
  int cbmh,
) =>
    _midiInAddBuffer(
      hmi,
      pmh,
      cbmh,
    );

late final _midiInAddBuffer = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmi,
  Pointer<MIDIHDR> pmh,
  Uint32 cbmh,
),
    int Function(
  int hmi,
  Pointer<MIDIHDR> pmh,
  int cbmh,
)>('midiInAddBuffer');

int midiInClose(
  int hmi,
) =>
    _midiInClose(
      hmi,
    );

late final _midiInClose = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmi,
),
    int Function(
  int hmi,
)>('midiInClose');

int midiInGetDevCaps(
  int uDeviceID,
  Pointer<MIDIINCAPS> pmic,
  int cbmic,
) =>
    _midiInGetDevCaps(
      uDeviceID,
      pmic,
      cbmic,
    );

late final _midiInGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr uDeviceID,
  Pointer<MIDIINCAPS> pmic,
  Uint32 cbmic,
),
    int Function(
  int uDeviceID,
  Pointer<MIDIINCAPS> pmic,
  int cbmic,
)>('midiInGetDevCapsW');

int midiInGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
) =>
    _midiInGetErrorText(
      mmrError,
      pszText,
      cchText,
    );

late final _midiInGetErrorText = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 mmrError,
  Pointer<Utf16> pszText,
  Uint32 cchText,
),
    int Function(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
)>('midiInGetErrorTextW');

int midiInGetID(
  int hmi,
  Pointer<Uint32> puDeviceID,
) =>
    _midiInGetID(
      hmi,
      puDeviceID,
    );

late final _midiInGetID = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmi,
  Pointer<Uint32> puDeviceID,
),
    int Function(
  int hmi,
  Pointer<Uint32> puDeviceID,
)>('midiInGetID');

int midiInGetNumDevs() => _midiInGetNumDevs();

late final _midiInGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('midiInGetNumDevs');

int midiInMessage(
  int hmi,
  int uMsg,
  int dw1,
  int dw2,
) =>
    _midiInMessage(
      hmi,
      uMsg,
      dw1,
      dw2,
    );

late final _midiInMessage = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmi,
  Uint32 uMsg,
  IntPtr dw1,
  IntPtr dw2,
),
    int Function(
  int hmi,
  int uMsg,
  int dw1,
  int dw2,
)>('midiInMessage');

int midiInOpen(
  Pointer<IntPtr> phmi,
  int uDeviceID,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
) =>
    _midiInOpen(
      phmi,
      uDeviceID,
      dwCallback,
      dwInstance,
      fdwOpen,
    );

late final _midiInOpen = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phmi,
  Uint32 uDeviceID,
  IntPtr dwCallback,
  IntPtr dwInstance,
  Uint32 fdwOpen,
),
    int Function(
  Pointer<IntPtr> phmi,
  int uDeviceID,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
)>('midiInOpen');

int midiInPrepareHeader(
  int hmi,
  Pointer<MIDIHDR> pmh,
  int cbmh,
) =>
    _midiInPrepareHeader(
      hmi,
      pmh,
      cbmh,
    );

late final _midiInPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmi,
  Pointer<MIDIHDR> pmh,
  Uint32 cbmh,
),
    int Function(
  int hmi,
  Pointer<MIDIHDR> pmh,
  int cbmh,
)>('midiInPrepareHeader');

int midiInReset(
  int hmi,
) =>
    _midiInReset(
      hmi,
    );

late final _midiInReset = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmi,
),
    int Function(
  int hmi,
)>('midiInReset');

int midiInStart(
  int hmi,
) =>
    _midiInStart(
      hmi,
    );

late final _midiInStart = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmi,
),
    int Function(
  int hmi,
)>('midiInStart');

int midiInStop(
  int hmi,
) =>
    _midiInStop(
      hmi,
    );

late final _midiInStop = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmi,
),
    int Function(
  int hmi,
)>('midiInStop');

int midiInUnprepareHeader(
  int hmi,
  Pointer<MIDIHDR> pmh,
  int cbmh,
) =>
    _midiInUnprepareHeader(
      hmi,
      pmh,
      cbmh,
    );

late final _midiInUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmi,
  Pointer<MIDIHDR> pmh,
  Uint32 cbmh,
),
    int Function(
  int hmi,
  Pointer<MIDIHDR> pmh,
  int cbmh,
)>('midiInUnprepareHeader');

int midiOutCacheDrumPatches(
  int hmo,
  int uPatch,
  Pointer<Uint16> pwkya,
  int fuCache,
) =>
    _midiOutCacheDrumPatches(
      hmo,
      uPatch,
      pwkya,
      fuCache,
    );

late final _midiOutCacheDrumPatches = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
  Uint32 uPatch,
  Pointer<Uint16> pwkya,
  Uint32 fuCache,
),
    int Function(
  int hmo,
  int uPatch,
  Pointer<Uint16> pwkya,
  int fuCache,
)>('midiOutCacheDrumPatches');

int midiOutCachePatches(
  int hmo,
  int uBank,
  Pointer<Uint16> pwpa,
  int fuCache,
) =>
    _midiOutCachePatches(
      hmo,
      uBank,
      pwpa,
      fuCache,
    );

late final _midiOutCachePatches = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
  Uint32 uBank,
  Pointer<Uint16> pwpa,
  Uint32 fuCache,
),
    int Function(
  int hmo,
  int uBank,
  Pointer<Uint16> pwpa,
  int fuCache,
)>('midiOutCachePatches');

int midiOutClose(
  int hmo,
) =>
    _midiOutClose(
      hmo,
    );

late final _midiOutClose = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
),
    int Function(
  int hmo,
)>('midiOutClose');

int midiOutGetDevCaps(
  int uDeviceID,
  Pointer<MIDIOUTCAPS> pmoc,
  int cbmoc,
) =>
    _midiOutGetDevCaps(
      uDeviceID,
      pmoc,
      cbmoc,
    );

late final _midiOutGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr uDeviceID,
  Pointer<MIDIOUTCAPS> pmoc,
  Uint32 cbmoc,
),
    int Function(
  int uDeviceID,
  Pointer<MIDIOUTCAPS> pmoc,
  int cbmoc,
)>('midiOutGetDevCapsW');

int midiOutGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
) =>
    _midiOutGetErrorText(
      mmrError,
      pszText,
      cchText,
    );

late final _midiOutGetErrorText = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 mmrError,
  Pointer<Utf16> pszText,
  Uint32 cchText,
),
    int Function(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
)>('midiOutGetErrorTextW');

int midiOutGetID(
  int hmo,
  Pointer<Uint32> puDeviceID,
) =>
    _midiOutGetID(
      hmo,
      puDeviceID,
    );

late final _midiOutGetID = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
  Pointer<Uint32> puDeviceID,
),
    int Function(
  int hmo,
  Pointer<Uint32> puDeviceID,
)>('midiOutGetID');

int midiOutGetNumDevs() => _midiOutGetNumDevs();

late final _midiOutGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('midiOutGetNumDevs');

int midiOutGetVolume(
  int hmo,
  Pointer<Uint32> pdwVolume,
) =>
    _midiOutGetVolume(
      hmo,
      pdwVolume,
    );

late final _midiOutGetVolume = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
  Pointer<Uint32> pdwVolume,
),
    int Function(
  int hmo,
  Pointer<Uint32> pdwVolume,
)>('midiOutGetVolume');

int midiOutLongMsg(
  int hmo,
  Pointer<MIDIHDR> pmh,
  int cbmh,
) =>
    _midiOutLongMsg(
      hmo,
      pmh,
      cbmh,
    );

late final _midiOutLongMsg = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
  Pointer<MIDIHDR> pmh,
  Uint32 cbmh,
),
    int Function(
  int hmo,
  Pointer<MIDIHDR> pmh,
  int cbmh,
)>('midiOutLongMsg');

int midiOutMessage(
  int hmo,
  int uMsg,
  int dw1,
  int dw2,
) =>
    _midiOutMessage(
      hmo,
      uMsg,
      dw1,
      dw2,
    );

late final _midiOutMessage = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
  Uint32 uMsg,
  IntPtr dw1,
  IntPtr dw2,
),
    int Function(
  int hmo,
  int uMsg,
  int dw1,
  int dw2,
)>('midiOutMessage');

int midiOutOpen(
  Pointer<IntPtr> phmo,
  int uDeviceID,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
) =>
    _midiOutOpen(
      phmo,
      uDeviceID,
      dwCallback,
      dwInstance,
      fdwOpen,
    );

late final _midiOutOpen = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phmo,
  Uint32 uDeviceID,
  IntPtr dwCallback,
  IntPtr dwInstance,
  Uint32 fdwOpen,
),
    int Function(
  Pointer<IntPtr> phmo,
  int uDeviceID,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
)>('midiOutOpen');

int midiOutPrepareHeader(
  int hmo,
  Pointer<MIDIHDR> pmh,
  int cbmh,
) =>
    _midiOutPrepareHeader(
      hmo,
      pmh,
      cbmh,
    );

late final _midiOutPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
  Pointer<MIDIHDR> pmh,
  Uint32 cbmh,
),
    int Function(
  int hmo,
  Pointer<MIDIHDR> pmh,
  int cbmh,
)>('midiOutPrepareHeader');

int midiOutReset(
  int hmo,
) =>
    _midiOutReset(
      hmo,
    );

late final _midiOutReset = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
),
    int Function(
  int hmo,
)>('midiOutReset');

int midiOutSetVolume(
  int hmo,
  int dwVolume,
) =>
    _midiOutSetVolume(
      hmo,
      dwVolume,
    );

late final _midiOutSetVolume = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
  Uint32 dwVolume,
),
    int Function(
  int hmo,
  int dwVolume,
)>('midiOutSetVolume');

int midiOutShortMsg(
  int hmo,
  int dwMsg,
) =>
    _midiOutShortMsg(
      hmo,
      dwMsg,
    );

late final _midiOutShortMsg = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
  Uint32 dwMsg,
),
    int Function(
  int hmo,
  int dwMsg,
)>('midiOutShortMsg');

int midiOutUnprepareHeader(
  int hmo,
  Pointer<MIDIHDR> pmh,
  int cbmh,
) =>
    _midiOutUnprepareHeader(
      hmo,
      pmh,
      cbmh,
    );

late final _midiOutUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmo,
  Pointer<MIDIHDR> pmh,
  Uint32 cbmh,
),
    int Function(
  int hmo,
  Pointer<MIDIHDR> pmh,
  int cbmh,
)>('midiOutUnprepareHeader');

int midiStreamClose(
  int hms,
) =>
    _midiStreamClose(
      hms,
    );

late final _midiStreamClose = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hms,
),
    int Function(
  int hms,
)>('midiStreamClose');

int midiStreamOpen(
  Pointer<IntPtr> phms,
  Pointer<Uint32> puDeviceID,
  int cMidi,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
) =>
    _midiStreamOpen(
      phms,
      puDeviceID,
      cMidi,
      dwCallback,
      dwInstance,
      fdwOpen,
    );

late final _midiStreamOpen = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phms,
  Pointer<Uint32> puDeviceID,
  Uint32 cMidi,
  IntPtr dwCallback,
  IntPtr dwInstance,
  Uint32 fdwOpen,
),
    int Function(
  Pointer<IntPtr> phms,
  Pointer<Uint32> puDeviceID,
  int cMidi,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
)>('midiStreamOpen');

int midiStreamOut(
  int hms,
  Pointer<MIDIHDR> pmh,
  int cbmh,
) =>
    _midiStreamOut(
      hms,
      pmh,
      cbmh,
    );

late final _midiStreamOut = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hms,
  Pointer<MIDIHDR> pmh,
  Uint32 cbmh,
),
    int Function(
  int hms,
  Pointer<MIDIHDR> pmh,
  int cbmh,
)>('midiStreamOut');

int midiStreamPause(
  int hms,
) =>
    _midiStreamPause(
      hms,
    );

late final _midiStreamPause = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hms,
),
    int Function(
  int hms,
)>('midiStreamPause');

int midiStreamPosition(
  int hms,
  Pointer<MMTIME> lpmmt,
  int cbmmt,
) =>
    _midiStreamPosition(
      hms,
      lpmmt,
      cbmmt,
    );

late final _midiStreamPosition = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hms,
  Pointer<MMTIME> lpmmt,
  Uint32 cbmmt,
),
    int Function(
  int hms,
  Pointer<MMTIME> lpmmt,
  int cbmmt,
)>('midiStreamPosition');

int midiStreamProperty(
  int hms,
  Pointer<Uint8> lppropdata,
  int dwProperty,
) =>
    _midiStreamProperty(
      hms,
      lppropdata,
      dwProperty,
    );

late final _midiStreamProperty = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hms,
  Pointer<Uint8> lppropdata,
  Uint32 dwProperty,
),
    int Function(
  int hms,
  Pointer<Uint8> lppropdata,
  int dwProperty,
)>('midiStreamProperty');

int midiStreamRestart(
  int hms,
) =>
    _midiStreamRestart(
      hms,
    );

late final _midiStreamRestart = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hms,
),
    int Function(
  int hms,
)>('midiStreamRestart');

int midiStreamStop(
  int hms,
) =>
    _midiStreamStop(
      hms,
    );

late final _midiStreamStop = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hms,
),
    int Function(
  int hms,
)>('midiStreamStop');

int mixerClose(
  int hmx,
) =>
    _mixerClose(
      hmx,
    );

late final _mixerClose = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmx,
),
    int Function(
  int hmx,
)>('mixerClose');

int mixerGetControlDetails(
  int hmxobj,
  Pointer<MIXERCONTROLDETAILS> pmxcd,
  int fdwDetails,
) =>
    _mixerGetControlDetails(
      hmxobj,
      pmxcd,
      fdwDetails,
    );

late final _mixerGetControlDetails = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmxobj,
  Pointer<MIXERCONTROLDETAILS> pmxcd,
  Uint32 fdwDetails,
),
    int Function(
  int hmxobj,
  Pointer<MIXERCONTROLDETAILS> pmxcd,
  int fdwDetails,
)>('mixerGetControlDetailsW');

int mixerGetDevCaps(
  int uMxId,
  Pointer<MIXERCAPS> pmxcaps,
  int cbmxcaps,
) =>
    _mixerGetDevCaps(
      uMxId,
      pmxcaps,
      cbmxcaps,
    );

late final _mixerGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr uMxId,
  Pointer<MIXERCAPS> pmxcaps,
  Uint32 cbmxcaps,
),
    int Function(
  int uMxId,
  Pointer<MIXERCAPS> pmxcaps,
  int cbmxcaps,
)>('mixerGetDevCapsW');

int mixerGetID(
  int hmxobj,
  Pointer<Uint32> puMxId,
  int fdwId,
) =>
    _mixerGetID(
      hmxobj,
      puMxId,
      fdwId,
    );

late final _mixerGetID = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmxobj,
  Pointer<Uint32> puMxId,
  Uint32 fdwId,
),
    int Function(
  int hmxobj,
  Pointer<Uint32> puMxId,
  int fdwId,
)>('mixerGetID');

int mixerGetLineControls(
  int hmxobj,
  Pointer<MIXERLINECONTROLS> pmxlc,
  int fdwControls,
) =>
    _mixerGetLineControls(
      hmxobj,
      pmxlc,
      fdwControls,
    );

late final _mixerGetLineControls = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmxobj,
  Pointer<MIXERLINECONTROLS> pmxlc,
  Uint32 fdwControls,
),
    int Function(
  int hmxobj,
  Pointer<MIXERLINECONTROLS> pmxlc,
  int fdwControls,
)>('mixerGetLineControlsW');

int mixerGetLineInfo(
  int hmxobj,
  Pointer<MIXERLINE> pmxl,
  int fdwInfo,
) =>
    _mixerGetLineInfo(
      hmxobj,
      pmxl,
      fdwInfo,
    );

late final _mixerGetLineInfo = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmxobj,
  Pointer<MIXERLINE> pmxl,
  Uint32 fdwInfo,
),
    int Function(
  int hmxobj,
  Pointer<MIXERLINE> pmxl,
  int fdwInfo,
)>('mixerGetLineInfoW');

int mixerGetNumDevs() => _mixerGetNumDevs();

late final _mixerGetNumDevs =
    _winmm.lookupFunction<Uint32 Function(), int Function()>('mixerGetNumDevs');

int mixerMessage(
  int hmx,
  int uMsg,
  int dwParam1,
  int dwParam2,
) =>
    _mixerMessage(
      hmx,
      uMsg,
      dwParam1,
      dwParam2,
    );

late final _mixerMessage = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmx,
  Uint32 uMsg,
  IntPtr dwParam1,
  IntPtr dwParam2,
),
    int Function(
  int hmx,
  int uMsg,
  int dwParam1,
  int dwParam2,
)>('mixerMessage');

int mixerOpen(
  Pointer<IntPtr> phmx,
  int uMxId,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
) =>
    _mixerOpen(
      phmx,
      uMxId,
      dwCallback,
      dwInstance,
      fdwOpen,
    );

late final _mixerOpen = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phmx,
  Uint32 uMxId,
  IntPtr dwCallback,
  IntPtr dwInstance,
  Uint32 fdwOpen,
),
    int Function(
  Pointer<IntPtr> phmx,
  int uMxId,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
)>('mixerOpen');

int mixerSetControlDetails(
  int hmxobj,
  Pointer<MIXERCONTROLDETAILS> pmxcd,
  int fdwDetails,
) =>
    _mixerSetControlDetails(
      hmxobj,
      pmxcd,
      fdwDetails,
    );

late final _mixerSetControlDetails = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hmxobj,
  Pointer<MIXERCONTROLDETAILS> pmxcd,
  Uint32 fdwDetails,
),
    int Function(
  int hmxobj,
  Pointer<MIXERCONTROLDETAILS> pmxcd,
  int fdwDetails,
)>('mixerSetControlDetails');

int sndPlaySound(
  Pointer<Utf16> pszSound,
  int fuSound,
) =>
    _sndPlaySound(
      pszSound,
      fuSound,
    );

late final _sndPlaySound = _winmm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszSound,
  Uint32 fuSound,
),
    int Function(
  Pointer<Utf16> pszSound,
  int fuSound,
)>('sndPlaySoundW');

int waveInAddBuffer(
  int hwi,
  Pointer<WAVEHDR> pwh,
  int cbwh,
) =>
    _waveInAddBuffer(
      hwi,
      pwh,
      cbwh,
    );

late final _waveInAddBuffer = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwi,
  Pointer<WAVEHDR> pwh,
  Uint32 cbwh,
),
    int Function(
  int hwi,
  Pointer<WAVEHDR> pwh,
  int cbwh,
)>('waveInAddBuffer');

int waveInClose(
  int hwi,
) =>
    _waveInClose(
      hwi,
    );

late final _waveInClose = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwi,
),
    int Function(
  int hwi,
)>('waveInClose');

int waveInGetDevCaps(
  int uDeviceID,
  Pointer<WAVEINCAPS> pwic,
  int cbwic,
) =>
    _waveInGetDevCaps(
      uDeviceID,
      pwic,
      cbwic,
    );

late final _waveInGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr uDeviceID,
  Pointer<WAVEINCAPS> pwic,
  Uint32 cbwic,
),
    int Function(
  int uDeviceID,
  Pointer<WAVEINCAPS> pwic,
  int cbwic,
)>('waveInGetDevCapsW');

int waveInGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
) =>
    _waveInGetErrorText(
      mmrError,
      pszText,
      cchText,
    );

late final _waveInGetErrorText = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 mmrError,
  Pointer<Utf16> pszText,
  Uint32 cchText,
),
    int Function(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
)>('waveInGetErrorTextW');

int waveInGetID(
  int hwi,
  Pointer<Uint32> puDeviceID,
) =>
    _waveInGetID(
      hwi,
      puDeviceID,
    );

late final _waveInGetID = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwi,
  Pointer<Uint32> puDeviceID,
),
    int Function(
  int hwi,
  Pointer<Uint32> puDeviceID,
)>('waveInGetID');

int waveInGetNumDevs() => _waveInGetNumDevs();

late final _waveInGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('waveInGetNumDevs');

int waveInGetPosition(
  int hwi,
  Pointer<MMTIME> pmmt,
  int cbmmt,
) =>
    _waveInGetPosition(
      hwi,
      pmmt,
      cbmmt,
    );

late final _waveInGetPosition = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwi,
  Pointer<MMTIME> pmmt,
  Uint32 cbmmt,
),
    int Function(
  int hwi,
  Pointer<MMTIME> pmmt,
  int cbmmt,
)>('waveInGetPosition');

int waveInMessage(
  int hwi,
  int uMsg,
  int dw1,
  int dw2,
) =>
    _waveInMessage(
      hwi,
      uMsg,
      dw1,
      dw2,
    );

late final _waveInMessage = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwi,
  Uint32 uMsg,
  IntPtr dw1,
  IntPtr dw2,
),
    int Function(
  int hwi,
  int uMsg,
  int dw1,
  int dw2,
)>('waveInMessage');

int waveInOpen(
  Pointer<IntPtr> phwi,
  int uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
) =>
    _waveInOpen(
      phwi,
      uDeviceID,
      pwfx,
      dwCallback,
      dwInstance,
      fdwOpen,
    );

late final _waveInOpen = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phwi,
  Uint32 uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  IntPtr dwCallback,
  IntPtr dwInstance,
  Uint32 fdwOpen,
),
    int Function(
  Pointer<IntPtr> phwi,
  int uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
)>('waveInOpen');

int waveInPrepareHeader(
  int hwi,
  Pointer<WAVEHDR> pwh,
  int cbwh,
) =>
    _waveInPrepareHeader(
      hwi,
      pwh,
      cbwh,
    );

late final _waveInPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwi,
  Pointer<WAVEHDR> pwh,
  Uint32 cbwh,
),
    int Function(
  int hwi,
  Pointer<WAVEHDR> pwh,
  int cbwh,
)>('waveInPrepareHeader');

int waveInReset(
  int hwi,
) =>
    _waveInReset(
      hwi,
    );

late final _waveInReset = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwi,
),
    int Function(
  int hwi,
)>('waveInReset');

int waveInStart(
  int hwi,
) =>
    _waveInStart(
      hwi,
    );

late final _waveInStart = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwi,
),
    int Function(
  int hwi,
)>('waveInStart');

int waveInStop(
  int hwi,
) =>
    _waveInStop(
      hwi,
    );

late final _waveInStop = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwi,
),
    int Function(
  int hwi,
)>('waveInStop');

int waveInUnprepareHeader(
  int hwi,
  Pointer<WAVEHDR> pwh,
  int cbwh,
) =>
    _waveInUnprepareHeader(
      hwi,
      pwh,
      cbwh,
    );

late final _waveInUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwi,
  Pointer<WAVEHDR> pwh,
  Uint32 cbwh,
),
    int Function(
  int hwi,
  Pointer<WAVEHDR> pwh,
  int cbwh,
)>('waveInUnprepareHeader');

int waveOutBreakLoop(
  int hwo,
) =>
    _waveOutBreakLoop(
      hwo,
    );

late final _waveOutBreakLoop = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
),
    int Function(
  int hwo,
)>('waveOutBreakLoop');

int waveOutClose(
  int hwo,
) =>
    _waveOutClose(
      hwo,
    );

late final _waveOutClose = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
),
    int Function(
  int hwo,
)>('waveOutClose');

int waveOutGetDevCaps(
  int uDeviceID,
  Pointer<WAVEOUTCAPS> pwoc,
  int cbwoc,
) =>
    _waveOutGetDevCaps(
      uDeviceID,
      pwoc,
      cbwoc,
    );

late final _waveOutGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr uDeviceID,
  Pointer<WAVEOUTCAPS> pwoc,
  Uint32 cbwoc,
),
    int Function(
  int uDeviceID,
  Pointer<WAVEOUTCAPS> pwoc,
  int cbwoc,
)>('waveOutGetDevCapsW');

int waveOutGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
) =>
    _waveOutGetErrorText(
      mmrError,
      pszText,
      cchText,
    );

late final _waveOutGetErrorText = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 mmrError,
  Pointer<Utf16> pszText,
  Uint32 cchText,
),
    int Function(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
)>('waveOutGetErrorTextW');

int waveOutGetID(
  int hwo,
  Pointer<Uint32> puDeviceID,
) =>
    _waveOutGetID(
      hwo,
      puDeviceID,
    );

late final _waveOutGetID = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Pointer<Uint32> puDeviceID,
),
    int Function(
  int hwo,
  Pointer<Uint32> puDeviceID,
)>('waveOutGetID');

int waveOutGetNumDevs() => _waveOutGetNumDevs();

late final _waveOutGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('waveOutGetNumDevs');

int waveOutGetPitch(
  int hwo,
  Pointer<Uint32> pdwPitch,
) =>
    _waveOutGetPitch(
      hwo,
      pdwPitch,
    );

late final _waveOutGetPitch = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Pointer<Uint32> pdwPitch,
),
    int Function(
  int hwo,
  Pointer<Uint32> pdwPitch,
)>('waveOutGetPitch');

int waveOutGetPlaybackRate(
  int hwo,
  Pointer<Uint32> pdwRate,
) =>
    _waveOutGetPlaybackRate(
      hwo,
      pdwRate,
    );

late final _waveOutGetPlaybackRate = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Pointer<Uint32> pdwRate,
),
    int Function(
  int hwo,
  Pointer<Uint32> pdwRate,
)>('waveOutGetPlaybackRate');

int waveOutGetPosition(
  int hwo,
  Pointer<MMTIME> pmmt,
  int cbmmt,
) =>
    _waveOutGetPosition(
      hwo,
      pmmt,
      cbmmt,
    );

late final _waveOutGetPosition = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Pointer<MMTIME> pmmt,
  Uint32 cbmmt,
),
    int Function(
  int hwo,
  Pointer<MMTIME> pmmt,
  int cbmmt,
)>('waveOutGetPosition');

int waveOutGetVolume(
  int hwo,
  Pointer<Uint32> pdwVolume,
) =>
    _waveOutGetVolume(
      hwo,
      pdwVolume,
    );

late final _waveOutGetVolume = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Pointer<Uint32> pdwVolume,
),
    int Function(
  int hwo,
  Pointer<Uint32> pdwVolume,
)>('waveOutGetVolume');

int waveOutMessage(
  int hwo,
  int uMsg,
  int dw1,
  int dw2,
) =>
    _waveOutMessage(
      hwo,
      uMsg,
      dw1,
      dw2,
    );

late final _waveOutMessage = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Uint32 uMsg,
  IntPtr dw1,
  IntPtr dw2,
),
    int Function(
  int hwo,
  int uMsg,
  int dw1,
  int dw2,
)>('waveOutMessage');

int waveOutOpen(
  Pointer<IntPtr> phwo,
  int uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
) =>
    _waveOutOpen(
      phwo,
      uDeviceID,
      pwfx,
      dwCallback,
      dwInstance,
      fdwOpen,
    );

late final _waveOutOpen = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phwo,
  Uint32 uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  IntPtr dwCallback,
  IntPtr dwInstance,
  Uint32 fdwOpen,
),
    int Function(
  Pointer<IntPtr> phwo,
  int uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
)>('waveOutOpen');

int waveOutPause(
  int hwo,
) =>
    _waveOutPause(
      hwo,
    );

late final _waveOutPause = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
),
    int Function(
  int hwo,
)>('waveOutPause');

int waveOutPrepareHeader(
  int hwo,
  Pointer<WAVEHDR> pwh,
  int cbwh,
) =>
    _waveOutPrepareHeader(
      hwo,
      pwh,
      cbwh,
    );

late final _waveOutPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Pointer<WAVEHDR> pwh,
  Uint32 cbwh,
),
    int Function(
  int hwo,
  Pointer<WAVEHDR> pwh,
  int cbwh,
)>('waveOutPrepareHeader');

int waveOutReset(
  int hwo,
) =>
    _waveOutReset(
      hwo,
    );

late final _waveOutReset = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
),
    int Function(
  int hwo,
)>('waveOutReset');

int waveOutRestart(
  int hwo,
) =>
    _waveOutRestart(
      hwo,
    );

late final _waveOutRestart = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
),
    int Function(
  int hwo,
)>('waveOutRestart');

int waveOutSetPitch(
  int hwo,
  int dwPitch,
) =>
    _waveOutSetPitch(
      hwo,
      dwPitch,
    );

late final _waveOutSetPitch = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Uint32 dwPitch,
),
    int Function(
  int hwo,
  int dwPitch,
)>('waveOutSetPitch');

int waveOutSetPlaybackRate(
  int hwo,
  int dwRate,
) =>
    _waveOutSetPlaybackRate(
      hwo,
      dwRate,
    );

late final _waveOutSetPlaybackRate = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Uint32 dwRate,
),
    int Function(
  int hwo,
  int dwRate,
)>('waveOutSetPlaybackRate');

int waveOutSetVolume(
  int hwo,
  int dwVolume,
) =>
    _waveOutSetVolume(
      hwo,
      dwVolume,
    );

late final _waveOutSetVolume = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Uint32 dwVolume,
),
    int Function(
  int hwo,
  int dwVolume,
)>('waveOutSetVolume');

int waveOutUnprepareHeader(
  int hwo,
  Pointer<WAVEHDR> pwh,
  int cbwh,
) =>
    _waveOutUnprepareHeader(
      hwo,
      pwh,
      cbwh,
    );

late final _waveOutUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Pointer<WAVEHDR> pwh,
  Uint32 cbwh,
),
    int Function(
  int hwo,
  Pointer<WAVEHDR> pwh,
  int cbwh,
)>('waveOutUnprepareHeader');

int waveOutWrite(
  int hwo,
  Pointer<WAVEHDR> pwh,
  int cbwh,
) =>
    _waveOutWrite(
      hwo,
      pwh,
      cbwh,
    );

late final _waveOutWrite = _winmm.lookupFunction<
    Uint32 Function(
  IntPtr hwo,
  Pointer<WAVEHDR> pwh,
  Uint32 cbwh,
),
    int Function(
  int hwo,
  Pointer<WAVEHDR> pwh,
  int cbwh,
)>('waveOutWrite');

// -----------------------------------------------------------------------
// mmdevapi.dll
// -----------------------------------------------------------------------
final _mmdevapi = DynamicLibrary.open('mmdevapi.dll');

int ActivateAudioInterfaceAsync(
  Pointer<Utf16> deviceInterfacePath,
  Pointer<GUID> riid,
  Pointer<PROPVARIANT> activationParams,
  Pointer<COMObject> completionHandler,
  Pointer<Pointer<COMObject>> activationOperation,
) =>
    _ActivateAudioInterfaceAsync(
      deviceInterfacePath,
      riid,
      activationParams,
      completionHandler,
      activationOperation,
    );

late final _ActivateAudioInterfaceAsync = _mmdevapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> deviceInterfacePath,
  Pointer<GUID> riid,
  Pointer<PROPVARIANT> activationParams,
  Pointer<COMObject> completionHandler,
  Pointer<Pointer<COMObject>> activationOperation,
),
    int Function(
  Pointer<Utf16> deviceInterfacePath,
  Pointer<GUID> riid,
  Pointer<PROPVARIANT> activationParams,
  Pointer<COMObject> completionHandler,
  Pointer<Pointer<COMObject>> activationOperation,
)>('ActivateAudioInterfaceAsync');

// -----------------------------------------------------------------------
// windows.media.mediacontrol.dll
// -----------------------------------------------------------------------
final _windows_media_mediacontrol =
    DynamicLibrary.open('windows.media.mediacontrol.dll');

int CreateCaptureAudioStateMonitor(
  Pointer<Pointer<COMObject>> audioStateMonitor,
) =>
    _CreateCaptureAudioStateMonitor(
      audioStateMonitor,
    );

late final _CreateCaptureAudioStateMonitor =
    _windows_media_mediacontrol.lookupFunction<
        Int32 Function(
  Pointer<Pointer<COMObject>> audioStateMonitor,
),
        int Function(
  Pointer<Pointer<COMObject>> audioStateMonitor,
)>('CreateCaptureAudioStateMonitor');

int CreateCaptureAudioStateMonitorForCategory(
  int category,
  Pointer<Pointer<COMObject>> audioStateMonitor,
) =>
    _CreateCaptureAudioStateMonitorForCategory(
      category,
      audioStateMonitor,
    );

late final _CreateCaptureAudioStateMonitorForCategory =
    _windows_media_mediacontrol.lookupFunction<
        Int32 Function(
  Int32 category,
  Pointer<Pointer<COMObject>> audioStateMonitor,
),
        int Function(
  int category,
  Pointer<Pointer<COMObject>> audioStateMonitor,
)>('CreateCaptureAudioStateMonitorForCategory');

int CreateCaptureAudioStateMonitorForCategoryAndDeviceId(
  int category,
  Pointer<Utf16> deviceId,
  Pointer<Pointer<COMObject>> audioStateMonitor,
) =>
    _CreateCaptureAudioStateMonitorForCategoryAndDeviceId(
      category,
      deviceId,
      audioStateMonitor,
    );

late final _CreateCaptureAudioStateMonitorForCategoryAndDeviceId =
    _windows_media_mediacontrol.lookupFunction<
        Int32 Function(
  Int32 category,
  Pointer<Utf16> deviceId,
  Pointer<Pointer<COMObject>> audioStateMonitor,
),
        int Function(
  int category,
  Pointer<Utf16> deviceId,
  Pointer<Pointer<COMObject>> audioStateMonitor,
)>('CreateCaptureAudioStateMonitorForCategoryAndDeviceId');

int CreateCaptureAudioStateMonitorForCategoryAndDeviceRole(
  int category,
  int role,
  Pointer<Pointer<COMObject>> audioStateMonitor,
) =>
    _CreateCaptureAudioStateMonitorForCategoryAndDeviceRole(
      category,
      role,
      audioStateMonitor,
    );

late final _CreateCaptureAudioStateMonitorForCategoryAndDeviceRole =
    _windows_media_mediacontrol.lookupFunction<
        Int32 Function(
  Int32 category,
  Int32 role,
  Pointer<Pointer<COMObject>> audioStateMonitor,
),
        int Function(
  int category,
  int role,
  Pointer<Pointer<COMObject>> audioStateMonitor,
)>('CreateCaptureAudioStateMonitorForCategoryAndDeviceRole');

int CreateRenderAudioStateMonitor(
  Pointer<Pointer<COMObject>> audioStateMonitor,
) =>
    _CreateRenderAudioStateMonitor(
      audioStateMonitor,
    );

late final _CreateRenderAudioStateMonitor =
    _windows_media_mediacontrol.lookupFunction<
        Int32 Function(
  Pointer<Pointer<COMObject>> audioStateMonitor,
),
        int Function(
  Pointer<Pointer<COMObject>> audioStateMonitor,
)>('CreateRenderAudioStateMonitor');

int CreateRenderAudioStateMonitorForCategory(
  int category,
  Pointer<Pointer<COMObject>> audioStateMonitor,
) =>
    _CreateRenderAudioStateMonitorForCategory(
      category,
      audioStateMonitor,
    );

late final _CreateRenderAudioStateMonitorForCategory =
    _windows_media_mediacontrol.lookupFunction<
        Int32 Function(
  Int32 category,
  Pointer<Pointer<COMObject>> audioStateMonitor,
),
        int Function(
  int category,
  Pointer<Pointer<COMObject>> audioStateMonitor,
)>('CreateRenderAudioStateMonitorForCategory');

int CreateRenderAudioStateMonitorForCategoryAndDeviceId(
  int category,
  Pointer<Utf16> deviceId,
  Pointer<Pointer<COMObject>> audioStateMonitor,
) =>
    _CreateRenderAudioStateMonitorForCategoryAndDeviceId(
      category,
      deviceId,
      audioStateMonitor,
    );

late final _CreateRenderAudioStateMonitorForCategoryAndDeviceId =
    _windows_media_mediacontrol.lookupFunction<
        Int32 Function(
  Int32 category,
  Pointer<Utf16> deviceId,
  Pointer<Pointer<COMObject>> audioStateMonitor,
),
        int Function(
  int category,
  Pointer<Utf16> deviceId,
  Pointer<Pointer<COMObject>> audioStateMonitor,
)>('CreateRenderAudioStateMonitorForCategoryAndDeviceId');

int CreateRenderAudioStateMonitorForCategoryAndDeviceRole(
  int category,
  int role,
  Pointer<Pointer<COMObject>> audioStateMonitor,
) =>
    _CreateRenderAudioStateMonitorForCategoryAndDeviceRole(
      category,
      role,
      audioStateMonitor,
    );

late final _CreateRenderAudioStateMonitorForCategoryAndDeviceRole =
    _windows_media_mediacontrol.lookupFunction<
        Int32 Function(
  Int32 category,
  Int32 role,
  Pointer<Pointer<COMObject>> audioStateMonitor,
),
        int Function(
  int category,
  int role,
  Pointer<Pointer<COMObject>> audioStateMonitor,
)>('CreateRenderAudioStateMonitorForCategoryAndDeviceRole');

// -----------------------------------------------------------------------
// msacm32.dll
// -----------------------------------------------------------------------
final _msacm32 = DynamicLibrary.open('msacm32.dll');

int acmDriverAdd(
  Pointer<IntPtr> phadid,
  int hinstModule,
  int lParam,
  int dwPriority,
  int fdwAdd,
) =>
    _acmDriverAdd(
      phadid,
      hinstModule,
      lParam,
      dwPriority,
      fdwAdd,
    );

late final _acmDriverAdd = _msacm32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phadid,
  IntPtr hinstModule,
  IntPtr lParam,
  Uint32 dwPriority,
  Uint32 fdwAdd,
),
    int Function(
  Pointer<IntPtr> phadid,
  int hinstModule,
  int lParam,
  int dwPriority,
  int fdwAdd,
)>('acmDriverAddW');

int acmDriverClose(
  int had,
  int fdwClose,
) =>
    _acmDriverClose(
      had,
      fdwClose,
    );

late final _acmDriverClose = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr had,
  Uint32 fdwClose,
),
    int Function(
  int had,
  int fdwClose,
)>('acmDriverClose');

int acmDriverDetails(
  int hadid,
  Pointer<ACMDRIVERDETAILS> padd,
  int fdwDetails,
) =>
    _acmDriverDetails(
      hadid,
      padd,
      fdwDetails,
    );

late final _acmDriverDetails = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr hadid,
  Pointer<ACMDRIVERDETAILS> padd,
  Uint32 fdwDetails,
),
    int Function(
  int hadid,
  Pointer<ACMDRIVERDETAILS> padd,
  int fdwDetails,
)>('acmDriverDetailsW');

int acmDriverEnum(
  Pointer<NativeFunction<ACMDRIVERENUMCB>> fnCallback,
  int dwInstance,
  int fdwEnum,
) =>
    _acmDriverEnum(
      fnCallback,
      dwInstance,
      fdwEnum,
    );

late final _acmDriverEnum = _msacm32.lookupFunction<
    Uint32 Function(
  Pointer<NativeFunction<ACMDRIVERENUMCB>> fnCallback,
  IntPtr dwInstance,
  Uint32 fdwEnum,
),
    int Function(
  Pointer<NativeFunction<ACMDRIVERENUMCB>> fnCallback,
  int dwInstance,
  int fdwEnum,
)>('acmDriverEnum');

int acmDriverID(
  int hao,
  Pointer<IntPtr> phadid,
  int fdwDriverID,
) =>
    _acmDriverID(
      hao,
      phadid,
      fdwDriverID,
    );

late final _acmDriverID = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr hao,
  Pointer<IntPtr> phadid,
  Uint32 fdwDriverID,
),
    int Function(
  int hao,
  Pointer<IntPtr> phadid,
  int fdwDriverID,
)>('acmDriverID');

int acmDriverMessage(
  int had,
  int uMsg,
  int lParam1,
  int lParam2,
) =>
    _acmDriverMessage(
      had,
      uMsg,
      lParam1,
      lParam2,
    );

late final _acmDriverMessage = _msacm32.lookupFunction<
    IntPtr Function(
  IntPtr had,
  Uint32 uMsg,
  IntPtr lParam1,
  IntPtr lParam2,
),
    int Function(
  int had,
  int uMsg,
  int lParam1,
  int lParam2,
)>('acmDriverMessage');

int acmDriverOpen(
  Pointer<IntPtr> phad,
  int hadid,
  int fdwOpen,
) =>
    _acmDriverOpen(
      phad,
      hadid,
      fdwOpen,
    );

late final _acmDriverOpen = _msacm32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phad,
  IntPtr hadid,
  Uint32 fdwOpen,
),
    int Function(
  Pointer<IntPtr> phad,
  int hadid,
  int fdwOpen,
)>('acmDriverOpen');

int acmDriverPriority(
  int hadid,
  int dwPriority,
  int fdwPriority,
) =>
    _acmDriverPriority(
      hadid,
      dwPriority,
      fdwPriority,
    );

late final _acmDriverPriority = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr hadid,
  Uint32 dwPriority,
  Uint32 fdwPriority,
),
    int Function(
  int hadid,
  int dwPriority,
  int fdwPriority,
)>('acmDriverPriority');

int acmDriverRemove(
  int hadid,
  int fdwRemove,
) =>
    _acmDriverRemove(
      hadid,
      fdwRemove,
    );

late final _acmDriverRemove = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr hadid,
  Uint32 fdwRemove,
),
    int Function(
  int hadid,
  int fdwRemove,
)>('acmDriverRemove');

int acmFilterChoose(
  Pointer<ACMFILTERCHOOSE> pafltrc,
) =>
    _acmFilterChoose(
      pafltrc,
    );

late final _acmFilterChoose = _msacm32.lookupFunction<
    Uint32 Function(
  Pointer<ACMFILTERCHOOSE> pafltrc,
),
    int Function(
  Pointer<ACMFILTERCHOOSE> pafltrc,
)>('acmFilterChooseW');

int acmFilterDetails(
  int had,
  Pointer<ACMFILTERDETAILS> pafd,
  int fdwDetails,
) =>
    _acmFilterDetails(
      had,
      pafd,
      fdwDetails,
    );

late final _acmFilterDetails = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr had,
  Pointer<ACMFILTERDETAILS> pafd,
  Uint32 fdwDetails,
),
    int Function(
  int had,
  Pointer<ACMFILTERDETAILS> pafd,
  int fdwDetails,
)>('acmFilterDetailsW');

int acmFilterEnum(
  int had,
  Pointer<ACMFILTERDETAILS> pafd,
  Pointer<NativeFunction<ACMFILTERENUMCBW>> fnCallback,
  int dwInstance,
  int fdwEnum,
) =>
    _acmFilterEnum(
      had,
      pafd,
      fnCallback,
      dwInstance,
      fdwEnum,
    );

late final _acmFilterEnum = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr had,
  Pointer<ACMFILTERDETAILS> pafd,
  Pointer<NativeFunction<ACMFILTERENUMCBW>> fnCallback,
  IntPtr dwInstance,
  Uint32 fdwEnum,
),
    int Function(
  int had,
  Pointer<ACMFILTERDETAILS> pafd,
  Pointer<NativeFunction<ACMFILTERENUMCBW>> fnCallback,
  int dwInstance,
  int fdwEnum,
)>('acmFilterEnumW');

int acmFilterTagDetails(
  int had,
  Pointer<ACMFILTERTAGDETAILS> paftd,
  int fdwDetails,
) =>
    _acmFilterTagDetails(
      had,
      paftd,
      fdwDetails,
    );

late final _acmFilterTagDetails = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr had,
  Pointer<ACMFILTERTAGDETAILS> paftd,
  Uint32 fdwDetails,
),
    int Function(
  int had,
  Pointer<ACMFILTERTAGDETAILS> paftd,
  int fdwDetails,
)>('acmFilterTagDetailsW');

int acmFilterTagEnum(
  int had,
  Pointer<ACMFILTERTAGDETAILS> paftd,
  Pointer<NativeFunction<ACMFILTERTAGENUMCBW>> fnCallback,
  int dwInstance,
  int fdwEnum,
) =>
    _acmFilterTagEnum(
      had,
      paftd,
      fnCallback,
      dwInstance,
      fdwEnum,
    );

late final _acmFilterTagEnum = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr had,
  Pointer<ACMFILTERTAGDETAILS> paftd,
  Pointer<NativeFunction<ACMFILTERTAGENUMCBW>> fnCallback,
  IntPtr dwInstance,
  Uint32 fdwEnum,
),
    int Function(
  int had,
  Pointer<ACMFILTERTAGDETAILS> paftd,
  Pointer<NativeFunction<ACMFILTERTAGENUMCBW>> fnCallback,
  int dwInstance,
  int fdwEnum,
)>('acmFilterTagEnumW');

int acmFormatChoose(
  Pointer<ACMFORMATCHOOSE> pafmtc,
) =>
    _acmFormatChoose(
      pafmtc,
    );

late final _acmFormatChoose = _msacm32.lookupFunction<
    Uint32 Function(
  Pointer<ACMFORMATCHOOSE> pafmtc,
),
    int Function(
  Pointer<ACMFORMATCHOOSE> pafmtc,
)>('acmFormatChooseW');

int acmFormatDetails(
  int had,
  Pointer<tACMFORMATDETAILS> pafd,
  int fdwDetails,
) =>
    _acmFormatDetails(
      had,
      pafd,
      fdwDetails,
    );

late final _acmFormatDetails = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr had,
  Pointer<tACMFORMATDETAILS> pafd,
  Uint32 fdwDetails,
),
    int Function(
  int had,
  Pointer<tACMFORMATDETAILS> pafd,
  int fdwDetails,
)>('acmFormatDetailsW');

int acmFormatEnum(
  int had,
  Pointer<tACMFORMATDETAILS> pafd,
  Pointer<NativeFunction<ACMFORMATENUMCBW>> fnCallback,
  int dwInstance,
  int fdwEnum,
) =>
    _acmFormatEnum(
      had,
      pafd,
      fnCallback,
      dwInstance,
      fdwEnum,
    );

late final _acmFormatEnum = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr had,
  Pointer<tACMFORMATDETAILS> pafd,
  Pointer<NativeFunction<ACMFORMATENUMCBW>> fnCallback,
  IntPtr dwInstance,
  Uint32 fdwEnum,
),
    int Function(
  int had,
  Pointer<tACMFORMATDETAILS> pafd,
  Pointer<NativeFunction<ACMFORMATENUMCBW>> fnCallback,
  int dwInstance,
  int fdwEnum,
)>('acmFormatEnumW');

int acmFormatSuggest(
  int had,
  Pointer<WAVEFORMATEX> pwfxSrc,
  Pointer<WAVEFORMATEX> pwfxDst,
  int cbwfxDst,
  int fdwSuggest,
) =>
    _acmFormatSuggest(
      had,
      pwfxSrc,
      pwfxDst,
      cbwfxDst,
      fdwSuggest,
    );

late final _acmFormatSuggest = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr had,
  Pointer<WAVEFORMATEX> pwfxSrc,
  Pointer<WAVEFORMATEX> pwfxDst,
  Uint32 cbwfxDst,
  Uint32 fdwSuggest,
),
    int Function(
  int had,
  Pointer<WAVEFORMATEX> pwfxSrc,
  Pointer<WAVEFORMATEX> pwfxDst,
  int cbwfxDst,
  int fdwSuggest,
)>('acmFormatSuggest');

int acmFormatTagDetails(
  int had,
  Pointer<ACMFORMATTAGDETAILS> paftd,
  int fdwDetails,
) =>
    _acmFormatTagDetails(
      had,
      paftd,
      fdwDetails,
    );

late final _acmFormatTagDetails = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr had,
  Pointer<ACMFORMATTAGDETAILS> paftd,
  Uint32 fdwDetails,
),
    int Function(
  int had,
  Pointer<ACMFORMATTAGDETAILS> paftd,
  int fdwDetails,
)>('acmFormatTagDetailsW');

int acmFormatTagEnum(
  int had,
  Pointer<ACMFORMATTAGDETAILS> paftd,
  Pointer<NativeFunction<ACMFORMATTAGENUMCBW>> fnCallback,
  int dwInstance,
  int fdwEnum,
) =>
    _acmFormatTagEnum(
      had,
      paftd,
      fnCallback,
      dwInstance,
      fdwEnum,
    );

late final _acmFormatTagEnum = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr had,
  Pointer<ACMFORMATTAGDETAILS> paftd,
  Pointer<NativeFunction<ACMFORMATTAGENUMCBW>> fnCallback,
  IntPtr dwInstance,
  Uint32 fdwEnum,
),
    int Function(
  int had,
  Pointer<ACMFORMATTAGDETAILS> paftd,
  Pointer<NativeFunction<ACMFORMATTAGENUMCBW>> fnCallback,
  int dwInstance,
  int fdwEnum,
)>('acmFormatTagEnumW');

int acmGetVersion() => _acmGetVersion();

late final _acmGetVersion =
    _msacm32.lookupFunction<Uint32 Function(), int Function()>('acmGetVersion');

int acmMetrics(
  int hao,
  int uMetric,
  Pointer pMetric,
) =>
    _acmMetrics(
      hao,
      uMetric,
      pMetric,
    );

late final _acmMetrics = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr hao,
  Uint32 uMetric,
  Pointer pMetric,
),
    int Function(
  int hao,
  int uMetric,
  Pointer pMetric,
)>('acmMetrics');

int acmStreamClose(
  int has,
  int fdwClose,
) =>
    _acmStreamClose(
      has,
      fdwClose,
    );

late final _acmStreamClose = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr has,
  Uint32 fdwClose,
),
    int Function(
  int has,
  int fdwClose,
)>('acmStreamClose');

int acmStreamConvert(
  int has,
  Pointer<ACMSTREAMHEADER> pash,
  int fdwConvert,
) =>
    _acmStreamConvert(
      has,
      pash,
      fdwConvert,
    );

late final _acmStreamConvert = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr has,
  Pointer<ACMSTREAMHEADER> pash,
  Uint32 fdwConvert,
),
    int Function(
  int has,
  Pointer<ACMSTREAMHEADER> pash,
  int fdwConvert,
)>('acmStreamConvert');

int acmStreamMessage(
  int has,
  int uMsg,
  int lParam1,
  int lParam2,
) =>
    _acmStreamMessage(
      has,
      uMsg,
      lParam1,
      lParam2,
    );

late final _acmStreamMessage = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr has,
  Uint32 uMsg,
  IntPtr lParam1,
  IntPtr lParam2,
),
    int Function(
  int has,
  int uMsg,
  int lParam1,
  int lParam2,
)>('acmStreamMessage');

int acmStreamOpen(
  Pointer<IntPtr> phas,
  int had,
  Pointer<WAVEFORMATEX> pwfxSrc,
  Pointer<WAVEFORMATEX> pwfxDst,
  Pointer<WAVEFILTER> pwfltr,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
) =>
    _acmStreamOpen(
      phas,
      had,
      pwfxSrc,
      pwfxDst,
      pwfltr,
      dwCallback,
      dwInstance,
      fdwOpen,
    );

late final _acmStreamOpen = _msacm32.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phas,
  IntPtr had,
  Pointer<WAVEFORMATEX> pwfxSrc,
  Pointer<WAVEFORMATEX> pwfxDst,
  Pointer<WAVEFILTER> pwfltr,
  IntPtr dwCallback,
  IntPtr dwInstance,
  Uint32 fdwOpen,
),
    int Function(
  Pointer<IntPtr> phas,
  int had,
  Pointer<WAVEFORMATEX> pwfxSrc,
  Pointer<WAVEFORMATEX> pwfxDst,
  Pointer<WAVEFILTER> pwfltr,
  int dwCallback,
  int dwInstance,
  int fdwOpen,
)>('acmStreamOpen');

int acmStreamPrepareHeader(
  int has,
  Pointer<ACMSTREAMHEADER> pash,
  int fdwPrepare,
) =>
    _acmStreamPrepareHeader(
      has,
      pash,
      fdwPrepare,
    );

late final _acmStreamPrepareHeader = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr has,
  Pointer<ACMSTREAMHEADER> pash,
  Uint32 fdwPrepare,
),
    int Function(
  int has,
  Pointer<ACMSTREAMHEADER> pash,
  int fdwPrepare,
)>('acmStreamPrepareHeader');

int acmStreamReset(
  int has,
  int fdwReset,
) =>
    _acmStreamReset(
      has,
      fdwReset,
    );

late final _acmStreamReset = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr has,
  Uint32 fdwReset,
),
    int Function(
  int has,
  int fdwReset,
)>('acmStreamReset');

int acmStreamSize(
  int has,
  int cbInput,
  Pointer<Uint32> pdwOutputBytes,
  int fdwSize,
) =>
    _acmStreamSize(
      has,
      cbInput,
      pdwOutputBytes,
      fdwSize,
    );

late final _acmStreamSize = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr has,
  Uint32 cbInput,
  Pointer<Uint32> pdwOutputBytes,
  Uint32 fdwSize,
),
    int Function(
  int has,
  int cbInput,
  Pointer<Uint32> pdwOutputBytes,
  int fdwSize,
)>('acmStreamSize');

int acmStreamUnprepareHeader(
  int has,
  Pointer<ACMSTREAMHEADER> pash,
  int fdwUnprepare,
) =>
    _acmStreamUnprepareHeader(
      has,
      pash,
      fdwUnprepare,
    );

late final _acmStreamUnprepareHeader = _msacm32.lookupFunction<
    Uint32 Function(
  IntPtr has,
  Pointer<ACMSTREAMHEADER> pash,
  Uint32 fdwUnprepare,
),
    int Function(
  int has,
  Pointer<ACMSTREAMHEADER> pash,
  int fdwUnprepare,
)>('acmStreamUnprepareHeader');
