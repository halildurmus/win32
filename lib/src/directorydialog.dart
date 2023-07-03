import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'filedialog.dart';

class DirectoryPicker extends FileDialog {
  /// Returns a directory selected by the user using a common file open dialog.
  /// If the user clicks Cancel, then this function instead returns null.
  Directory? getDirectory() {
    var didUserCancel = false;
    var path = '';

    final dialog = FileOpenDialog.createInstance();

    final pfos = calloc<Uint32>();
    try {
      var hr = dialog.getOptions(pfos);
      if (FAILED(hr)) throw WindowsException(hr);

      var options = pfos.value;
      options |= FILEOPENDIALOGOPTIONS.FOS_PICKFOLDERS;
      if (hidePinnedPlaces) {
        options |= FILEOPENDIALOGOPTIONS.FOS_HIDEPINNEDPLACES;
      }
      if (fileMustExist) options |= FILEOPENDIALOGOPTIONS.FOS_PATHMUSTEXIST;
      if (isDirectoryFixed) options |= FILEOPENDIALOGOPTIONS.FOS_NOCHANGEDIR;
      if (forceFileSystemItems) {
        options |= FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
      }

      hr = dialog.setOptions(options);
      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      free(pfos);
    }

    if (title.isNotEmpty) {
      final pTitle = title.toNativeUtf16();
      try {
        final hr = dialog.setTitle(pTitle);
        if (FAILED(hr)) throw WindowsException(hr);
      } finally {
        free(pTitle);
      }
    }

    for (final place in customPlaces) {
      final hr = dialog.addPlace(
          place.item.ptr.cast<Pointer<COMObject>>().value,
          place.place == Place.bottom ? FDAP.FDAP_BOTTOM : FDAP.FDAP_TOP);
      if (FAILED(hr)) throw WindowsException(hr);
    }

    var hr = dialog.show(hWndOwner);
    if (FAILED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw WindowsException(hr);
      }
    } else {
      final ppsi = calloc<Pointer<COMObject>>();
      final pathPtrPtr = calloc<IntPtr>();

      try {
        hr = dialog.getResult(ppsi);
        if (FAILED(hr)) throw WindowsException(hr);

        final item = IShellItem(ppsi.cast());
        hr = item.getDisplayName(SIGDN.SIGDN_FILESYSPATH, pathPtrPtr.cast());
        if (FAILED(hr)) throw WindowsException(hr);

        final pathPtr = Pointer<Utf16>.fromAddress(pathPtrPtr.value);
        // MAX_PATH is the normal maximum, but if the process is set to support
        // long file paths and the user selects a path with length > MAX_PATH
        // characters, it could be longer. In this case, the file name will be
        // truncated.
        path = pathPtr.toDartString();
      } finally {
        free(pathPtrPtr);
      }
    }

    return didUserCancel ? null : Directory(path);
  }
}
