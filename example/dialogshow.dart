// dialogshow.dart

// Opens the File Open dialog box and shows results

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  var hr = CoInitializeEx(
      nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  if (SUCCEEDED(hr)) {
    final fileDialog = IFileDialog.createOpen();
    final ptr = fileDialog.dlg.ref.lpVtbl;

    Pointer<Int32> pfos = allocate<Int32>();
    hr = fileDialog.GetOptions(ptr, pfos);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    int options = pfos.value | FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
    hr = fileDialog.SetOptions(ptr, options);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    hr = fileDialog.SetDefaultExtension(ptr, TEXT('txt;csv'));
    if (!SUCCEEDED(hr)) throw COMException(hr);

    hr = fileDialog.SetFileNameLabel(ptr, TEXT('Custom Label:'));
    if (!SUCCEEDED(hr)) throw COMException(hr);

    hr = fileDialog.SetTitle(ptr, TEXT('Custom Title'));
    if (!SUCCEEDED(hr)) throw COMException(hr);

    hr = fileDialog.SetOkButtonLabel(ptr, TEXT('Go'));
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
    hr = fileDialog.SetFileTypes(ptr, 3, rgSpec);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    hr = fileDialog.Show(ptr, NULL);
    if (!SUCCEEDED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        print('Dialog cancelled.');
      } else {
        throw COMException(hr);
      }
    } else {
      final iShellItem = IShellItem.allocate();
      hr = fileDialog.GetResult(ptr, iShellItem.addressOf);
      if (!SUCCEEDED(hr)) throw COMException(hr);

      final item = ShellItem(iShellItem.addressOf);
      final path = allocate<IntPtr>();
      hr = item.GetDisplayName(
          iShellItem.lpVtbl, SIGDN.SIGDN_FILESYSPATH, path.cast());
      if (!SUCCEEDED(hr)) throw COMException(hr);

      final pathRes = Pointer<Utf16>.fromAddress(path.value);

      // MAX_PATH is a hack here, since this could be longer. Worst case is that
      // we truncate too early.
      print('Result: ${pathRes.unpackString(MAX_PATH)}');

      hr = item.Release(iShellItem.lpVtbl);
      if (!SUCCEEDED(hr)) throw COMException(hr);
    }

    hr = fileDialog.Release(ptr);
    if (!SUCCEEDED(hr)) throw COMException(hr);
  } else {
    throw COMException(hr);
  }
  CoUninitialize();
}
