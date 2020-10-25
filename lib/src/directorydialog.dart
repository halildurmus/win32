import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'filedialog.dart';
import 'place.dart';

class DirectoryPicker extends FileDialog {
  Directory getDirectory() {
    var didUserCancel = false;
    String path;

    var hr = CoInitializeEx(
        nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    if (FAILED(hr)) throw WindowsException(hr);

    final dialog = FileOpenDialog.createInstance();

    final pfos = allocate<Uint32>();
    hr = dialog.GetOptions(pfos);
    if (FAILED(hr)) throw WindowsException(hr);

    var options = pfos.value;

    options |= FILEOPENDIALOGOPTIONS.FOS_PICKFOLDERS;

    if (hidePinnedPlaces ?? false) {
      options |= FILEOPENDIALOGOPTIONS.FOS_HIDEPINNEDPLACES;
    }

    if (fileMustExist ?? false) {
      options |= FILEOPENDIALOGOPTIONS.FOS_PATHMUSTEXIST;
    }

    if (forceFileSystemItems ?? false) {
      options |= FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
    }

    if (isDirectoryFixed ?? false) {
      options |= FILEOPENDIALOGOPTIONS.FOS_NOCHANGEDIR;
    }

    hr = dialog.SetOptions(options);
    if (FAILED(hr)) throw WindowsException(hr);

    if (title != null && title.isNotEmpty) {
      hr = dialog.SetTitle(TEXT(title));
      if (FAILED(hr)) throw WindowsException(hr);
    }

    for (final place in customPlaces) {
      final shellItem =
          Pointer.fromAddress(place.item.ptr.cast<IntPtr>().value);
      if (place.place == Place.bottom) {
        hr = dialog.AddPlace(shellItem.cast(), FDAP.FDAP_BOTTOM);
      } else {
        hr = dialog.AddPlace(shellItem.cast(), FDAP.FDAP_TOP);
      }
      if (FAILED(hr)) throw WindowsException(hr);
    }

    hr = dialog.Show(NULL);
    if (FAILED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw WindowsException(hr);
      }
    } else {
      final ppsi = allocate<IntPtr>();
      hr = dialog.GetResult(ppsi);
      if (FAILED(hr)) throw WindowsException(hr);

      final item = IShellItem(ppsi.cast());
      final pathPtrPtr = allocate<IntPtr>();
      hr = item.GetDisplayName(SIGDN.SIGDN_FILESYSPATH, pathPtrPtr.cast());
      if (FAILED(hr)) throw WindowsException(hr);

      final pathPtr = Pointer<Utf16>.fromAddress(pathPtrPtr.value);
      // MAX_PATH is the normal maximum, but if the process is set to support
      // long file paths and the user selects a path with length > MAX_PATH
      // characters, it could be longer. In this case, the file name will be
      // truncated.
      path = pathPtr.unpackString(MAX_PATH);

      hr = item.Release();
      if (FAILED(hr)) throw WindowsException(hr);
    }

    hr = dialog.Release();
    if (FAILED(hr)) throw WindowsException(hr);

    CoUninitialize();
    if (didUserCancel) {
      return null;
    } else {
      return Directory(path);
    }
  }
}
