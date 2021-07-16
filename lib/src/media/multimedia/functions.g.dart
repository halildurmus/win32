// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../guid.dart';
import '../../combase.dart';
import '../../media/multimedia/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/multimedia/callbacks.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../foundation/callbacks.g.dart';
import '../../media/multimedia/IAVIFile.dart';
import '../../media/multimedia/IAVIStream.dart';
import '../../media/multimedia/IGetFrame.dart';

// -----------------------------------------------------------------------
// WINMM.dll
// -----------------------------------------------------------------------
final _winmm = DynamicLibrary.open('WINMM.dll');

int CloseDriver(int hDriver, int lParam1, int lParam2) =>
    _CloseDriver(hDriver, lParam1, lParam2);

late final _CloseDriver = _winmm.lookupFunction<
    IntPtr Function(IntPtr hDriver, IntPtr lParam1, IntPtr lParam2),
    int Function(int hDriver, int lParam1, int lParam2)>('CloseDriver');

int DefDriverProc(int dwDriverIdentifier, int hdrvr, int uMsg, int lParam1,
        int lParam2) =>
    _DefDriverProc(dwDriverIdentifier, hdrvr, uMsg, lParam1, lParam2);

late final _DefDriverProc = _winmm.lookupFunction<
    IntPtr Function(IntPtr dwDriverIdentifier, IntPtr hdrvr, Uint32 uMsg,
        IntPtr lParam1, IntPtr lParam2),
    int Function(int dwDriverIdentifier, int hdrvr, int uMsg, int lParam1,
        int lParam2)>('DefDriverProc');

int DriverCallback(int dwCallback, int dwFlags, int hDevice, int dwMsg,
        int dwUser, int dwParam1, int dwParam2) =>
    _DriverCallback(
        dwCallback, dwFlags, hDevice, dwMsg, dwUser, dwParam1, dwParam2);

late final _DriverCallback = _winmm.lookupFunction<
    Int32 Function(IntPtr dwCallback, Uint32 dwFlags, IntPtr hDevice,
        Uint32 dwMsg, IntPtr dwUser, IntPtr dwParam1, IntPtr dwParam2),
    int Function(int dwCallback, int dwFlags, int hDevice, int dwMsg,
        int dwUser, int dwParam1, int dwParam2)>('DriverCallback');

int DrvGetModuleHandle(int hDriver) => _DrvGetModuleHandle(hDriver);

late final _DrvGetModuleHandle = _winmm.lookupFunction<
    IntPtr Function(IntPtr hDriver),
    int Function(int hDriver)>('DrvGetModuleHandle');

int GetDriverModuleHandle(int hDriver) => _GetDriverModuleHandle(hDriver);

late final _GetDriverModuleHandle = _winmm.lookupFunction<
    IntPtr Function(IntPtr hDriver),
    int Function(int hDriver)>('GetDriverModuleHandle');

int OpenDriver(Pointer<Utf16> szDriverName, Pointer<Utf16> szSectionName,
        int lParam2) =>
    _OpenDriver(szDriverName, szSectionName, lParam2);

late final _OpenDriver = _winmm.lookupFunction<
    IntPtr Function(Pointer<Utf16> szDriverName, Pointer<Utf16> szSectionName,
        IntPtr lParam2),
    int Function(Pointer<Utf16> szDriverName, Pointer<Utf16> szSectionName,
        int lParam2)>('OpenDriver');

int PlaySound(Pointer<Utf16> pszSound, int hmod, int fdwSound) =>
    _PlaySound(pszSound, hmod, fdwSound);

late final _PlaySound = _winmm.lookupFunction<
    Int32 Function(Pointer<Utf16> pszSound, IntPtr hmod, Uint32 fdwSound),
    int Function(
        Pointer<Utf16> pszSound, int hmod, int fdwSound)>('PlaySoundW');

int SendDriverMessage(int hDriver, int message, int lParam1, int lParam2) =>
    _SendDriverMessage(hDriver, message, lParam1, lParam2);

late final _SendDriverMessage = _winmm.lookupFunction<
    IntPtr Function(
        IntPtr hDriver, Uint32 message, IntPtr lParam1, IntPtr lParam2),
    int Function(int hDriver, int message, int lParam1,
        int lParam2)>('SendDriverMessage');

int auxGetDevCaps(int uDeviceID, Pointer<AUXCAPS> pac, int cbac) =>
    _auxGetDevCaps(uDeviceID, pac, cbac);

late final _auxGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(IntPtr uDeviceID, Pointer<AUXCAPS> pac, Uint32 cbac),
    int Function(
        int uDeviceID, Pointer<AUXCAPS> pac, int cbac)>('auxGetDevCapsW');

int auxGetNumDevs() => _auxGetNumDevs();

late final _auxGetNumDevs =
    _winmm.lookupFunction<Uint32 Function(), int Function()>('auxGetNumDevs');

int auxGetVolume(int uDeviceID, Pointer<Uint32> pdwVolume) =>
    _auxGetVolume(uDeviceID, pdwVolume);

late final _auxGetVolume = _winmm.lookupFunction<
    Uint32 Function(Uint32 uDeviceID, Pointer<Uint32> pdwVolume),
    int Function(int uDeviceID, Pointer<Uint32> pdwVolume)>('auxGetVolume');

int auxOutMessage(int uDeviceID, int uMsg, int dw1, int dw2) =>
    _auxOutMessage(uDeviceID, uMsg, dw1, dw2);

late final _auxOutMessage = _winmm.lookupFunction<
    Uint32 Function(Uint32 uDeviceID, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
    int Function(int uDeviceID, int uMsg, int dw1, int dw2)>('auxOutMessage');

int auxSetVolume(int uDeviceID, int dwVolume) =>
    _auxSetVolume(uDeviceID, dwVolume);

late final _auxSetVolume = _winmm.lookupFunction<
    Uint32 Function(Uint32 uDeviceID, Uint32 dwVolume),
    int Function(int uDeviceID, int dwVolume)>('auxSetVolume');

int joyGetDevCaps(int uJoyID, Pointer<JOYCAPS> pjc, int cbjc) =>
    _joyGetDevCaps(uJoyID, pjc, cbjc);

late final _joyGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(IntPtr uJoyID, Pointer<JOYCAPS> pjc, Uint32 cbjc),
    int Function(int uJoyID, Pointer<JOYCAPS> pjc, int cbjc)>('joyGetDevCapsW');

int joyGetNumDevs() => _joyGetNumDevs();

late final _joyGetNumDevs =
    _winmm.lookupFunction<Uint32 Function(), int Function()>('joyGetNumDevs');

int joyGetPos(int uJoyID, Pointer<JOYINFO> pji) => _joyGetPos(uJoyID, pji);

late final _joyGetPos = _winmm.lookupFunction<
    Uint32 Function(Uint32 uJoyID, Pointer<JOYINFO> pji),
    int Function(int uJoyID, Pointer<JOYINFO> pji)>('joyGetPos');

int joyGetPosEx(int uJoyID, Pointer<JOYINFOEX> pji) =>
    _joyGetPosEx(uJoyID, pji);

late final _joyGetPosEx = _winmm.lookupFunction<
    Uint32 Function(Uint32 uJoyID, Pointer<JOYINFOEX> pji),
    int Function(int uJoyID, Pointer<JOYINFOEX> pji)>('joyGetPosEx');

int joyGetThreshold(int uJoyID, Pointer<Uint32> puThreshold) =>
    _joyGetThreshold(uJoyID, puThreshold);

late final _joyGetThreshold = _winmm.lookupFunction<
    Uint32 Function(Uint32 uJoyID, Pointer<Uint32> puThreshold),
    int Function(int uJoyID, Pointer<Uint32> puThreshold)>('joyGetThreshold');

int joyReleaseCapture(int uJoyID) => _joyReleaseCapture(uJoyID);

late final _joyReleaseCapture = _winmm.lookupFunction<
    Uint32 Function(Uint32 uJoyID),
    int Function(int uJoyID)>('joyReleaseCapture');

int joySetCapture(int hwnd, int uJoyID, int uPeriod, int fChanged) =>
    _joySetCapture(hwnd, uJoyID, uPeriod, fChanged);

late final _joySetCapture = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwnd, Uint32 uJoyID, Uint32 uPeriod, Int32 fChanged),
    int Function(
        int hwnd, int uJoyID, int uPeriod, int fChanged)>('joySetCapture');

int joySetThreshold(int uJoyID, int uThreshold) =>
    _joySetThreshold(uJoyID, uThreshold);

late final _joySetThreshold = _winmm.lookupFunction<
    Uint32 Function(Uint32 uJoyID, Uint32 uThreshold),
    int Function(int uJoyID, int uThreshold)>('joySetThreshold');

int midiConnect(int hmi, int hmo, Pointer pReserved) =>
    _midiConnect(hmi, hmo, pReserved);

late final _midiConnect = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmi, IntPtr hmo, Pointer pReserved),
    int Function(int hmi, int hmo, Pointer pReserved)>('midiConnect');

int midiDisconnect(int hmi, int hmo, Pointer pReserved) =>
    _midiDisconnect(hmi, hmo, pReserved);

late final _midiDisconnect = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmi, IntPtr hmo, Pointer pReserved),
    int Function(int hmi, int hmo, Pointer pReserved)>('midiDisconnect');

int midiInAddBuffer(int hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInAddBuffer(hmi, pmh, cbmh);

late final _midiInAddBuffer = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmi, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(int hmi, Pointer<MIDIHDR> pmh, int cbmh)>('midiInAddBuffer');

int midiInClose(int hmi) => _midiInClose(hmi);

late final _midiInClose =
    _winmm.lookupFunction<Uint32 Function(IntPtr hmi), int Function(int hmi)>(
        'midiInClose');

int midiInGetDevCaps(int uDeviceID, Pointer<MIDIINCAPS> pmic, int cbmic) =>
    _midiInGetDevCaps(uDeviceID, pmic, cbmic);

late final _midiInGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(IntPtr uDeviceID, Pointer<MIDIINCAPS> pmic, Uint32 cbmic),
    int Function(int uDeviceID, Pointer<MIDIINCAPS> pmic,
        int cbmic)>('midiInGetDevCapsW');

int midiInGetErrorText(int mmrError, Pointer<Utf16> pszText, int cchText) =>
    _midiInGetErrorText(mmrError, pszText, cchText);

late final _midiInGetErrorText = _winmm.lookupFunction<
    Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
    int Function(int mmrError, Pointer<Utf16> pszText,
        int cchText)>('midiInGetErrorTextW');

int midiInGetID(int hmi, Pointer<Uint32> puDeviceID) =>
    _midiInGetID(hmi, puDeviceID);

late final _midiInGetID = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmi, Pointer<Uint32> puDeviceID),
    int Function(int hmi, Pointer<Uint32> puDeviceID)>('midiInGetID');

int midiInGetNumDevs() => _midiInGetNumDevs();

late final _midiInGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('midiInGetNumDevs');

int midiInMessage(int hmi, int uMsg, int dw1, int dw2) =>
    _midiInMessage(hmi, uMsg, dw1, dw2);

late final _midiInMessage = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmi, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
    int Function(int hmi, int uMsg, int dw1, int dw2)>('midiInMessage');

int midiInOpen(Pointer<IntPtr> phmi, int uDeviceID, int dwCallback,
        int dwInstance, int fdwOpen) =>
    _midiInOpen(phmi, uDeviceID, dwCallback, dwInstance, fdwOpen);

late final _midiInOpen = _winmm.lookupFunction<
    Uint32 Function(Pointer<IntPtr> phmi, Uint32 uDeviceID, IntPtr dwCallback,
        IntPtr dwInstance, Uint32 fdwOpen),
    int Function(Pointer<IntPtr> phmi, int uDeviceID, int dwCallback,
        int dwInstance, int fdwOpen)>('midiInOpen');

int midiInPrepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInPrepareHeader(hmi, pmh, cbmh);

late final _midiInPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmi, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(
        int hmi, Pointer<MIDIHDR> pmh, int cbmh)>('midiInPrepareHeader');

int midiInReset(int hmi) => _midiInReset(hmi);

late final _midiInReset =
    _winmm.lookupFunction<Uint32 Function(IntPtr hmi), int Function(int hmi)>(
        'midiInReset');

int midiInStart(int hmi) => _midiInStart(hmi);

late final _midiInStart =
    _winmm.lookupFunction<Uint32 Function(IntPtr hmi), int Function(int hmi)>(
        'midiInStart');

int midiInStop(int hmi) => _midiInStop(hmi);

late final _midiInStop =
    _winmm.lookupFunction<Uint32 Function(IntPtr hmi), int Function(int hmi)>(
        'midiInStop');

int midiInUnprepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInUnprepareHeader(hmi, pmh, cbmh);

late final _midiInUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmi, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(
        int hmi, Pointer<MIDIHDR> pmh, int cbmh)>('midiInUnprepareHeader');

int midiOutCacheDrumPatches(
        int hmo, int uPatch, Pointer<Uint16> pwkya, int fuCache) =>
    _midiOutCacheDrumPatches(hmo, uPatch, pwkya, fuCache);

late final _midiOutCacheDrumPatches = _winmm.lookupFunction<
    Uint32 Function(
        IntPtr hmo, Uint32 uPatch, Pointer<Uint16> pwkya, Uint32 fuCache),
    int Function(int hmo, int uPatch, Pointer<Uint16> pwkya,
        int fuCache)>('midiOutCacheDrumPatches');

int midiOutCachePatches(
        int hmo, int uBank, Pointer<Uint16> pwpa, int fuCache) =>
    _midiOutCachePatches(hmo, uBank, pwpa, fuCache);

late final _midiOutCachePatches = _winmm.lookupFunction<
    Uint32 Function(
        IntPtr hmo, Uint32 uBank, Pointer<Uint16> pwpa, Uint32 fuCache),
    int Function(int hmo, int uBank, Pointer<Uint16> pwpa,
        int fuCache)>('midiOutCachePatches');

