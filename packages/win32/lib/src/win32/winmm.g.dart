// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
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
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Retrieves the device identifier corresponding to the name of an open device.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757156(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int mciGetDeviceID(PCWSTR pszDevice) => _mciGetDeviceID(pszDevice);

@Native<Uint32 Function(PCWSTR)>(symbol: 'mciGetDeviceIDW')
external int _mciGetDeviceID(PCWSTR pszDevice);

/// Retrieves the MCI device identifier corresponding to an element identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757157(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int mciGetDeviceIDFromElementID(int dwElementID, PCWSTR lpstrType) =>
    _mciGetDeviceIDFromElementID(dwElementID, lpstrType);

@Native<Uint32 Function(Uint32, PCWSTR)>(symbol: 'mciGetDeviceIDFromElementIDW')
external int _mciGetDeviceIDFromElementID(int dwElementID, PCWSTR lpstrType);

/// Retrieves a string that describes the specified MCI error code.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757158(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
bool mciGetErrorString(int mcierr, PWSTR pszText, int cchText) =>
    _mciGetErrorString(mcierr, pszText, cchText) != FALSE;

@Native<BOOL Function(Uint32, PWSTR, Uint32)>(symbol: 'mciGetErrorStringW')
external int _mciGetErrorString(int mcierr, PWSTR pszText, int cchText);

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
  int? hwndCallback,
) => _mciSendString(
  lpstrCommand,
  lpstrReturnString ?? nullptr,
  uReturnLength,
  hwndCallback ?? NULL,
);

@Native<Uint32 Function(PCWSTR, PWSTR, Uint32, HWND)>(symbol: 'mciSendStringW')
external int _mciSendString(
  PCWSTR lpstrCommand,
  PWSTR lpstrReturnString,
  int uReturnLength,
  int hwndCallback,
);

/// Connects a MIDI input device to a MIDI thru or output device, or connects a
/// MIDI thru device to a MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiconnect>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiConnect(int hmi, int hmo) => _midiConnect(hmi, hmo, nullptr);

@Native<Uint32 Function(HMIDI, HMIDIOUT, Pointer)>(symbol: 'midiConnect')
external int _midiConnect(int hmi, int hmo, Pointer pReserved);

/// Disconnects a MIDI input device from a MIDI thru or output device, or
/// disconnects a MIDI thru device from a MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-mididisconnect>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiDisconnect(int hmi, int hmo) => _midiDisconnect(hmi, hmo, nullptr);

@Native<Uint32 Function(HMIDI, HMIDIOUT, Pointer)>(symbol: 'midiDisconnect')
external int _midiDisconnect(int hmi, int hmo, Pointer pReserved);

/// Sends an input buffer to a specified opened MIDI input device.
///
/// This function is used for system-exclusive messages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinaddbuffer>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInAddBuffer(int hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInAddBuffer(hmi, pmh, cbmh);

@Native<Uint32 Function(HMIDIIN, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInAddBuffer',
)
external int _midiInAddBuffer(int hmi, Pointer<MIDIHDR> pmh, int cbmh);

/// Closes the specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinclose>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInClose(int hmi) => _midiInClose(hmi);

@Native<Uint32 Function(HMIDIIN)>(symbol: 'midiInClose')
external int _midiInClose(int hmi);

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

@Native<Uint32 Function(Uint32, PWSTR, Uint32)>(symbol: 'midiInGetErrorTextW')
external int _midiInGetErrorText(int mmrError, PWSTR pszText, int cchText);

/// Gets the device identifier for the given MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInGetID(int hmi, Pointer<Uint32> puDeviceID) =>
    _midiInGetID(hmi, puDeviceID);

@Native<Uint32 Function(HMIDIIN, Pointer<Uint32>)>(symbol: 'midiInGetID')
external int _midiInGetID(int hmi, Pointer<Uint32> puDeviceID);

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
int midiInMessage(int? hmi, int uMsg, int? dw1, int? dw2) =>
    _midiInMessage(hmi ?? NULL, uMsg, dw1 ?? NULL, dw2 ?? NULL);

