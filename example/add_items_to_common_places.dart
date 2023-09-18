// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:filepicker_windows/filepicker_windows.dart';

// Adds the Public Music folder to the common places list displayed on the left
// hand side of the file item chooser. On Windows 11, this may appear under an
// "Application Links" node.

void main() {
  final picker = OpenFilePicker()
    ..addPlace(WindowsKnownFolder.PublicMusic, Place.bottom);

  final result = picker.getFile();
  if (result != null) {
    print(result.path);
  }
}
