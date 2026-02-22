// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Retrieves the device identifier corresponding to the name of an open device.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757156(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int mciGetDeviceID(PCWSTR pszDevice) => _mciGetDeviceID(pszDevice);

@Native<Uint32 Function(Pointer<Utf16>)>(symbol: 'mciGetDeviceIDW')
external int _mciGetDeviceID(Pointer<Utf16> pszDevice);

/// Retrieves the MCI device identifier corresponding to an element identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757157(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int mciGetDeviceIDFromElementID(int dwElementID, PCWSTR lpstrType) =>
    _mciGetDeviceIDFromElementID(dwElementID, lpstrType);

@Native<Uint32 Function(Uint32, Pointer<Utf16>)>(
  symbol: 'mciGetDeviceIDFromElementIDW',
)
external int _mciGetDeviceIDFromElementID(
  int dwElementID,
  Pointer<Utf16> lpstrType,
);

/// Retrieves a string that describes the specified MCI error code.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757158(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
bool mciGetErrorString(int mcierr, PWSTR pszText, int cchText) =>
    _mciGetErrorString(mcierr, pszText, cchText) != FALSE;

@Native<Int32 Function(Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'mciGetErrorStringW',
)
external int _mciGetErrorString(
  int mcierr,
  Pointer<Utf16> pszText,
  int cchText,
);

/// Sends a command message to the specified MCI device.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757160(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int mciSendCommand(int mciId, int uMsg, int? dwParam1, int? dwParam2) =>
    _mciSendCommand(mciId, uMsg, dwParam1 ?? NULL, dwParam2 ?? NULL);

@Native<Uint32 Function(Uint32, Uint32, IntPtr, IntPtr)>(
  symbol: 'mciSendCommandW',
)
external int _mciSendCommand(int mciId, int uMsg, int dwParam1, int dwParam2);

/// Sends a command string to an MCI device.
///
/// The device that the command is sent to is specified in the command string.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757161(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int mciSendString(
  PCWSTR lpstrCommand,
  PWSTR? lpstrReturnString,
  int uReturnLength,
  HWND? hwndCallback,
) => _mciSendString(
  lpstrCommand,
  lpstrReturnString ?? nullptr,
  uReturnLength,
  hwndCallback ?? nullptr,
);

@Native<Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer)>(
  symbol: 'mciSendStringW',
)
external int _mciSendString(
  Pointer<Utf16> lpstrCommand,
  Pointer<Utf16> lpstrReturnString,
  int uReturnLength,
  Pointer hwndCallback,
);

/// Connects a MIDI input device to a MIDI thru or output device, or connects a
/// MIDI thru device to a MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiconnect>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiConnect(HMIDI hmi, HMIDIOUT hmo) => _midiConnect(hmi, hmo, nullptr);

@Native<Uint32 Function(Pointer, Pointer, Pointer)>(symbol: 'midiConnect')
external int _midiConnect(Pointer hmi, Pointer hmo, Pointer pReserved);

/// Disconnects a MIDI input device from a MIDI thru or output device, or
/// disconnects a MIDI thru device from a MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-mididisconnect>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiDisconnect(HMIDI hmi, HMIDIOUT hmo) =>
    _midiDisconnect(hmi, hmo, nullptr);

@Native<Uint32 Function(Pointer, Pointer, Pointer)>(symbol: 'midiDisconnect')
external int _midiDisconnect(Pointer hmi, Pointer hmo, Pointer pReserved);

/// Sends an input buffer to a specified opened MIDI input device.
///
/// This function is used for system-exclusive messages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinaddbuffer>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInAddBuffer(HMIDIIN hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInAddBuffer(hmi, pmh, cbmh);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInAddBuffer',
)
external int _midiInAddBuffer(Pointer hmi, Pointer<MIDIHDR> pmh, int cbmh);

/// Closes the specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinclose>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInClose(HMIDIIN hmi) => _midiInClose(hmi);