@Native<Uint32 Function(HMIDIIN, Uint32, IntPtr, IntPtr)>(
  symbol: 'midiInMessage',
)
external int _midiInMessage(int hmi, int uMsg, int dw1, int dw2);

/// Opens a specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinopen>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInOpen(
  Pointer<HMIDIIN> phmi,
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

/// Prepares a buffer for MIDI input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInPrepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInPrepareHeader(hmi, pmh, cbmh);

@Native<Uint32 Function(HMIDIIN, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInPrepareHeader',
)
external int _midiInPrepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh);

/// Stops input on a given MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinreset>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInReset(int hmi) => _midiInReset(hmi);

@Native<Uint32 Function(HMIDIIN)>(symbol: 'midiInReset')
external int _midiInReset(int hmi);

/// Starts MIDI input on the specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinstart>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInStart(int hmi) => _midiInStart(hmi);

@Native<Uint32 Function(HMIDIIN)>(symbol: 'midiInStart')
external int _midiInStart(int hmi);

/// Stops MIDI input on the specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinstop>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInStop(int hmi) => _midiInStop(hmi);

@Native<Uint32 Function(HMIDIIN)>(symbol: 'midiInStop')
external int _midiInStop(int hmi);

/// Cleans up the preparation performed by the midiInPrepareHeader function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinunprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInUnprepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInUnprepareHeader(hmi, pmh, cbmh);

@Native<Uint32 Function(HMIDIIN, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiInUnprepareHeader',
)
external int _midiInUnprepareHeader(int hmi, Pointer<MIDIHDR> pmh, int cbmh);

/// Requests that an internal MIDI synthesizer device preload and cache a
/// specified set of key-based percussion patches.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutcachedrumpatches>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutCacheDrumPatches(
  int hmo,
  int uPatch,
  Pointer<Uint16> pwkya,
  int fuCache,
) => _midiOutCacheDrumPatches(hmo, uPatch, pwkya, fuCache);

@Native<Uint32 Function(HMIDIOUT, Uint32, Pointer<Uint16>, Uint32)>(
  symbol: 'midiOutCacheDrumPatches',
)
external int _midiOutCacheDrumPatches(
  int hmo,
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
  int hmo,
  int uBank,
  Pointer<Uint16> pwpa,
  int fuCache,
) => _midiOutCachePatches(hmo, uBank, pwpa, fuCache);

@Native<Uint32 Function(HMIDIOUT, Uint32, Pointer<Uint16>, Uint32)>(
  symbol: 'midiOutCachePatches',
)
external int _midiOutCachePatches(
  int hmo,
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
int midiOutClose(int hmo) => _midiOutClose(hmo);

@Native<Uint32 Function(HMIDIOUT)>(symbol: 'midiOutClose')
external int _midiOutClose(int hmo);

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

@Native<Uint32 Function(Uint32, PWSTR, Uint32)>(symbol: 'midiOutGetErrorTextW')
external int _midiOutGetErrorText(int mmrError, PWSTR pszText, int cchText);

/// Retrieves the device identifier for the given MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutGetID(int hmo, Pointer<Uint32> puDeviceID) =>
    _midiOutGetID(hmo, puDeviceID);

@Native<Uint32 Function(HMIDIOUT, Pointer<Uint32>)>(symbol: 'midiOutGetID')
external int _midiOutGetID(int hmo, Pointer<Uint32> puDeviceID);

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
int midiOutGetVolume(int? hmo, Pointer<Uint32> pdwVolume) =>
    _midiOutGetVolume(hmo ?? NULL, pdwVolume);

@Native<Uint32 Function(HMIDIOUT, Pointer<Uint32>)>(symbol: 'midiOutGetVolume')
external int _midiOutGetVolume(int hmo, Pointer<Uint32> pdwVolume);

/// Sends a system-exclusive MIDI message to the specified MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutlongmsg>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutLongMsg(int hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutLongMsg(hmo, pmh, cbmh);

@Native<Uint32 Function(HMIDIOUT, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutLongMsg',
)
external int _midiOutLongMsg(int hmo, Pointer<MIDIHDR> pmh, int cbmh);

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
int midiOutMessage(int? hmo, int uMsg, int? dw1, int? dw2) =>
    _midiOutMessage(hmo ?? NULL, uMsg, dw1 ?? NULL, dw2 ?? NULL);

@Native<Uint32 Function(HMIDIOUT, Uint32, IntPtr, IntPtr)>(
  symbol: 'midiOutMessage',
)
external int _midiOutMessage(int hmo, int uMsg, int dw1, int dw2);

/// Opens a MIDI output device for playback.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutopen>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutOpen(
  Pointer<HMIDIOUT> phmo,
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

/// Prepares a MIDI system-exclusive or stream buffer for output.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutPrepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutPrepareHeader(hmo, pmh, cbmh);

@Native<Uint32 Function(HMIDIOUT, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutPrepareHeader',
)
external int _midiOutPrepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh);

