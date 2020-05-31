// dialogshow.dart

// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  var hr = CoInitializeEx(
      nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  if (SUCCEEDED(hr)) {
    final fileDialog = FileOpenDialog.createInstance();

    Pointer<Int32> pfos = allocate<Int32>();
    hr = fileDialog.GetOptions(pfos);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    int options = pfos.value | FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
    hr = fileDialog.SetOptions(options);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    hr = fileDialog.SetDefaultExtension(TEXT('txt;csv'));
    if (!SUCCEEDED(hr)) throw COMException(hr);

    hr = fileDialog.SetFileNameLabel(TEXT('Custom Label:'));
    if (!SUCCEEDED(hr)) throw COMException(hr);

    hr = fileDialog.SetTitle(TEXT('Custom Title'));
    if (!SUCCEEDED(hr)) throw COMException(hr);

    hr = fileDialog.SetOkButtonLabel(TEXT('Go'));
    if (!SUCCEEDED(hr)) throw COMException(hr);

    final rgSpec = allocate<COMDLG_FILTERSPEC>(count: 3);
    rgSpec[0]
      ..pszName = TEXT('JPEG Files')
      ..pszSpec = TEXT('*.jpg;*.jpeg');
    rgSpec[1]
      ..pszName = TEXT('Bitmap Files')
      ..pszSpec = TEXT('*.bmp');
    rgSpec[2]
      ..pszName = TEXT('All Files (*.*)')
      ..pszSpec = TEXT('*.*');
    hr = fileDialog.SetFileTypes(3, rgSpec);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    hr = fileDialog.Show(NULL);
    if (!SUCCEEDED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        print('Dialog cancelled.');
      } else {
        throw COMException(hr);
      }
    } else {
      final iShellItem = COMObject.allocate();
      hr = fileDialog.GetResult(iShellItem.addressOf);
      if (!SUCCEEDED(hr)) throw COMException(hr);

      final item = IShellItem(iShellItem.addressOf);
      final path = allocate<IntPtr>();
      hr = item.GetDisplayName(SIGDN.SIGDN_FILESYSPATH, path.cast());
      if (!SUCCEEDED(hr)) throw COMException(hr);

      final pathRes = Pointer<Utf16>.fromAddress(path.value);

      // MAX_PATH is a hack here, since this could be longer. Worst case is that
      // we truncate too early.
      print('Result: ${pathRes.unpackString(MAX_PATH)}');

      hr = item.Release();
      if (!SUCCEEDED(hr)) throw COMException(hr);
    }

    hr = fileDialog.Release();
    if (!SUCCEEDED(hr)) throw COMException(hr);
  } else {
    throw COMException(hr);
  }
  CoUninitialize();

  print('All done!');
}