int midiOutClose(int hmo) => _midiOutClose(hmo);

late final _midiOutClose =
    _winmm.lookupFunction<Uint32 Function(IntPtr hmo), int Function(int hmo)>(
        'midiOutClose');

int midiOutGetDevCaps(int uDeviceID, Pointer<MIDIOUTCAPS> pmoc, int cbmoc) =>
    _midiOutGetDevCaps(uDeviceID, pmoc, cbmoc);

late final _midiOutGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(IntPtr uDeviceID, Pointer<MIDIOUTCAPS> pmoc, Uint32 cbmoc),
    int Function(int uDeviceID, Pointer<MIDIOUTCAPS> pmoc,
        int cbmoc)>('midiOutGetDevCapsW');

int midiOutGetErrorText(int mmrError, Pointer<Utf16> pszText, int cchText) =>
    _midiOutGetErrorText(mmrError, pszText, cchText);

late final _midiOutGetErrorText = _winmm.lookupFunction<
    Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
    int Function(int mmrError, Pointer<Utf16> pszText,
        int cchText)>('midiOutGetErrorTextW');

int midiOutGetID(int hmo, Pointer<Uint32> puDeviceID) =>
    _midiOutGetID(hmo, puDeviceID);

late final _midiOutGetID = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmo, Pointer<Uint32> puDeviceID),
    int Function(int hmo, Pointer<Uint32> puDeviceID)>('midiOutGetID');

int midiOutGetNumDevs() => _midiOutGetNumDevs();

late final _midiOutGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('midiOutGetNumDevs');

int midiOutGetVolume(int hmo, Pointer<Uint32> pdwVolume) =>
    _midiOutGetVolume(hmo, pdwVolume);

late final _midiOutGetVolume = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmo, Pointer<Uint32> pdwVolume),
    int Function(int hmo, Pointer<Uint32> pdwVolume)>('midiOutGetVolume');

int midiOutLongMsg(int hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutLongMsg(hmo, pmh, cbmh);

late final _midiOutLongMsg = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmo, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(int hmo, Pointer<MIDIHDR> pmh, int cbmh)>('midiOutLongMsg');

int midiOutMessage(int hmo, int uMsg, int dw1, int dw2) =>
    _midiOutMessage(hmo, uMsg, dw1, dw2);

late final _midiOutMessage = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmo, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
    int Function(int hmo, int uMsg, int dw1, int dw2)>('midiOutMessage');

int midiOutOpen(Pointer<IntPtr> phmo, int uDeviceID, int dwCallback,
        int dwInstance, int fdwOpen) =>
    _midiOutOpen(phmo, uDeviceID, dwCallback, dwInstance, fdwOpen);

late final _midiOutOpen = _winmm.lookupFunction<
    Uint32 Function(Pointer<IntPtr> phmo, Uint32 uDeviceID, IntPtr dwCallback,
        IntPtr dwInstance, Uint32 fdwOpen),
    int Function(Pointer<IntPtr> phmo, int uDeviceID, int dwCallback,
        int dwInstance, int fdwOpen)>('midiOutOpen');

int midiOutPrepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutPrepareHeader(hmo, pmh, cbmh);

late final _midiOutPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmo, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(
        int hmo, Pointer<MIDIHDR> pmh, int cbmh)>('midiOutPrepareHeader');

int midiOutReset(int hmo) => _midiOutReset(hmo);

late final _midiOutReset =
    _winmm.lookupFunction<Uint32 Function(IntPtr hmo), int Function(int hmo)>(
        'midiOutReset');

int midiOutSetVolume(int hmo, int dwVolume) => _midiOutSetVolume(hmo, dwVolume);

late final _midiOutSetVolume = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmo, Uint32 dwVolume),
    int Function(int hmo, int dwVolume)>('midiOutSetVolume');

int midiOutShortMsg(int hmo, int dwMsg) => _midiOutShortMsg(hmo, dwMsg);

late final _midiOutShortMsg = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmo, Uint32 dwMsg),
    int Function(int hmo, int dwMsg)>('midiOutShortMsg');

int midiOutUnprepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutUnprepareHeader(hmo, pmh, cbmh);

late final _midiOutUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmo, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(
        int hmo, Pointer<MIDIHDR> pmh, int cbmh)>('midiOutUnprepareHeader');

int midiStreamClose(int hms) => _midiStreamClose(hms);

late final _midiStreamClose =
    _winmm.lookupFunction<Uint32 Function(IntPtr hms), int Function(int hms)>(
        'midiStreamClose');

int midiStreamOpen(Pointer<IntPtr> phms, Pointer<Uint32> puDeviceID, int cMidi,
        int dwCallback, int dwInstance, int fdwOpen) =>
    _midiStreamOpen(phms, puDeviceID, cMidi, dwCallback, dwInstance, fdwOpen);

late final _midiStreamOpen = _winmm.lookupFunction<
    Uint32 Function(Pointer<IntPtr> phms, Pointer<Uint32> puDeviceID,
        Uint32 cMidi, IntPtr dwCallback, IntPtr dwInstance, Uint32 fdwOpen),
    int Function(Pointer<IntPtr> phms, Pointer<Uint32> puDeviceID, int cMidi,
        int dwCallback, int dwInstance, int fdwOpen)>('midiStreamOpen');

int midiStreamOut(int hms, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiStreamOut(hms, pmh, cbmh);

late final _midiStreamOut = _winmm.lookupFunction<
    Uint32 Function(IntPtr hms, Pointer<MIDIHDR> pmh, Uint32 cbmh),
    int Function(int hms, Pointer<MIDIHDR> pmh, int cbmh)>('midiStreamOut');

int midiStreamPause(int hms) => _midiStreamPause(hms);

late final _midiStreamPause =
    _winmm.lookupFunction<Uint32 Function(IntPtr hms), int Function(int hms)>(
        'midiStreamPause');

int midiStreamPosition(int hms, Pointer<MMTIME> lpmmt, int cbmmt) =>
    _midiStreamPosition(hms, lpmmt, cbmmt);

late final _midiStreamPosition = _winmm.lookupFunction<
    Uint32 Function(IntPtr hms, Pointer<MMTIME> lpmmt, Uint32 cbmmt),
    int Function(
        int hms, Pointer<MMTIME> lpmmt, int cbmmt)>('midiStreamPosition');

int midiStreamProperty(int hms, Pointer<Uint8> lppropdata, int dwProperty) =>
    _midiStreamProperty(hms, lppropdata, dwProperty);

late final _midiStreamProperty = _winmm.lookupFunction<
    Uint32 Function(IntPtr hms, Pointer<Uint8> lppropdata, Uint32 dwProperty),
    int Function(int hms, Pointer<Uint8> lppropdata,
        int dwProperty)>('midiStreamProperty');

int midiStreamRestart(int hms) => _midiStreamRestart(hms);

late final _midiStreamRestart =
    _winmm.lookupFunction<Uint32 Function(IntPtr hms), int Function(int hms)>(
        'midiStreamRestart');

int midiStreamStop(int hms) => _midiStreamStop(hms);

late final _midiStreamStop =
    _winmm.lookupFunction<Uint32 Function(IntPtr hms), int Function(int hms)>(
        'midiStreamStop');

int mixerClose(int hmx) => _mixerClose(hmx);

late final _mixerClose =
    _winmm.lookupFunction<Uint32 Function(IntPtr hmx), int Function(int hmx)>(
        'mixerClose');

int mixerGetControlDetails(
        int hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd, int fdwDetails) =>
    _mixerGetControlDetails(hmxobj, pmxcd, fdwDetails);

late final _mixerGetControlDetails = _winmm.lookupFunction<
    Uint32 Function(
        IntPtr hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd, Uint32 fdwDetails),
    int Function(int hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd,
        int fdwDetails)>('mixerGetControlDetailsW');

int mixerGetDevCaps(int uMxId, Pointer<MIXERCAPS> pmxcaps, int cbmxcaps) =>
    _mixerGetDevCaps(uMxId, pmxcaps, cbmxcaps);

late final _mixerGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(IntPtr uMxId, Pointer<MIXERCAPS> pmxcaps, Uint32 cbmxcaps),
    int Function(int uMxId, Pointer<MIXERCAPS> pmxcaps,
        int cbmxcaps)>('mixerGetDevCapsW');

int mixerGetID(int hmxobj, Pointer<Uint32> puMxId, int fdwId) =>
    _mixerGetID(hmxobj, puMxId, fdwId);

late final _mixerGetID = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmxobj, Pointer<Uint32> puMxId, Uint32 fdwId),
    int Function(int hmxobj, Pointer<Uint32> puMxId, int fdwId)>('mixerGetID');

int mixerGetLineControls(
        int hmxobj, Pointer<MIXERLINECONTROLS> pmxlc, int fdwControls) =>
    _mixerGetLineControls(hmxobj, pmxlc, fdwControls);

late final _mixerGetLineControls = _winmm.lookupFunction<
    Uint32 Function(
        IntPtr hmxobj, Pointer<MIXERLINECONTROLS> pmxlc, Uint32 fdwControls),
    int Function(int hmxobj, Pointer<MIXERLINECONTROLS> pmxlc,
        int fdwControls)>('mixerGetLineControlsW');

int mixerGetLineInfo(int hmxobj, Pointer<MIXERLINE> pmxl, int fdwInfo) =>
    _mixerGetLineInfo(hmxobj, pmxl, fdwInfo);

late final _mixerGetLineInfo = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmxobj, Pointer<MIXERLINE> pmxl, Uint32 fdwInfo),
    int Function(
        int hmxobj, Pointer<MIXERLINE> pmxl, int fdwInfo)>('mixerGetLineInfoW');

int mixerGetNumDevs() => _mixerGetNumDevs();

late final _mixerGetNumDevs =
    _winmm.lookupFunction<Uint32 Function(), int Function()>('mixerGetNumDevs');

int mixerMessage(int hmx, int uMsg, int dwParam1, int dwParam2) =>
    _mixerMessage(hmx, uMsg, dwParam1, dwParam2);

late final _mixerMessage = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmx, Uint32 uMsg, IntPtr dwParam1, IntPtr dwParam2),
    int Function(
        int hmx, int uMsg, int dwParam1, int dwParam2)>('mixerMessage');

int mixerOpen(Pointer<IntPtr> phmx, int uMxId, int dwCallback, int dwInstance,
        int fdwOpen) =>
    _mixerOpen(phmx, uMxId, dwCallback, dwInstance, fdwOpen);

late final _mixerOpen = _winmm.lookupFunction<
    Uint32 Function(Pointer<IntPtr> phmx, Uint32 uMxId, IntPtr dwCallback,
        IntPtr dwInstance, Uint32 fdwOpen),
    int Function(Pointer<IntPtr> phmx, int uMxId, int dwCallback,
        int dwInstance, int fdwOpen)>('mixerOpen');

int mixerSetControlDetails(
        int hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd, int fdwDetails) =>
    _mixerSetControlDetails(hmxobj, pmxcd, fdwDetails);

late final _mixerSetControlDetails = _winmm.lookupFunction<
    Uint32 Function(
        IntPtr hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd, Uint32 fdwDetails),
    int Function(int hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd,
        int fdwDetails)>('mixerSetControlDetails');

int mmDrvInstall(int hDriver, Pointer<Utf16> wszDrvEntry,
        Pointer<NativeFunction<DRIVERMSGPROC>> drvMessage, int wFlags) =>
    _mmDrvInstall(hDriver, wszDrvEntry, drvMessage, wFlags);

late final _mmDrvInstall = _winmm.lookupFunction<
    Uint32 Function(IntPtr hDriver, Pointer<Utf16> wszDrvEntry,
        Pointer<NativeFunction<DRIVERMSGPROC>> drvMessage, Uint32 wFlags),
    int Function(
        int hDriver,
        Pointer<Utf16> wszDrvEntry,
        Pointer<NativeFunction<DRIVERMSGPROC>> drvMessage,
        int wFlags)>('mmDrvInstall');

int mmGetCurrentTask() => _mmGetCurrentTask();

late final _mmGetCurrentTask = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('mmGetCurrentTask');

void mmTaskBlock(int h) => _mmTaskBlock(h);

late final _mmTaskBlock =
    _winmm.lookupFunction<Void Function(Uint32 h), void Function(int h)>(
        'mmTaskBlock');

int mmTaskCreate(Pointer<NativeFunction<LPTASKCALLBACK>> lpfn,
        Pointer<IntPtr> lph, int dwInst) =>
    _mmTaskCreate(lpfn, lph, dwInst);

late final _mmTaskCreate = _winmm.lookupFunction<
    Uint32 Function(Pointer<NativeFunction<LPTASKCALLBACK>> lpfn,
        Pointer<IntPtr> lph, IntPtr dwInst),
    int Function(Pointer<NativeFunction<LPTASKCALLBACK>> lpfn,
        Pointer<IntPtr> lph, int dwInst)>('mmTaskCreate');

int mmTaskSignal(int h) => _mmTaskSignal(h);

late final _mmTaskSignal =
    _winmm.lookupFunction<Int32 Function(Uint32 h), int Function(int h)>(
        'mmTaskSignal');

void mmTaskYield() => _mmTaskYield();

late final _mmTaskYield =
    _winmm.lookupFunction<Void Function(), void Function()>('mmTaskYield');

int mmioAdvance(int hmmio, Pointer<MMIOINFO> pmmioinfo, int fuAdvance) =>
    _mmioAdvance(hmmio, pmmioinfo, fuAdvance);

late final _mmioAdvance = _winmm.lookupFunction<
    Uint32 Function(
        IntPtr hmmio, Pointer<MMIOINFO> pmmioinfo, Uint32 fuAdvance),
    int Function(
        int hmmio, Pointer<MMIOINFO> pmmioinfo, int fuAdvance)>('mmioAdvance');