@Native<Uint32 Function(Pointer)>(symbol: 'midiInClose')
external int _midiInClose(Pointer hmi);

/// Determines the capabilities of a specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingetdevcapsw>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInGetDevCaps(int uDeviceID, Pointer<MIDIINCAPS> pmic, int cbmic) =>
    _midiInGetDevCaps(uDeviceID, pmic, cbmic);

@Native<Uint32 Function(IntPtr, Pointer<MIDIINCAPS>, Uint32)>(
  symbol: 'midiInGetDevCapsW',
)
external int _midiInGetDevCaps(
  int uDeviceID,
  Pointer<MIDIINCAPS> pmic,
  int cbmic,
);

/// Retrieves a textual description for an error identified by the specified
/// error code.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingeterrortextw>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInGetErrorText(int mmrError, PWSTR pszText, int cchText) =>
    _midiInGetErrorText(mmrError, pszText, cchText);

@Native<Uint32 Function(Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'midiInGetErrorTextW',
)
external int _midiInGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
);

/// Gets the device identifier for the given MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInGetID(HMIDIIN hmi, Pointer<Uint32> puDeviceID) =>
    _midiInGetID(hmi, puDeviceID);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'midiInGetID')
external int _midiInGetID(Pointer hmi, Pointer<Uint32> puDeviceID);

/// Retrieves the number of MIDI input devices in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingetnumdevs>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInGetNumDevs() => _midiInGetNumDevs();

@Native<Uint32 Function()>(symbol: 'midiInGetNumDevs')
external int _midiInGetNumDevs();

/// Sends a message to the MIDI device driver.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinmessage>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInMessage(HMIDIIN? hmi, int uMsg, int? dw1, int? dw2) =>
    _midiInMessage(hmi ?? nullptr, uMsg, dw1 ?? NULL, dw2 ?? NULL);

@Native<Uint32 Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'midiInMessage',
)
external int _midiInMessage(Pointer hmi, int uMsg, int dw1, int dw2);

/// Opens a specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinopen>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInOpen(
  Pointer<Pointer> phmi,
  int uDeviceID,
  int? dwCallback,
  int? dwInstance,
  MIDI_WAVE_OPEN_TYPE fdwOpen,
) => _midiInOpen(
  phmi,
  uDeviceID,
  dwCallback ?? NULL,
  dwInstance ?? NULL,
  fdwOpen,
);

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

/// Prepares a buffer for MIDI input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInPrepareHeader(HMIDIIN hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInPrepareHeader(hmi, pmh, cbmh);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInPrepareHeader',
)
external int _midiInPrepareHeader(Pointer hmi, Pointer<MIDIHDR> pmh, int cbmh);

/// Stops input on a given MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinreset>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInReset(HMIDIIN hmi) => _midiInReset(hmi);

@Native<Uint32 Function(Pointer)>(symbol: 'midiInReset')
external int _midiInReset(Pointer hmi);

/// Starts MIDI input on the specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinstart>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInStart(HMIDIIN hmi) => _midiInStart(hmi);

@Native<Uint32 Function(Pointer)>(symbol: 'midiInStart')
external int _midiInStart(Pointer hmi);

/// Stops MIDI input on the specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinstop>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInStop(HMIDIIN hmi) => _midiInStop(hmi);

@Native<Uint32 Function(Pointer)>(symbol: 'midiInStop')
external int _midiInStop(Pointer hmi);

/// Cleans up the preparation performed by the midiInPrepareHeader function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinunprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInUnprepareHeader(HMIDIIN hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInUnprepareHeader(hmi, pmh, cbmh);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInUnprepareHeader',
)
external int _midiInUnprepareHeader(
  Pointer hmi,
  Pointer<MIDIHDR> pmh,
  int cbmh,
);

