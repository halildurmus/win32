import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'filedialog.dart';

class SaveFilePicker extends FileDialog {
  /// The folder used as a default if there is not a recently used folder
  /// value available.
  String? initialDirectory;

  /// Returns a `File` object from the selected file path.
  File? getFile() {
    var didUserCancel = false;
    var filePath = '';

    final fileDialog = FileSaveDialog.createInstance();

    // Set dialog options
    final pfos = calloc<Uint32>();
    try {
      var hr = fileDialog.getOptions(pfos);
      if (FAILED(hr)) throw WindowsException(hr);
      var options = pfos.value;
      if (fileMustExist) options |= FILEOPENDIALOGOPTIONS.FOS_FILEMUSTEXIST;
      if (isDirectoryFixed) options |= FILEOPENDIALOGOPTIONS.FOS_NOCHANGEDIR;
      if (hidePinnedPlaces) {
        options |= FILEOPENDIALOGOPTIONS.FOS_HIDEPINNEDPLACES;
      }
      if (forceFileSystemItems) {
        options |= FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
      }
      hr = fileDialog.setOptions(options);
      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(pfos);
    }

    if (defaultExtension != null && defaultExtension!.isNotEmpty) {
      final pDefaultExtension = defaultExtension!.toNativeUtf16();
      try {
        final hr = fileDialog.setDefaultExtension(pDefaultExtension);
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(pDefaultExtension);
      }
    }

    if (fileName.isNotEmpty) {
      final pFilename = fileName.toNativeUtf16();
      try {
        final hr = fileDialog.setFileName(pFilename);
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(pFilename);
      }
    }

    if (fileNameLabel.isNotEmpty) {
      final pFileNameLabel = fileNameLabel.toNativeUtf16();
      try {
        final hr = fileDialog.setFileNameLabel(pFileNameLabel);
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(pFileNameLabel);
      }
    }

    if (title.isNotEmpty) {
      final pTitle = title.toNativeUtf16();
      try {
        final hr = fileDialog.setTitle(pTitle);
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
        final hr = fileDialog.setFileTypes(filterSpecification.length, rgSpec);
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(rgSpec);
      }
    }

    if (initialDirectory != null && initialDirectory!.isNotEmpty) {
      final pszPath = initialDirectory!.toNativeUtf16();
      final riid = convertToIID(IID_IShellItem);
      final ppv = calloc<Pointer>();
      try {
        var hr = SHCreateItemFromParsingName(
          pszPath,
          nullptr,
          riid,
          ppv,
        );
        if (FAILED(hr)) throw WindowsException(hr);

        final shellItem = IShellItem(ppv.cast());

        hr = fileDialog
            .setDefaultFolder(shellItem.ptr.cast<Pointer<COMObject>>().value);
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(riid);
        free(pszPath);
      }
    }

    final hr = fileDialog.show(hWndOwner);
    if (!SUCCEEDED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw WindowsException(hr);
      }
    } else {
      final ppsi = calloc<Pointer<COMObject>>();
      final pathPtrPtr = calloc<Pointer<Utf16>>();
      try {
        var hr = fileDialog.getResult(ppsi);
        if (FAILED(hr)) throw WindowsException(hr);

        final item = IShellItem(ppsi.cast());
        hr = item.getDisplayName(SIGDN.SIGDN_FILESYSPATH, pathPtrPtr.cast());
        if (FAILED(hr)) throw WindowsException(hr);

        filePath = pathPtrPtr.value.toDartString();
      } finally {
        free(pathPtrPtr);
      }
    }

    return didUserCancel ? null : File(filePath);
  }
}
