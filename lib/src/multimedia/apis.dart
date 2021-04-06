// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import 'enums.dart';
import 'structs.dart';

final _winmm = DynamicLibrary.open('WINMM.dll');

int CloseDriver(int hDriver, int lParam1, int lParam2) {
  final _CloseDriver = _winmm.lookupFunction<
      IntPtr Function(IntPtr hDriver, IntPtr lParam1, IntPtr lParam2),
      int Function(int hDriver, int lParam1, int lParam2)>('CloseDriver');
  return _CloseDriver(hDriver, lParam1, lParam2);
}

int DefDriverProc(
    int dwDriverIdentifier, int hdrvr, int uMsg, int lParam1, int lParam2) {
  final _DefDriverProc = _winmm.lookupFunction<
      IntPtr Function(IntPtr dwDriverIdentifier, IntPtr hdrvr, Uint32 uMsg,
          IntPtr lParam1, IntPtr lParam2),
      int Function(int dwDriverIdentifier, int hdrvr, int uMsg, int lParam1,
          int lParam2)>('DefDriverProc');
  return _DefDriverProc(dwDriverIdentifier, hdrvr, uMsg, lParam1, lParam2);
}

int DriverCallback(int dwCallback, int dwFlags, int hDevice, int dwMsg,
    int dwUser, int dwParam1, int dwParam2) {
  final _DriverCallback = _winmm.lookupFunction<
      Int32 Function(IntPtr dwCallback, Uint32 dwFlags, IntPtr hDevice,
          Uint32 dwMsg, IntPtr dwUser, IntPtr dwParam1, IntPtr dwParam2),
      int Function(int dwCallback, int dwFlags, int hDevice, int dwMsg,
          int dwUser, int dwParam1, int dwParam2)>('DriverCallback');
  return _DriverCallback(
      dwCallback, dwFlags, hDevice, dwMsg, dwUser, dwParam1, dwParam2);
}

int DrvGetModuleHandle(int hDriver) {
  final _DrvGetModuleHandle = _winmm.lookupFunction<
      IntPtr Function(IntPtr hDriver),
      int Function(int hDriver)>('DrvGetModuleHandle');
  return _DrvGetModuleHandle(hDriver);
}

int GetDriverModuleHandle(int hDriver) {
  final _GetDriverModuleHandle = _winmm.lookupFunction<
      IntPtr Function(IntPtr hDriver),
      int Function(int hDriver)>('GetDriverModuleHandle');
  return _GetDriverModuleHandle(hDriver);
}

int OpenDriver(
    Pointer<Utf16> szDriverName, Pointer<Utf16> szSectionName, int lParam2) {
  final _OpenDriver = _winmm.lookupFunction<
      IntPtr Function(Pointer<Utf16> szDriverName, Pointer<Utf16> szSectionName,
          IntPtr lParam2),
      int Function(Pointer<Utf16> szDriverName, Pointer<Utf16> szSectionName,
          int lParam2)>('OpenDriver');
  return _OpenDriver(szDriverName, szSectionName, lParam2);
}

int PlaySoundW(Pointer<Utf16> pszSound, int hmod, int fdwSound) {
  final _PlaySoundW = _winmm.lookupFunction<
      Int32 Function(Pointer<Utf16> pszSound, IntPtr hmod, Uint32 fdwSound),
      int Function(
          Pointer<Utf16> pszSound, int hmod, int fdwSound)>('PlaySoundW');
  return _PlaySoundW(pszSound, hmod, fdwSound);
}

int SendDriverMessage(int hDriver, int message, int lParam1, int lParam2) {
  final _SendDriverMessage = _winmm.lookupFunction<
      IntPtr Function(
          IntPtr hDriver, Uint32 message, IntPtr lParam1, IntPtr lParam2),
      int Function(int hDriver, int message, int lParam1,
          int lParam2)>('SendDriverMessage');
  return _SendDriverMessage(hDriver, message, lParam1, lParam2);
}

int auxGetDevCapsW(int uDeviceID, Pointer<AUXCAPS> pac, int cbac) {
  final _auxGetDevCapsW = _winmm.lookupFunction<
      Uint32 Function(IntPtr uDeviceID, Pointer<AUXCAPS> pac, Uint32 cbac),
      int Function(
          int uDeviceID, Pointer<AUXCAPS> pac, int cbac)>('auxGetDevCapsW');
  return _auxGetDevCapsW(uDeviceID, pac, cbac);
}

int auxGetNumDevs() {
  final _auxGetNumDevs =
      _winmm.lookupFunction<Uint32 Function(), int Function()>('auxGetNumDevs');
  return _auxGetNumDevs();
}

int auxGetVolume(int uDeviceID, Pointer<Uint32> pdwVolume) {
  final _auxGetVolume = _winmm.lookupFunction<
      Uint32 Function(Uint32 uDeviceID, Pointer<Uint32> pdwVolume),
      int Function(int uDeviceID, Pointer<Uint32> pdwVolume)>('auxGetVolume');
  return _auxGetVolume(uDeviceID, pdwVolume);
}