/// Requests that an internal MIDI synthesizer device preload and cache a
/// specified set of key-based percussion patches.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutcachedrumpatches>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutCacheDrumPatches(
  HMIDIOUT hmo,
  int uPatch,
  Pointer<Uint16> pwkya,
  int fuCache,
) => _midiOutCacheDrumPatches(hmo, uPatch, pwkya, fuCache);

@Native<Uint32 Function(Pointer, Uint32, Pointer<Uint16>, Uint32)>(
  symbol: 'midiOutCacheDrumPatches',
)
external int _midiOutCacheDrumPatches(
  Pointer hmo,
  int uPatch,
  Pointer<Uint16> pwkya,
  int fuCache,
);

/// Requests that an internal MIDI synthesizer device preload and cache a
/// specified set of patches.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutcachepatches>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutCachePatches(
  HMIDIOUT hmo,
  int uBank,
  Pointer<Uint16> pwpa,
  int fuCache,
) => _midiOutCachePatches(hmo, uBank, pwpa, fuCache);

@Native<Uint32 Function(Pointer, Uint32, Pointer<Uint16>, Uint32)>(
  symbol: 'midiOutCachePatches',
)
external int _midiOutCachePatches(
  Pointer hmo,
  int uBank,
  Pointer<Uint16> pwpa,
  int fuCache,
);

/// Closes the specified MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutclose>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutClose(HMIDIOUT hmo) => _midiOutClose(hmo);

@Native<Uint32 Function(Pointer)>(symbol: 'midiOutClose')
external int _midiOutClose(Pointer hmo);

/// Queries a specified MIDI output device to determine its capabilities.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetdevcapsw>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutGetDevCaps(int uDeviceID, Pointer<MIDIOUTCAPS> pmoc, int cbmoc) =>
    _midiOutGetDevCaps(uDeviceID, pmoc, cbmoc);

@Native<Uint32 Function(IntPtr, Pointer<MIDIOUTCAPS>, Uint32)>(
  symbol: 'midiOutGetDevCapsW',
)
external int _midiOutGetDevCaps(
  int uDeviceID,
  Pointer<MIDIOUTCAPS> pmoc,
  int cbmoc,
);

/// Retrieves a textual description for an error identified by the specified
/// error code.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgeterrortextw>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutGetErrorText(int mmrError, PWSTR pszText, int cchText) =>
    _midiOutGetErrorText(mmrError, pszText, cchText);

@Native<Uint32 Function(Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'midiOutGetErrorTextW',
)
external int _midiOutGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
);

/// Retrieves the device identifier for the given MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutGetID(HMIDIOUT hmo, Pointer<Uint32> puDeviceID) =>
    _midiOutGetID(hmo, puDeviceID);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'midiOutGetID')
external int _midiOutGetID(Pointer hmo, Pointer<Uint32> puDeviceID);

/// Retrieves the number of MIDI output devices present in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetnumdevs>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutGetNumDevs() => _midiOutGetNumDevs();

@Native<Uint32 Function()>(symbol: 'midiOutGetNumDevs')
external int _midiOutGetNumDevs();

/// Retrieves the current volume setting of a MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetvolume>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutGetVolume(HMIDIOUT? hmo, Pointer<Uint32> pdwVolume) =>
    _midiOutGetVolume(hmo ?? nullptr, pdwVolume);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'midiOutGetVolume')
external int _midiOutGetVolume(Pointer hmo, Pointer<Uint32> pdwVolume);

/// Sends a system-exclusive MIDI message to the specified MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutlongmsg>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutLongMsg(HMIDIOUT hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutLongMsg(hmo, pmh, cbmh);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutLongMsg',
)
external int _midiOutLongMsg(Pointer hmo, Pointer<MIDIHDR> pmh, int cbmh);

/// Sends a message to the MIDI device drivers.
///
/// This function is used only for driver-specific messages that are not
/// supported by the MIDI API.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutmessage>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutMessage(HMIDIOUT? hmo, int uMsg, int? dw1, int? dw2) =>
    _midiOutMessage(hmo ?? nullptr, uMsg, dw1 ?? NULL, dw2 ?? NULL);

