import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'file_dialog.dart';
import 'utils.dart';

/// A picker that allows the user to save a file into the file system.
class SaveFilePicker extends FileDialog {
  /// Whether the dialog box should always display the directory defined in
  /// in [initialDirectory] to the user, regardless of previous user
  /// interaction.
  var alwaysShowInitialDirectory = false;

  /// The directory that the dialog box initially displays when opened.
  ///
  /// If [alwaysShowInitialDirectory] is `true`, the dialog box always opens in
  /// the directory specified by this field. Otherwise, it opens in the most
  /// recently accessed folder (if any).
  String? initialDirectory;

  /// Returns a `File` object from the selected file.
  ///
  /// Returns `null` if the user cancels the dialog.
  File? getFile() => using((arena) {
    final fileDialog = arena.com<IFileSaveDialog>(FileSaveDialog);
    var options = fileDialog.getOptions();

    if (!addToRecentDocuments) {
      options |= FOS_DONTADDTORECENT;
    }
    if (!dereferenceLinks) {
      options |= FOS_NODEREFERENCELINKS;
    }
    if (fileMustExist) {
      options |= FOS_FILEMUSTEXIST;
    }
    if (forceFileSystemItems) {
      options |= FOS_FORCEFILESYSTEM;
    }
    if (hidePinnedPlaces) {
      options |= FOS_HIDEPINNEDPLACES;
    }
    if (isDirectoryFixed) {
      options |= FOS_NOCHANGEDIR;
    }
    if (showHiddenAndSystemItems) {
      options |= FOS_FORCESHOWHIDDEN;
    }

    fileDialog.setOptions(options);

    if (defaultExtension case final defaultExtension?
        when defaultExtension.isNotEmpty) {
      fileDialog.setDefaultExtension(arena.pcwstr(defaultExtension));
    }

    if (fileName.isNotEmpty) {
      fileDialog.setFileName(arena.pcwstr(fileName));
    }

    if (fileNameLabel.isNotEmpty) {
      fileDialog.setFileNameLabel(arena.pcwstr(fileNameLabel));
    }

    if (title.isNotEmpty) {
      fileDialog.setTitle(arena.pcwstr(title));
    }

    if (filterSpecification.isNotEmpty) {
      final rgSpec = arena<COMDLG_FILTERSPEC>(filterSpecification.length);
      var index = 0;
      for (final key in filterSpecification.keys) {
        rgSpec[index]
          ..pszName = arena.pwstr(key)
          ..pszSpec = arena.pwstr(filterSpecification[key]!);
        index++;
      }
      fileDialog.setFileTypes(filterSpecification.length, rgSpec);
    }

    if (initialDirectory case final initialDirectory?
        when initialDirectory.isNotEmpty) {
      final shellItem = arena.adopt(
        SHCreateItemFromParsingName<IShellItem>(
          arena.pcwstr(initialDirectory),
          null,
        ),
      );

      if (alwaysShowInitialDirectory) {
        fileDialog.setFolder(shellItem);
      } else {
        fileDialog.setDefaultFolder(shellItem);
      }
    }

    try {
      fileDialog.show(getEffectiveWindowHandle(hWndOwner));
      final item = fileDialog.getResult();
      if (item == null) return null;
      arena.adopt(item);
      final displayName = arena.using(
        item.getDisplayName(SIGDN_FILESYSPATH),
        free,
      );
      return .new(displayName.toDartString());
    } on WindowsException catch (e) {
      if (e.hr == ERROR_CANCELLED.toHRESULT()) {
        return null;
      } else {
        rethrow;
      }
    }
  });
}