int auxOutMessage(int uDeviceID, int uMsg, int dw1, int dw2) {
  final _auxOutMessage = _winmm.lookupFunction<
      Uint32 Function(Uint32 uDeviceID, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
      int Function(int uDeviceID, int uMsg, int dw1, int dw2)>('auxOutMessage');
  return _auxOutMessage(uDeviceID, uMsg, dw1, dw2);
}

int auxSetVolume(int uDeviceID, int dwVolume) {
  final _auxSetVolume = _winmm.lookupFunction<
      Uint32 Function(Uint32 uDeviceID, Uint32 dwVolume),
      int Function(int uDeviceID, int dwVolume)>('auxSetVolume');
  return _auxSetVolume(uDeviceID, dwVolume);
}

int joyConfigChanged(int dwFlags) {
  final _joyConfigChanged = _winmm.lookupFunction<
      Uint32 Function(Uint32 dwFlags),
      int Function(int dwFlags)>('joyConfigChanged');
  return _joyConfigChanged(dwFlags);
}

int joyGetDevCapsW(int uJoyID, Pointer<JOYCAPS> pjc, int cbjc) {
  final _joyGetDevCapsW = _winmm.lookupFunction<
      Uint32 Function(IntPtr uJoyID, Pointer<JOYCAPS> pjc, Uint32 cbjc),
      int Function(
          int uJoyID, Pointer<JOYCAPS> pjc, int cbjc)>('joyGetDevCapsW');
  return _joyGetDevCapsW(uJoyID, pjc, cbjc);
}

int joyGetNumDevs() {
  final _joyGetNumDevs =
      _winmm.lookupFunction<Uint32 Function(), int Function()>('joyGetNumDevs');
  return _joyGetNumDevs();
}

int joyGetPos(int uJoyID, Pointer<JOYINFO> pji) {
  final _joyGetPos = _winmm.lookupFunction<
      Uint32 Function(Uint32 uJoyID, Pointer<JOYINFO> pji),
      int Function(int uJoyID, Pointer<JOYINFO> pji)>('joyGetPos');
  return _joyGetPos(uJoyID, pji);
}

int joyGetPosEx(int uJoyID, Pointer<JOYINFOEX> pji) {
  final _joyGetPosEx = _winmm.lookupFunction<
      Uint32 Function(Uint32 uJoyID, Pointer<JOYINFOEX> pji),
      int Function(int uJoyID, Pointer<JOYINFOEX> pji)>('joyGetPosEx');
  return _joyGetPosEx(uJoyID, pji);
}

int joyGetThreshold(int uJoyID, Pointer<Uint32> puThreshold) {
  final _joyGetThreshold = _winmm.lookupFunction<
      Uint32 Function(Uint32 uJoyID, Pointer<Uint32> puThreshold),
      int Function(int uJoyID, Pointer<Uint32> puThreshold)>('joyGetThreshold');
  return _joyGetThreshold(uJoyID, puThreshold);
}

int joyReleaseCapture(int uJoyID) {
  final _joyReleaseCapture = _winmm.lookupFunction<
      Uint32 Function(Uint32 uJoyID),
      int Function(int uJoyID)>('joyReleaseCapture');
  return _joyReleaseCapture(uJoyID);
}

int joySetCapture(int hwnd, int uJoyID, int uPeriod, int fChanged) {
  final _joySetCapture = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr hwnd, Uint32 uJoyID, Uint32 uPeriod, Int32 fChanged),
      int Function(
          int hwnd, int uJoyID, int uPeriod, int fChanged)>('joySetCapture');
  return _joySetCapture(hwnd, uJoyID, uPeriod, fChanged);
}

int joySetThreshold(int uJoyID, int uThreshold) {
  final _joySetThreshold = _winmm.lookupFunction<
      Uint32 Function(Uint32 uJoyID, Uint32 uThreshold),
      int Function(int uJoyID, int uThreshold)>('joySetThreshold');
  return _joySetThreshold(uJoyID, uThreshold);
}

int midiConnect(int hmi, int hmo, Pointer pReserved) {
  final _midiConnect = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmi, IntPtr hmo, Pointer pReserved),
      int Function(int hmi, int hmo, Pointer pReserved)>('midiConnect');
  return _midiConnect(hmi, hmo, pReserved);
}

int midiDisconnect(int hmi, int hmo, Pointer pReserved) {
  final _midiDisconnect = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmi, IntPtr hmo, Pointer pReserved),
      int Function(int hmi, int hmo, Pointer pReserved)>('midiDisconnect');
  return _midiDisconnect(hmi, hmo, pReserved);
}

int midiInAddBuffer(int hmi, Pointer<MIDIHDR> pmh, int cbmh) {
  final _midiInAddBuffer = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmi, Pointer<MIDIHDR> pmh, Uint32 cbmh),
      int Function(int hmi, Pointer<MIDIHDR> pmh, int cbmh)>('midiInAddBuffer');
  return _midiInAddBuffer(hmi, pmh, cbmh);
}

int midiInClose(int hmi) {
  final _midiInClose =
      _winmm.lookupFunction<Uint32 Function(IntPtr hmi), int Function(int hmi)>(
          'midiInClose');
  return _midiInClose(hmi);
}

int midiInGetDevCapsW(int uDeviceID, Pointer<MIDIINCAPS> pmic, int cbmic) {
  final _midiInGetDevCapsW = _winmm.lookupFunction<
      Uint32 Function(IntPtr uDeviceID, Pointer<MIDIINCAPS> pmic, Uint32 cbmic),
      int Function(int uDeviceID, Pointer<MIDIINCAPS> pmic,
          int cbmic)>('midiInGetDevCapsW');
  return _midiInGetDevCapsW(uDeviceID, pmic, cbmic);
}

int midiInGetErrorTextW(int mmrError, Pointer<Utf16> pszText, int cchText) {
  final _midiInGetErrorTextW = _winmm.lookupFunction<
      Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
      int Function(int mmrError, Pointer<Utf16> pszText,
          int cchText)>('midiInGetErrorTextW');
  return _midiInGetErrorTextW(mmrError, pszText, cchText);
}

int midiInGetID(int hmi, Pointer<Uint32> puDeviceID) {
  final _midiInGetID = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmi, Pointer<Uint32> puDeviceID),
      int Function(int hmi, Pointer<Uint32> puDeviceID)>('midiInGetID');
  return _midiInGetID(hmi, puDeviceID);
}

int midiInGetNumDevs() {
  final _midiInGetNumDevs = _winmm
      .lookupFunction<Uint32 Function(), int Function()>('midiInGetNumDevs');
  return _midiInGetNumDevs();
}

int midiInMessage(int hmi, int uMsg, int dw1, int dw2) {
  final _midiInMessage = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmi, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
      int Function(int hmi, int uMsg, int dw1, int dw2)>('midiInMessage');
  return _midiInMessage(hmi, uMsg, dw1, dw2);
}

int midiInOpen(Pointer<IntPtr> phmi, int uDeviceID, int dwCallback,
    int dwInstance, int fdwOpen) {
  final _midiInOpen = _winmm.lookupFunction<
      Uint32 Function(Pointer<IntPtr> phmi, Uint32 uDeviceID, IntPtr dwCallback,
          IntPtr dwInstance, Uint32 fdwOpen),
      int Function(Pointer<IntPtr> phmi, int uDeviceID, int dwCallback,
          int dwInstance, int fdwOpen)>('midiInOpen');
  return _midiInOpen(phmi, uDeviceID, dwCallback, dwInstance, fdwOpen);
}

int midiInPrepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh) {
  final _midiInPrepareHeader = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmi, Pointer<MIDIHDR> pmh, Uint32 cbmh),
      int Function(
          int hmi, Pointer<MIDIHDR> pmh, int cbmh)>('midiInPrepareHeader');
  return _midiInPrepareHeader(hmi, pmh, cbmh);
}

int midiInReset(int hmi) {
  final _midiInReset =
      _winmm.lookupFunction<Uint32 Function(IntPtr hmi), int Function(int hmi)>(
          'midiInReset');
  return _midiInReset(hmi);
}

int midiInStart(int hmi) {
  final _midiInStart =
      _winmm.lookupFunction<Uint32 Function(IntPtr hmi), int Function(int hmi)>(
          'midiInStart');
  return _midiInStart(hmi);
}

int midiInStop(int hmi) {
  final _midiInStop =
      _winmm.lookupFunction<Uint32 Function(IntPtr hmi), int Function(int hmi)>(
          'midiInStop');
  return _midiInStop(hmi);
}

int midiInUnprepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh) {
  final _midiInUnprepareHeader = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmi, Pointer<MIDIHDR> pmh, Uint32 cbmh),
      int Function(
          int hmi, Pointer<MIDIHDR> pmh, int cbmh)>('midiInUnprepareHeader');
  return _midiInUnprepareHeader(hmi, pmh, cbmh);
}

int midiOutCacheDrumPatches(
    int hmo, int uPatch, Pointer<Uint16> pwkya, int fuCache) {
  final _midiOutCacheDrumPatches = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr hmo, Uint32 uPatch, Pointer<Uint16> pwkya, Uint32 fuCache),
      int Function(int hmo, int uPatch, Pointer<Uint16> pwkya,
          int fuCache)>('midiOutCacheDrumPatches');
  return _midiOutCacheDrumPatches(hmo, uPatch, pwkya, fuCache);
}

int midiOutCachePatches(int hmo, int uBank, Pointer<Uint16> pwpa, int fuCache) {
  final _midiOutCachePatches = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr hmo, Uint32 uBank, Pointer<Uint16> pwpa, Uint32 fuCache),
      int Function(int hmo, int uBank, Pointer<Uint16> pwpa,
          int fuCache)>('midiOutCachePatches');
  return _midiOutCachePatches(hmo, uBank, pwpa, fuCache);
}

int midiOutClose(int hmo) {
  final _midiOutClose =
      _winmm.lookupFunction<Uint32 Function(IntPtr hmo), int Function(int hmo)>(
          'midiOutClose');
  return _midiOutClose(hmo);
}

int midiOutGetDevCapsW(int uDeviceID, Pointer<MIDIOUTCAPS> pmoc, int cbmoc) {
  final _midiOutGetDevCapsW = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr uDeviceID, Pointer<MIDIOUTCAPS> pmoc, Uint32 cbmoc),
      int Function(int uDeviceID, Pointer<MIDIOUTCAPS> pmoc,
          int cbmoc)>('midiOutGetDevCapsW');
  return _midiOutGetDevCapsW(uDeviceID, pmoc, cbmoc);
}

int midiOutGetErrorTextW(int mmrError, Pointer<Utf16> pszText, int cchText) {
  final _midiOutGetErrorTextW = _winmm.lookupFunction<
      Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
      int Function(int mmrError, Pointer<Utf16> pszText,
          int cchText)>('midiOutGetErrorTextW');
  return _midiOutGetErrorTextW(mmrError, pszText, cchText);
}

int midiOutGetID(int hmo, Pointer<Uint32> puDeviceID) {
  final _midiOutGetID = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmo, Pointer<Uint32> puDeviceID),
      int Function(int hmo, Pointer<Uint32> puDeviceID)>('midiOutGetID');
  return _midiOutGetID(hmo, puDeviceID);
}

int midiOutGetNumDevs() {
  final _midiOutGetNumDevs = _winmm
      .lookupFunction<Uint32 Function(), int Function()>('midiOutGetNumDevs');
  return _midiOutGetNumDevs();
}

int midiOutGetVolume(int hmo, Pointer<Uint32> pdwVolume) {
  final _midiOutGetVolume = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmo, Pointer<Uint32> pdwVolume),
      int Function(int hmo, Pointer<Uint32> pdwVolume)>('midiOutGetVolume');
  return _midiOutGetVolume(hmo, pdwVolume);
}

int midiOutLongMsg(int hmo, Pointer<MIDIHDR> pmh, int cbmh) {
  final _midiOutLongMsg = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmo, Pointer<MIDIHDR> pmh, Uint32 cbmh),
      int Function(int hmo, Pointer<MIDIHDR> pmh, int cbmh)>('midiOutLongMsg');
  return _midiOutLongMsg(hmo, pmh, cbmh);
}

int midiOutMessage(int hmo, int uMsg, int dw1, int dw2) {
  final _midiOutMessage = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmo, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
      int Function(int hmo, int uMsg, int dw1, int dw2)>('midiOutMessage');
  return _midiOutMessage(hmo, uMsg, dw1, dw2);
}

int midiOutOpen(Pointer<IntPtr> phmo, int uDeviceID, int dwCallback,
    int dwInstance, int fdwOpen) {
  final _midiOutOpen = _winmm.lookupFunction<
      Uint32 Function(Pointer<IntPtr> phmo, Uint32 uDeviceID, IntPtr dwCallback,
          IntPtr dwInstance, Uint32 fdwOpen),
      int Function(Pointer<IntPtr> phmo, int uDeviceID, int dwCallback,
          int dwInstance, int fdwOpen)>('midiOutOpen');
  return _midiOutOpen(phmo, uDeviceID, dwCallback, dwInstance, fdwOpen);
}

int midiOutPrepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh) {
  final _midiOutPrepareHeader = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmo, Pointer<MIDIHDR> pmh, Uint32 cbmh),
      int Function(
          int hmo, Pointer<MIDIHDR> pmh, int cbmh)>('midiOutPrepareHeader');
  return _midiOutPrepareHeader(hmo, pmh, cbmh);
}

