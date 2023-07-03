import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'filedialog.dart';

class OpenFilePicker extends FileDialog {
  /// Indicates to the Open dialog box that the preview pane should always be
  /// displayed.
  bool? forcePreviewPaneOn;

  /// The folder used as a default if there is not a recently used folder
  /// value available.
  String? initialDirectory;

  OpenFilePicker() : super() {
    fileMustExist = true;
  }

  /// Returns a [File] object from the selected file.
  ///
  /// Returns `null` if the user cancels the dialog.
  File? getFile() {
    var didUserCancel = false;
    var filePath = '';

    final fileDialog = _createDialog();

    final hr = fileDialog.show(hWndOwner);
    if (FAILED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw WindowsException(hr);
      }
    } else {
      final ppsi = calloc<Pointer<COMObject>>();
      var hr = fileDialog.getResult(ppsi);
      if (FAILED(hr)) throw WindowsException(hr);

      using((arena) {
        final item = IShellItem(ppsi.cast());
        final ppszName = arena<Pointer<Utf16>>();
        hr = item.getDisplayName(SIGDN.SIGDN_FILESYSPATH, ppszName);
        if (FAILED(hr)) throw WindowsException(hr);
        filePath = ppszName.value.toDartString();
      });
    }

    return didUserCancel ? null : File(filePath);
  }

  /// Returns a list of [File] objects from the selected files.
  ///
  /// Returns an empty list if the user cancels the dialog.
  List<File> getFiles() {
    var didUserCancel = false;
    final filePaths = <String>[];

    final fileDialog = _createDialog(multiSelect: true);

    final hr = fileDialog.show(NULL);
    if (FAILED(hr)) {
      if (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED)) {
        didUserCancel = true;
      } else {
        throw WindowsException(hr);
      }
    } else {
      final ppsi = calloc<Pointer<COMObject>>();
      var hr = fileDialog.getResults(ppsi);
      if (FAILED(hr)) throw WindowsException(hr);

      using((arena) {
        final itemArray = IShellItemArray(ppsi.cast());
        final pdwNumItems = arena<Uint32>();
        hr = itemArray.getCount(pdwNumItems);
        if (FAILED(hr)) throw WindowsException(hr);

        for (var i = 0; i < pdwNumItems.value; i++) {
          final ppsi = calloc<Pointer<COMObject>>();
          hr = itemArray.getItemAt(i, ppsi);
          if (FAILED(hr)) throw WindowsException(hr);

          final item = IShellItem(ppsi.cast());
          final ppszName = arena<Pointer<Utf16>>();

          hr = item.getDisplayName(SIGDN.SIGDN_FILESYSPATH, ppszName);
          if (FAILED(hr)) throw WindowsException(hr);

          final filePath = ppszName.value.toDartString();
          filePaths.add(filePath);
        }
      });
    }

    return didUserCancel ? [] : List<File>.from(filePaths.map(File.new));
  }

  FileOpenDialog _createDialog({bool multiSelect = false}) {
    final fileDialog = FileOpenDialog.createInstance();

    using((arena) {
      final pfos = arena<Uint32>();
      var hr = fileDialog.getOptions(pfos);
      if (FAILED(hr)) throw WindowsException(hr);

      var options = pfos.value;
      if (forcePreviewPaneOn ?? false) {
        options |= FILEOPENDIALOGOPTIONS.FOS_FORCEPREVIEWPANEON;
      }
      if (forceFileSystemItems) {
        options |= FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
      }
      if (fileMustExist) {
        options |= FILEOPENDIALOGOPTIONS.FOS_FILEMUSTEXIST;
      }
      if (hidePinnedPlaces) {
        options |= FILEOPENDIALOGOPTIONS.FOS_HIDEPINNEDPLACES;
      }
      if (isDirectoryFixed) {
        options |= FILEOPENDIALOGOPTIONS.FOS_NOCHANGEDIR;
      }
      if (multiSelect) {
        options |= FILEOPENDIALOGOPTIONS.FOS_ALLOWMULTISELECT;
      }
      hr = fileDialog.setOptions(options);
      if (FAILED(hr)) throw WindowsException(hr);

      if (defaultExtension != null && defaultExtension!.isNotEmpty) {
        final pDefaultExtension =
            defaultExtension!.toNativeUtf16(allocator: arena);
        final hr = fileDialog.setDefaultExtension(pDefaultExtension);
        if (FAILED(hr)) throw WindowsException(hr);
      }

      if (fileName.isNotEmpty) {
        final pFileName = fileName.toNativeUtf16(allocator: arena);
        final hr = fileDialog.setFileName(pFileName);
        if (FAILED(hr)) throw WindowsException(hr);
      }

      if (fileNameLabel.isNotEmpty) {
        final pFileNameLabel = fileNameLabel.toNativeUtf16(allocator: arena);
        final hr = fileDialog.setFileNameLabel(pFileNameLabel);
        if (FAILED(hr)) throw WindowsException(hr);
      }

      if (title.isNotEmpty) {
        final pTitle = title.toNativeUtf16(allocator: arena);
        final hr = fileDialog.setTitle(pTitle);
        if (FAILED(hr)) throw WindowsException(hr);
      }

      if (filterSpecification.isNotEmpty) {
        final rgSpec = arena<COMDLG_FILTERSPEC>(filterSpecification.length);
        var index = 0;
        for (final key in filterSpecification.keys) {
          final pszName = key.toNativeUtf16(allocator: arena);
          final pszSpec =
              filterSpecification[key]!.toNativeUtf16(allocator: arena);
          rgSpec[index]
            ..pszName = pszName
            ..pszSpec = pszSpec;
          index++;
        }
        final hr = fileDialog.setFileTypes(filterSpecification.length, rgSpec);
        if (FAILED(hr)) throw WindowsException(hr);
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
        final pszPath = initialDirectory!.toNativeUtf16(allocator: arena);
        final riid = convertToIID(IID_IShellItem, allocator: arena);
        final ppv = calloc<Pointer>();
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
      }

      for (final place in customPlaces) {
        final hr = fileDialog.addPlace(
            place.item.ptr.cast<Pointer<COMObject>>().value,
            place.place == Place.bottom ? FDAP.FDAP_BOTTOM : FDAP.FDAP_TOP);
        if (FAILED(hr)) throw WindowsException(hr);
      }
    });

    return fileDialog;
  }
}