int mmioAscend(int hmmio, Pointer<MMCKINFO> pmmcki, int fuAscend) =>
    _mmioAscend(hmmio, pmmcki, fuAscend);

late final _mmioAscend = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmmio, Pointer<MMCKINFO> pmmcki, Uint32 fuAscend),
    int Function(
        int hmmio, Pointer<MMCKINFO> pmmcki, int fuAscend)>('mmioAscend');

int mmioClose(int hmmio, int fuClose) => _mmioClose(hmmio, fuClose);

late final _mmioClose = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmmio, Uint32 fuClose),
    int Function(int hmmio, int fuClose)>('mmioClose');

int mmioCreateChunk(int hmmio, Pointer<MMCKINFO> pmmcki, int fuCreate) =>
    _mmioCreateChunk(hmmio, pmmcki, fuCreate);

late final _mmioCreateChunk = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmmio, Pointer<MMCKINFO> pmmcki, Uint32 fuCreate),
    int Function(
        int hmmio, Pointer<MMCKINFO> pmmcki, int fuCreate)>('mmioCreateChunk');

int mmioDescend(int hmmio, Pointer<MMCKINFO> pmmcki,
        Pointer<MMCKINFO> pmmckiParent, int fuDescend) =>
    _mmioDescend(hmmio, pmmcki, pmmckiParent, fuDescend);

late final _mmioDescend = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmmio, Pointer<MMCKINFO> pmmcki,
        Pointer<MMCKINFO> pmmckiParent, Uint32 fuDescend),
    int Function(int hmmio, Pointer<MMCKINFO> pmmcki,
        Pointer<MMCKINFO> pmmckiParent, int fuDescend)>('mmioDescend');

int mmioFlush(int hmmio, int fuFlush) => _mmioFlush(hmmio, fuFlush);

late final _mmioFlush = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmmio, Uint32 fuFlush),
    int Function(int hmmio, int fuFlush)>('mmioFlush');

int mmioGetInfo(int hmmio, Pointer<MMIOINFO> pmmioinfo, int fuInfo) =>
    _mmioGetInfo(hmmio, pmmioinfo, fuInfo);

late final _mmioGetInfo = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmmio, Pointer<MMIOINFO> pmmioinfo, Uint32 fuInfo),
    int Function(
        int hmmio, Pointer<MMIOINFO> pmmioinfo, int fuInfo)>('mmioGetInfo');

Pointer<NativeFunction<LPMMIOPROC>> mmioInstallIOProc(int fccIOProc,
        Pointer<NativeFunction<LPMMIOPROC>> pIOProc, int dwFlags) =>
    _mmioInstallIOProc(fccIOProc, pIOProc, dwFlags);

late final _mmioInstallIOProc = _winmm.lookupFunction<
    Pointer<NativeFunction<LPMMIOPROC>> Function(Uint32 fccIOProc,
        Pointer<NativeFunction<LPMMIOPROC>> pIOProc, Uint32 dwFlags),
    Pointer<NativeFunction<LPMMIOPROC>> Function(
        int fccIOProc,
        Pointer<NativeFunction<LPMMIOPROC>> pIOProc,
        int dwFlags)>('mmioInstallIOProcW');

int mmioOpen(
        Pointer<Utf16> pszFileName, Pointer<MMIOINFO> pmmioinfo, int fdwOpen) =>
    _mmioOpen(pszFileName, pmmioinfo, fdwOpen);

late final _mmioOpen = _winmm.lookupFunction<
    IntPtr Function(Pointer<Utf16> pszFileName, Pointer<MMIOINFO> pmmioinfo,
        Uint32 fdwOpen),
    int Function(Pointer<Utf16> pszFileName, Pointer<MMIOINFO> pmmioinfo,
        int fdwOpen)>('mmioOpenW');

int mmioRead(int hmmio, Pointer<Int8> pch, int cch) =>
    _mmioRead(hmmio, pch, cch);

late final _mmioRead = _winmm.lookupFunction<
    Int32 Function(IntPtr hmmio, Pointer<Int8> pch, Int32 cch),
    int Function(int hmmio, Pointer<Int8> pch, int cch)>('mmioRead');

int mmioRename(Pointer<Utf16> pszFileName, Pointer<Utf16> pszNewFileName,
        Pointer<MMIOINFO> pmmioinfo, int fdwRename) =>
    _mmioRename(pszFileName, pszNewFileName, pmmioinfo, fdwRename);

late final _mmioRename = _winmm.lookupFunction<
    Uint32 Function(Pointer<Utf16> pszFileName, Pointer<Utf16> pszNewFileName,
        Pointer<MMIOINFO> pmmioinfo, Uint32 fdwRename),
    int Function(Pointer<Utf16> pszFileName, Pointer<Utf16> pszNewFileName,
        Pointer<MMIOINFO> pmmioinfo, int fdwRename)>('mmioRenameW');

int mmioSeek(int hmmio, int lOffset, int iOrigin) =>
    _mmioSeek(hmmio, lOffset, iOrigin);

late final _mmioSeek = _winmm.lookupFunction<
    Int32 Function(IntPtr hmmio, Int32 lOffset, Int32 iOrigin),
    int Function(int hmmio, int lOffset, int iOrigin)>('mmioSeek');

int mmioSendMessage(int hmmio, int uMsg, int lParam1, int lParam2) =>
    _mmioSendMessage(hmmio, uMsg, lParam1, lParam2);

late final _mmioSendMessage = _winmm.lookupFunction<
    IntPtr Function(IntPtr hmmio, Uint32 uMsg, IntPtr lParam1, IntPtr lParam2),
    int Function(
        int hmmio, int uMsg, int lParam1, int lParam2)>('mmioSendMessage');

int mmioSetBuffer(
        int hmmio, Pointer<Utf8> pchBuffer, int cchBuffer, int fuBuffer) =>
    _mmioSetBuffer(hmmio, pchBuffer, cchBuffer, fuBuffer);

late final _mmioSetBuffer = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmmio, Pointer<Utf8> pchBuffer, Int32 cchBuffer,
        Uint32 fuBuffer),
    int Function(int hmmio, Pointer<Utf8> pchBuffer, int cchBuffer,
        int fuBuffer)>('mmioSetBuffer');

int mmioSetInfo(int hmmio, Pointer<MMIOINFO> pmmioinfo, int fuInfo) =>
    _mmioSetInfo(hmmio, pmmioinfo, fuInfo);

late final _mmioSetInfo = _winmm.lookupFunction<
    Uint32 Function(IntPtr hmmio, Pointer<MMIOINFO> pmmioinfo, Uint32 fuInfo),
    int Function(
        int hmmio, Pointer<MMIOINFO> pmmioinfo, int fuInfo)>('mmioSetInfo');

int mmioStringToFOURCC(Pointer<Utf16> sz, int uFlags) =>
    _mmioStringToFOURCC(sz, uFlags);

late final _mmioStringToFOURCC = _winmm.lookupFunction<
    Uint32 Function(Pointer<Utf16> sz, Uint32 uFlags),
    int Function(Pointer<Utf16> sz, int uFlags)>('mmioStringToFOURCCW');

int mmioWrite(int hmmio, Pointer<Utf8> pch, int cch) =>
    _mmioWrite(hmmio, pch, cch);

late final _mmioWrite = _winmm.lookupFunction<
    Int32 Function(IntPtr hmmio, Pointer<Utf8> pch, Int32 cch),
    int Function(int hmmio, Pointer<Utf8> pch, int cch)>('mmioWrite');

int sndPlaySound(Pointer<Utf16> pszSound, int fuSound) =>
    _sndPlaySound(pszSound, fuSound);

late final _sndPlaySound = _winmm.lookupFunction<
    Int32 Function(Pointer<Utf16> pszSound, Uint32 fuSound),
    int Function(Pointer<Utf16> pszSound, int fuSound)>('sndPlaySoundW');

int timeBeginPeriod(int uPeriod) => _timeBeginPeriod(uPeriod);

late final _timeBeginPeriod = _winmm.lookupFunction<
    Uint32 Function(Uint32 uPeriod),
    int Function(int uPeriod)>('timeBeginPeriod');

int timeEndPeriod(int uPeriod) => _timeEndPeriod(uPeriod);

late final _timeEndPeriod = _winmm.lookupFunction<
    Uint32 Function(Uint32 uPeriod),
    int Function(int uPeriod)>('timeEndPeriod');

int timeGetDevCaps(Pointer<TIMECAPS> ptc, int cbtc) =>
    _timeGetDevCaps(ptc, cbtc);

late final _timeGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(Pointer<TIMECAPS> ptc, Uint32 cbtc),
    int Function(Pointer<TIMECAPS> ptc, int cbtc)>('timeGetDevCaps');

int timeGetSystemTime(Pointer<MMTIME> pmmt, int cbmmt) =>
    _timeGetSystemTime(pmmt, cbmmt);

late final _timeGetSystemTime = _winmm.lookupFunction<
    Uint32 Function(Pointer<MMTIME> pmmt, Uint32 cbmmt),
    int Function(Pointer<MMTIME> pmmt, int cbmmt)>('timeGetSystemTime');

int timeGetTime() => _timeGetTime();

late final _timeGetTime =
    _winmm.lookupFunction<Uint32 Function(), int Function()>('timeGetTime');

int waveInAddBuffer(int hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInAddBuffer(hwi, pwh, cbwh);

late final _waveInAddBuffer = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwi, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(int hwi, Pointer<WAVEHDR> pwh, int cbwh)>('waveInAddBuffer');

int waveInClose(int hwi) => _waveInClose(hwi);

late final _waveInClose =
    _winmm.lookupFunction<Uint32 Function(IntPtr hwi), int Function(int hwi)>(
        'waveInClose');

int waveInGetDevCaps(int uDeviceID, Pointer<WAVEINCAPS> pwic, int cbwic) =>
    _waveInGetDevCaps(uDeviceID, pwic, cbwic);

late final _waveInGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(IntPtr uDeviceID, Pointer<WAVEINCAPS> pwic, Uint32 cbwic),
    int Function(int uDeviceID, Pointer<WAVEINCAPS> pwic,
        int cbwic)>('waveInGetDevCapsW');

int waveInGetErrorText(int mmrError, Pointer<Utf16> pszText, int cchText) =>
    _waveInGetErrorText(mmrError, pszText, cchText);

late final _waveInGetErrorText = _winmm.lookupFunction<
    Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
    int Function(int mmrError, Pointer<Utf16> pszText,
        int cchText)>('waveInGetErrorTextW');

int waveInGetID(int hwi, Pointer<Uint32> puDeviceID) =>
    _waveInGetID(hwi, puDeviceID);

late final _waveInGetID = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwi, Pointer<Uint32> puDeviceID),
    int Function(int hwi, Pointer<Uint32> puDeviceID)>('waveInGetID');

int waveInGetNumDevs() => _waveInGetNumDevs();

late final _waveInGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('waveInGetNumDevs');

int waveInGetPosition(int hwi, Pointer<MMTIME> pmmt, int cbmmt) =>
    _waveInGetPosition(hwi, pmmt, cbmmt);

late final _waveInGetPosition = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwi, Pointer<MMTIME> pmmt, Uint32 cbmmt),
    int Function(
        int hwi, Pointer<MMTIME> pmmt, int cbmmt)>('waveInGetPosition');

int waveInMessage(int hwi, int uMsg, int dw1, int dw2) =>
    _waveInMessage(hwi, uMsg, dw1, dw2);

late final _waveInMessage = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwi, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
    int Function(int hwi, int uMsg, int dw1, int dw2)>('waveInMessage');

int waveInOpen(Pointer<IntPtr> phwi, int uDeviceID, Pointer<WAVEFORMATEX> pwfx,
        int dwCallback, int dwInstance, int fdwOpen) =>
    _waveInOpen(phwi, uDeviceID, pwfx, dwCallback, dwInstance, fdwOpen);

late final _waveInOpen = _winmm.lookupFunction<
    Uint32 Function(
        Pointer<IntPtr> phwi,
        Uint32 uDeviceID,
        Pointer<WAVEFORMATEX> pwfx,
        IntPtr dwCallback,
        IntPtr dwInstance,
        Uint32 fdwOpen),
    int Function(
        Pointer<IntPtr> phwi,
        int uDeviceID,
        Pointer<WAVEFORMATEX> pwfx,
        int dwCallback,
        int dwInstance,
        int fdwOpen)>('waveInOpen');

int waveInPrepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInPrepareHeader(hwi, pwh, cbwh);

late final _waveInPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwi, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(
        int hwi, Pointer<WAVEHDR> pwh, int cbwh)>('waveInPrepareHeader');

int waveInReset(int hwi) => _waveInReset(hwi);

late final _waveInReset =
    _winmm.lookupFunction<Uint32 Function(IntPtr hwi), int Function(int hwi)>(
        'waveInReset');

int waveInStart(int hwi) => _waveInStart(hwi);

late final _waveInStart =
    _winmm.lookupFunction<Uint32 Function(IntPtr hwi), int Function(int hwi)>(
        'waveInStart');

int waveInStop(int hwi) => _waveInStop(hwi);

late final _waveInStop =
    _winmm.lookupFunction<Uint32 Function(IntPtr hwi), int Function(int hwi)>(
        'waveInStop');

int waveInUnprepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInUnprepareHeader(hwi, pwh, cbwh);

late final _waveInUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwi, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(
        int hwi, Pointer<WAVEHDR> pwh, int cbwh)>('waveInUnprepareHeader');

int waveOutBreakLoop(int hwo) => _waveOutBreakLoop(hwo);

late final _waveOutBreakLoop =
    _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
        'waveOutBreakLoop');

int waveOutClose(int hwo) => _waveOutClose(hwo);

late final _waveOutClose =
    _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
        'waveOutClose');

