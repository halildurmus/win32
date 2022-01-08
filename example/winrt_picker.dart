// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// File Open Picker from Dart

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() async {
  winrtInitialize();

  final object = CreateObject(
      'Windows.Storage.Pickers.FileOpenPicker', IID_IFileOpenPicker);

  final picker = IFileOpenPicker(object)..ViewMode = PickerViewMode.Thumbnail;

  final result = calloc<Pointer>();

  // Does not work yet
  picker.PickSingleFileAsync(result);

  await Future<void>.delayed(const Duration(seconds: 5));

  winrtUninitialize();
  print('Complete');
}
