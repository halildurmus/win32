// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'file_dialog.dart';

/// A picker that allows the user to save a file into the file system.
class SaveFilePicker extends FileDialog {
  /// Whether the dialog box should always display the directory defined in
  /// in [initialDirectory] to the user, regardless of previous user
  /// interaction.
  bool alwaysShowInitialDirectory = false;

  /// The directory that the dialog box initially displays when opened.
  ///
  /// If [alwaysShowInitialDirectory] is `true`, the dialog box always opens in
  /// the directory specified by this field. Otherwise, it opens in the most
  /// recently accessed folder (if any).
  String? initialDirectory;

  /// Returns a `File` object from the selected file.
  ///
  /// Returns `null` if the user cancels the dialog.
  File? getFile() {
    var didUserCancel = false;
    var filePath = '';

    final fileDialog = FileSaveDialog.createInstance();

    using((arena) {
      final pfos = arena<Uint32>();
      var hr = fileDialog.getOptions(pfos);
      if (FAILED(hr)) throw WindowsException(hr);

      var options = pfos.value;
      if (!addToRecentDocuments) {
        options |= FILEOPENDIALOGOPTIONS.FOS_DONTADDTORECENT;
      }
      if (!dereferenceLinks) {
        options |= FILEOPENDIALOGOPTIONS.FOS_NODEREFERENCELINKS;
      }
      if (fileMustExist) {
        options |= FILEOPENDIALOGOPTIONS.FOS_FILEMUSTEXIST;
      }
      if (forceFileSystemItems) {
        options |= FILEOPENDIALOGOPTIONS.FOS_FORCEFILESYSTEM;
      }
      if (hidePinnedPlaces) {
        options |= FILEOPENDIALOGOPTIONS.FOS_HIDEPINNEDPLACES;
      }
      if (isDirectoryFixed) {
        options |= FILEOPENDIALOGOPTIONS.FOS_NOCHANGEDIR;
      }
      if (showHiddenAndSystemItems) {
        options |= FILEOPENDIALOGOPTIONS.FOS_FORCESHOWHIDDEN;
      }

      hr = fileDialog.setOptions(options);
      if (FAILED(hr)) throw WindowsException(hr);

      if (defaultExtension case final defaultExtension?
          when defaultExtension.isNotEmpty) {
        final pDefaultExtension =
            defaultExtension.toNativeUtf16(allocator: arena);
        final hr = fileDialog.setDefaultExtension(pDefaultExtension);
        if (FAILED(hr)) throw WindowsException(hr);
      }

      if (fileName.isNotEmpty) {
        final pFilename = fileName.toNativeUtf16(allocator: arena);
        final hr = fileDialog.setFileName(pFilename);
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

      if (initialDirectory case final initialDirectory?
          when initialDirectory.isNotEmpty) {
        final pszPath = initialDirectory.toNativeUtf16(allocator: arena);
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
        hr = alwaysShowInitialDirectory
            ? fileDialog
                .setFolder(shellItem.ptr.cast<Pointer<COMObject>>().value)
            : fileDialog.setDefaultFolder(
                shellItem.ptr.cast<Pointer<COMObject>>().value);
        if (FAILED(hr)) throw WindowsException(hr);
      }

      hr = fileDialog.show(hWndOwner);
      if (!SUCCEEDED(hr)) {
        if (hr == HRESULT_FROM_WIN32(WIN32_ERROR.ERROR_CANCELLED)) {
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
    });

    return didUserCancel ? null : File(filePath);
  }
}