int waveOutGetDevCaps(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc, int cbwoc) =>
    _waveOutGetDevCaps(uDeviceID, pwoc, cbwoc);

late final _waveOutGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(IntPtr uDeviceID, Pointer<WAVEOUTCAPS> pwoc, Uint32 cbwoc),
    int Function(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc,
        int cbwoc)>('waveOutGetDevCapsW');

int waveOutGetErrorText(int mmrError, Pointer<Utf16> pszText, int cchText) =>
    _waveOutGetErrorText(mmrError, pszText, cchText);

late final _waveOutGetErrorText = _winmm.lookupFunction<
    Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
    int Function(int mmrError, Pointer<Utf16> pszText,
        int cchText)>('waveOutGetErrorTextW');

int waveOutGetID(int hwo, Pointer<Uint32> puDeviceID) =>
    _waveOutGetID(hwo, puDeviceID);

late final _waveOutGetID = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Pointer<Uint32> puDeviceID),
    int Function(int hwo, Pointer<Uint32> puDeviceID)>('waveOutGetID');

int waveOutGetNumDevs() => _waveOutGetNumDevs();

late final _waveOutGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('waveOutGetNumDevs');

int waveOutGetPitch(int hwo, Pointer<Uint32> pdwPitch) =>
    _waveOutGetPitch(hwo, pdwPitch);

late final _waveOutGetPitch = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwPitch),
    int Function(int hwo, Pointer<Uint32> pdwPitch)>('waveOutGetPitch');

int waveOutGetPlaybackRate(int hwo, Pointer<Uint32> pdwRate) =>
    _waveOutGetPlaybackRate(hwo, pdwRate);

late final _waveOutGetPlaybackRate = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwRate),
    int Function(int hwo, Pointer<Uint32> pdwRate)>('waveOutGetPlaybackRate');

int waveOutGetPosition(int hwo, Pointer<MMTIME> pmmt, int cbmmt) =>
    _waveOutGetPosition(hwo, pmmt, cbmmt);

late final _waveOutGetPosition = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Pointer<MMTIME> pmmt, Uint32 cbmmt),
    int Function(
        int hwo, Pointer<MMTIME> pmmt, int cbmmt)>('waveOutGetPosition');

int waveOutGetVolume(int hwo, Pointer<Uint32> pdwVolume) =>
    _waveOutGetVolume(hwo, pdwVolume);

late final _waveOutGetVolume = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwVolume),
    int Function(int hwo, Pointer<Uint32> pdwVolume)>('waveOutGetVolume');

int waveOutMessage(int hwo, int uMsg, int dw1, int dw2) =>
    _waveOutMessage(hwo, uMsg, dw1, dw2);

late final _waveOutMessage = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
    int Function(int hwo, int uMsg, int dw1, int dw2)>('waveOutMessage');

int waveOutOpen(Pointer<IntPtr> phwo, int uDeviceID, Pointer<WAVEFORMATEX> pwfx,
        int dwCallback, int dwInstance, int fdwOpen) =>
    _waveOutOpen(phwo, uDeviceID, pwfx, dwCallback, dwInstance, fdwOpen);

late final _waveOutOpen = _winmm.lookupFunction<
    Uint32 Function(
        Pointer<IntPtr> phwo,
        Uint32 uDeviceID,
        Pointer<WAVEFORMATEX> pwfx,
        IntPtr dwCallback,
        IntPtr dwInstance,
        Uint32 fdwOpen),
    int Function(
        Pointer<IntPtr> phwo,
        int uDeviceID,
        Pointer<WAVEFORMATEX> pwfx,
        int dwCallback,
        int dwInstance,
        int fdwOpen)>('waveOutOpen');

int waveOutPause(int hwo) => _waveOutPause(hwo);

late final _waveOutPause =
    _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
        'waveOutPause');

int waveOutPrepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutPrepareHeader(hwo, pwh, cbwh);

late final _waveOutPrepareHeader = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(
        int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutPrepareHeader');

int waveOutReset(int hwo) => _waveOutReset(hwo);

late final _waveOutReset =
    _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
        'waveOutReset');

int waveOutRestart(int hwo) => _waveOutRestart(hwo);

late final _waveOutRestart =
    _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
        'waveOutRestart');

int waveOutSetPitch(int hwo, int dwPitch) => _waveOutSetPitch(hwo, dwPitch);

late final _waveOutSetPitch = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Uint32 dwPitch),
    int Function(int hwo, int dwPitch)>('waveOutSetPitch');

int waveOutSetPlaybackRate(int hwo, int dwRate) =>
    _waveOutSetPlaybackRate(hwo, dwRate);

late final _waveOutSetPlaybackRate = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Uint32 dwRate),
    int Function(int hwo, int dwRate)>('waveOutSetPlaybackRate');

int waveOutSetVolume(int hwo, int dwVolume) => _waveOutSetVolume(hwo, dwVolume);

late final _waveOutSetVolume = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Uint32 dwVolume),
    int Function(int hwo, int dwVolume)>('waveOutSetVolume');

int waveOutUnprepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutUnprepareHeader(hwo, pwh, cbwh);

late final _waveOutUnprepareHeader = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(
        int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutUnprepareHeader');

int waveOutWrite(int hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutWrite(hwo, pwh, cbwh);

late final _waveOutWrite = _winmm.lookupFunction<
    Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
    int Function(int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutWrite');

// -----------------------------------------------------------------------
// api-ms-win-mm-misc-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_mm_misc_l1_1_1 =
    DynamicLibrary.open('api-ms-win-mm-misc-l1-1-1.dll');

int sndOpenSound(Pointer<Utf16> EventName, Pointer<Utf16> AppName, int Flags,
        Pointer<IntPtr> FileHandle) =>
    _sndOpenSound(EventName, AppName, Flags, FileHandle);

late final _sndOpenSound = _api_ms_win_mm_misc_l1_1_1.lookupFunction<
    Int32 Function(Pointer<Utf16> EventName, Pointer<Utf16> AppName,
        Int32 Flags, Pointer<IntPtr> FileHandle),
    int Function(Pointer<Utf16> EventName, Pointer<Utf16> AppName, int Flags,
        Pointer<IntPtr> FileHandle)>('sndOpenSound');

// -----------------------------------------------------------------------
// MSACM32.dll
// -----------------------------------------------------------------------
final _msacm32 = DynamicLibrary.open('MSACM32.dll');

int acmDriverAdd(Pointer<IntPtr> phadid, int hinstModule, int lParam,
        int dwPriority, int fdwAdd) =>
    _acmDriverAdd(phadid, hinstModule, lParam, dwPriority, fdwAdd);

late final _acmDriverAdd = _msacm32.lookupFunction<
    Uint32 Function(Pointer<IntPtr> phadid, IntPtr hinstModule, IntPtr lParam,
        Uint32 dwPriority, Uint32 fdwAdd),
    int Function(Pointer<IntPtr> phadid, int hinstModule, int lParam,
        int dwPriority, int fdwAdd)>('acmDriverAddW');

int acmDriverClose(int had, int fdwClose) => _acmDriverClose(had, fdwClose);

late final _acmDriverClose = _msacm32.lookupFunction<
    Uint32 Function(IntPtr had, Uint32 fdwClose),
    int Function(int had, int fdwClose)>('acmDriverClose');

int acmDriverDetails(
        int hadid, Pointer<ACMDRIVERDETAILS> padd, int fdwDetails) =>
    _acmDriverDetails(hadid, padd, fdwDetails);

late final _acmDriverDetails = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr hadid, Pointer<ACMDRIVERDETAILS> padd, Uint32 fdwDetails),
    int Function(int hadid, Pointer<ACMDRIVERDETAILS> padd,
        int fdwDetails)>('acmDriverDetailsW');

int acmDriverEnum(Pointer<NativeFunction<ACMDRIVERENUMCB>> fnCallback,
        int dwInstance, int fdwEnum) =>
    _acmDriverEnum(fnCallback, dwInstance, fdwEnum);

late final _acmDriverEnum = _msacm32.lookupFunction<
    Uint32 Function(Pointer<NativeFunction<ACMDRIVERENUMCB>> fnCallback,
        IntPtr dwInstance, Uint32 fdwEnum),
    int Function(Pointer<NativeFunction<ACMDRIVERENUMCB>> fnCallback,
        int dwInstance, int fdwEnum)>('acmDriverEnum');

int acmDriverID(int hao, Pointer<IntPtr> phadid, int fdwDriverID) =>
    _acmDriverID(hao, phadid, fdwDriverID);

late final _acmDriverID = _msacm32.lookupFunction<
    Uint32 Function(IntPtr hao, Pointer<IntPtr> phadid, Uint32 fdwDriverID),
    int Function(
        int hao, Pointer<IntPtr> phadid, int fdwDriverID)>('acmDriverID');

int acmDriverMessage(int had, int uMsg, int lParam1, int lParam2) =>
    _acmDriverMessage(had, uMsg, lParam1, lParam2);

late final _acmDriverMessage = _msacm32.lookupFunction<
    IntPtr Function(IntPtr had, Uint32 uMsg, IntPtr lParam1, IntPtr lParam2),
    int Function(
        int had, int uMsg, int lParam1, int lParam2)>('acmDriverMessage');

int acmDriverOpen(Pointer<IntPtr> phad, int hadid, int fdwOpen) =>
    _acmDriverOpen(phad, hadid, fdwOpen);

late final _acmDriverOpen = _msacm32.lookupFunction<
    Uint32 Function(Pointer<IntPtr> phad, IntPtr hadid, Uint32 fdwOpen),
    int Function(
        Pointer<IntPtr> phad, int hadid, int fdwOpen)>('acmDriverOpen');

int acmDriverPriority(int hadid, int dwPriority, int fdwPriority) =>
    _acmDriverPriority(hadid, dwPriority, fdwPriority);

late final _acmDriverPriority = _msacm32.lookupFunction<
    Uint32 Function(IntPtr hadid, Uint32 dwPriority, Uint32 fdwPriority),
    int Function(
        int hadid, int dwPriority, int fdwPriority)>('acmDriverPriority');

int acmDriverRemove(int hadid, int fdwRemove) =>
    _acmDriverRemove(hadid, fdwRemove);

late final _acmDriverRemove = _msacm32.lookupFunction<
    Uint32 Function(IntPtr hadid, Uint32 fdwRemove),
    int Function(int hadid, int fdwRemove)>('acmDriverRemove');

int acmFilterChoose(Pointer<ACMFILTERCHOOSE> pafltrc) =>
    _acmFilterChoose(pafltrc);

late final _acmFilterChoose = _msacm32.lookupFunction<
    Uint32 Function(Pointer<ACMFILTERCHOOSE> pafltrc),
    int Function(Pointer<ACMFILTERCHOOSE> pafltrc)>('acmFilterChooseW');

int acmFilterDetails(int had, Pointer<ACMFILTERDETAILS> pafd, int fdwDetails) =>
    _acmFilterDetails(had, pafd, fdwDetails);

late final _acmFilterDetails = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr had, Pointer<ACMFILTERDETAILS> pafd, Uint32 fdwDetails),
    int Function(int had, Pointer<ACMFILTERDETAILS> pafd,
        int fdwDetails)>('acmFilterDetailsW');

int acmFilterEnum(
        int had,
        Pointer<ACMFILTERDETAILS> pafd,
        Pointer<NativeFunction<ACMFILTERENUMCBW>> fnCallback,
        int dwInstance,
        int fdwEnum) =>
    _acmFilterEnum(had, pafd, fnCallback, dwInstance, fdwEnum);

late final _acmFilterEnum = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr had,
        Pointer<ACMFILTERDETAILS> pafd,
        Pointer<NativeFunction<ACMFILTERENUMCBW>> fnCallback,
        IntPtr dwInstance,
        Uint32 fdwEnum),
    int Function(
        int had,
        Pointer<ACMFILTERDETAILS> pafd,
        Pointer<NativeFunction<ACMFILTERENUMCBW>> fnCallback,
        int dwInstance,
        int fdwEnum)>('acmFilterEnumW');

int acmFilterTagDetails(
        int had, Pointer<ACMFILTERTAGDETAILS> paftd, int fdwDetails) =>
    _acmFilterTagDetails(had, paftd, fdwDetails);

late final _acmFilterTagDetails = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr had, Pointer<ACMFILTERTAGDETAILS> paftd, Uint32 fdwDetails),
    int Function(int had, Pointer<ACMFILTERTAGDETAILS> paftd,
        int fdwDetails)>('acmFilterTagDetailsW');

int acmFilterTagEnum(
        int had,
        Pointer<ACMFILTERTAGDETAILS> paftd,
        Pointer<NativeFunction<ACMFILTERTAGENUMCBW>> fnCallback,
        int dwInstance,
        int fdwEnum) =>
    _acmFilterTagEnum(had, paftd, fnCallback, dwInstance, fdwEnum);

late final _acmFilterTagEnum = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr had,
        Pointer<ACMFILTERTAGDETAILS> paftd,
        Pointer<NativeFunction<ACMFILTERTAGENUMCBW>> fnCallback,
        IntPtr dwInstance,
        Uint32 fdwEnum),
    int Function(
        int had,
        Pointer<ACMFILTERTAGDETAILS> paftd,
        Pointer<NativeFunction<ACMFILTERTAGENUMCBW>> fnCallback,
        int dwInstance,
        int fdwEnum)>('acmFilterTagEnumW');

int acmFormatChoose(Pointer<ACMFORMATCHOOSE> pafmtc) =>
    _acmFormatChoose(pafmtc);

late final _acmFormatChoose = _msacm32.lookupFunction<
    Uint32 Function(Pointer<ACMFORMATCHOOSE> pafmtc),
    int Function(Pointer<ACMFORMATCHOOSE> pafmtc)>('acmFormatChooseW');

int acmFormatDetails(
        int had, Pointer<tACMFORMATDETAILS> pafd, int fdwDetails) =>
    _acmFormatDetails(had, pafd, fdwDetails);

