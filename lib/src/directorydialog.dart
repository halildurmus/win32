import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'filedialog.dart';

class DirectoryPicker extends FileDialog {
  /// Returns a [Directory] selected by the user using a common file open
  /// dialog.
  ///
  /// Returns `null` if the user cancels the dialog.
  Directory? getDirectory() {
    var didUserCancel = false;
    var path = '';

    final dialog = FileOpenDialog.createInstance();

    using((arena) {
      final pfos = arena<Uint32>();
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

      if (title.isNotEmpty) {
        final pTitle = title.toNativeUtf16(allocator: arena);
        final hr = dialog.setTitle(pTitle);
        if (FAILED(hr)) throw WindowsException(hr);
      }

      for (final place in customPlaces) {
        final hr = dialog.addPlace(
            place.item.ptr.cast<Pointer<COMObject>>().value,
            place.place == Place.bottom ? FDAP.FDAP_BOTTOM : FDAP.FDAP_TOP);
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
        final ppszName = arena<Pointer<Utf16>>();
        hr = item.getDisplayName(SIGDN.SIGDN_FILESYSPATH, ppszName);
        if (FAILED(hr)) throw WindowsException(hr);
        // MAX_PATH is the normal maximum, but if the process is set to support
        // long file paths and the user selects a path with length > MAX_PATH
        // characters, it could be longer. In this case, the file name will be
        // truncated.
        path = ppszName.value.toDartString();
      }
    });

    return didUserCancel ? null : Directory(path);
  }
}