@Native<Uint32 Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'midiOutMessage',
)
external int _midiOutMessage(Pointer hmo, int uMsg, int dw1, int dw2);

/// Opens a MIDI output device for playback.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutopen>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutOpen(
  Pointer<Pointer> phmo,
  int uDeviceID,
  int? dwCallback,
  int? dwInstance,
  MIDI_WAVE_OPEN_TYPE fdwOpen,
) => _midiOutOpen(
  phmo,
  uDeviceID,
  dwCallback ?? NULL,
  dwInstance ?? NULL,
  fdwOpen,
);

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

/// Prepares a MIDI system-exclusive or stream buffer for output.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutPrepareHeader(HMIDIOUT hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutPrepareHeader(hmo, pmh, cbmh);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutPrepareHeader',
)
external int _midiOutPrepareHeader(Pointer hmo, Pointer<MIDIHDR> pmh, int cbmh);

/// Turns off all notes on all MIDI channels for the specified MIDI output
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutreset>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutReset(HMIDIOUT hmo) => _midiOutReset(hmo);

@Native<Uint32 Function(Pointer)>(symbol: 'midiOutReset')
external int _midiOutReset(Pointer hmo);

/// Sets the volume of a MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutsetvolume>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutSetVolume(HMIDIOUT? hmo, int dwVolume) =>
    _midiOutSetVolume(hmo ?? nullptr, dwVolume);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'midiOutSetVolume')
external int _midiOutSetVolume(Pointer hmo, int dwVolume);

/// Sends a short MIDI message to the specified MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutshortmsg>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutShortMsg(HMIDIOUT hmo, int dwMsg) => _midiOutShortMsg(hmo, dwMsg);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'midiOutShortMsg')
external int _midiOutShortMsg(Pointer hmo, int dwMsg);

/// Cleans up the preparation performed by the midiOutPrepareHeader function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutunprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutUnprepareHeader(HMIDIOUT hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutUnprepareHeader(hmo, pmh, cbmh);

@Native<Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutUnprepareHeader',
)
external int _midiOutUnprepareHeader(
  Pointer hmo,
  Pointer<MIDIHDR> pmh,
  int cbmh,
);

/// Plays a sound specified by the given file name, resource, or system event.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions//dd743680(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
bool PlaySound(PCWSTR? pszSound, HMODULE? hmod, SND_FLAGS fdwSound) =>
    _PlaySound(pszSound ?? nullptr, hmod ?? nullptr, fdwSound) != FALSE;

@Native<Int32 Function(Pointer<Utf16>, Pointer, Uint32)>(symbol: 'PlaySoundW')
external int _PlaySound(Pointer<Utf16> pszSound, Pointer hmod, int fdwSound);

/// Retrieves the system time, in milliseconds.
///
/// The system time is the time elapsed since Windows was started.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/timeapi/nf-timeapi-timegettime>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int timeGetTime() => _timeGetTime();

@Native<Uint32 Function()>(symbol: 'timeGetTime')
external int _timeGetTime();

/// Sends an input buffer to the given waveform-audio input device.
///
/// When the buffer is filled, the application is notified.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinaddbuffer>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInAddBuffer(HWAVEIN hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInAddBuffer(hwi, pwh, cbwh);

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInAddBuffer',
)
external int _waveInAddBuffer(Pointer hwi, Pointer<WAVEHDR> pwh, int cbwh);

/// Closes the given waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinclose>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInClose(HWAVEIN hwi) => _waveInClose(hwi);

@Native<Uint32 Function(Pointer)>(symbol: 'waveInClose')
external int _waveInClose(Pointer hwi);

/// Retrieves the capabilities of a given waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetdevcaps>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInGetDevCaps(int uDeviceID, Pointer<WAVEINCAPS> pwic, int cbwic) =>
    _waveInGetDevCaps(uDeviceID, pwic, cbwic);

