// Plays a MIDI file using MCI_OPEN and MCI_PLAY.

import 'dart:ffi';
import 'dart:io';

import 'package:win32/win32.dart';

void main() {
  // Open the device by specifying the device and filename.
  // MCI will attempt to choose the MIDI mapper as the output port.
  final deviceType = w('sequencer');
  final elementName = w(r'c:\Windows\Media\flourish.mid');
  final mciOpenParams = loggingCalloc<MCI_OPEN_PARMS>();
  mciOpenParams.ref
    ..lpstrDeviceType = deviceType.ptr
    ..lpstrElementName = elementName.ptr;

  var dwReturn = mciSendCommand(
    NULL,
    MCI_OPEN,
    MCI_OPEN_TYPE | MCI_OPEN_ELEMENT,
    mciOpenParams.address,
  );

  if (dwReturn != 0) {
    // Don't close it; just return error.
    print('Failed to open device.');
    exit(dwReturn);
  }

  // The device opened successfully; get the device ID.
  final deviceID = mciOpenParams.ref.wDeviceID;

  // Check if the output port is the MIDI mapper.
  final mciStatusParams = loggingCalloc<MCI_STATUS_PARMS>()
    ..ref.dwItem = MCI_SEQ_STATUS_PORT;

  dwReturn = mciSendCommand(
    deviceID,
    MCI_STATUS,
    MCI_STATUS_ITEM,
    mciStatusParams.address,
  );

  if (dwReturn != 0) {
    print('Status command failed.');
    mciSendCommand(deviceID, MCI_CLOSE, 0, NULL);
    exit(dwReturn);
  }

  // The output port is not the MIDI mapper.
  // Ask if the user wants to continue.
  if (LOWORD(mciStatusParams.ref.dwReturn) != MIDI_MAPPER) {
    final text = w('The MIDI mapper is not available. Continue?');
    if (MessageBox(null, text.ptr, null, MB_YESNO) == IDNO) {
      // User does not want to continue. Not an error;
      // just close the device and return.
      mciSendCommand(deviceID, MCI_CLOSE, 0, NULL);
      free(mciOpenParams);
      free(mciStatusParams);
      return;
    }
  }

  // Begin playback. The command will not return until playback has finished,
  // unless Ctrl+Break is pressed.
  final mciPlayParams = loggingCalloc<MCI_PLAY_PARMS>();
  dwReturn = mciSendCommand(
    deviceID,
    MCI_PLAY,
    MCI_WAIT,
    mciPlayParams.address,
  );

  mciSendCommand(deviceID, MCI_CLOSE, 0, NULL);

  if (dwReturn != 0) {
    print('Playback failed.');
    exit(dwReturn);
  }

  final text = w('Press OK to stop');
  final caption = w('Midi Sample');
  MessageBox(null, text.ptr, caption.ptr, MB_OK);

  // Clear up
  free(mciPlayParams);
  free(mciStatusParams);
  free(mciOpenParams);
}
