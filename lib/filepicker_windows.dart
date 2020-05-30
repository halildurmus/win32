import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class FilePicker {
  List<String> defaultExtensions = <String>[];

  /// Returns a `File` object from the selected file path.
  File getFile() {
    var hr = CoInitializeEx(
        nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    final fileDialog = FileDialog();
    final ptr = fileDialog.dlg.ref.lpVtbl;

    Pointer<Int32> pfos = allocate<Int32>();
    hr = fileDialog.GetOptions(ptr, pfos);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    int options = pfos.value | FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
    hr = fileDialog.SetOptions(ptr, options);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    if (defaultExtensions.isNotEmpty) {
      hr = fileDialog.SetDefaultExtension(
          ptr, TEXT(defaultExtensions.join(';')));
      if (!SUCCEEDED(hr)) throw COMException(hr);
    }

    hr = fileDialog.Show(ptr, NULL);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    final iShellItem = IShellItem.allocate();
    hr = fileDialog.GetResult(ptr, iShellItem.addressOf);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    final item = ShellItem(iShellItem.addressOf);
    final pathPtrPtr = allocate<IntPtr>();
    hr = item.GetDisplayName(
        iShellItem.lpVtbl, SIGDN.SIGDN_FILESYSPATH, pathPtrPtr.cast());
    if (!SUCCEEDED(hr)) throw COMException(hr);

    final pathPtr = Pointer<Utf16>.fromAddress(pathPtrPtr.value);
    // MAX_PATH is a hack here, since this could be longer. Worst case is that
    // we truncate too early.
    final path = pathPtr.unpackString(MAX_PATH);

    hr = item.Release(iShellItem.lpVtbl);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    hr = fileDialog.Release(ptr);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    CoUninitialize();

    return File(path);
  }
}
