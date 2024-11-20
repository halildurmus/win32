// Dart representations of Win32 callbacks.
//
// These callbacks are handwritten as they are not included in the metadata.

import 'dart:ffi';

import 'structs.g.dart';
import 'types.dart';
import 'win32/winmm.g.dart';

/// An application-defined callback function for handling incoming MIDI
/// messages.
///
/// MIDIINPROC is a placeholder for the application-supplied function name.
/// The address of this function can be specified in the callback-address
/// parameter of the [midiInOpen] function.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd798460(v=vs.85)>.
///
/// {@category callback}
typedef MIDIINPROC =
    Void Function(
      HMIDIIN hMidiIn,
      UINT wMsg,
      DWORD_PTR dwInstance,
      DWORD_PTR dwParam1,
      DWORD_PTR dwParam2,
    );

/// An application-defined callback function for handling outgoing MIDI
/// messages.
///
/// MIDIOUTPROC is a placeholder for the application-supplied function name.
/// The address of the function can be specified in the callback-address
/// parameter of the [midiOutOpen] function.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd798478(v=vs.85)>.
///
/// {@category callback}
typedef MIDIOUTPROC =
    Void Function(
      HMIDIOUT hmo,
      UINT wMsg,
      DWORD_PTR dwInstance,
      DWORD_PTR dwParam1,
      DWORD_PTR dwParam2,
    );
