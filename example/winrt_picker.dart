// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// File Open Picker from Dart

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

List<String> hStringArrayToList(Pointer<HSTRING> pHStringArray, int size) {
  final list = <String>[];
  for (var i = 0; i < size; i++) {
    final element = pHStringArray[i];
    if (element != 0) {
      list.add(convertFromHString(pHStringArray[i]));
      WindowsDeleteString(pHStringArray[i]);
    }
  }

  return list;
}

void main() async {
  winrtInitialize();

  final object = CreateObject(
      'Windows.Storage.Pickers.FileOpenPicker', IID_IFileOpenPicker);

  final picker = IFileOpenPicker(object)
    ..SuggestedStartLocation = PickerLocationId.Desktop
    ..ViewMode = PickerViewMode.Thumbnail;

  final vector = IVector(picker.FileTypeFilter);

  print('Vector has ${vector.Size} elements.');
  print('Adding ".jpg" to the vector...');
  vector.Append('.jpg');
  print('Vector has ${vector.Size} elements.');
  print('Vector\'s first element is ${vector.GetAt(0)}.');
  print('Adding ".jpeg" to the vector...');
  vector.Append('.jpeg');
  print('Vector\'s second element is ${vector.GetAt(1)}.');

  final vectorView = vector.GetView;
  print('VectorView has ${vectorView.Size} elements.');

  final pIndex = calloc<Uint32>();
  var containsElement = vector.IndexOf('.jpeg', pIndex);
  print(containsElement
      ? 'The index of ".jpeg" is ${pIndex.value}.'
      : 'The ".jpeg" does not exists in the vector!');
  containsElement = vector.IndexOf('.txt', pIndex);
  print(containsElement
      ? 'The index of ".txt" is ${pIndex.value}.'
      : 'The ".txt" does not exists in the vector!');

  print('Setting vector\'s first element to ".png"...');
  vector.SetAt(0, '.png');
  print('Vector\'s first element is ${vector.GetAt(0)}.');

  print('Inserting ".gif" to the vector\'s first index...');
  vector.InsertAt(0, '.gif');
  print('Vector has ${vector.Size} elements.');
  print('Vector\'s first element is ${vector.GetAt(0)}.');

  print('Removing the vector\'s last element...');
  vector.RemoveAtEnd();
  print('Vector has ${vector.Size} elements.');
  print('Vector\'s last element is ${vector.GetAt(vector.Size - 1)}.');

  final pArray = calloc<HSTRING>(sizeOf<HSTRING>() * vector.Size);
  var items = vector.GetMany(0, pArray);
  print(items > 0
      ? 'Vector elements: ${hStringArrayToList(pArray, vector.Size)}'
      : 'Vector is empty!');

  print('Replacing vector\'s elements with [".jpg", ".jpeg", ".png"]...');
  vector.ReplaceAll(['.jpg', '.jpeg', '.png']);
  items = vector.GetMany(0, pArray);
  print(items > 0
      ? 'Vector elements: ${hStringArrayToList(pArray, vector.Size)}'
      : 'Vector is empty!');

  // Does not work yet
  // Possibly due to https://docs.microsoft.com/en-us/windows/apps/develop/ui-input/display-ui-objects
  picker.PickSingleFileAsync();

  print('Clearing the vector...');
  vector.Clear();
  print('Vector has ${vector.Size} elements.');

  await Future<void>.delayed(const Duration(seconds: 5));

  free(vector.ptr);
  free(vectorView.ptr);
  free(pIndex);
  free(pArray);
  winrtUninitialize();
  print('Complete');
}