int midiOutReset(int hmo) {
  final _midiOutReset =
      _winmm.lookupFunction<Uint32 Function(IntPtr hmo), int Function(int hmo)>(
          'midiOutReset');
  return _midiOutReset(hmo);
}

int midiOutSetVolume(int hmo, int dwVolume) {
  final _midiOutSetVolume = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmo, Uint32 dwVolume),
      int Function(int hmo, int dwVolume)>('midiOutSetVolume');
  return _midiOutSetVolume(hmo, dwVolume);
}

int midiOutShortMsg(int hmo, int dwMsg) {
  final _midiOutShortMsg = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmo, Uint32 dwMsg),
      int Function(int hmo, int dwMsg)>('midiOutShortMsg');
  return _midiOutShortMsg(hmo, dwMsg);
}

int midiOutUnprepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh) {
  final _midiOutUnprepareHeader = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmo, Pointer<MIDIHDR> pmh, Uint32 cbmh),
      int Function(
          int hmo, Pointer<MIDIHDR> pmh, int cbmh)>('midiOutUnprepareHeader');
  return _midiOutUnprepareHeader(hmo, pmh, cbmh);
}

int midiStreamClose(int hms) {
  final _midiStreamClose =
      _winmm.lookupFunction<Uint32 Function(IntPtr hms), int Function(int hms)>(
          'midiStreamClose');
  return _midiStreamClose(hms);
}

int midiStreamOpen(Pointer<IntPtr> phms, Pointer<Uint32> puDeviceID, int cMidi,
    int dwCallback, int dwInstance, int fdwOpen) {
  final _midiStreamOpen = _winmm.lookupFunction<
      Uint32 Function(Pointer<IntPtr> phms, Pointer<Uint32> puDeviceID,
          Uint32 cMidi, IntPtr dwCallback, IntPtr dwInstance, Uint32 fdwOpen),
      int Function(Pointer<IntPtr> phms, Pointer<Uint32> puDeviceID, int cMidi,
          int dwCallback, int dwInstance, int fdwOpen)>('midiStreamOpen');
  return _midiStreamOpen(
      phms, puDeviceID, cMidi, dwCallback, dwInstance, fdwOpen);
}

int midiStreamOut(int hms, Pointer<MIDIHDR> pmh, int cbmh) {
  final _midiStreamOut = _winmm.lookupFunction<
      Uint32 Function(IntPtr hms, Pointer<MIDIHDR> pmh, Uint32 cbmh),
      int Function(int hms, Pointer<MIDIHDR> pmh, int cbmh)>('midiStreamOut');
  return _midiStreamOut(hms, pmh, cbmh);
}

int midiStreamPause(int hms) {
  final _midiStreamPause =
      _winmm.lookupFunction<Uint32 Function(IntPtr hms), int Function(int hms)>(
          'midiStreamPause');
  return _midiStreamPause(hms);
}

int midiStreamPosition(int hms, Pointer<MMTIME> lpmmt, int cbmmt) {
  final _midiStreamPosition = _winmm.lookupFunction<
      Uint32 Function(IntPtr hms, Pointer<MMTIME> lpmmt, Uint32 cbmmt),
      int Function(
          int hms, Pointer<MMTIME> lpmmt, int cbmmt)>('midiStreamPosition');
  return _midiStreamPosition(hms, lpmmt, cbmmt);
}

int midiStreamProperty(int hms, Pointer<Uint8> lppropdata, int dwProperty) {
  final _midiStreamProperty = _winmm.lookupFunction<
      Uint32 Function(IntPtr hms, Pointer<Uint8> lppropdata, Uint32 dwProperty),
      int Function(int hms, Pointer<Uint8> lppropdata,
          int dwProperty)>('midiStreamProperty');
  return _midiStreamProperty(hms, lppropdata, dwProperty);
}

int midiStreamRestart(int hms) {
  final _midiStreamRestart =
      _winmm.lookupFunction<Uint32 Function(IntPtr hms), int Function(int hms)>(
          'midiStreamRestart');
  return _midiStreamRestart(hms);
}

int midiStreamStop(int hms) {
  final _midiStreamStop =
      _winmm.lookupFunction<Uint32 Function(IntPtr hms), int Function(int hms)>(
          'midiStreamStop');
  return _midiStreamStop(hms);
}

int mixerClose(int hmx) {
  final _mixerClose =
      _winmm.lookupFunction<Uint32 Function(IntPtr hmx), int Function(int hmx)>(
          'mixerClose');
  return _mixerClose(hmx);
}

int mixerGetControlDetailsW(
    int hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd, int fdwDetails) {
  final _mixerGetControlDetailsW = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd, Uint32 fdwDetails),
      int Function(int hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd,
          int fdwDetails)>('mixerGetControlDetailsW');
  return _mixerGetControlDetailsW(hmxobj, pmxcd, fdwDetails);
}

int mixerGetDevCapsW(int uMxId, Pointer<MIXERCAPS> pmxcaps, int cbmxcaps) {
  final _mixerGetDevCapsW = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr uMxId, Pointer<MIXERCAPS> pmxcaps, Uint32 cbmxcaps),
      int Function(int uMxId, Pointer<MIXERCAPS> pmxcaps,
          int cbmxcaps)>('mixerGetDevCapsW');
  return _mixerGetDevCapsW(uMxId, pmxcaps, cbmxcaps);
}

int mixerGetID(int hmxobj, Pointer<Uint32> puMxId, int fdwId) {
  final _mixerGetID = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmxobj, Pointer<Uint32> puMxId, Uint32 fdwId),
      int Function(
          int hmxobj, Pointer<Uint32> puMxId, int fdwId)>('mixerGetID');
  return _mixerGetID(hmxobj, puMxId, fdwId);
}

int mixerGetLineControlsW(
    int hmxobj, Pointer<MIXERLINECONTROLS> pmxlc, int fdwControls) {
  final _mixerGetLineControlsW = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr hmxobj, Pointer<MIXERLINECONTROLS> pmxlc, Uint32 fdwControls),
      int Function(int hmxobj, Pointer<MIXERLINECONTROLS> pmxlc,
          int fdwControls)>('mixerGetLineControlsW');
  return _mixerGetLineControlsW(hmxobj, pmxlc, fdwControls);
}