late final _acmFormatDetails = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr had, Pointer<tACMFORMATDETAILS> pafd, Uint32 fdwDetails),
    int Function(int had, Pointer<tACMFORMATDETAILS> pafd,
        int fdwDetails)>('acmFormatDetailsW');

int acmFormatEnum(
        int had,
        Pointer<tACMFORMATDETAILS> pafd,
        Pointer<NativeFunction<ACMFORMATENUMCBW>> fnCallback,
        int dwInstance,
        int fdwEnum) =>
    _acmFormatEnum(had, pafd, fnCallback, dwInstance, fdwEnum);

late final _acmFormatEnum = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr had,
        Pointer<tACMFORMATDETAILS> pafd,
        Pointer<NativeFunction<ACMFORMATENUMCBW>> fnCallback,
        IntPtr dwInstance,
        Uint32 fdwEnum),
    int Function(
        int had,
        Pointer<tACMFORMATDETAILS> pafd,
        Pointer<NativeFunction<ACMFORMATENUMCBW>> fnCallback,
        int dwInstance,
        int fdwEnum)>('acmFormatEnumW');

int acmFormatSuggest(int had, Pointer<WAVEFORMATEX> pwfxSrc,
        Pointer<WAVEFORMATEX> pwfxDst, int cbwfxDst, int fdwSuggest) =>
    _acmFormatSuggest(had, pwfxSrc, pwfxDst, cbwfxDst, fdwSuggest);

late final _acmFormatSuggest = _msacm32.lookupFunction<
    Uint32 Function(IntPtr had, Pointer<WAVEFORMATEX> pwfxSrc,
        Pointer<WAVEFORMATEX> pwfxDst, Uint32 cbwfxDst, Uint32 fdwSuggest),
    int Function(
        int had,
        Pointer<WAVEFORMATEX> pwfxSrc,
        Pointer<WAVEFORMATEX> pwfxDst,
        int cbwfxDst,
        int fdwSuggest)>('acmFormatSuggest');

int acmFormatTagDetails(
        int had, Pointer<ACMFORMATTAGDETAILS> paftd, int fdwDetails) =>
    _acmFormatTagDetails(had, paftd, fdwDetails);

late final _acmFormatTagDetails = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr had, Pointer<ACMFORMATTAGDETAILS> paftd, Uint32 fdwDetails),
    int Function(int had, Pointer<ACMFORMATTAGDETAILS> paftd,
        int fdwDetails)>('acmFormatTagDetailsW');

int acmFormatTagEnum(
        int had,
        Pointer<ACMFORMATTAGDETAILS> paftd,
        Pointer<NativeFunction<ACMFORMATTAGENUMCBW>> fnCallback,
        int dwInstance,
        int fdwEnum) =>
    _acmFormatTagEnum(had, paftd, fnCallback, dwInstance, fdwEnum);

late final _acmFormatTagEnum = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr had,
        Pointer<ACMFORMATTAGDETAILS> paftd,
        Pointer<NativeFunction<ACMFORMATTAGENUMCBW>> fnCallback,
        IntPtr dwInstance,
        Uint32 fdwEnum),
    int Function(
        int had,
        Pointer<ACMFORMATTAGDETAILS> paftd,
        Pointer<NativeFunction<ACMFORMATTAGENUMCBW>> fnCallback,
        int dwInstance,
        int fdwEnum)>('acmFormatTagEnumW');

int acmGetVersion() => _acmGetVersion();

late final _acmGetVersion =
    _msacm32.lookupFunction<Uint32 Function(), int Function()>('acmGetVersion');

int acmMetrics(int hao, int uMetric, Pointer pMetric) =>
    _acmMetrics(hao, uMetric, pMetric);

late final _acmMetrics = _msacm32.lookupFunction<
    Uint32 Function(IntPtr hao, Uint32 uMetric, Pointer pMetric),
    int Function(int hao, int uMetric, Pointer pMetric)>('acmMetrics');

int acmStreamClose(int has, int fdwClose) => _acmStreamClose(has, fdwClose);

late final _acmStreamClose = _msacm32.lookupFunction<
    Uint32 Function(IntPtr has, Uint32 fdwClose),
    int Function(int has, int fdwClose)>('acmStreamClose');

int acmStreamConvert(int has, Pointer<ACMSTREAMHEADER> pash, int fdwConvert) =>
    _acmStreamConvert(has, pash, fdwConvert);

late final _acmStreamConvert = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr has, Pointer<ACMSTREAMHEADER> pash, Uint32 fdwConvert),
    int Function(int has, Pointer<ACMSTREAMHEADER> pash,
        int fdwConvert)>('acmStreamConvert');

int acmStreamMessage(int has, int uMsg, int lParam1, int lParam2) =>
    _acmStreamMessage(has, uMsg, lParam1, lParam2);

late final _acmStreamMessage = _msacm32.lookupFunction<
    Uint32 Function(IntPtr has, Uint32 uMsg, IntPtr lParam1, IntPtr lParam2),
    int Function(
        int has, int uMsg, int lParam1, int lParam2)>('acmStreamMessage');

int acmStreamOpen(
        Pointer<IntPtr> phas,
        int had,
        Pointer<WAVEFORMATEX> pwfxSrc,
        Pointer<WAVEFORMATEX> pwfxDst,
        Pointer<WAVEFILTER> pwfltr,
        int dwCallback,
        int dwInstance,
        int fdwOpen) =>
    _acmStreamOpen(
        phas, had, pwfxSrc, pwfxDst, pwfltr, dwCallback, dwInstance, fdwOpen);

late final _acmStreamOpen = _msacm32.lookupFunction<
    Uint32 Function(
        Pointer<IntPtr> phas,
        IntPtr had,
        Pointer<WAVEFORMATEX> pwfxSrc,
        Pointer<WAVEFORMATEX> pwfxDst,
        Pointer<WAVEFILTER> pwfltr,
        IntPtr dwCallback,
        IntPtr dwInstance,
        Uint32 fdwOpen),
    int Function(
        Pointer<IntPtr> phas,
        int had,
        Pointer<WAVEFORMATEX> pwfxSrc,
        Pointer<WAVEFORMATEX> pwfxDst,
        Pointer<WAVEFILTER> pwfltr,
        int dwCallback,
        int dwInstance,
        int fdwOpen)>('acmStreamOpen');

int acmStreamPrepareHeader(
        int has, Pointer<ACMSTREAMHEADER> pash, int fdwPrepare) =>
    _acmStreamPrepareHeader(has, pash, fdwPrepare);

late final _acmStreamPrepareHeader = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr has, Pointer<ACMSTREAMHEADER> pash, Uint32 fdwPrepare),
    int Function(int has, Pointer<ACMSTREAMHEADER> pash,
        int fdwPrepare)>('acmStreamPrepareHeader');

int acmStreamReset(int has, int fdwReset) => _acmStreamReset(has, fdwReset);

late final _acmStreamReset = _msacm32.lookupFunction<
    Uint32 Function(IntPtr has, Uint32 fdwReset),
    int Function(int has, int fdwReset)>('acmStreamReset');

int acmStreamSize(
        int has, int cbInput, Pointer<Uint32> pdwOutputBytes, int fdwSize) =>
    _acmStreamSize(has, cbInput, pdwOutputBytes, fdwSize);

late final _acmStreamSize = _msacm32.lookupFunction<
    Uint32 Function(IntPtr has, Uint32 cbInput, Pointer<Uint32> pdwOutputBytes,
        Uint32 fdwSize),
    int Function(int has, int cbInput, Pointer<Uint32> pdwOutputBytes,
        int fdwSize)>('acmStreamSize');

int acmStreamUnprepareHeader(
        int has, Pointer<ACMSTREAMHEADER> pash, int fdwUnprepare) =>
    _acmStreamUnprepareHeader(has, pash, fdwUnprepare);

late final _acmStreamUnprepareHeader = _msacm32.lookupFunction<
    Uint32 Function(
        IntPtr has, Pointer<ACMSTREAMHEADER> pash, Uint32 fdwUnprepare),
    int Function(int has, Pointer<ACMSTREAMHEADER> pash,
        int fdwUnprepare)>('acmStreamUnprepareHeader');

// -----------------------------------------------------------------------
// MSVFW32.dll
// -----------------------------------------------------------------------
final _msvfw32 = DynamicLibrary.open('MSVFW32.dll');

int DrawDibBegin(int hdd, int hdc, int dxDst, int dyDst,
        Pointer<BITMAPINFOHEADER> lpbi, int dxSrc, int dySrc, int wFlags) =>
    _DrawDibBegin(hdd, hdc, dxDst, dyDst, lpbi, dxSrc, dySrc, wFlags);

late final _DrawDibBegin = _msvfw32.lookupFunction<
    Int32 Function(
        IntPtr hdd,
        IntPtr hdc,
        Int32 dxDst,
        Int32 dyDst,
        Pointer<BITMAPINFOHEADER> lpbi,
        Int32 dxSrc,
        Int32 dySrc,
        Uint32 wFlags),
    int Function(
        int hdd,
        int hdc,
        int dxDst,
        int dyDst,
        Pointer<BITMAPINFOHEADER> lpbi,
        int dxSrc,
        int dySrc,
        int wFlags)>('DrawDibBegin');

int DrawDibChangePalette(
        int hdd, int iStart, int iLen, Pointer<PALETTEENTRY> lppe) =>
    _DrawDibChangePalette(hdd, iStart, iLen, lppe);

late final _DrawDibChangePalette = _msvfw32.lookupFunction<
    Int32 Function(
        IntPtr hdd, Int32 iStart, Int32 iLen, Pointer<PALETTEENTRY> lppe),
    int Function(int hdd, int iStart, int iLen,
        Pointer<PALETTEENTRY> lppe)>('DrawDibChangePalette');

int DrawDibClose(int hdd) => _DrawDibClose(hdd);

late final _DrawDibClose =
    _msvfw32.lookupFunction<Int32 Function(IntPtr hdd), int Function(int hdd)>(
        'DrawDibClose');

int DrawDibDraw(
        int hdd,
        int hdc,
        int xDst,
        int yDst,
        int dxDst,
        int dyDst,
        Pointer<BITMAPINFOHEADER> lpbi,
        Pointer lpBits,
        int xSrc,
        int ySrc,
        int dxSrc,
        int dySrc,
        int wFlags) =>
    _DrawDibDraw(hdd, hdc, xDst, yDst, dxDst, dyDst, lpbi, lpBits, xSrc, ySrc,
        dxSrc, dySrc, wFlags);

late final _DrawDibDraw = _msvfw32.lookupFunction<
    Int32 Function(
        IntPtr hdd,
        IntPtr hdc,
        Int32 xDst,
        Int32 yDst,
        Int32 dxDst,
        Int32 dyDst,
        Pointer<BITMAPINFOHEADER> lpbi,
        Pointer lpBits,
        Int32 xSrc,
        Int32 ySrc,
        Int32 dxSrc,
        Int32 dySrc,
        Uint32 wFlags),
    int Function(
        int hdd,
        int hdc,
        int xDst,
        int yDst,
        int dxDst,
        int dyDst,
        Pointer<BITMAPINFOHEADER> lpbi,
        Pointer lpBits,
        int xSrc,
        int ySrc,
        int dxSrc,
        int dySrc,
        int wFlags)>('DrawDibDraw');

int DrawDibEnd(int hdd) => _DrawDibEnd(hdd);

late final _DrawDibEnd =
    _msvfw32.lookupFunction<Int32 Function(IntPtr hdd), int Function(int hdd)>(
        'DrawDibEnd');

Pointer DrawDibGetBuffer(
        int hdd, Pointer<BITMAPINFOHEADER> lpbi, int dwSize, int dwFlags) =>
    _DrawDibGetBuffer(hdd, lpbi, dwSize, dwFlags);

late final _DrawDibGetBuffer = _msvfw32.lookupFunction<
    Pointer Function(IntPtr hdd, Pointer<BITMAPINFOHEADER> lpbi, Uint32 dwSize,
        Uint32 dwFlags),
    Pointer Function(int hdd, Pointer<BITMAPINFOHEADER> lpbi, int dwSize,
        int dwFlags)>('DrawDibGetBuffer');

int DrawDibGetPalette(int hdd) => _DrawDibGetPalette(hdd);

late final _DrawDibGetPalette =
    _msvfw32.lookupFunction<IntPtr Function(IntPtr hdd), int Function(int hdd)>(
        'DrawDibGetPalette');

int DrawDibOpen() => _DrawDibOpen();

late final _DrawDibOpen =
    _msvfw32.lookupFunction<IntPtr Function(), int Function()>('DrawDibOpen');

int DrawDibProfileDisplay(Pointer<BITMAPINFOHEADER> lpbi) =>
    _DrawDibProfileDisplay(lpbi);

late final _DrawDibProfileDisplay = _msvfw32.lookupFunction<
    IntPtr Function(Pointer<BITMAPINFOHEADER> lpbi),
    int Function(Pointer<BITMAPINFOHEADER> lpbi)>('DrawDibProfileDisplay');

int DrawDibRealize(int hdd, int hdc, int fBackground) =>
    _DrawDibRealize(hdd, hdc, fBackground);

late final _DrawDibRealize = _msvfw32.lookupFunction<
    Uint32 Function(IntPtr hdd, IntPtr hdc, Int32 fBackground),
    int Function(int hdd, int hdc, int fBackground)>('DrawDibRealize');

int DrawDibSetPalette(int hdd, int hpal) => _DrawDibSetPalette(hdd, hpal);

late final _DrawDibSetPalette = _msvfw32.lookupFunction<
    Int32 Function(IntPtr hdd, IntPtr hpal),
    int Function(int hdd, int hpal)>('DrawDibSetPalette');

int DrawDibStart(int hdd, int rate) => _DrawDibStart(hdd, rate);