@Native<Uint32 Function(IntPtr, Pointer<WAVEINCAPS>, Uint32)>(
  symbol: 'waveInGetDevCapsW',
)
external int _waveInGetDevCaps(
  int uDeviceID,
  Pointer<WAVEINCAPS> pwic,
  int cbwic,
);

/// Retrieves a textual description of the error identified by the given error
/// number.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingeterrortext>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInGetErrorText(int mmrError, PWSTR pszText, int cchText) =>
    _waveInGetErrorText(mmrError, pszText, cchText);

@Native<Uint32 Function(Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'waveInGetErrorTextW',
)
external int _waveInGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
);

/// Gets the device identifier for the given waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInGetID(HWAVEIN hwi, Pointer<Uint32> puDeviceID) =>
    _waveInGetID(hwi, puDeviceID);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'waveInGetID')
external int _waveInGetID(Pointer hwi, Pointer<Uint32> puDeviceID);

/// Returns the number of waveform-audio input devices present in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetnumdevs>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInGetNumDevs() => _waveInGetNumDevs();

@Native<Uint32 Function()>(symbol: 'waveInGetNumDevs')
external int _waveInGetNumDevs();

/// Retrieves the current input position of the given waveform-audio input
/// device.
///
/// **Note:** This function is no longer supported for use as of Windows Vista.
/// Instead, use IAudioClock.getPosition.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetposition>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInGetPosition(HWAVEIN hwi, Pointer<MMTIME> pmmt, int cbmmt) =>
    _waveInGetPosition(hwi, pmmt, cbmmt);

@Native<Uint32 Function(Pointer, Pointer<MMTIME>, Uint32)>(
  symbol: 'waveInGetPosition',
)
external int _waveInGetPosition(Pointer hwi, Pointer<MMTIME> pmmt, int cbmmt);

/// Sends messages to the waveform-audio input device drivers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinmessage>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInMessage(HWAVEIN? hwi, int uMsg, int? dw1, int? dw2) =>
    _waveInMessage(hwi ?? nullptr, uMsg, dw1 ?? NULL, dw2 ?? NULL);

@Native<Uint32 Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'waveInMessage',
)
external int _waveInMessage(Pointer hwi, int uMsg, int dw1, int dw2);

/// Opens the given waveform-audio input device for recording.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinopen>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInOpen(
  Pointer<Pointer>? phwi,
  int uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  int? dwCallback,
  int? dwInstance,
  MIDI_WAVE_OPEN_TYPE fdwOpen,
) => _waveInOpen(
  phwi ?? nullptr,
  uDeviceID,
  pwfx,
  dwCallback ?? NULL,
  dwInstance ?? NULL,
  fdwOpen,
);

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

/// Prepares a buffer for waveform-audio input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInPrepareHeader(HWAVEIN hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInPrepareHeader(hwi, pwh, cbwh);

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInPrepareHeader',
)
external int _waveInPrepareHeader(Pointer hwi, Pointer<WAVEHDR> pwh, int cbwh);

/// Stops input on the given waveform-audio input device and resets the current
/// position to zero.
///
/// All pending buffers are marked as done and returned to the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinreset>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInReset(HWAVEIN hwi) => _waveInReset(hwi);

@Native<Uint32 Function(Pointer)>(symbol: 'waveInReset')
external int _waveInReset(Pointer hwi);

/// Starts input on the given waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinstart>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInStart(HWAVEIN hwi) => _waveInStart(hwi);

@Native<Uint32 Function(Pointer)>(symbol: 'waveInStart')
external int _waveInStart(Pointer hwi);

/// Stops waveform-audio input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinstop>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInStop(HWAVEIN hwi) => _waveInStop(hwi);

@Native<Uint32 Function(Pointer)>(symbol: 'waveInStop')
external int _waveInStop(Pointer hwi);