int mixerGetLineInfoW(int hmxobj, Pointer<MIXERLINE> pmxl, int fdwInfo) {
  final _mixerGetLineInfoW = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmxobj, Pointer<MIXERLINE> pmxl, Uint32 fdwInfo),
      int Function(int hmxobj, Pointer<MIXERLINE> pmxl,
          int fdwInfo)>('mixerGetLineInfoW');
  return _mixerGetLineInfoW(hmxobj, pmxl, fdwInfo);
}

int mixerGetNumDevs() {
  final _mixerGetNumDevs = _winmm
      .lookupFunction<Uint32 Function(), int Function()>('mixerGetNumDevs');
  return _mixerGetNumDevs();
}

int mixerMessage(int hmx, int uMsg, int dwParam1, int dwParam2) {
  final _mixerMessage = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr hmx, Uint32 uMsg, IntPtr dwParam1, IntPtr dwParam2),
      int Function(
          int hmx, int uMsg, int dwParam1, int dwParam2)>('mixerMessage');
  return _mixerMessage(hmx, uMsg, dwParam1, dwParam2);
}

int mixerOpen(Pointer<IntPtr> phmx, int uMxId, int dwCallback, int dwInstance,
    int fdwOpen) {
  final _mixerOpen = _winmm.lookupFunction<
      Uint32 Function(Pointer<IntPtr> phmx, Uint32 uMxId, IntPtr dwCallback,
          IntPtr dwInstance, Uint32 fdwOpen),
      int Function(Pointer<IntPtr> phmx, int uMxId, int dwCallback,
          int dwInstance, int fdwOpen)>('mixerOpen');
  return _mixerOpen(phmx, uMxId, dwCallback, dwInstance, fdwOpen);
}

int mixerSetControlDetails(
    int hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd, int fdwDetails) {
  final _mixerSetControlDetails = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd, Uint32 fdwDetails),
      int Function(int hmxobj, Pointer<MIXERCONTROLDETAILS> pmxcd,
          int fdwDetails)>('mixerSetControlDetails');
  return _mixerSetControlDetails(hmxobj, pmxcd, fdwDetails);
}

int mmDrvInstall(int hDriver, Pointer<Utf16> wszDrvEntry,
    DRIVERMSGPROC drvMessage, int wFlags) {
  final _mmDrvInstall = _winmm.lookupFunction<
      Uint32 Function(IntPtr hDriver, Pointer<Utf16> wszDrvEntry,
          DRIVERMSGPROC drvMessage, Uint32 wFlags),
      int Function(int hDriver, Pointer<Utf16> wszDrvEntry,
          DRIVERMSGPROC drvMessage, int wFlags)>('mmDrvInstall');
  return _mmDrvInstall(hDriver, wszDrvEntry, drvMessage, wFlags);
}

int mmGetCurrentTask() {
  final _mmGetCurrentTask = _winmm
      .lookupFunction<Uint32 Function(), int Function()>('mmGetCurrentTask');
  return _mmGetCurrentTask();
}

void mmTaskBlock(int h) {
  final _mmTaskBlock =
      _winmm.lookupFunction<Void Function(Uint32 h), void Function(int h)>(
          'mmTaskBlock');
  return _mmTaskBlock(h);
}

int mmTaskCreate(Pointer<TASKCALLBACK> lpfn, Pointer<IntPtr> lph, int dwInst) {
  final _mmTaskCreate = _winmm.lookupFunction<
      Uint32 Function(
          Pointer<TASKCALLBACK> lpfn, Pointer<IntPtr> lph, IntPtr dwInst),
      int Function(Pointer<TASKCALLBACK> lpfn, Pointer<IntPtr> lph,
          int dwInst)>('mmTaskCreate');
  return _mmTaskCreate(lpfn, lph, dwInst);
}

int mmTaskSignal(int h) {
  final _mmTaskSignal =
      _winmm.lookupFunction<Int32 Function(Uint32 h), int Function(int h)>(
          'mmTaskSignal');
  return _mmTaskSignal(h);
}

void mmTaskYield() {
  final _mmTaskYield =
      _winmm.lookupFunction<Void Function(), void Function()>('mmTaskYield');
  return _mmTaskYield();
}

int mmioAdvance(int hmmio, Pointer<MMIOINFO> pmmioinfo, int fuAdvance) {
  final _mmioAdvance = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr hmmio, Pointer<MMIOINFO> pmmioinfo, Uint32 fuAdvance),
      int Function(int hmmio, Pointer<MMIOINFO> pmmioinfo,
          int fuAdvance)>('mmioAdvance');
  return _mmioAdvance(hmmio, pmmioinfo, fuAdvance);
}

int mmioAscend(int hmmio, Pointer<MMCKINFO> pmmcki, int fuAscend) {
  final _mmioAscend = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmmio, Pointer<MMCKINFO> pmmcki, Uint32 fuAscend),
      int Function(
          int hmmio, Pointer<MMCKINFO> pmmcki, int fuAscend)>('mmioAscend');
  return _mmioAscend(hmmio, pmmcki, fuAscend);
}

int mmioClose(int hmmio, int fuClose) {
  final _mmioClose = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmmio, Uint32 fuClose),
      int Function(int hmmio, int fuClose)>('mmioClose');
  return _mmioClose(hmmio, fuClose);
}

int mmioCreateChunk(int hmmio, Pointer<MMCKINFO> pmmcki, int fuCreate) {
  final _mmioCreateChunk = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmmio, Pointer<MMCKINFO> pmmcki, Uint32 fuCreate),
      int Function(int hmmio, Pointer<MMCKINFO> pmmcki,
          int fuCreate)>('mmioCreateChunk');
  return _mmioCreateChunk(hmmio, pmmcki, fuCreate);
}

int mmioDescend(int hmmio, Pointer<MMCKINFO> pmmcki,
    Pointer<MMCKINFO> pmmckiParent, int fuDescend) {
  final _mmioDescend = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmmio, Pointer<MMCKINFO> pmmcki,
          Pointer<MMCKINFO> pmmckiParent, Uint32 fuDescend),
      int Function(int hmmio, Pointer<MMCKINFO> pmmcki,
          Pointer<MMCKINFO> pmmckiParent, int fuDescend)>('mmioDescend');
  return _mmioDescend(hmmio, pmmcki, pmmckiParent, fuDescend);
}

