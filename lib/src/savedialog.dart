import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'filedialog.dart';

class SaveFilePicker extends FileDialog {
  /// Returns a `File` object from the selected file path.
  File? getFile() {
    var didUserCancel = false;
    var filePath = '';

    final fileDialog = FileSaveDialog.createInstance();

    final pfos = calloc<Uint32>();
    var hr = fileDialog.getOptions(pfos);
    if (FAILED(hr)) throw WindowsException(hr);

    var options = pfos.value;
    if (hidePinnedPlaces) options |= FILEOPENDIALOGOPTIONS.FOS_HIDEPINNEDPLACES;
    if (fileMustExist) options |= FILEOPENDIALOGOPTIONS.FOS_FILEMUSTEXIST;
    if (isDirectoryFixed) options |= FILEOPENDIALOGOPTIONS.FOS_NOCHANGEDIR;
    if (forceFileSystemItems) {
      options |= FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
    }
    hr = fileDialog.setOptions(options);
    if (FAILED(hr)) throw WindowsException(hr);

    if (defaultExtension != null && defaultExtension!.isNotEmpty) {
      final pDefaultExtension = defaultExtension!.toNativeUtf16();
      try {
        hr = fileDialog.setDefaultExtension(pDefaultExtension);
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(pDefaultExtension);
      }
    }

    if (fileName.isNotEmpty) {
      final pFilename = fileName.toNativeUtf16();
      try {
        hr = fileDialog.setFileName(pFilename);
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(pFilename);
      }
    }

    if (fileNameLabel.isNotEmpty) {
      final pFileNameLabel = fileNameLabel.toNativeUtf16();
      try {
        hr = fileDialog.setFileNameLabel(pFileNameLabel);
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(pFileNameLabel);
      }
    }

    if (title.isNotEmpty) {
      final pTitle = title.toNativeUtf16();
      try {
        hr = fileDialog.setTitle(TEXT(title));
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(pTitle);
      }
    }

    if (filterSpecification.isNotEmpty) {
      final rgSpec = calloc<COMDLG_FILTERSPEC>(filterSpecification.length);

      try {
        var index = 0;
        for (final key in filterSpecification.keys) {
          rgSpec[index]
            ..pszName = TEXT(key)
            ..pszSpec = TEXT(filterSpecification[key]!);
          index++;
        }
        hr = fileDialog.setFileTypes(filterSpecification.length, rgSpec);
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(rgSpec);
      }
    }

    hr = fileDialog.show(hWndOwner);
    if (FAILED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw WindowsException(hr);
      }
    } else {
      final ppsi = calloc<Pointer<COMObject>>();
      hr = fileDialog.getResult(ppsi);
      if (FAILED(hr)) throw WindowsException(hr);

      final item = IShellItem(ppsi.cast());
      final pathPtrPtr = calloc<Pointer<Utf16>>();
      hr = item.getDisplayName(SIGDN.SIGDN_FILESYSPATH, pathPtrPtr.cast());
      if (FAILED(hr)) throw WindowsException(hr);

      filePath = pathPtrPtr.value.toDartString();

      hr = item.release();
      if (FAILED(hr)) throw WindowsException(hr);
    }

    hr = fileDialog.release();
    if (FAILED(hr)) throw WindowsException(hr);

    if (didUserCancel) {
      return null;
    } else {
      return File(filePath);
    }
  }
}
