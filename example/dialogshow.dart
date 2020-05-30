// dialogshow.dart

// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:win32/win32.dart';

import 'package:win32/src/com/IFileDialog.dart';
import 'package:win32/src/com/utils.dart';

void main() {
  var hr = CoInitializeEx(
      nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  if (SUCCEEDED(hr)) {
    final fileDialog = FileDialog();
    final ptr = fileDialog.dlg.ref.lpVtbl;

    hr = fileDialog.AddRef(ptr);
    print('AddRef() returned $hr');

    hr = fileDialog.Show(ptr, NULL);
    print('Show() returned $hr');
  } else {
    throw COMException(hr);
  }
  CoUninitialize();
  print('CoUninitialize successful()');
}