/// Cleans up the preparation performed by the waveInPrepareHeader function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinunprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInUnprepareHeader(HWAVEIN hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInUnprepareHeader(hwi, pwh, cbwh);

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInUnprepareHeader',
)
external int _waveInUnprepareHeader(
  Pointer hwi,
  Pointer<WAVEHDR> pwh,
  int cbwh,
);

/// Closes the given waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutclose>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutClose(HWAVEOUT hwo) => _waveOutClose(hwo);

@Native<Uint32 Function(Pointer)>(symbol: 'waveOutClose')
external int _waveOutClose(Pointer hwo);

/// Retrieves the capabilities of a given waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetdevcaps>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetDevCaps(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc, int cbwoc) =>
    _waveOutGetDevCaps(uDeviceID, pwoc, cbwoc);

@Native<Uint32 Function(IntPtr, Pointer<WAVEOUTCAPS>, Uint32)>(
  symbol: 'waveOutGetDevCapsW',
)
external int _waveOutGetDevCaps(
  int uDeviceID,
  Pointer<WAVEOUTCAPS> pwoc,
  int cbwoc,
);

/// Retrieves a textual description of the error identified by the given error
/// number.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgeterrortext>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetErrorText(int mmrError, PWSTR pszText, int cchText) =>
    _waveOutGetErrorText(mmrError, pszText, cchText);

@Native<Uint32 Function(Uint32, Pointer<Utf16>, Uint32)>(
  symbol: 'waveOutGetErrorTextW',
)
external int _waveOutGetErrorText(
  int mmrError,
  Pointer<Utf16> pszText,
  int cchText,
);

/// Retrieves the device identifier for the given waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetID(HWAVEOUT hwo, Pointer<Uint32> puDeviceID) =>
    _waveOutGetID(hwo, puDeviceID);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'waveOutGetID')
external int _waveOutGetID(Pointer hwo, Pointer<Uint32> puDeviceID);

/// Retrieves the number of waveform-audio output devices present in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetnumdevs>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetNumDevs() => _waveOutGetNumDevs();

@Native<Uint32 Function()>(symbol: 'waveOutGetNumDevs')
external int _waveOutGetNumDevs();

/// Retrieves the current pitch setting for the specified waveform-audio output
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetpitch>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetPitch(HWAVEOUT hwo, Pointer<Uint32> pdwPitch) =>
    _waveOutGetPitch(hwo, pdwPitch);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'waveOutGetPitch')
external int _waveOutGetPitch(Pointer hwo, Pointer<Uint32> pdwPitch);

/// Retrieves the current playback rate for the specified waveform-audio output
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetplaybackrate>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetPlaybackRate(HWAVEOUT hwo, Pointer<Uint32> pdwRate) =>
    _waveOutGetPlaybackRate(hwo, pdwRate);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(
  symbol: 'waveOutGetPlaybackRate',
)
external int _waveOutGetPlaybackRate(Pointer hwo, Pointer<Uint32> pdwRate);

/// Retrieves the current playback position of the given waveform-audio output
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetposition>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetPosition(HWAVEOUT hwo, Pointer<MMTIME> pmmt, int cbmmt) =>
    _waveOutGetPosition(hwo, pmmt, cbmmt);

@Native<Uint32 Function(Pointer, Pointer<MMTIME>, Uint32)>(
  symbol: 'waveOutGetPosition',
)
external int _waveOutGetPosition(Pointer hwo, Pointer<MMTIME> pmmt, int cbmmt);

/// Retrieves the current volume level of the specified waveform-audio output
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetvolume>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetVolume(HWAVEOUT? hwo, Pointer<Uint32> pdwVolume) =>
    _waveOutGetVolume(hwo ?? nullptr, pdwVolume);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(symbol: 'waveOutGetVolume')
external int _waveOutGetVolume(Pointer hwo, Pointer<Uint32> pdwVolume);

