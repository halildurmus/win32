import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'filedialog.dart';
import 'place.dart';

class DirectoryPicker extends FileDialog {
  Directory? getDirectory() {
    var didUserCancel = false;
    late String path;

    var hr = CoInitializeEx(
      nullptr,
      COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE,
    );
    if (FAILED(hr)) throw WindowsException(hr);

    final dialog = FileOpenDialog.createInstance();

    final pfos = calloc<Uint32>();
    hr = dialog.getOptions(pfos);
    if (FAILED(hr)) throw WindowsException(hr);

    var options = pfos.value;

    options |= FILEOPENDIALOGOPTIONS.FOS_PICKFOLDERS;

    if (hidePinnedPlaces) {
      options |= FILEOPENDIALOGOPTIONS.FOS_HIDEPINNEDPLACES;
    }

    if (fileMustExist) {
      options |= FILEOPENDIALOGOPTIONS.FOS_PATHMUSTEXIST;
    }

    if (forceFileSystemItems) {
      options |= FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
    }

    if (isDirectoryFixed) {
      options |= FILEOPENDIALOGOPTIONS.FOS_NOCHANGEDIR;
    }

    hr = dialog.setOptions(options);
    if (FAILED(hr)) throw WindowsException(hr);

    if (title.isNotEmpty) {
      hr = dialog.setTitle(TEXT(title));
      if (FAILED(hr)) throw WindowsException(hr);
    }

    for (final place in customPlaces) {
      final shellItem =
          Pointer.fromAddress(place.item.ptr.cast<IntPtr>().value);
      if (place.place == Place.bottom) {
        hr = dialog.addPlace(shellItem.cast(), FDAP.FDAP_BOTTOM);
      } else {
        hr = dialog.addPlace(shellItem.cast(), FDAP.FDAP_TOP);
      }
      if (FAILED(hr)) throw WindowsException(hr);
    }

    hr = dialog.show(hWndOwner);
    if (FAILED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw WindowsException(hr);
      }
    } else {
      final ppsi = calloc<Pointer<COMObject>>();
      hr = dialog.getResult(ppsi);
      if (FAILED(hr)) throw WindowsException(hr);

      final item = IShellItem(ppsi.cast());
      final pathPtrPtr = calloc<IntPtr>();
      hr = item.getDisplayName(SIGDN.SIGDN_FILESYSPATH, pathPtrPtr.cast());
      if (FAILED(hr)) throw WindowsException(hr);

      final pathPtr = Pointer<Utf16>.fromAddress(pathPtrPtr.value);
      // MAX_PATH is the normal maximum, but if the process is set to support
      // long file paths and the user selects a path with length > MAX_PATH
      // characters, it could be longer. In this case, the file name will be
      // truncated.
      path = pathPtr.toDartString();

      hr = item.release();
      if (FAILED(hr)) throw WindowsException(hr);
    }

    hr = dialog.release();
    if (FAILED(hr)) throw WindowsException(hr);

    CoUninitialize();
    if (didUserCancel) {
      return null;
    } else {
      return Directory(path);
    }
  }
}