late final _DrawDibStart = _msvfw32.lookupFunction<
    Int32 Function(IntPtr hdd, Uint32 rate),
    int Function(int hdd, int rate)>('DrawDibStart');

int DrawDibStop(int hdd) => _DrawDibStop(hdd);

late final _DrawDibStop =
    _msvfw32.lookupFunction<Int32 Function(IntPtr hdd), int Function(int hdd)>(
        'DrawDibStop');

int DrawDibTime(int hdd, Pointer<DRAWDIBTIME> lpddtime) =>
    _DrawDibTime(hdd, lpddtime);

late final _DrawDibTime = _msvfw32.lookupFunction<
    Int32 Function(IntPtr hdd, Pointer<DRAWDIBTIME> lpddtime),
    int Function(int hdd, Pointer<DRAWDIBTIME> lpddtime)>('DrawDibTime');

int GetOpenFileNamePreview(Pointer<OPENFILENAME> lpofn) =>
    _GetOpenFileNamePreview(lpofn);

late final _GetOpenFileNamePreview = _msvfw32.lookupFunction<
    Int32 Function(Pointer<OPENFILENAME> lpofn),
    int Function(Pointer<OPENFILENAME> lpofn)>('GetOpenFileNamePreviewW');

int GetSaveFileNamePreview(Pointer<OPENFILENAME> lpofn) =>
    _GetSaveFileNamePreview(lpofn);

late final _GetSaveFileNamePreview = _msvfw32.lookupFunction<
    Int32 Function(Pointer<OPENFILENAME> lpofn),
    int Function(Pointer<OPENFILENAME> lpofn)>('GetSaveFileNamePreviewW');

int ICClose(int hic) => _ICClose(hic);

late final _ICClose =
    _msvfw32.lookupFunction<IntPtr Function(IntPtr hic), int Function(int hic)>(
        'ICClose');

int ICCompress(
        int hic,
        int dwFlags,
        Pointer<BITMAPINFOHEADER> lpbiOutput,
        Pointer lpData,
        Pointer<BITMAPINFOHEADER> lpbiInput,
        Pointer lpBits,
        Pointer<Uint32> lpckid,
        Pointer<Uint32> lpdwFlags,
        int lFrameNum,
        int dwFrameSize,
        int dwQuality,
        Pointer<BITMAPINFOHEADER> lpbiPrev,
        Pointer lpPrev) =>
    _ICCompress(hic, dwFlags, lpbiOutput, lpData, lpbiInput, lpBits, lpckid,
        lpdwFlags, lFrameNum, dwFrameSize, dwQuality, lpbiPrev, lpPrev);

late final _ICCompress = _msvfw32.lookupFunction<
    Uint32 Function(
        IntPtr hic,
        Uint32 dwFlags,
        Pointer<BITMAPINFOHEADER> lpbiOutput,
        Pointer lpData,
        Pointer<BITMAPINFOHEADER> lpbiInput,
        Pointer lpBits,
        Pointer<Uint32> lpckid,
        Pointer<Uint32> lpdwFlags,
        Int32 lFrameNum,
        Uint32 dwFrameSize,
        Uint32 dwQuality,
        Pointer<BITMAPINFOHEADER> lpbiPrev,
        Pointer lpPrev),
    int Function(
        int hic,
        int dwFlags,
        Pointer<BITMAPINFOHEADER> lpbiOutput,
        Pointer lpData,
        Pointer<BITMAPINFOHEADER> lpbiInput,
        Pointer lpBits,
        Pointer<Uint32> lpckid,
        Pointer<Uint32> lpdwFlags,
        int lFrameNum,
        int dwFrameSize,
        int dwQuality,
        Pointer<BITMAPINFOHEADER> lpbiPrev,
        Pointer lpPrev)>('ICCompress');

int ICCompressorChoose(int hwnd, int uiFlags, Pointer pvIn, Pointer lpData,
        Pointer<COMPVARS> pc, Pointer<Utf8> lpszTitle) =>
    _ICCompressorChoose(hwnd, uiFlags, pvIn, lpData, pc, lpszTitle);

late final _ICCompressorChoose = _msvfw32.lookupFunction<
    Int32 Function(IntPtr hwnd, Uint32 uiFlags, Pointer pvIn, Pointer lpData,
        Pointer<COMPVARS> pc, Pointer<Utf8> lpszTitle),
    int Function(int hwnd, int uiFlags, Pointer pvIn, Pointer lpData,
        Pointer<COMPVARS> pc, Pointer<Utf8> lpszTitle)>('ICCompressorChoose');

void ICCompressorFree(Pointer<COMPVARS> pc) => _ICCompressorFree(pc);

late final _ICCompressorFree = _msvfw32.lookupFunction<
    Void Function(Pointer<COMPVARS> pc),
    void Function(Pointer<COMPVARS> pc)>('ICCompressorFree');

int ICDecompress(int hic, int dwFlags, Pointer<BITMAPINFOHEADER> lpbiFormat,
        Pointer lpData, Pointer<BITMAPINFOHEADER> lpbi, Pointer lpBits) =>
    _ICDecompress(hic, dwFlags, lpbiFormat, lpData, lpbi, lpBits);

late final _ICDecompress = _msvfw32.lookupFunction<
    Uint32 Function(
        IntPtr hic,
        Uint32 dwFlags,
        Pointer<BITMAPINFOHEADER> lpbiFormat,
        Pointer lpData,
        Pointer<BITMAPINFOHEADER> lpbi,
        Pointer lpBits),
    int Function(
        int hic,
        int dwFlags,
        Pointer<BITMAPINFOHEADER> lpbiFormat,
        Pointer lpData,
        Pointer<BITMAPINFOHEADER> lpbi,
        Pointer lpBits)>('ICDecompress');

int ICDraw(int hic, int dwFlags, Pointer lpFormat, Pointer lpData, int cbData,
        int lTime) =>
    _ICDraw(hic, dwFlags, lpFormat, lpData, cbData, lTime);

late final _ICDraw = _msvfw32.lookupFunction<
    Uint32 Function(IntPtr hic, Uint32 dwFlags, Pointer lpFormat,
        Pointer lpData, Uint32 cbData, Int32 lTime),
    int Function(int hic, int dwFlags, Pointer lpFormat, Pointer lpData,
        int cbData, int lTime)>('ICDraw');

int ICDrawBegin(
        int hic,
        int dwFlags,
        int hpal,
        int hwnd,
        int hdc,
        int xDst,
        int yDst,
        int dxDst,
        int dyDst,
        Pointer<BITMAPINFOHEADER> lpbi,
        int xSrc,
        int ySrc,
        int dxSrc,
        int dySrc,
        int dwRate,
        int dwScale) =>
    _ICDrawBegin(hic, dwFlags, hpal, hwnd, hdc, xDst, yDst, dxDst, dyDst, lpbi,
        xSrc, ySrc, dxSrc, dySrc, dwRate, dwScale);

late final _ICDrawBegin = _msvfw32.lookupFunction<
    Uint32 Function(
        IntPtr hic,
        Uint32 dwFlags,
        IntPtr hpal,
        IntPtr hwnd,
        IntPtr hdc,
        Int32 xDst,
        Int32 yDst,
        Int32 dxDst,
        Int32 dyDst,
        Pointer<BITMAPINFOHEADER> lpbi,
        Int32 xSrc,
        Int32 ySrc,
        Int32 dxSrc,
        Int32 dySrc,
        Uint32 dwRate,
        Uint32 dwScale),
    int Function(
        int hic,
        int dwFlags,
        int hpal,
        int hwnd,
        int hdc,
        int xDst,
        int yDst,
        int dxDst,
        int dyDst,
        Pointer<BITMAPINFOHEADER> lpbi,
        int xSrc,
        int ySrc,
        int dxSrc,
        int dySrc,
        int dwRate,
        int dwScale)>('ICDrawBegin');

int ICGetDisplayFormat(int hic, Pointer<BITMAPINFOHEADER> lpbiIn,
        Pointer<BITMAPINFOHEADER> lpbiOut, int BitDepth, int dx, int dy) =>
    _ICGetDisplayFormat(hic, lpbiIn, lpbiOut, BitDepth, dx, dy);

late final _ICGetDisplayFormat = _msvfw32.lookupFunction<
    IntPtr Function(IntPtr hic, Pointer<BITMAPINFOHEADER> lpbiIn,
        Pointer<BITMAPINFOHEADER> lpbiOut, Int32 BitDepth, Int32 dx, Int32 dy),
    int Function(
        int hic,
        Pointer<BITMAPINFOHEADER> lpbiIn,
        Pointer<BITMAPINFOHEADER> lpbiOut,
        int BitDepth,
        int dx,
        int dy)>('ICGetDisplayFormat');

int ICGetInfo(int hic, Pointer<ICINFO> picinfo, int cb) =>
    _ICGetInfo(hic, picinfo, cb);

late final _ICGetInfo = _msvfw32.lookupFunction<
    IntPtr Function(IntPtr hic, Pointer<ICINFO> picinfo, Uint32 cb),
    int Function(int hic, Pointer<ICINFO> picinfo, int cb)>('ICGetInfo');

int ICImageCompress(
        int hic,
        int uiFlags,
        Pointer<BITMAPINFO> lpbiIn,
        Pointer lpBits,
        Pointer<BITMAPINFO> lpbiOut,
        int lQuality,
        Pointer<Int32> plSize) =>
    _ICImageCompress(hic, uiFlags, lpbiIn, lpBits, lpbiOut, lQuality, plSize);

late final _ICImageCompress = _msvfw32.lookupFunction<
    IntPtr Function(
        IntPtr hic,
        Uint32 uiFlags,
        Pointer<BITMAPINFO> lpbiIn,
        Pointer lpBits,
        Pointer<BITMAPINFO> lpbiOut,
        Int32 lQuality,
        Pointer<Int32> plSize),
    int Function(
        int hic,
        int uiFlags,
        Pointer<BITMAPINFO> lpbiIn,
        Pointer lpBits,
        Pointer<BITMAPINFO> lpbiOut,
        int lQuality,
        Pointer<Int32> plSize)>('ICImageCompress');

int ICImageDecompress(int hic, int uiFlags, Pointer<BITMAPINFO> lpbiIn,
        Pointer lpBits, Pointer<BITMAPINFO> lpbiOut) =>
    _ICImageDecompress(hic, uiFlags, lpbiIn, lpBits, lpbiOut);

late final _ICImageDecompress = _msvfw32.lookupFunction<
    IntPtr Function(IntPtr hic, Uint32 uiFlags, Pointer<BITMAPINFO> lpbiIn,
        Pointer lpBits, Pointer<BITMAPINFO> lpbiOut),
    int Function(int hic, int uiFlags, Pointer<BITMAPINFO> lpbiIn,
        Pointer lpBits, Pointer<BITMAPINFO> lpbiOut)>('ICImageDecompress');

int ICInfo(int fccType, int fccHandler, Pointer<ICINFO> lpicinfo) =>
    _ICInfo(fccType, fccHandler, lpicinfo);

late final _ICInfo = _msvfw32.lookupFunction<
    Int32 Function(Uint32 fccType, Uint32 fccHandler, Pointer<ICINFO> lpicinfo),
    int Function(
        int fccType, int fccHandler, Pointer<ICINFO> lpicinfo)>('ICInfo');

int ICInstall(int fccType, int fccHandler, int lParam, Pointer<Utf8> szDesc,
        int wFlags) =>
    _ICInstall(fccType, fccHandler, lParam, szDesc, wFlags);

late final _ICInstall = _msvfw32.lookupFunction<
    Int32 Function(Uint32 fccType, Uint32 fccHandler, IntPtr lParam,
        Pointer<Utf8> szDesc, Uint32 wFlags),
    int Function(int fccType, int fccHandler, int lParam, Pointer<Utf8> szDesc,
        int wFlags)>('ICInstall');

int ICLocate(int fccType, int fccHandler, Pointer<BITMAPINFOHEADER> lpbiIn,
        Pointer<BITMAPINFOHEADER> lpbiOut, int wFlags) =>
    _ICLocate(fccType, fccHandler, lpbiIn, lpbiOut, wFlags);

late final _ICLocate = _msvfw32.lookupFunction<
    IntPtr Function(
        Uint32 fccType,
        Uint32 fccHandler,
        Pointer<BITMAPINFOHEADER> lpbiIn,
        Pointer<BITMAPINFOHEADER> lpbiOut,
        Uint16 wFlags),
    int Function(int fccType, int fccHandler, Pointer<BITMAPINFOHEADER> lpbiIn,
        Pointer<BITMAPINFOHEADER> lpbiOut, int wFlags)>('ICLocate');

int ICOpen(int fccType, int fccHandler, int wMode) =>
    _ICOpen(fccType, fccHandler, wMode);

late final _ICOpen = _msvfw32.lookupFunction<
    IntPtr Function(Uint32 fccType, Uint32 fccHandler, Uint32 wMode),
    int Function(int fccType, int fccHandler, int wMode)>('ICOpen');

int ICOpenFunction(int fccType, int fccHandler, int wMode,
        Pointer<NativeFunction<FARPROC>> lpfnHandler) =>
    _ICOpenFunction(fccType, fccHandler, wMode, lpfnHandler);

late final _ICOpenFunction = _msvfw32.lookupFunction<
    IntPtr Function(Uint32 fccType, Uint32 fccHandler, Uint32 wMode,
        Pointer<NativeFunction<FARPROC>> lpfnHandler),
    int Function(int fccType, int fccHandler, int wMode,
        Pointer<NativeFunction<FARPROC>> lpfnHandler)>('ICOpenFunction');

int ICRemove(int fccType, int fccHandler, int wFlags) =>
    _ICRemove(fccType, fccHandler, wFlags);

late final _ICRemove = _msvfw32.lookupFunction<
    Int32 Function(Uint32 fccType, Uint32 fccHandler, Uint32 wFlags),
    int Function(int fccType, int fccHandler, int wFlags)>('ICRemove');