/// Sends messages to the waveform-audio output device drivers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutmessage>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutMessage(HWAVEOUT? hwo, int uMsg, int dw1, int dw2) =>
    _waveOutMessage(hwo ?? nullptr, uMsg, dw1, dw2);

@Native<Uint32 Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'waveOutMessage',
)
external int _waveOutMessage(Pointer hwo, int uMsg, int dw1, int dw2);

/// Opens the given waveform-audio output device for playback.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutopen>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutOpen(
  Pointer<Pointer>? phwo,
  int uDeviceID,
  Pointer<WAVEFORMATEX> pwfx,
  int? dwCallback,
  int? dwInstance,
  MIDI_WAVE_OPEN_TYPE fdwOpen,
) => _waveOutOpen(
  phwo ?? nullptr,
  uDeviceID,
  pwfx,
  dwCallback ?? NULL,
  dwInstance ?? NULL,
  fdwOpen,
);

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

/// Pauses playback on the given waveform-audio output device.
///
/// The current position is saved. Use the waveOutRestart function to resume
/// playback from the current position.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutpause>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutPause(HWAVEOUT hwo) => _waveOutPause(hwo);

@Native<Uint32 Function(Pointer)>(symbol: 'waveOutPause')
external int _waveOutPause(Pointer hwo);

/// Prepares a waveform-audio data block for playback.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutPrepareHeader(HWAVEOUT hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutPrepareHeader(hwo, pwh, cbwh);

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutPrepareHeader',
)
external int _waveOutPrepareHeader(Pointer hwo, Pointer<WAVEHDR> pwh, int cbwh);

/// Stops playback on the given waveform-audio output device and resets the
/// current position to zero.
///
/// All pending playback buffers are marked as done (WHDR_DONE) and returned to
/// the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutreset>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutReset(HWAVEOUT hwo) => _waveOutReset(hwo);

@Native<Uint32 Function(Pointer)>(symbol: 'waveOutReset')
external int _waveOutReset(Pointer hwo);

/// Resumes playback on a paused waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutrestart>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutRestart(HWAVEOUT hwo) => _waveOutRestart(hwo);

@Native<Uint32 Function(Pointer)>(symbol: 'waveOutRestart')
external int _waveOutRestart(Pointer hwo);

/// Sets the pitch for the specified waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetpitch>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutSetPitch(HWAVEOUT hwo, int dwPitch) =>
    _waveOutSetPitch(hwo, dwPitch);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'waveOutSetPitch')
external int _waveOutSetPitch(Pointer hwo, int dwPitch);

/// Sets the playback rate for the specified waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetplaybackrate>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutSetPlaybackRate(HWAVEOUT hwo, int dwRate) =>
    _waveOutSetPlaybackRate(hwo, dwRate);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'waveOutSetPlaybackRate')
external int _waveOutSetPlaybackRate(Pointer hwo, int dwRate);

/// Sets the volume level of the specified waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetvolume>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutSetVolume(HWAVEOUT? hwo, int dwVolume) =>
    _waveOutSetVolume(hwo ?? nullptr, dwVolume);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'waveOutSetVolume')
external int _waveOutSetVolume(Pointer hwo, int dwVolume);

/// Cleans up the preparation performed by the waveOutPrepareHeader function.
///
/// This function must be called after the device driver is finished with a data
/// block. You must call this function before freeing the buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutunprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutUnprepareHeader(HWAVEOUT hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutUnprepareHeader(hwo, pwh, cbwh);

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutUnprepareHeader',
)
external int _waveOutUnprepareHeader(
  Pointer hwo,
  Pointer<WAVEHDR> pwh,
  int cbwh,
);

/// Sends a data block to the given waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutwrite>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutWrite(HWAVEOUT hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutWrite(hwo, pwh, cbwh);

@Native<Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutWrite',
)
external int _waveOutWrite(Pointer hwo, Pointer<WAVEHDR> pwh, int cbwh);