int mmioFlush(int hmmio, int fuFlush) {
  final _mmioFlush = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmmio, Uint32 fuFlush),
      int Function(int hmmio, int fuFlush)>('mmioFlush');
  return _mmioFlush(hmmio, fuFlush);
}

int mmioGetInfo(int hmmio, Pointer<MMIOINFO> pmmioinfo, int fuInfo) {
  final _mmioGetInfo = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmmio, Pointer<MMIOINFO> pmmioinfo, Uint32 fuInfo),
      int Function(
          int hmmio, Pointer<MMIOINFO> pmmioinfo, int fuInfo)>('mmioGetInfo');
  return _mmioGetInfo(hmmio, pmmioinfo, fuInfo);
}

Pointer<MMIOPROC> mmioInstallIOProcW(
    int fccIOProc, Pointer<MMIOPROC> pIOProc, int dwFlags) {
  final _mmioInstallIOProcW = _winmm.lookupFunction<
      Pointer<MMIOPROC> Function(
          Uint32 fccIOProc, Pointer<MMIOPROC> pIOProc, Uint32 dwFlags),
      Pointer<MMIOPROC> Function(int fccIOProc, Pointer<MMIOPROC> pIOProc,
          int dwFlags)>('mmioInstallIOProcW');
  return _mmioInstallIOProcW(fccIOProc, pIOProc, dwFlags);
}

int mmioOpenW(
    Pointer<Utf16> pszFileName, Pointer<MMIOINFO> pmmioinfo, int fdwOpen) {
  final _mmioOpenW = _winmm.lookupFunction<
      IntPtr Function(Pointer<Utf16> pszFileName, Pointer<MMIOINFO> pmmioinfo,
          Uint32 fdwOpen),
      int Function(Pointer<Utf16> pszFileName, Pointer<MMIOINFO> pmmioinfo,
          int fdwOpen)>('mmioOpenW');
  return _mmioOpenW(pszFileName, pmmioinfo, fdwOpen);
}

int mmioRead(int hmmio, Pointer<Int8> pch, int cch) {
  final _mmioRead = _winmm.lookupFunction<
      Int32 Function(IntPtr hmmio, Pointer<Int8> pch, Int32 cch),
      int Function(int hmmio, Pointer<Int8> pch, int cch)>('mmioRead');
  return _mmioRead(hmmio, pch, cch);
}

int mmioRenameW(Pointer<Utf16> pszFileName, Pointer<Utf16> pszNewFileName,
    Pointer<MMIOINFO> pmmioinfo, int fdwRename) {
  final _mmioRenameW = _winmm.lookupFunction<
      Uint32 Function(Pointer<Utf16> pszFileName, Pointer<Utf16> pszNewFileName,
          Pointer<MMIOINFO> pmmioinfo, Uint32 fdwRename),
      int Function(Pointer<Utf16> pszFileName, Pointer<Utf16> pszNewFileName,
          Pointer<MMIOINFO> pmmioinfo, int fdwRename)>('mmioRenameW');
  return _mmioRenameW(pszFileName, pszNewFileName, pmmioinfo, fdwRename);
}

int mmioSeek(int hmmio, int lOffset, int iOrigin) {
  final _mmioSeek = _winmm.lookupFunction<
      Int32 Function(IntPtr hmmio, Int32 lOffset, Int32 iOrigin),
      int Function(int hmmio, int lOffset, int iOrigin)>('mmioSeek');
  return _mmioSeek(hmmio, lOffset, iOrigin);
}

int mmioSendMessage(int hmmio, int uMsg, int lParam1, int lParam2) {
  final _mmioSendMessage = _winmm.lookupFunction<
      IntPtr Function(
          IntPtr hmmio, Uint32 uMsg, IntPtr lParam1, IntPtr lParam2),
      int Function(
          int hmmio, int uMsg, int lParam1, int lParam2)>('mmioSendMessage');
  return _mmioSendMessage(hmmio, uMsg, lParam1, lParam2);
}

int mmioSetBuffer(
    int hmmio, Pointer<Utf8> pchBuffer, int cchBuffer, int fuBuffer) {
  final _mmioSetBuffer = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmmio, Pointer<Utf8> pchBuffer, Int32 cchBuffer,
          Uint32 fuBuffer),
      int Function(int hmmio, Pointer<Utf8> pchBuffer, int cchBuffer,
          int fuBuffer)>('mmioSetBuffer');
  return _mmioSetBuffer(hmmio, pchBuffer, cchBuffer, fuBuffer);
}

int mmioSetInfo(int hmmio, Pointer<MMIOINFO> pmmioinfo, int fuInfo) {
  final _mmioSetInfo = _winmm.lookupFunction<
      Uint32 Function(IntPtr hmmio, Pointer<MMIOINFO> pmmioinfo, Uint32 fuInfo),
      int Function(
          int hmmio, Pointer<MMIOINFO> pmmioinfo, int fuInfo)>('mmioSetInfo');
  return _mmioSetInfo(hmmio, pmmioinfo, fuInfo);
}

int mmioStringToFOURCCW(Pointer<Utf16> sz, int uFlags) {
  final _mmioStringToFOURCCW = _winmm.lookupFunction<
      Uint32 Function(Pointer<Utf16> sz, Uint32 uFlags),
      int Function(Pointer<Utf16> sz, int uFlags)>('mmioStringToFOURCCW');
  return _mmioStringToFOURCCW(sz, uFlags);
}

int mmioWrite(int hmmio, Pointer<Utf8> pch, int cch) {
  final _mmioWrite = _winmm.lookupFunction<
      Int32 Function(IntPtr hmmio, Pointer<Utf8> pch, Int32 cch),
      int Function(int hmmio, Pointer<Utf8> pch, int cch)>('mmioWrite');
  return _mmioWrite(hmmio, pch, cch);
}

int sndPlaySoundW(Pointer<Utf16> pszSound, int fuSound) {
  final _sndPlaySoundW = _winmm.lookupFunction<
      Int32 Function(Pointer<Utf16> pszSound, Uint32 fuSound),
      int Function(Pointer<Utf16> pszSound, int fuSound)>('sndPlaySoundW');
  return _sndPlaySoundW(pszSound, fuSound);
}