/// Turns off all notes on all MIDI channels for the specified MIDI output
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutreset>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutReset(int hmo) => _midiOutReset(hmo);

@Native<Uint32 Function(HMIDIOUT)>(symbol: 'midiOutReset')
external int _midiOutReset(int hmo);

/// Sets the volume of a MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutsetvolume>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutSetVolume(int? hmo, int dwVolume) =>
    _midiOutSetVolume(hmo ?? NULL, dwVolume);

@Native<Uint32 Function(HMIDIOUT, Uint32)>(symbol: 'midiOutSetVolume')
external int _midiOutSetVolume(int hmo, int dwVolume);

/// Sends a short MIDI message to the specified MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutshortmsg>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutShortMsg(int hmo, int dwMsg) => _midiOutShortMsg(hmo, dwMsg);

@Native<Uint32 Function(HMIDIOUT, Uint32)>(symbol: 'midiOutShortMsg')
external int _midiOutShortMsg(int hmo, int dwMsg);

/// Cleans up the preparation performed by the midiOutPrepareHeader function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutunprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutUnprepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutUnprepareHeader(hmo, pmh, cbmh);

@Native<Uint32 Function(HMIDIOUT, Pointer<MIDIHDR>, Uint32)>(
  symbol: 'midiOutUnprepareHeader',
)
external int _midiOutUnprepareHeader(int hmo, Pointer<MIDIHDR> pmh, int cbmh);

/// Plays a sound specified by the given file name, resource, or system event.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions//dd743680(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
bool PlaySound(PCWSTR? pszSound, int? hmod, SND_FLAGS fdwSound) =>
    _PlaySound(pszSound ?? nullptr, hmod ?? NULL, fdwSound) != FALSE;

@Native<BOOL Function(PCWSTR, HMODULE, Uint32)>(symbol: 'PlaySoundW')
external int _PlaySound(PCWSTR pszSound, int hmod, int fdwSound);

/// Sends an input buffer to the given waveform-audio input device.
///
/// When the buffer is filled, the application is notified.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinaddbuffer>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInAddBuffer(int hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInAddBuffer(hwi, pwh, cbwh);

@Native<Uint32 Function(HWAVEIN, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInAddBuffer',
)
external int _waveInAddBuffer(int hwi, Pointer<WAVEHDR> pwh, int cbwh);

/// Closes the given waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinclose>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInClose(int hwi) => _waveInClose(hwi);

@Native<Uint32 Function(HWAVEIN)>(symbol: 'waveInClose')
external int _waveInClose(int hwi);

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

@Native<Uint32 Function(Uint32, PWSTR, Uint32)>(symbol: 'waveInGetErrorTextW')
external int _waveInGetErrorText(int mmrError, PWSTR pszText, int cchText);

/// Gets the device identifier for the given waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInGetID(int hwi, Pointer<Uint32> puDeviceID) =>
    _waveInGetID(hwi, puDeviceID);

@Native<Uint32 Function(HWAVEIN, Pointer<Uint32>)>(symbol: 'waveInGetID')
external int _waveInGetID(int hwi, Pointer<Uint32> puDeviceID);

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
int waveInGetPosition(int hwi, Pointer<MMTIME> pmmt, int cbmmt) =>
    _waveInGetPosition(hwi, pmmt, cbmmt);

