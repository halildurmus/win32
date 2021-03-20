// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// File Open Picker from Dart

import 'dart:ffi';
import 'package:win32/win32.dart';

void main() {
  winrtInitialize();

  final object = CreateObject(
      'Windows.Storage.Pickers.FileOpenPicker', IID_IFileOpenPicker);

  final picker = IFileOpenPicker(object);
  picker.ViewMode = PickerViewMode.Thumbnail;

  // Need to add the results of the async operation
  picker.PickSingleFileAsync(nullptr);

  winrtUninitialize();
  print('Complete');
}
