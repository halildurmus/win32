import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'filedialog.dart';

class OpenFilePicker extends FileDialog {
  /// Indicates to the Open dialog box that the preview pane should always be
  /// displayed.
  bool? forcePreviewPaneOn;

  OpenFilePicker() : super() {
    fileMustExist = true;
  }

  /// Returns a `File` object from the selected file path.
  File? getFile() {
    var didUserCancel = false;
    var filePath = '';

    final fileDialog = FileOpenDialog.createInstance();

    final pfos = calloc<Uint32>();
    try {
      var hr = fileDialog.getOptions(pfos);
      if (FAILED(hr)) throw WindowsException(hr);

      var options = pfos.value;
      if (hidePinnedPlaces) {
        options |= FILEOPENDIALOGOPTIONS.FOS_HIDEPINNEDPLACES;
      }
      if (forcePreviewPaneOn ?? false) {
        options |= FILEOPENDIALOGOPTIONS.FOS_FORCEPREVIEWPANEON;
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
      final pFileName = fileName.toNativeUtf16();
      try {
        final hr = fileDialog.setFileName(pFileName);
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(pFileName);
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

    if (defaultFilterIndex != null) {
      if (defaultFilterIndex! > 0 &&
          defaultFilterIndex! < filterSpecification.length) {
        // SetFileTypeIndex is one-based, not zero-based
        final hr = fileDialog.setFileTypeIndex(defaultFilterIndex! + 1);
        if (FAILED(hr)) throw WindowsException(hr);
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

    for (final place in customPlaces) {
      final hr = fileDialog.addPlace(
          place.item.ptr.cast<Pointer<COMObject>>().value,
          place.place == Place.bottom ? FDAP.FDAP_BOTTOM : FDAP.FDAP_TOP);
      if (FAILED(hr)) throw WindowsException(hr);
    }

    var hr = fileDialog.show(hWndOwner);
    if (FAILED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw WindowsException(hr);
      }
    } else {
      final ppsi = calloc<Pointer<COMObject>>();
      final pathPtrPtr = calloc<Pointer<Utf16>>();

      try {
        hr = fileDialog.getResult(ppsi);
        if (FAILED(hr)) throw WindowsException(hr);

        final item = IShellItem(ppsi.cast());
        hr = item.getDisplayName(SIGDN.SIGDN_FILESYSPATH, pathPtrPtr);
        if (FAILED(hr)) throw WindowsException(hr);

        filePath = pathPtrPtr.value.toDartString();
      } finally {
        free(pathPtrPtr);
      }
    }

    return didUserCancel ? null : File(filePath);
  }
}