@Native<Uint32 Function(HWAVEIN, Pointer<MMTIME>, Uint32)>(
  symbol: 'waveInGetPosition',
)
external int _waveInGetPosition(int hwi, Pointer<MMTIME> pmmt, int cbmmt);

/// Sends messages to the waveform-audio input device drivers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinmessage>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInMessage(int? hwi, int uMsg, int? dw1, int? dw2) =>
    _waveInMessage(hwi ?? NULL, uMsg, dw1 ?? NULL, dw2 ?? NULL);

@Native<Uint32 Function(HWAVEIN, Uint32, IntPtr, IntPtr)>(
  symbol: 'waveInMessage',
)
external int _waveInMessage(int hwi, int uMsg, int dw1, int dw2);

/// Opens the given waveform-audio input device for recording.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinopen>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInOpen(
  Pointer<HWAVEIN>? phwi,
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

/// Prepares a buffer for waveform-audio input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInPrepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInPrepareHeader(hwi, pwh, cbwh);

@Native<Uint32 Function(HWAVEIN, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInPrepareHeader',
)
external int _waveInPrepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh);

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
int waveInReset(int hwi) => _waveInReset(hwi);

@Native<Uint32 Function(HWAVEIN)>(symbol: 'waveInReset')
external int _waveInReset(int hwi);

/// Starts input on the given waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinstart>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInStart(int hwi) => _waveInStart(hwi);

@Native<Uint32 Function(HWAVEIN)>(symbol: 'waveInStart')
external int _waveInStart(int hwi);

/// Stops waveform-audio input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinstop>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInStop(int hwi) => _waveInStop(hwi);

@Native<Uint32 Function(HWAVEIN)>(symbol: 'waveInStop')
external int _waveInStop(int hwi);

/// Cleans up the preparation performed by the waveInPrepareHeader function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinunprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInUnprepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInUnprepareHeader(hwi, pwh, cbwh);

@Native<Uint32 Function(HWAVEIN, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveInUnprepareHeader',
)
external int _waveInUnprepareHeader(int hwi, Pointer<WAVEHDR> pwh, int cbwh);

/// Closes the given waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutclose>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutClose(int hwo) => _waveOutClose(hwo);

@Native<Uint32 Function(HWAVEOUT)>(symbol: 'waveOutClose')
external int _waveOutClose(int hwo);

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

@Native<Uint32 Function(Uint32, PWSTR, Uint32)>(symbol: 'waveOutGetErrorTextW')
external int _waveOutGetErrorText(int mmrError, PWSTR pszText, int cchText);

/// Retrieves the device identifier for the given waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetID(int hwo, Pointer<Uint32> puDeviceID) =>
    _waveOutGetID(hwo, puDeviceID);

@Native<Uint32 Function(HWAVEOUT, Pointer<Uint32>)>(symbol: 'waveOutGetID')
external int _waveOutGetID(int hwo, Pointer<Uint32> puDeviceID);

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
int waveOutGetPitch(int hwo, Pointer<Uint32> pdwPitch) =>
    _waveOutGetPitch(hwo, pdwPitch);

@Native<Uint32 Function(HWAVEOUT, Pointer<Uint32>)>(symbol: 'waveOutGetPitch')
external int _waveOutGetPitch(int hwo, Pointer<Uint32> pdwPitch);

/// Retrieves the current playback rate for the specified waveform-audio output
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetplaybackrate>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetPlaybackRate(int hwo, Pointer<Uint32> pdwRate) =>
    _waveOutGetPlaybackRate(hwo, pdwRate);

@Native<Uint32 Function(HWAVEOUT, Pointer<Uint32>)>(
  symbol: 'waveOutGetPlaybackRate',
)
external int _waveOutGetPlaybackRate(int hwo, Pointer<Uint32> pdwRate);

/// Retrieves the current playback position of the given waveform-audio output
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetposition>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetPosition(int hwo, Pointer<MMTIME> pmmt, int cbmmt) =>
    _waveOutGetPosition(hwo, pmmt, cbmmt);

