import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class FilePicker {
  /// Sets the title of the dialog.
  String title;

  /// Sets the text of the label next to the file name edit box.
  String fileNameLabel;

  /// Sets the file name that appears in the File name edit box when that dialog
  /// box is opened.
  String fileName;

  /// Sets the default extension to be added to file names.
  ///
  /// This string should not include a leading period. For example, "jpg" is
  /// correct, while ".jpg" is not. if this field is set, the dialog will update
  /// the default extension automatically when the user chooses a new file type.
  String defaultExtension;

  /// Sets a filter for the file types shown.
  ///
  /// When using the Open dialog, the file types declared here are used to
  /// filter the view. When using the Save dialog, these values determine which
  /// file name extension is appended to the file name.
  ///
  /// The first value is the "friendly" name which is shown to the user (e.g.
  /// `JPEG Files`); the second value is a filter, which may be a semicolon-
  /// separated list (for example `*.jpg;*.jpeg`).
  Map<String, String> filterSpecification;

  /// Hide all of the standard namespace locations (such as Favorites,
  /// Libraries, Computer, and Network) shown in the navigation pane.
  bool hidePinnedPlaces;

  /// Indicates to the Open dialog box that the preview pane should always be
  /// displayed.
  bool forcePreviewPaneOn;

  /// Ensures that returned items are file system items.
  bool forceFileSystemItems = true;

  /// The item returned must exist. This is a default value for the Open dialog.
  bool fileMustExist;

  /// Don't change the current working directory.
  bool isDirectoryFixed;

  /// Returns a `File` object from the selected file path.
  File getFile() {
    bool didUserCancel = false;
    String filePath;

    var hr = CoInitializeEx(
        nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    final fileDialog = FileDialog();
    final ptr = fileDialog.dlg.ref.lpVtbl;

    Pointer<Int32> pfos = allocate<Int32>();
    hr = fileDialog.GetOptions(ptr, pfos);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    int options = pfos.value;
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
    hr = fileDialog.SetOptions(ptr, options);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    if (defaultExtension != null && defaultExtension.isNotEmpty) {
      hr = fileDialog.SetDefaultExtension(ptr, TEXT(defaultExtension));
      if (!SUCCEEDED(hr)) throw COMException(hr);
    }

    if (fileName != null && fileName.isNotEmpty) {
      hr = fileDialog.SetFileName(ptr, TEXT(fileName));
      if (!SUCCEEDED(hr)) throw COMException(hr);
    }

    if (fileNameLabel != null && fileNameLabel.isNotEmpty) {
      hr = fileDialog.SetFileNameLabel(ptr, TEXT(fileNameLabel));
      if (!SUCCEEDED(hr)) throw COMException(hr);
    }

    if (title != null && title.isNotEmpty) {
      hr = fileDialog.SetTitle(ptr, TEXT(title));
      if (!SUCCEEDED(hr)) throw COMException(hr);
    }

    if (filterSpecification != null && filterSpecification.isNotEmpty) {
      final rgSpec =
          allocate<COMDLG_FILTERSPEC>(count: filterSpecification.length);

      int index = 0;
      for (var key in filterSpecification.keys) {
        rgSpec[index]
          ..pszName = TEXT(key)
          ..pszSpec = TEXT(filterSpecification[key]);
        index++;
      }
      hr = fileDialog.SetFileTypes(ptr, filterSpecification.length, rgSpec);
      if (!SUCCEEDED(hr)) throw COMException(hr);
    }

    hr = fileDialog.Show(ptr, NULL);
    if (!SUCCEEDED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw COMException(hr);
      }
    } else {
      final iShellItem = IShellItem.allocate();
      hr = fileDialog.GetResult(ptr, iShellItem.addressOf);
      if (!SUCCEEDED(hr)) throw COMException(hr);

      final item = ShellItem(iShellItem.addressOf);
      final pathPtrPtr = allocate<IntPtr>();
      hr = item.GetDisplayName(
          iShellItem.lpVtbl, SIGDN.SIGDN_FILESYSPATH, pathPtrPtr.cast());
      if (!SUCCEEDED(hr)) throw COMException(hr);

      final pathPtr = Pointer<Utf16>.fromAddress(pathPtrPtr.value);
      // MAX_PATH is a slight hack here, since this could be longer.
      filePath = pathPtr.unpackString(MAX_PATH);

      hr = item.Release(iShellItem.lpVtbl);
      if (!SUCCEEDED(hr)) throw COMException(hr);
    }

    hr = fileDialog.Release(ptr);
    if (!SUCCEEDED(hr)) throw COMException(hr);

    CoUninitialize();
    if (didUserCancel) {
      return null;
    } else {
      return File(filePath);
    }
  }
}
