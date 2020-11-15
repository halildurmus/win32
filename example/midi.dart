// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Plays a MIDI file using MCI_OPEN and MCI_PLAY.

// Currently broken because of lack of packed struct support in Dart FFI:
// https://github.com/dart-lang/sdk/issues/38158

import 'dart:ffi';
import 'dart:io';
import 'package:win32/win32.dart';

void main() {
  // Open the device by specifying the device and filename.
  // MCI will attempt to choose the MIDI mapper as the output port.
  final mciOpenParams = MCI_OPEN_PARMS.allocate()
    ..lpstrDeviceType = TEXT('sequencer')
    ..lpstrElementName = TEXT(r'c:\Windows\Media\flourish.mid');

  var dwReturn = mciSendCommand(NULL, MCI_OPEN,
      MCI_OPEN_TYPE | MCI_OPEN_ELEMENT, mciOpenParams.addressOf.address);

  if (dwReturn != 0) {
    // Don't close it; just return error.
    print('Failed to open device.');
    exit(dwReturn);
  }

  // The device opened successfully; get the device ID.
  final deviceID = mciOpenParams.wDeviceID;

  // Check if the output port is the MIDI mapper.
  final mciStatusParams = MCI_STATUS_PARMS.allocate()
    ..dwItem = MCI_SEQ_STATUS_PORT;

  dwReturn = mciSendCommand(
      deviceID, MCI_STATUS, MCI_STATUS_ITEM, mciStatusParams.addressOf.address);

  if (dwReturn != 0) {
    print('Status command failed.');
    mciSendCommand(deviceID, MCI_CLOSE, 0, NULL);
    exit(dwReturn);
  }

  // The output port is not the MIDI mapper.
  // Ask if the user wants to continue.
  if (LOWORD(mciStatusParams.dwReturn) != MIDI_MAPPER) {
    final warningMessage = TEXT('The MIDI mapper is not available. Continue?');
    if (MessageBox(NULL, warningMessage, TEXT(''), MB_YESNO) == IDNO) {
      // User does not want to continue. Not an error;
      // just close the device and return.
      mciSendCommand(deviceID, MCI_CLOSE, 0, NULL);
      return;
    }
  }

  // Begin playback. The command will not return until playback has finished,
  // unless Ctrl+Break is pressed.
  final mciPlayParams = MCI_PLAY_PARMS.allocate();
  dwReturn = mciSendCommand(
      deviceID, MCI_PLAY, MCI_WAIT, mciPlayParams.addressOf.address);

  mciSendCommand(deviceID, MCI_CLOSE, 0, NULL);

  if (dwReturn != 0) {
    print('Playback failed.');
    exit(dwReturn);
  }

  MessageBox(NULL, TEXT('Press OK to stop'), TEXT(''), MB_OK);
}