int ICSendMessage(int hic, int msg, int dw1, int dw2) =>
    _ICSendMessage(hic, msg, dw1, dw2);

late final _ICSendMessage = _msvfw32.lookupFunction<
    IntPtr Function(IntPtr hic, Uint32 msg, IntPtr dw1, IntPtr dw2),
    int Function(int hic, int msg, int dw1, int dw2)>('ICSendMessage');

Pointer ICSeqCompressFrame(Pointer<COMPVARS> pc, int uiFlags, Pointer lpBits,
        Pointer<Int32> pfKey, Pointer<Int32> plSize) =>
    _ICSeqCompressFrame(pc, uiFlags, lpBits, pfKey, plSize);

late final _ICSeqCompressFrame = _msvfw32.lookupFunction<
    Pointer Function(Pointer<COMPVARS> pc, Uint32 uiFlags, Pointer lpBits,
        Pointer<Int32> pfKey, Pointer<Int32> plSize),
    Pointer Function(Pointer<COMPVARS> pc, int uiFlags, Pointer lpBits,
        Pointer<Int32> pfKey, Pointer<Int32> plSize)>('ICSeqCompressFrame');

void ICSeqCompressFrameEnd(Pointer<COMPVARS> pc) => _ICSeqCompressFrameEnd(pc);

late final _ICSeqCompressFrameEnd = _msvfw32.lookupFunction<
    Void Function(Pointer<COMPVARS> pc),
    void Function(Pointer<COMPVARS> pc)>('ICSeqCompressFrameEnd');

int ICSeqCompressFrameStart(Pointer<COMPVARS> pc, Pointer<BITMAPINFO> lpbiIn) =>
    _ICSeqCompressFrameStart(pc, lpbiIn);

late final _ICSeqCompressFrameStart = _msvfw32.lookupFunction<
    Int32 Function(Pointer<COMPVARS> pc, Pointer<BITMAPINFO> lpbiIn),
    int Function(Pointer<COMPVARS> pc,
        Pointer<BITMAPINFO> lpbiIn)>('ICSeqCompressFrameStart');

int MCIWndCreate(
        int hwndParent, int hInstance, int dwStyle, Pointer<Utf16> szFile) =>
    _MCIWndCreate(hwndParent, hInstance, dwStyle, szFile);

late final _MCIWndCreate = _msvfw32.lookupFunction<
    IntPtr Function(IntPtr hwndParent, IntPtr hInstance, Uint32 dwStyle,
        Pointer<Utf16> szFile),
    int Function(int hwndParent, int hInstance, int dwStyle,
        Pointer<Utf16> szFile)>('MCIWndCreateW');

int MCIWndRegisterClass() => _MCIWndRegisterClass();

late final _MCIWndRegisterClass = _msvfw32
    .lookupFunction<Int32 Function(), int Function()>('MCIWndRegisterClass');

int VideoForWindowsVersion() => _VideoForWindowsVersion();

late final _VideoForWindowsVersion =
    _msvfw32.lookupFunction<Uint32 Function(), int Function()>(
        'VideoForWindowsVersion');

// -----------------------------------------------------------------------
// AVIFIL32.dll
// -----------------------------------------------------------------------
final _avifil32 = DynamicLibrary.open('AVIFIL32.dll');

int AVIBuildFilter(Pointer<Utf16> lpszFilter, int cbFilter, int fSaving) =>
    _AVIBuildFilter(lpszFilter, cbFilter, fSaving);

late final _AVIBuildFilter = _avifil32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpszFilter, Int32 cbFilter, Int32 fSaving),
    int Function(Pointer<Utf16> lpszFilter, int cbFilter,
        int fSaving)>('AVIBuildFilterW');

int AVIClearClipboard() => _AVIClearClipboard();

late final _AVIClearClipboard = _avifil32
    .lookupFunction<Int32 Function(), int Function()>('AVIClearClipboard');

int AVIFileAddRef(COMObject pfile) => _AVIFileAddRef(pfile);

late final _AVIFileAddRef = _avifil32.lookupFunction<
    Uint32 Function(COMObject pfile),
    int Function(COMObject pfile)>('AVIFileAddRef');

int AVIFileCreateStream(COMObject pfile, Pointer<COMObject> ppavi,
        Pointer<AVISTREAMINFO> psi) =>
    _AVIFileCreateStream(pfile, ppavi, psi);

late final _AVIFileCreateStream = _avifil32.lookupFunction<
    Int32 Function(
        COMObject pfile, Pointer<COMObject> ppavi, Pointer<AVISTREAMINFO> psi),
    int Function(COMObject pfile, Pointer<COMObject> ppavi,
        Pointer<AVISTREAMINFO> psi)>('AVIFileCreateStreamW');

int AVIFileEndRecord(COMObject pfile) => _AVIFileEndRecord(pfile);

late final _AVIFileEndRecord = _avifil32.lookupFunction<
    Int32 Function(COMObject pfile),
    int Function(COMObject pfile)>('AVIFileEndRecord');

void AVIFileExit() => _AVIFileExit();

late final _AVIFileExit =
    _avifil32.lookupFunction<Void Function(), void Function()>('AVIFileExit');

int AVIFileGetStream(
        COMObject pfile, Pointer<COMObject> ppavi, int fccType, int lParam) =>
    _AVIFileGetStream(pfile, ppavi, fccType, lParam);

late final _AVIFileGetStream = _avifil32.lookupFunction<
    Int32 Function(COMObject pfile, Pointer<COMObject> ppavi, Uint32 fccType,
        Int32 lParam),
    int Function(COMObject pfile, Pointer<COMObject> ppavi, int fccType,
        int lParam)>('AVIFileGetStream');

int AVIFileInfo(COMObject pfile, Pointer<AVIFILEINFO> pfi, int lSize) =>
    _AVIFileInfo(pfile, pfi, lSize);

late final _AVIFileInfo = _avifil32.lookupFunction<
    Int32 Function(COMObject pfile, Pointer<AVIFILEINFO> pfi, Int32 lSize),
    int Function(
        COMObject pfile, Pointer<AVIFILEINFO> pfi, int lSize)>('AVIFileInfoW');

void AVIFileInit() => _AVIFileInit();

late final _AVIFileInit =
    _avifil32.lookupFunction<Void Function(), void Function()>('AVIFileInit');

int AVIFileOpen(Pointer<COMObject> ppfile, Pointer<Utf16> szFile, int uMode,
        Pointer<GUID> lpHandler) =>
    _AVIFileOpen(ppfile, szFile, uMode, lpHandler);

late final _AVIFileOpen = _avifil32.lookupFunction<
    Int32 Function(Pointer<COMObject> ppfile, Pointer<Utf16> szFile,
        Uint32 uMode, Pointer<GUID> lpHandler),
    int Function(Pointer<COMObject> ppfile, Pointer<Utf16> szFile, int uMode,
        Pointer<GUID> lpHandler)>('AVIFileOpenW');

int AVIFileReadData(
        COMObject pfile, int ckid, Pointer lpData, Pointer<Int32> lpcbData) =>
    _AVIFileReadData(pfile, ckid, lpData, lpcbData);

late final _AVIFileReadData = _avifil32.lookupFunction<
    Int32 Function(
        COMObject pfile, Uint32 ckid, Pointer lpData, Pointer<Int32> lpcbData),
    int Function(COMObject pfile, int ckid, Pointer lpData,
        Pointer<Int32> lpcbData)>('AVIFileReadData');

int AVIFileRelease(COMObject pfile) => _AVIFileRelease(pfile);

late final _AVIFileRelease = _avifil32.lookupFunction<
    Uint32 Function(COMObject pfile),
    int Function(COMObject pfile)>('AVIFileRelease');

int AVIFileWriteData(COMObject pfile, int ckid, Pointer lpData, int cbData) =>
    _AVIFileWriteData(pfile, ckid, lpData, cbData);

late final _AVIFileWriteData = _avifil32.lookupFunction<
    Int32 Function(COMObject pfile, Uint32 ckid, Pointer lpData, Int32 cbData),
    int Function(COMObject pfile, int ckid, Pointer lpData,
        int cbData)>('AVIFileWriteData');

int AVIGetFromClipboard(Pointer<COMObject> lppf) => _AVIGetFromClipboard(lppf);

late final _AVIGetFromClipboard = _avifil32.lookupFunction<
    Int32 Function(Pointer<COMObject> lppf),
    int Function(Pointer<COMObject> lppf)>('AVIGetFromClipboard');

int AVIMakeCompressedStream(
        Pointer<COMObject> ppsCompressed,
        COMObject ppsSource,
        Pointer<AVICOMPRESSOPTIONS> lpOptions,
        Pointer<GUID> pclsidHandler) =>
    _AVIMakeCompressedStream(
        ppsCompressed, ppsSource, lpOptions, pclsidHandler);

late final _AVIMakeCompressedStream = _avifil32.lookupFunction<
    Int32 Function(Pointer<COMObject> ppsCompressed, COMObject ppsSource,
        Pointer<AVICOMPRESSOPTIONS> lpOptions, Pointer<GUID> pclsidHandler),
    int Function(
        Pointer<COMObject> ppsCompressed,
        COMObject ppsSource,
        Pointer<AVICOMPRESSOPTIONS> lpOptions,
        Pointer<GUID> pclsidHandler)>('AVIMakeCompressedStream');

int AVIMakeFileFromStreams(Pointer<COMObject> ppfile, int nStreams,
        Pointer<COMObject> papStreams) =>
    _AVIMakeFileFromStreams(ppfile, nStreams, papStreams);

late final _AVIMakeFileFromStreams = _avifil32.lookupFunction<
    Int32 Function(Pointer<COMObject> ppfile, Int32 nStreams,
        Pointer<COMObject> papStreams),
    int Function(Pointer<COMObject> ppfile, int nStreams,
        Pointer<COMObject> papStreams)>('AVIMakeFileFromStreams');

int AVIMakeStreamFromClipboard(
        int cfFormat, int hGlobal, Pointer<COMObject> ppstream) =>
    _AVIMakeStreamFromClipboard(cfFormat, hGlobal, ppstream);

late final _AVIMakeStreamFromClipboard = _avifil32.lookupFunction<
    Int32 Function(
        Uint32 cfFormat, IntPtr hGlobal, Pointer<COMObject> ppstream),
    int Function(int cfFormat, int hGlobal,
        Pointer<COMObject> ppstream)>('AVIMakeStreamFromClipboard');

int AVIPutFileOnClipboard(COMObject pf) => _AVIPutFileOnClipboard(pf);

late final _AVIPutFileOnClipboard = _avifil32.lookupFunction<
    Int32 Function(COMObject pf),
    int Function(COMObject pf)>('AVIPutFileOnClipboard');

int AVISaveOptions(
        int hwnd,
        int uiFlags,
        int nStreams,
        Pointer<COMObject> ppavi,
        Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions) =>
    _AVISaveOptions(hwnd, uiFlags, nStreams, ppavi, plpOptions);

late final _AVISaveOptions = _avifil32.lookupFunction<
    IntPtr Function(
        IntPtr hwnd,
        Uint32 uiFlags,
        Int32 nStreams,
        Pointer<COMObject> ppavi,
        Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions),
    int Function(int hwnd, int uiFlags, int nStreams, Pointer<COMObject> ppavi,
        Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions)>('AVISaveOptions');

int AVISaveOptionsFree(
        int nStreams, Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions) =>
    _AVISaveOptionsFree(nStreams, plpOptions);

late final _AVISaveOptionsFree = _avifil32.lookupFunction<
    Int32 Function(
        Int32 nStreams, Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions),
    int Function(int nStreams,
        Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions)>('AVISaveOptionsFree');

int AVISaveV(
        Pointer<Utf16> szFile,
        Pointer<GUID> pclsidHandler,
        Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
        int nStreams,
        Pointer<COMObject> ppavi,
        Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions) =>
    _AVISaveV(szFile, pclsidHandler, lpfnCallback, nStreams, ppavi, plpOptions);

late final _AVISaveV = _avifil32.lookupFunction<
    Int32 Function(
        Pointer<Utf16> szFile,
        Pointer<GUID> pclsidHandler,
        Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
        Int32 nStreams,
        Pointer<COMObject> ppavi,
        Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions),
    int Function(
        Pointer<Utf16> szFile,
        Pointer<GUID> pclsidHandler,
        Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
        int nStreams,
        Pointer<COMObject> ppavi,
        Pointer<Pointer<AVICOMPRESSOPTIONS>> plpOptions)>('AVISaveVW');

int AVISave(
        Pointer<Utf16> szFile,
        Pointer<GUID> pclsidHandler,
        Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
        int nStreams,
        COMObject pfile,
        Pointer<AVICOMPRESSOPTIONS> lpOptions) =>
    _AVISave(szFile, pclsidHandler, lpfnCallback, nStreams, pfile, lpOptions);

late final _AVISave = _avifil32.lookupFunction<
    Int32 Function(
        Pointer<Utf16> szFile,
        Pointer<GUID> pclsidHandler,
        Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
        Int32 nStreams,
        COMObject pfile,
        Pointer<AVICOMPRESSOPTIONS> lpOptions),
    int Function(
        Pointer<Utf16> szFile,
        Pointer<GUID> pclsidHandler,
        Pointer<NativeFunction<AVISAVECALLBACK>> lpfnCallback,
        int nStreams,
        COMObject pfile,
        Pointer<AVICOMPRESSOPTIONS> lpOptions)>('AVISaveW');

int AVIStreamAddRef(COMObject pavi) => _AVIStreamAddRef(pavi);

late final _AVIStreamAddRef = _avifil32.lookupFunction<
    Uint32 Function(COMObject pavi),
    int Function(COMObject pavi)>('AVIStreamAddRef');