@Native<Uint32 Function(HWAVEOUT, Pointer<MMTIME>, Uint32)>(
  symbol: 'waveOutGetPosition',
)
external int _waveOutGetPosition(int hwo, Pointer<MMTIME> pmmt, int cbmmt);

/// Retrieves the current volume level of the specified waveform-audio output
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetvolume>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetVolume(int? hwo, Pointer<Uint32> pdwVolume) =>
    _waveOutGetVolume(hwo ?? NULL, pdwVolume);

@Native<Uint32 Function(HWAVEOUT, Pointer<Uint32>)>(symbol: 'waveOutGetVolume')
external int _waveOutGetVolume(int hwo, Pointer<Uint32> pdwVolume);

/// Sends messages to the waveform-audio output device drivers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutmessage>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutMessage(int? hwo, int uMsg, int dw1, int dw2) =>
    _waveOutMessage(hwo ?? NULL, uMsg, dw1, dw2);

@Native<Uint32 Function(HWAVEOUT, Uint32, IntPtr, IntPtr)>(
  symbol: 'waveOutMessage',
)
external int _waveOutMessage(int hwo, int uMsg, int dw1, int dw2);

/// Opens the given waveform-audio output device for playback.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutopen>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutOpen(
  Pointer<HWAVEOUT>? phwo,
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
int waveOutPause(int hwo) => _waveOutPause(hwo);

@Native<Uint32 Function(HWAVEOUT)>(symbol: 'waveOutPause')
external int _waveOutPause(int hwo);

/// Prepares a waveform-audio data block for playback.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutPrepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutPrepareHeader(hwo, pwh, cbwh);

@Native<Uint32 Function(HWAVEOUT, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutPrepareHeader',
)
external int _waveOutPrepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh);

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
int waveOutReset(int hwo) => _waveOutReset(hwo);

@Native<Uint32 Function(HWAVEOUT)>(symbol: 'waveOutReset')
external int _waveOutReset(int hwo);

/// Resumes playback on a paused waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutrestart>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutRestart(int hwo) => _waveOutRestart(hwo);

@Native<Uint32 Function(HWAVEOUT)>(symbol: 'waveOutRestart')
external int _waveOutRestart(int hwo);

/// Sets the pitch for the specified waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetpitch>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutSetPitch(int hwo, int dwPitch) => _waveOutSetPitch(hwo, dwPitch);

@Native<Uint32 Function(HWAVEOUT, Uint32)>(symbol: 'waveOutSetPitch')
external int _waveOutSetPitch(int hwo, int dwPitch);

/// Sets the playback rate for the specified waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetplaybackrate>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutSetPlaybackRate(int hwo, int dwRate) =>
    _waveOutSetPlaybackRate(hwo, dwRate);

@Native<Uint32 Function(HWAVEOUT, Uint32)>(symbol: 'waveOutSetPlaybackRate')
external int _waveOutSetPlaybackRate(int hwo, int dwRate);

/// Sets the volume level of the specified waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetvolume>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutSetVolume(int? hwo, int dwVolume) =>
    _waveOutSetVolume(hwo ?? NULL, dwVolume);

@Native<Uint32 Function(HWAVEOUT, Uint32)>(symbol: 'waveOutSetVolume')
external int _waveOutSetVolume(int hwo, int dwVolume);

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
int waveOutUnprepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutUnprepareHeader(hwo, pwh, cbwh);

@Native<Uint32 Function(HWAVEOUT, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutUnprepareHeader',
)
external int _waveOutUnprepareHeader(int hwo, Pointer<WAVEHDR> pwh, int cbwh);

/// Sends a data block to the given waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutwrite>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutWrite(int hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutWrite(hwo, pwh, cbwh);

@Native<Uint32 Function(HWAVEOUT, Pointer<WAVEHDR>, Uint32)>(
  symbol: 'waveOutWrite',
)
external int _waveOutWrite(int hwo, Pointer<WAVEHDR> pwh, int cbwh);