int timeBeginPeriod(int uPeriod) {
  final _timeBeginPeriod = _winmm.lookupFunction<
      Uint32 Function(Uint32 uPeriod),
      int Function(int uPeriod)>('timeBeginPeriod');
  return _timeBeginPeriod(uPeriod);
}

int timeEndPeriod(int uPeriod) {
  final _timeEndPeriod = _winmm.lookupFunction<Uint32 Function(Uint32 uPeriod),
      int Function(int uPeriod)>('timeEndPeriod');
  return _timeEndPeriod(uPeriod);
}

int timeGetDevCaps(Pointer<TIMECAPS> ptc, int cbtc) {
  final _timeGetDevCaps = _winmm.lookupFunction<
      Uint32 Function(Pointer<TIMECAPS> ptc, Uint32 cbtc),
      int Function(Pointer<TIMECAPS> ptc, int cbtc)>('timeGetDevCaps');
  return _timeGetDevCaps(ptc, cbtc);
}

int timeGetSystemTime(Pointer<MMTIME> pmmt, int cbmmt) {
  final _timeGetSystemTime = _winmm.lookupFunction<
      Uint32 Function(Pointer<MMTIME> pmmt, Uint32 cbmmt),
      int Function(Pointer<MMTIME> pmmt, int cbmmt)>('timeGetSystemTime');
  return _timeGetSystemTime(pmmt, cbmmt);
}

int timeGetTime() {
  final _timeGetTime =
      _winmm.lookupFunction<Uint32 Function(), int Function()>('timeGetTime');
  return _timeGetTime();
}

int waveInAddBuffer(int hwi, Pointer<WAVEHDR> pwh, int cbwh) {
  final _waveInAddBuffer = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwi, Pointer<WAVEHDR> pwh, Uint32 cbwh),
      int Function(int hwi, Pointer<WAVEHDR> pwh, int cbwh)>('waveInAddBuffer');
  return _waveInAddBuffer(hwi, pwh, cbwh);
}

int waveInClose(int hwi) {
  final _waveInClose =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwi), int Function(int hwi)>(
          'waveInClose');
  return _waveInClose(hwi);
}

int waveInGetDevCapsW(int uDeviceID, Pointer<WAVEINCAPS> pwic, int cbwic) {
  final _waveInGetDevCapsW = _winmm.lookupFunction<
      Uint32 Function(IntPtr uDeviceID, Pointer<WAVEINCAPS> pwic, Uint32 cbwic),
      int Function(int uDeviceID, Pointer<WAVEINCAPS> pwic,
          int cbwic)>('waveInGetDevCapsW');
  return _waveInGetDevCapsW(uDeviceID, pwic, cbwic);
}

int waveInGetErrorTextW(int mmrError, Pointer<Utf16> pszText, int cchText) {
  final _waveInGetErrorTextW = _winmm.lookupFunction<
      Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
      int Function(int mmrError, Pointer<Utf16> pszText,
          int cchText)>('waveInGetErrorTextW');
  return _waveInGetErrorTextW(mmrError, pszText, cchText);
}

int waveInGetID(int hwi, Pointer<Uint32> puDeviceID) {
  final _waveInGetID = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwi, Pointer<Uint32> puDeviceID),
      int Function(int hwi, Pointer<Uint32> puDeviceID)>('waveInGetID');
  return _waveInGetID(hwi, puDeviceID);
}

int waveInGetNumDevs() {
  final _waveInGetNumDevs = _winmm
      .lookupFunction<Uint32 Function(), int Function()>('waveInGetNumDevs');
  return _waveInGetNumDevs();
}

int waveInGetPosition(int hwi, Pointer<MMTIME> pmmt, int cbmmt) {
  final _waveInGetPosition = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwi, Pointer<MMTIME> pmmt, Uint32 cbmmt),
      int Function(
          int hwi, Pointer<MMTIME> pmmt, int cbmmt)>('waveInGetPosition');
  return _waveInGetPosition(hwi, pmmt, cbmmt);
}

int waveInMessage(int hwi, int uMsg, int dw1, int dw2) {
  final _waveInMessage = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwi, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
      int Function(int hwi, int uMsg, int dw1, int dw2)>('waveInMessage');
  return _waveInMessage(hwi, uMsg, dw1, dw2);
}

int waveInOpen(Pointer<HWAVEIN> phwi, int uDeviceID, Pointer<WAVEFORMATEX> pwfx,
    int dwCallback, int dwInstance, int fdwOpen) {
  final _waveInOpen = _winmm.lookupFunction<
      Uint32 Function(
          Pointer<HWAVEIN> phwi,
          Uint32 uDeviceID,
          Pointer<WAVEFORMATEX> pwfx,
          IntPtr dwCallback,
          IntPtr dwInstance,
          Uint32 fdwOpen),
      int Function(
          Pointer<HWAVEIN> phwi,
          int uDeviceID,
          Pointer<WAVEFORMATEX> pwfx,
          int dwCallback,
          int dwInstance,
          int fdwOpen)>('waveInOpen');
  return _waveInOpen(phwi, uDeviceID, pwfx, dwCallback, dwInstance, fdwOpen);
}

int waveInPrepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh) {
  final _waveInPrepareHeader = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwi, Pointer<WAVEHDR> pwh, Uint32 cbwh),
      int Function(
          int hwi, Pointer<WAVEHDR> pwh, int cbwh)>('waveInPrepareHeader');
  return _waveInPrepareHeader(hwi, pwh, cbwh);
}

int waveInReset(int hwi) {
  final _waveInReset =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwi), int Function(int hwi)>(
          'waveInReset');
  return _waveInReset(hwi);
}

int waveInStart(int hwi) {
  final _waveInStart =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwi), int Function(int hwi)>(
          'waveInStart');
  return _waveInStart(hwi);
}

int waveInStop(int hwi) {
  final _waveInStop =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwi), int Function(int hwi)>(
          'waveInStop');
  return _waveInStop(hwi);
}

int waveInUnprepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh) {
  final _waveInUnprepareHeader = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwi, Pointer<WAVEHDR> pwh, Uint32 cbwh),
      int Function(
          int hwi, Pointer<WAVEHDR> pwh, int cbwh)>('waveInUnprepareHeader');
  return _waveInUnprepareHeader(hwi, pwh, cbwh);
}

