// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

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
import '../functions.dart';
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

final _winmm = DynamicLibrary.open('winmm.dll');

/// Retrieves the device identifier corresponding to the name of an open device.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757156(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int mciGetDeviceID(PCWSTR pszDevice) => _mciGetDeviceID(pszDevice);

final _mciGetDeviceID = _winmm
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('mciGetDeviceIDW');

/// Retrieves the MCI device identifier corresponding to an element identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757157(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int mciGetDeviceIDFromElementID(int dwElementID, PCWSTR lpstrType) =>
    _mciGetDeviceIDFromElementID(dwElementID, lpstrType);

final _mciGetDeviceIDFromElementID = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>),
      int Function(int, Pointer<Utf16>)
    >('mciGetDeviceIDFromElementIDW');

/// Retrieves a string that describes the specified MCI error code.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757158(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
bool mciGetErrorString(int mcierr, PWSTR pszText, int cchText) =>
    _mciGetErrorString(mcierr, pszText, cchText) != FALSE;

final _mciGetErrorString = _winmm
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('mciGetErrorStringW');

/// Sends a command message to the specified MCI device.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd757160(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int mciSendCommand(int mciId, int uMsg, int? dwParam1, int? dwParam2) =>
    _mciSendCommand(mciId, uMsg, dwParam1 ?? NULL, dwParam2 ?? NULL);

final _mciSendCommand = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Uint32, IntPtr, IntPtr),
      int Function(int, int, int, int)
    >('mciSendCommandW');

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

final _mciSendString = _winmm
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer)
    >('mciSendStringW');

/// Connects a MIDI input device to a MIDI thru or output device, or connects a
/// MIDI thru device to a MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiconnect>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiConnect(HMIDI hmi, HMIDIOUT hmo) => _midiConnect(hmi, hmo, nullptr);

final _midiConnect = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer, Pointer),
      int Function(Pointer, Pointer, Pointer)
    >('midiConnect');

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

final _midiDisconnect = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer, Pointer),
      int Function(Pointer, Pointer, Pointer)
    >('midiDisconnect');

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

final _midiInAddBuffer = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiInAddBuffer');

/// Closes the specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinclose>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInClose(HMIDIIN hmi) => _midiInClose(hmi);

final _midiInClose = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiInClose',
    );

/// Determines the capabilities of a specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingetdevcapsw>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInGetDevCaps(int uDeviceID, Pointer<MIDIINCAPS> pmic, int cbmic) =>
    _midiInGetDevCaps(uDeviceID, pmic, cbmic);

final _midiInGetDevCaps = _winmm
    .lookupFunction<
      Uint32 Function(IntPtr, Pointer<MIDIINCAPS>, Uint32),
      int Function(int, Pointer<MIDIINCAPS>, int)
    >('midiInGetDevCapsW');

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

final _midiInGetErrorText = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('midiInGetErrorTextW');

/// Gets the device identifier for the given MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInGetID(HMIDIIN hmi, Pointer<Uint32> puDeviceID) =>
    _midiInGetID(hmi, puDeviceID);

final _midiInGetID = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('midiInGetID');

/// Retrieves the number of MIDI input devices in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiingetnumdevs>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInGetNumDevs() => _midiInGetNumDevs();

final _midiInGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('midiInGetNumDevs');

/// Sends a message to the MIDI device driver.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinmessage>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInMessage(HMIDIIN? hmi, int uMsg, int? dw1, int? dw2) =>
    _midiInMessage(hmi ?? nullptr, uMsg, dw1 ?? NULL, dw2 ?? NULL);

final _midiInMessage = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('midiInMessage');

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

final _midiInOpen = _winmm
    .lookupFunction<
      Uint32 Function(Pointer<Pointer>, Uint32, IntPtr, IntPtr, Uint32),
      int Function(Pointer<Pointer>, int, int, int, int)
    >('midiInOpen');

/// Prepares a buffer for MIDI input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInPrepareHeader(HMIDIIN hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInPrepareHeader(hmi, pmh, cbmh);