int AVIStreamBeginStreaming(COMObject pavi, int lStart, int lEnd, int lRate) =>
    _AVIStreamBeginStreaming(pavi, lStart, lEnd, lRate);

late final _AVIStreamBeginStreaming = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Int32 lStart, Int32 lEnd, Int32 lRate),
    int Function(COMObject pavi, int lStart, int lEnd,
        int lRate)>('AVIStreamBeginStreaming');

int AVIStreamCreate(Pointer<COMObject> ppavi, int lParam1, int lParam2,
        Pointer<GUID> pclsidHandler) =>
    _AVIStreamCreate(ppavi, lParam1, lParam2, pclsidHandler);

late final _AVIStreamCreate = _avifil32.lookupFunction<
    Int32 Function(Pointer<COMObject> ppavi, Int32 lParam1, Int32 lParam2,
        Pointer<GUID> pclsidHandler),
    int Function(Pointer<COMObject> ppavi, int lParam1, int lParam2,
        Pointer<GUID> pclsidHandler)>('AVIStreamCreate');

int AVIStreamEndStreaming(COMObject pavi) => _AVIStreamEndStreaming(pavi);

late final _AVIStreamEndStreaming = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi),
    int Function(COMObject pavi)>('AVIStreamEndStreaming');

int AVIStreamFindSample(COMObject pavi, int lPos, int lFlags) =>
    _AVIStreamFindSample(pavi, lPos, lFlags);

late final _AVIStreamFindSample = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Int32 lPos, Int32 lFlags),
    int Function(COMObject pavi, int lPos, int lFlags)>('AVIStreamFindSample');

Pointer AVIStreamGetFrame(COMObject pg, int lPos) =>
    _AVIStreamGetFrame(pg, lPos);

late final _AVIStreamGetFrame = _avifil32.lookupFunction<
    Pointer Function(COMObject pg, Int32 lPos),
    Pointer Function(COMObject pg, int lPos)>('AVIStreamGetFrame');

int AVIStreamGetFrameClose(COMObject pg) => _AVIStreamGetFrameClose(pg);

late final _AVIStreamGetFrameClose = _avifil32.lookupFunction<
    Int32 Function(COMObject pg),
    int Function(COMObject pg)>('AVIStreamGetFrameClose');

COMObject AVIStreamGetFrameOpen(
        COMObject pavi, Pointer<BITMAPINFOHEADER> lpbiWanted) =>
    _AVIStreamGetFrameOpen(pavi, lpbiWanted);

late final _AVIStreamGetFrameOpen = _avifil32.lookupFunction<
    COMObject Function(COMObject pavi, Pointer<BITMAPINFOHEADER> lpbiWanted),
    COMObject Function(COMObject pavi,
        Pointer<BITMAPINFOHEADER> lpbiWanted)>('AVIStreamGetFrameOpen');

int AVIStreamInfo(COMObject pavi, Pointer<AVISTREAMINFO> psi, int lSize) =>
    _AVIStreamInfo(pavi, psi, lSize);

late final _AVIStreamInfo = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Pointer<AVISTREAMINFO> psi, Int32 lSize),
    int Function(COMObject pavi, Pointer<AVISTREAMINFO> psi,
        int lSize)>('AVIStreamInfoW');

int AVIStreamLength(COMObject pavi) => _AVIStreamLength(pavi);

late final _AVIStreamLength = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi),
    int Function(COMObject pavi)>('AVIStreamLength');

int AVIStreamOpenFromFile(Pointer<COMObject> ppavi, Pointer<Utf16> szFile,
        int fccType, int lParam, int mode, Pointer<GUID> pclsidHandler) =>
    _AVIStreamOpenFromFile(ppavi, szFile, fccType, lParam, mode, pclsidHandler);

late final _AVIStreamOpenFromFile = _avifil32.lookupFunction<
    Int32 Function(Pointer<COMObject> ppavi, Pointer<Utf16> szFile,
        Uint32 fccType, Int32 lParam, Uint32 mode, Pointer<GUID> pclsidHandler),
    int Function(
        Pointer<COMObject> ppavi,
        Pointer<Utf16> szFile,
        int fccType,
        int lParam,
        int mode,
        Pointer<GUID> pclsidHandler)>('AVIStreamOpenFromFileW');

int AVIStreamRead(COMObject pavi, int lStart, int lSamples, Pointer lpBuffer,
        int cbBuffer, Pointer<Int32> plBytes, Pointer<Int32> plSamples) =>
    _AVIStreamRead(
        pavi, lStart, lSamples, lpBuffer, cbBuffer, plBytes, plSamples);

late final _AVIStreamRead = _avifil32.lookupFunction<
    Int32 Function(
        COMObject pavi,
        Int32 lStart,
        Int32 lSamples,
        Pointer lpBuffer,
        Int32 cbBuffer,
        Pointer<Int32> plBytes,
        Pointer<Int32> plSamples),
    int Function(
        COMObject pavi,
        int lStart,
        int lSamples,
        Pointer lpBuffer,
        int cbBuffer,
        Pointer<Int32> plBytes,
        Pointer<Int32> plSamples)>('AVIStreamRead');

int AVIStreamReadData(
        COMObject pavi, int fcc, Pointer lp, Pointer<Int32> lpcb) =>
    _AVIStreamReadData(pavi, fcc, lp, lpcb);

late final _AVIStreamReadData = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Uint32 fcc, Pointer lp, Pointer<Int32> lpcb),
    int Function(COMObject pavi, int fcc, Pointer lp,
        Pointer<Int32> lpcb)>('AVIStreamReadData');

int AVIStreamReadFormat(COMObject pavi, int lPos, Pointer lpFormat,
        Pointer<Int32> lpcbFormat) =>
    _AVIStreamReadFormat(pavi, lPos, lpFormat, lpcbFormat);

late final _AVIStreamReadFormat = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Int32 lPos, Pointer lpFormat,
        Pointer<Int32> lpcbFormat),
    int Function(COMObject pavi, int lPos, Pointer lpFormat,
        Pointer<Int32> lpcbFormat)>('AVIStreamReadFormat');

int AVIStreamRelease(COMObject pavi) => _AVIStreamRelease(pavi);

late final _AVIStreamRelease = _avifil32.lookupFunction<
    Uint32 Function(COMObject pavi),
    int Function(COMObject pavi)>('AVIStreamRelease');

int AVIStreamSampleToTime(COMObject pavi, int lSample) =>
    _AVIStreamSampleToTime(pavi, lSample);

late final _AVIStreamSampleToTime = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Int32 lSample),
    int Function(COMObject pavi, int lSample)>('AVIStreamSampleToTime');

int AVIStreamSetFormat(
        COMObject pavi, int lPos, Pointer lpFormat, int cbFormat) =>
    _AVIStreamSetFormat(pavi, lPos, lpFormat, cbFormat);

late final _AVIStreamSetFormat = _avifil32.lookupFunction<
    Int32 Function(
        COMObject pavi, Int32 lPos, Pointer lpFormat, Int32 cbFormat),
    int Function(COMObject pavi, int lPos, Pointer lpFormat,
        int cbFormat)>('AVIStreamSetFormat');

int AVIStreamStart(COMObject pavi) => _AVIStreamStart(pavi);

late final _AVIStreamStart = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi),
    int Function(COMObject pavi)>('AVIStreamStart');

int AVIStreamTimeToSample(COMObject pavi, int lTime) =>
    _AVIStreamTimeToSample(pavi, lTime);

late final _AVIStreamTimeToSample = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Int32 lTime),
    int Function(COMObject pavi, int lTime)>('AVIStreamTimeToSample');

int AVIStreamWrite(
        COMObject pavi,
        int lStart,
        int lSamples,
        Pointer lpBuffer,
        int cbBuffer,
        int dwFlags,
        Pointer<Int32> plSampWritten,
        Pointer<Int32> plBytesWritten) =>
    _AVIStreamWrite(pavi, lStart, lSamples, lpBuffer, cbBuffer, dwFlags,
        plSampWritten, plBytesWritten);

late final _AVIStreamWrite = _avifil32.lookupFunction<
    Int32 Function(
        COMObject pavi,
        Int32 lStart,
        Int32 lSamples,
        Pointer lpBuffer,
        Int32 cbBuffer,
        Uint32 dwFlags,
        Pointer<Int32> plSampWritten,
        Pointer<Int32> plBytesWritten),
    int Function(
        COMObject pavi,
        int lStart,
        int lSamples,
        Pointer lpBuffer,
        int cbBuffer,
        int dwFlags,
        Pointer<Int32> plSampWritten,
        Pointer<Int32> plBytesWritten)>('AVIStreamWrite');

int AVIStreamWriteData(COMObject pavi, int fcc, Pointer lp, int cb) =>
    _AVIStreamWriteData(pavi, fcc, lp, cb);

late final _AVIStreamWriteData = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Uint32 fcc, Pointer lp, Int32 cb),
    int Function(
        COMObject pavi, int fcc, Pointer lp, int cb)>('AVIStreamWriteData');

int CreateEditableStream(Pointer<COMObject> ppsEditable, COMObject psSource) =>
    _CreateEditableStream(ppsEditable, psSource);

late final _CreateEditableStream = _avifil32.lookupFunction<
    Int32 Function(Pointer<COMObject> ppsEditable, COMObject psSource),
    int Function(Pointer<COMObject> ppsEditable,
        COMObject psSource)>('CreateEditableStream');

int EditStreamClone(COMObject pavi, Pointer<COMObject> ppResult) =>
    _EditStreamClone(pavi, ppResult);

late final _EditStreamClone = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Pointer<COMObject> ppResult),
    int Function(
        COMObject pavi, Pointer<COMObject> ppResult)>('EditStreamClone');

int EditStreamCopy(COMObject pavi, Pointer<Int32> plStart,
        Pointer<Int32> plLength, Pointer<COMObject> ppResult) =>
    _EditStreamCopy(pavi, plStart, plLength, ppResult);

late final _EditStreamCopy = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Pointer<Int32> plStart,
        Pointer<Int32> plLength, Pointer<COMObject> ppResult),
    int Function(
        COMObject pavi,
        Pointer<Int32> plStart,
        Pointer<Int32> plLength,
        Pointer<COMObject> ppResult)>('EditStreamCopy');

int EditStreamCut(COMObject pavi, Pointer<Int32> plStart,
        Pointer<Int32> plLength, Pointer<COMObject> ppResult) =>
    _EditStreamCut(pavi, plStart, plLength, ppResult);

late final _EditStreamCut = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Pointer<Int32> plStart,
        Pointer<Int32> plLength, Pointer<COMObject> ppResult),
    int Function(COMObject pavi, Pointer<Int32> plStart,
        Pointer<Int32> plLength, Pointer<COMObject> ppResult)>('EditStreamCut');

int EditStreamPaste(COMObject pavi, Pointer<Int32> plPos,
        Pointer<Int32> plLength, COMObject pstream, int lStart, int lEnd) =>
    _EditStreamPaste(pavi, plPos, plLength, pstream, lStart, lEnd);

late final _EditStreamPaste = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Pointer<Int32> plPos,
        Pointer<Int32> plLength, COMObject pstream, Int32 lStart, Int32 lEnd),
    int Function(COMObject pavi, Pointer<Int32> plPos, Pointer<Int32> plLength,
        COMObject pstream, int lStart, int lEnd)>('EditStreamPaste');

int EditStreamSetInfo(
        COMObject pavi, Pointer<AVISTREAMINFO> lpInfo, int cbInfo) =>
    _EditStreamSetInfo(pavi, lpInfo, cbInfo);

late final _EditStreamSetInfo = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Pointer<AVISTREAMINFO> lpInfo, Int32 cbInfo),
    int Function(COMObject pavi, Pointer<AVISTREAMINFO> lpInfo,
        int cbInfo)>('EditStreamSetInfoW');

int EditStreamSetName(COMObject pavi, Pointer<Utf16> lpszName) =>
    _EditStreamSetName(pavi, lpszName);

late final _EditStreamSetName = _avifil32.lookupFunction<
    Int32 Function(COMObject pavi, Pointer<Utf16> lpszName),
    int Function(
        COMObject pavi, Pointer<Utf16> lpszName)>('EditStreamSetNameW');

// -----------------------------------------------------------------------
// AVICAP32.dll
// -----------------------------------------------------------------------
final _avicap32 = DynamicLibrary.open('AVICAP32.dll');

int capCreateCaptureWindow(Pointer<Utf16> lpszWindowName, int dwStyle, int x,
        int y, int nWidth, int nHeight, int hwndParent, int nID) =>
    _capCreateCaptureWindow(
        lpszWindowName, dwStyle, x, y, nWidth, nHeight, hwndParent, nID);

late final _capCreateCaptureWindow = _avicap32.lookupFunction<
    IntPtr Function(Pointer<Utf16> lpszWindowName, Uint32 dwStyle, Int32 x,
        Int32 y, Int32 nWidth, Int32 nHeight, IntPtr hwndParent, Int32 nID),
    int Function(
        Pointer<Utf16> lpszWindowName,
        int dwStyle,
        int x,
        int y,
        int nWidth,
        int nHeight,
        int hwndParent,
        int nID)>('capCreateCaptureWindowW');

int capGetDriverDescription(int wDriverIndex, Pointer<Utf16> lpszName,
        int cbName, Pointer<Utf16> lpszVer, int cbVer) =>
    _capGetDriverDescription(wDriverIndex, lpszName, cbName, lpszVer, cbVer);

late final _capGetDriverDescription = _avicap32.lookupFunction<
    Int32 Function(Uint32 wDriverIndex, Pointer<Utf16> lpszName, Int32 cbName,
        Pointer<Utf16> lpszVer, Int32 cbVer),
    int Function(int wDriverIndex, Pointer<Utf16> lpszName, int cbName,
        Pointer<Utf16> lpszVer, int cbVer)>('capGetDriverDescriptionW');
