// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  int hr, refCount;

  final pCLSID_FileOpenDialog = GUIDFromString(CLSID_FileOpenDialog);
  final pIID_IFileDialog = GUIDFromString(IID_IFileDialog);
  final pIID_IModalWindow = GUIDFromString(IID_IModalWindow);
  final pTitle = TEXT('Dart Open File Dialog');

  final ppIFD = calloc<COMObject>();
  final ppMW = calloc<COMObject>();
  final ppIFD2 = calloc<COMObject>();

  try {
    // Initialize COM
    hr = CoInitializeEx(
        nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    if (FAILED(hr)) throw WindowsException(hr);

    // Create an instance of the FileOpenDialog class w/ IFileDialog interface
    hr = CoCreateInstance(pCLSID_FileOpenDialog, nullptr, CLSCTX_ALL,
        pIID_IFileDialog, ppIFD.cast());
    if (FAILED(hr)) throw WindowsException(hr);
    final fileDialog = IFileOpenDialog(ppIFD);
    print('fileDialog.ptr is  ${fileDialog.ptr.address.toHexString(64)}');

    // Use IFileDialog.SetTitle
    hr = fileDialog.SetTitle(pTitle);
    if (FAILED(hr)) throw WindowsException(hr);

    // Call AddRef() and Release(), which are inherited from IUnknown
    refCount = fileDialog.AddRef();
    print('refCount is now $refCount');
    refCount = fileDialog.Release();
    print('refCount is now $refCount\n');

    // Call QueryInterface() to get the IModalWindow interface
    hr = fileDialog.QueryInterface(pIID_IModalWindow, ppMW.cast());
    if (FAILED(hr)) throw WindowsException(hr);
    final modalWindow = IModalWindow(ppMW);
    print('modalWindow.ptr is ${modalWindow.ptr.address.toHexString(64)}');

    // Call AddRef() and Release(), which are inherited from IUnknown
    refCount = modalWindow.AddRef();
    print('refCount is now $refCount');
    refCount = modalWindow.Release();
    print('refCount is now $refCount\n');

    fileDialog.Release();

    // Call QueryInterface() to get the IFileDialog interface again
    hr = modalWindow.QueryInterface(pIID_IFileDialog, ppIFD2.cast());
    modalWindow.Release();

    final fileDialog2 = IFileDialog(ppIFD2);
    print('fileDialog2.ptr is ${fileDialog2.ptr.address.toHexString(64)}');

    // Call AddRef() and Release(), which are inherited from IUnknown
    refCount = fileDialog2.AddRef();
    print('refCount is now $refCount');
    refCount = fileDialog2.Release();
    print('refCount is now $refCount\n');

    // Use IFileDialog.Show, which is inherited from IModalWindow
    hr = fileDialog2.Show(NULL);
    if (FAILED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        print('Dialog cancelled.');
      } else {
        throw WindowsException(hr);
      }
    }

    fileDialog2.Release();

    // Uninitialize COM now that we're done with it.
    CoUninitialize();
  } finally {
    // Clear things up
    free(pCLSID_FileOpenDialog);
    free(pIID_IFileDialog);
    free(pIID_IModalWindow);

    free(pTitle);
    free(ppIFD);
    free(ppMW);
    free(ppIFD2);
  }
  print('All done!');
}