final _midiInPrepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiInPrepareHeader');

/// Stops input on a given MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinreset>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInReset(HMIDIIN hmi) => _midiInReset(hmi);

final _midiInReset = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiInReset',
    );

/// Starts MIDI input on the specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinstart>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInStart(HMIDIIN hmi) => _midiInStart(hmi);

final _midiInStart = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiInStart',
    );

/// Stops MIDI input on the specified MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinstop>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInStop(HMIDIIN hmi) => _midiInStop(hmi);

final _midiInStop = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiInStop',
    );

/// Cleans up the preparation performed by the midiInPrepareHeader function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midiinunprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiInUnprepareHeader(HMIDIIN hmi, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiInUnprepareHeader(hmi, pmh, cbmh);

final _midiInUnprepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiInUnprepareHeader');

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

final _midiOutCacheDrumPatches = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<Uint16>, Uint32),
      int Function(Pointer, int, Pointer<Uint16>, int)
    >('midiOutCacheDrumPatches');

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

final _midiOutCachePatches = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<Uint16>, Uint32),
      int Function(Pointer, int, Pointer<Uint16>, int)
    >('midiOutCachePatches');

/// Closes the specified MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutclose>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutClose(HMIDIOUT hmo) => _midiOutClose(hmo);

final _midiOutClose = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiOutClose',
    );

/// Queries a specified MIDI output device to determine its capabilities.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetdevcapsw>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutGetDevCaps(int uDeviceID, Pointer<MIDIOUTCAPS> pmoc, int cbmoc) =>
    _midiOutGetDevCaps(uDeviceID, pmoc, cbmoc);

final _midiOutGetDevCaps = _winmm
    .lookupFunction<
      Uint32 Function(IntPtr, Pointer<MIDIOUTCAPS>, Uint32),
      int Function(int, Pointer<MIDIOUTCAPS>, int)
    >('midiOutGetDevCapsW');

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

final _midiOutGetErrorText = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('midiOutGetErrorTextW');

/// Retrieves the device identifier for the given MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutGetID(HMIDIOUT hmo, Pointer<Uint32> puDeviceID) =>
    _midiOutGetID(hmo, puDeviceID);

final _midiOutGetID = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('midiOutGetID');

/// Retrieves the number of MIDI output devices present in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetnumdevs>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutGetNumDevs() => _midiOutGetNumDevs();

final _midiOutGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('midiOutGetNumDevs');

/// Retrieves the current volume setting of a MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutgetvolume>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutGetVolume(HMIDIOUT? hmo, Pointer<Uint32> pdwVolume) =>
    _midiOutGetVolume(hmo ?? nullptr, pdwVolume);

final _midiOutGetVolume = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('midiOutGetVolume');

/// Sends a system-exclusive MIDI message to the specified MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutlongmsg>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutLongMsg(HMIDIOUT hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutLongMsg(hmo, pmh, cbmh);

final _midiOutLongMsg = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiOutLongMsg');

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

final _midiOutMessage = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('midiOutMessage');

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

final _midiOutOpen = _winmm
    .lookupFunction<
      Uint32 Function(Pointer<Pointer>, Uint32, IntPtr, IntPtr, Uint32),
      int Function(Pointer<Pointer>, int, int, int, int)
    >('midiOutOpen');

/// Prepares a MIDI system-exclusive or stream buffer for output.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutPrepareHeader(HMIDIOUT hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutPrepareHeader(hmo, pmh, cbmh);

final _midiOutPrepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiOutPrepareHeader');

/// Turns off all notes on all MIDI channels for the specified MIDI output
/// device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutreset>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutReset(HMIDIOUT hmo) => _midiOutReset(hmo);

final _midiOutReset = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'midiOutReset',
    );

/// Sets the volume of a MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutsetvolume>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutSetVolume(HMIDIOUT? hmo, int dwVolume) =>
    _midiOutSetVolume(hmo ?? nullptr, dwVolume);

final _midiOutSetVolume = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('midiOutSetVolume');

