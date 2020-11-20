import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'filedialog.dart';
import 'place.dart';

class OpenFilePicker extends FileDialog {
  /// Indicates to the Open dialog box that the preview pane should always be
  /// displayed.
  bool? forcePreviewPaneOn;

  /// Returns a `File` object from the selected file path.
  File? getFile() {
    var didUserCancel = false;
    late String filePath;

    var hr = CoInitializeEx(
        nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    if (FAILED(hr)) throw WindowsException(hr);

    final fileDialog = FileOpenDialog.createInstance();

    final pfos = allocate<Uint32>();
    hr = fileDialog.GetOptions(pfos);
    if (FAILED(hr)) throw WindowsException(hr);

    var options = pfos.value;
    if (hidePinnedPlaces ?? false) {
      options |= FILEOPENDIALOGOPTIONS.FOS_HIDEPINNEDPLACES;
    }
    if (forcePreviewPaneOn ?? false) {
      options |= FILEOPENDIALOGOPTIONS.FOS_FORCEPREVIEWPANEON;
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
    if (FAILED(hr)) throw WindowsException(hr);

    if (defaultExtension != null && defaultExtension!.isNotEmpty) {
      hr = fileDialog.SetDefaultExtension(TEXT(defaultExtension!));
      if (FAILED(hr)) throw WindowsException(hr);
    }

    if (fileName != null && fileName!.isNotEmpty) {
      hr = fileDialog.SetFileName(TEXT(fileName!));
      if (FAILED(hr)) throw WindowsException(hr);
    }

    if (fileNameLabel != null && fileNameLabel!.isNotEmpty) {
      hr = fileDialog.SetFileNameLabel(TEXT(fileNameLabel!));
      if (FAILED(hr)) throw WindowsException(hr);
    }

    if (title != null && title!.isNotEmpty) {
      hr = fileDialog.SetTitle(TEXT(title!));
      if (FAILED(hr)) throw WindowsException(hr);
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
      if (FAILED(hr)) throw WindowsException(hr);
    }

    if (defaultFilterIndex != null) {
      if (defaultFilterIndex! > 0 &&
          defaultFilterIndex! < filterSpecification!.length) {
        // SetFileTypeIndex is one-based, not zero-based
        hr = fileDialog.SetFileTypeIndex(defaultFilterIndex! + 1);
        if (FAILED(hr)) throw WindowsException(hr);
      }
    }

    for (final place in customPlaces) {
      final shellItem =
          Pointer.fromAddress(place.item.ptr.cast<IntPtr>().value);
      if (place.place == Place.bottom) {
        hr = fileDialog.AddPlace(shellItem.cast(), FDAP.FDAP_BOTTOM);
      } else {
        hr = fileDialog.AddPlace(shellItem.cast(), FDAP.FDAP_TOP);
      }
      if (FAILED(hr)) throw WindowsException(hr);
    }

    hr = fileDialog.Show(NULL);
    if (FAILED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw WindowsException(hr);
      }
    } else {
      final ppsi = allocate<IntPtr>();
      hr = fileDialog.GetResult(ppsi);
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
      filePath = pathPtr.unpackString(MAX_PATH);

      hr = item.Release();
      if (FAILED(hr)) throw WindowsException(hr);
    }

    hr = fileDialog.Release();
    if (FAILED(hr)) throw WindowsException(hr);

    CoUninitialize();
    if (didUserCancel) {
      return null;
    } else {
      return File(filePath);
    }
  }
}
