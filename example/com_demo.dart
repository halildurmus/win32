// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Demonstrates COM object creation and casting from Dart

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  final pTitle = 'Dart Open File Dialog'.toNativeUtf16();

  // Initialize COM
  var hr = CoInitializeEx(
      nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
  if (FAILED(hr)) throw WindowsException(hr);

  // Create an instance of the FileOpenDialog class w/ IFileDialog interface
  final fileDialog = FileOpenDialog.createInstance();
  print('Created fileDialog.\n'
      'fileDialog.ptr is  ${fileDialog.ptr.address.toHexString(64)}');
  print('refCount is now ${refCount(fileDialog)}\n');

  // QueryInterface for the IFileDialog2 interface, which is inherited from
  // IFileDialog
  final fileDialog2 = IFileDialog2.from(fileDialog);
  print('Get IFileDialog2 interface.\n'
      'fileDialog2.ptr is ${fileDialog2.ptr.address.toHexString(64)}');
  print('refCount is now ${refCount(fileDialog2)}\n');

  // Use IFileDialog2.SetTitle
  hr = fileDialog2.setTitle(pTitle);
  if (FAILED(hr)) throw WindowsException(hr);

  // QueryInterface for the IModalWindow interface, just to demonstrate it.
  final modalWindow = IModalWindow.from(fileDialog2);
  print('Get IModalWindow interface.\n'
      'modalWindow.ptr is ${modalWindow.ptr.address.toHexString(64)}');
  print('refCount is now ${refCount(modalWindow)}\n');

  // Now get the IFileOpenDialog interface.
  final fileOpenDialog = IFileOpenDialog.from(modalWindow);
  print('Get IFileOpenDialog interface.\n'
      'fileOpenDialog.ptr is ${fileOpenDialog.ptr.address.toHexString(64)}');
  print('refCount is now ${refCount(fileOpenDialog)}\n');

  // Use IFileOpenDialog.Show, which is inherited from IModalWindow
  hr = fileOpenDialog.show(NULL);
  if (FAILED(hr)) {
    if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
      print('Dialog cancelled.');
    } else {
      throw WindowsException(hr);
    }
  }

  // Clear up
  free(pTitle);
  print('All done!');
}