int waveOutBreakLoop(int hwo) {
  final _waveOutBreakLoop =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
          'waveOutBreakLoop');
  return _waveOutBreakLoop(hwo);
}

int waveOutClose(int hwo) {
  final _waveOutClose =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
          'waveOutClose');
  return _waveOutClose(hwo);
}

int waveOutGetDevCapsW(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc, int cbwoc) {
  final _waveOutGetDevCapsW = _winmm.lookupFunction<
      Uint32 Function(
          IntPtr uDeviceID, Pointer<WAVEOUTCAPS> pwoc, Uint32 cbwoc),
      int Function(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc,
          int cbwoc)>('waveOutGetDevCapsW');
  return _waveOutGetDevCapsW(uDeviceID, pwoc, cbwoc);
}

int waveOutGetErrorTextW(int mmrError, Pointer<Utf16> pszText, int cchText) {
  final _waveOutGetErrorTextW = _winmm.lookupFunction<
      Uint32 Function(Uint32 mmrError, Pointer<Utf16> pszText, Uint32 cchText),
      int Function(int mmrError, Pointer<Utf16> pszText,
          int cchText)>('waveOutGetErrorTextW');
  return _waveOutGetErrorTextW(mmrError, pszText, cchText);
}

int waveOutGetID(int hwo, Pointer<Uint32> puDeviceID) {
  final _waveOutGetID = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<Uint32> puDeviceID),
      int Function(int hwo, Pointer<Uint32> puDeviceID)>('waveOutGetID');
  return _waveOutGetID(hwo, puDeviceID);
}

int waveOutGetNumDevs() {
  final _waveOutGetNumDevs = _winmm
      .lookupFunction<Uint32 Function(), int Function()>('waveOutGetNumDevs');
  return _waveOutGetNumDevs();
}

int waveOutGetPitch(int hwo, Pointer<Uint32> pdwPitch) {
  final _waveOutGetPitch = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwPitch),
      int Function(int hwo, Pointer<Uint32> pdwPitch)>('waveOutGetPitch');
  return _waveOutGetPitch(hwo, pdwPitch);
}

int waveOutGetPlaybackRate(int hwo, Pointer<Uint32> pdwRate) {
  final _waveOutGetPlaybackRate = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwRate),
      int Function(int hwo, Pointer<Uint32> pdwRate)>('waveOutGetPlaybackRate');
  return _waveOutGetPlaybackRate(hwo, pdwRate);
}

int waveOutGetPosition(int hwo, Pointer<MMTIME> pmmt, int cbmmt) {
  final _waveOutGetPosition = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<MMTIME> pmmt, Uint32 cbmmt),
      int Function(
          int hwo, Pointer<MMTIME> pmmt, int cbmmt)>('waveOutGetPosition');
  return _waveOutGetPosition(hwo, pmmt, cbmmt);
}

int waveOutGetVolume(int hwo, Pointer<Uint32> pdwVolume) {
  final _waveOutGetVolume = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<Uint32> pdwVolume),
      int Function(int hwo, Pointer<Uint32> pdwVolume)>('waveOutGetVolume');
  return _waveOutGetVolume(hwo, pdwVolume);
}

int waveOutMessage(int hwo, int uMsg, int dw1, int dw2) {
  final _waveOutMessage = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Uint32 uMsg, IntPtr dw1, IntPtr dw2),
      int Function(int hwo, int uMsg, int dw1, int dw2)>('waveOutMessage');
  return _waveOutMessage(hwo, uMsg, dw1, dw2);
}

int waveOutOpen(Pointer<IntPtr> phwo, int uDeviceID, Pointer<WAVEFORMATEX> pwfx,
    int dwCallback, int dwInstance, int fdwOpen) {
  final _waveOutOpen = _winmm.lookupFunction<
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
  return _waveOutOpen(phwo, uDeviceID, pwfx, dwCallback, dwInstance, fdwOpen);
}

int waveOutPause(int hwo) {
  final _waveOutPause =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
          'waveOutPause');
  return _waveOutPause(hwo);
}

int waveOutPrepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh) {
  final _waveOutPrepareHeader = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
      int Function(
          int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutPrepareHeader');
  return _waveOutPrepareHeader(hwo, pwh, cbwh);
}

int waveOutReset(int hwo) {
  final _waveOutReset =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
          'waveOutReset');
  return _waveOutReset(hwo);
}

int waveOutRestart(int hwo) {
  final _waveOutRestart =
      _winmm.lookupFunction<Uint32 Function(IntPtr hwo), int Function(int hwo)>(
          'waveOutRestart');
  return _waveOutRestart(hwo);
}

int waveOutSetPitch(int hwo, int dwPitch) {
  final _waveOutSetPitch = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Uint32 dwPitch),
      int Function(int hwo, int dwPitch)>('waveOutSetPitch');
  return _waveOutSetPitch(hwo, dwPitch);
}

int waveOutSetPlaybackRate(int hwo, int dwRate) {
  final _waveOutSetPlaybackRate = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Uint32 dwRate),
      int Function(int hwo, int dwRate)>('waveOutSetPlaybackRate');
  return _waveOutSetPlaybackRate(hwo, dwRate);
}

int waveOutSetVolume(int hwo, int dwVolume) {
  final _waveOutSetVolume = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Uint32 dwVolume),
      int Function(int hwo, int dwVolume)>('waveOutSetVolume');
  return _waveOutSetVolume(hwo, dwVolume);
}

int waveOutUnprepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh) {
  final _waveOutUnprepareHeader = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
      int Function(
          int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutUnprepareHeader');
  return _waveOutUnprepareHeader(hwo, pwh, cbwh);
}

int waveOutWrite(int hwo, Pointer<WAVEHDR> pwh, int cbwh) {
  final _waveOutWrite = _winmm.lookupFunction<
      Uint32 Function(IntPtr hwo, Pointer<WAVEHDR> pwh, Uint32 cbwh),
      int Function(int hwo, Pointer<WAVEHDR> pwh, int cbwh)>('waveOutWrite');
  return _waveOutWrite(hwo, pwh, cbwh);
}