/// Sends a short MIDI message to the specified MIDI output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutshortmsg>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutShortMsg(HMIDIOUT hmo, int dwMsg) => _midiOutShortMsg(hmo, dwMsg);

final _midiOutShortMsg = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('midiOutShortMsg');

/// Cleans up the preparation performed by the midiOutPrepareHeader function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-midioutunprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int midiOutUnprepareHeader(HMIDIOUT hmo, Pointer<MIDIHDR> pmh, int cbmh) =>
    _midiOutUnprepareHeader(hmo, pmh, cbmh);

final _midiOutUnprepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MIDIHDR>, Uint32),
      int Function(Pointer, Pointer<MIDIHDR>, int)
    >('midiOutUnprepareHeader');

/// Plays a sound specified by the given file name, resource, or system event.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions//dd743680(v=vs.85)>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
bool PlaySound(PCWSTR? pszSound, HMODULE? hmod, SND_FLAGS fdwSound) =>
    _PlaySound(pszSound ?? nullptr, hmod ?? nullptr, fdwSound) != FALSE;

final _PlaySound = _winmm
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer, Uint32),
      int Function(Pointer<Utf16>, Pointer, int)
    >('PlaySoundW');

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

final _timeGetTime = _winmm.lookupFunction<Uint32 Function(), int Function()>(
  'timeGetTime',
);

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

final _waveInAddBuffer = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveInAddBuffer');

/// Closes the given waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinclose>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInClose(HWAVEIN hwi) => _waveInClose(hwi);

final _waveInClose = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveInClose',
    );

/// Retrieves the capabilities of a given waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetdevcaps>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInGetDevCaps(int uDeviceID, Pointer<WAVEINCAPS> pwic, int cbwic) =>
    _waveInGetDevCaps(uDeviceID, pwic, cbwic);

final _waveInGetDevCaps = _winmm
    .lookupFunction<
      Uint32 Function(IntPtr, Pointer<WAVEINCAPS>, Uint32),
      int Function(int, Pointer<WAVEINCAPS>, int)
    >('waveInGetDevCapsW');

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

final _waveInGetErrorText = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('waveInGetErrorTextW');

/// Gets the device identifier for the given waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInGetID(HWAVEIN hwi, Pointer<Uint32> puDeviceID) =>
    _waveInGetID(hwi, puDeviceID);

final _waveInGetID = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('waveInGetID');

/// Returns the number of waveform-audio input devices present in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetnumdevs>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInGetNumDevs() => _waveInGetNumDevs();

final _waveInGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('waveInGetNumDevs');

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

final _waveInGetPosition = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MMTIME>, Uint32),
      int Function(Pointer, Pointer<MMTIME>, int)
    >('waveInGetPosition');

/// Sends messages to the waveform-audio input device drivers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinmessage>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInMessage(HWAVEIN? hwi, int uMsg, int? dw1, int? dw2) =>
    _waveInMessage(hwi ?? nullptr, uMsg, dw1 ?? NULL, dw2 ?? NULL);

final _waveInMessage = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('waveInMessage');

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

/// Prepares a buffer for waveform-audio input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInPrepareHeader(HWAVEIN hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInPrepareHeader(hwi, pwh, cbwh);

final _waveInPrepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveInPrepareHeader');

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

final _waveInReset = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveInReset',
    );

/// Starts input on the given waveform-audio input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinstart>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInStart(HWAVEIN hwi) => _waveInStart(hwi);

final _waveInStart = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveInStart',
    );

/// Stops waveform-audio input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinstop>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInStop(HWAVEIN hwi) => _waveInStop(hwi);

final _waveInStop = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveInStop',
    );

/// Cleans up the preparation performed by the waveInPrepareHeader function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveinunprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveInUnprepareHeader(HWAVEIN hwi, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveInUnprepareHeader(hwi, pwh, cbwh);

final _waveInUnprepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveInUnprepareHeader');

/// Closes the given waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutclose>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutClose(HWAVEOUT hwo) => _waveOutClose(hwo);

