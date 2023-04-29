import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'filedialog.dart';

class SaveFilePicker extends FileDialog {
  /// Returns a `File` object from the selected file path.
  File? getFile() {
    var didUserCancel = false;
    late final String filePath;

    var hr = CoInitializeEx(
        nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    if (!SUCCEEDED(hr)) throw WindowsException(hr);

    final fileDialog = FileSaveDialog.createInstance();

    final pfos = calloc<Uint32>();
    hr = fileDialog.getOptions(pfos);
    if (!SUCCEEDED(hr)) throw WindowsException(hr);

    var options = pfos.value;
    if (hidePinnedPlaces) {
      options |= FILEOPENDIALOGOPTIONS.FOS_HIDEPINNEDPLACES;
    }

    if (forceFileSystemItems) {
      options |= FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
    }
    if (fileMustExist) {
      options |= FILEOPENDIALOGOPTIONS.FOS_FILEMUSTEXIST;
    }
    if (isDirectoryFixed) {
      options |= FILEOPENDIALOGOPTIONS.FOS_NOCHANGEDIR;
    }
    hr = fileDialog.setOptions(options);
    if (!SUCCEEDED(hr)) throw WindowsException(hr);

    if (defaultExtension != null && defaultExtension!.isNotEmpty) {
      hr = fileDialog.setDefaultExtension(TEXT(defaultExtension!));
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    if (fileName.isNotEmpty) {
      hr = fileDialog.setFileName(TEXT(fileName));
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    if (fileNameLabel.isNotEmpty) {
      hr = fileDialog.setFileNameLabel(TEXT(fileNameLabel));
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    if (title.isNotEmpty) {
      hr = fileDialog.setTitle(TEXT(title));
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    if (filterSpecification.isNotEmpty) {
      final rgSpec = calloc<COMDLG_FILTERSPEC>(filterSpecification.length);

      var index = 0;
      for (final key in filterSpecification.keys) {
        rgSpec[index]
          ..pszName = TEXT(key)
          ..pszSpec = TEXT(filterSpecification[key]!);
        index++;
      }
      hr = fileDialog.setFileTypes(filterSpecification.length, rgSpec);
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    hr = fileDialog.show(hWndOwner);
    if (!SUCCEEDED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw WindowsException(hr);
      }
    } else {
      final ppsi = calloc<Pointer<COMObject>>();
      hr = fileDialog.getResult(ppsi);
      if (!SUCCEEDED(hr)) throw WindowsException(hr);

      final item = IShellItem(ppsi.cast());
      final pathPtrPtr = calloc<Pointer<Utf16>>();
      hr = item.getDisplayName(SIGDN.SIGDN_FILESYSPATH, pathPtrPtr.cast());
      if (!SUCCEEDED(hr)) throw WindowsException(hr);

      filePath = pathPtrPtr.value.toDartString();

      hr = item.release();
      if (!SUCCEEDED(hr)) throw WindowsException(hr);
    }

    hr = fileDialog.release();
    if (!SUCCEEDED(hr)) throw WindowsException(hr);

    CoUninitialize();
    if (didUserCancel) {
      return null;
    } else {
      return File(filePath);
    }
  }
}
