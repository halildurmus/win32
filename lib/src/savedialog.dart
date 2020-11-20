import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'filedialog.dart';

class SaveFilePicker extends FileDialog {
  /// Returns a `File` object from the selected file path.
  File? getFile() {
    var didUserCancel = false;
    late String filePath;

    var hr = CoInitializeEx(
        nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    if (!SUCCEEDED(hr)) throw WindowsException(hr);

    final fileDialog = FileSaveDialog.createInstance();

    final pfos = allocate<Uint32>();
    hr = fileDialog.GetOptions(pfos);
    if (!SUCCEEDED(hr)) throw WindowsException(hr);

    var options = pfos.value;
    if (hidePinnedPlaces ?? false) {
      options |= FILEOPENDIALOGOPTIONS.FOS_HIDEPINNEDPLACES;
    }

    if (forceFileSystemItems ?? false) {
      options |= FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
    }
    if (fileMustExist ?? false) {
      options |= FILEOPENDIALOGOPTIONS.FOS_FILEMUSTEXIST;
    }
    if (isDirectoryFixed ?? false) {
      options |= FILEOPENDIALOGOPTIONS.FOS_NOCHANGEDIR;
    }
    hr = fileDialog.SetOptions(options);
    if (!SUCCEEDED(hr)) throw WindowsException(hr);

    if (defaultExtension != null && defaultExtension!.isNotEmpty) {
      hr = fileDialog.SetDefaultExtension(TEXT(defaultExtension!));
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    if (fileName != null && fileName!.isNotEmpty) {
      hr = fileDialog.SetFileName(TEXT(fileName!));
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    if (fileNameLabel != null && fileNameLabel!.isNotEmpty) {
      hr = fileDialog.SetFileNameLabel(TEXT(fileNameLabel!));
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    if (title != null && title!.isNotEmpty) {
      hr = fileDialog.SetTitle(TEXT(title!));
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    if (filterSpecification != null && filterSpecification!.isNotEmpty) {
      final rgSpec =
          allocate<COMDLG_FILTERSPEC>(count: filterSpecification!.length);

      var index = 0;
      for (final key in filterSpecification!.keys) {
        rgSpec[index]
          ..pszName = TEXT(key)
          ..pszSpec = TEXT(filterSpecification![key]!);
        index++;
      }
      hr = fileDialog.SetFileTypes(filterSpecification!.length, rgSpec);
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    hr = fileDialog.Show(NULL);
    if (!SUCCEEDED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw WindowsException(hr);
      }
    } else {
      final ppsi = allocate<IntPtr>();
      hr = fileDialog.GetResult(ppsi);
      if (!SUCCEEDED(hr)) throw WindowsException(hr);

      final item = IShellItem(ppsi.cast());
      final pathPtrPtr = allocate<IntPtr>();
      hr = item.GetDisplayName(SIGDN.SIGDN_FILESYSPATH, pathPtrPtr.cast());
      if (!SUCCEEDED(hr)) throw WindowsException(hr);

      final pathPtr = Pointer<Utf16>.fromAddress(pathPtrPtr.value);
      // MAX_PATH is a slight hack here, since this could be longer.
      filePath = pathPtr.unpackString(MAX_PATH);

      hr = item.Release();
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    hr = fileDialog.Release();
    if (!SUCCEEDED(hr)) throw WindowsException(hr);

    CoUninitialize();
    if (didUserCancel) {
      return null;
    } else {
      return File(filePath);
    }
  }
}