final _waveOutClose = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveOutClose',
    );

/// Retrieves the capabilities of a given waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetdevcaps>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetDevCaps(int uDeviceID, Pointer<WAVEOUTCAPS> pwoc, int cbwoc) =>
    _waveOutGetDevCaps(uDeviceID, pwoc, cbwoc);

final _waveOutGetDevCaps = _winmm
    .lookupFunction<
      Uint32 Function(IntPtr, Pointer<WAVEOUTCAPS>, Uint32),
      int Function(int, Pointer<WAVEOUTCAPS>, int)
    >('waveOutGetDevCapsW');

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

final _waveOutGetErrorText = _winmm
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Utf16>, Uint32),
      int Function(int, Pointer<Utf16>, int)
    >('waveOutGetErrorTextW');

/// Retrieves the device identifier for the given waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetid>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetID(HWAVEOUT hwo, Pointer<Uint32> puDeviceID) =>
    _waveOutGetID(hwo, puDeviceID);

final _waveOutGetID = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('waveOutGetID');

/// Retrieves the number of waveform-audio output devices present in the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutgetnumdevs>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutGetNumDevs() => _waveOutGetNumDevs();

final _waveOutGetNumDevs = _winmm
    .lookupFunction<Uint32 Function(), int Function()>('waveOutGetNumDevs');

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

final _waveOutGetPitch = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('waveOutGetPitch');

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

final _waveOutGetPlaybackRate = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('waveOutGetPlaybackRate');

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

final _waveOutGetPosition = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<MMTIME>, Uint32),
      int Function(Pointer, Pointer<MMTIME>, int)
    >('waveOutGetPosition');

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

final _waveOutGetVolume = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('waveOutGetVolume');

/// Sends messages to the waveform-audio output device drivers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutmessage>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutMessage(HWAVEOUT? hwo, int uMsg, int dw1, int dw2) =>
    _waveOutMessage(hwo ?? nullptr, uMsg, dw1, dw2);

final _waveOutMessage = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('waveOutMessage');

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

final _waveOutPause = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveOutPause',
    );

/// Prepares a waveform-audio data block for playback.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutprepareheader>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutPrepareHeader(HWAVEOUT hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutPrepareHeader(hwo, pwh, cbwh);

final _waveOutPrepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveOutPrepareHeader');

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

final _waveOutReset = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveOutReset',
    );

/// Resumes playback on a paused waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutrestart>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutRestart(HWAVEOUT hwo) => _waveOutRestart(hwo);

final _waveOutRestart = _winmm
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'waveOutRestart',
    );

/// Sets the pitch for the specified waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetpitch>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutSetPitch(HWAVEOUT hwo, int dwPitch) =>
    _waveOutSetPitch(hwo, dwPitch);

final _waveOutSetPitch = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('waveOutSetPitch');

/// Sets the playback rate for the specified waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetplaybackrate>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutSetPlaybackRate(HWAVEOUT hwo, int dwRate) =>
    _waveOutSetPlaybackRate(hwo, dwRate);

final _waveOutSetPlaybackRate = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('waveOutSetPlaybackRate');

/// Sets the volume level of the specified waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutsetvolume>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutSetVolume(HWAVEOUT? hwo, int dwVolume) =>
    _waveOutSetVolume(hwo ?? nullptr, dwVolume);

final _waveOutSetVolume = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('waveOutSetVolume');

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

final _waveOutUnprepareHeader = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveOutUnprepareHeader');

/// Sends a data block to the given waveform-audio output device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveoutwrite>.
///
/// {@category winmm}
@pragma('vm:prefer-inline')
int waveOutWrite(HWAVEOUT hwo, Pointer<WAVEHDR> pwh, int cbwh) =>
    _waveOutWrite(hwo, pwh, cbwh);

final _waveOutWrite = _winmm
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<WAVEHDR>, Uint32),
      int Function(Pointer, Pointer<WAVEHDR>, int)
    >('waveOutWrite');
