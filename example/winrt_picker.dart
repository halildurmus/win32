// winrt_picker.dart

// File Open Picker from Dart

import 'dart:ffi';
import 'package:win32/win32.dart';

void main() {
  winrtInitialize();

  final object = CreateObject(
      'Windows.Storage.Pickers.FileOpenPicker', IID_IFileOpenPicker);

  final picker = IFileOpenPicker(object.cast());
  picker.ViewMode = PickerViewMode.Thumbnail;

  // Need to add the results of the async operation
  picker.PickSingleFileAsync(nullptr);

  winrtUninitialize();
  print('Complete');
}
