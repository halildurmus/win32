import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'file_dialog.dart';
import 'utils.dart';

/// A picker that allows the user to select a directory from the file system.
class DirectoryPicker extends FileDialog {
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

  /// Returns a [Directory] selected by the user using a common file open
  /// dialog.
  ///
  /// Returns `null` if the user cancels the dialog.
  Directory? getDirectory() => using((arena) {
    final dialog = arena.com<IFileOpenDialog>(FileOpenDialog);
    var options = dialog.getOptions();
    options |= FOS_PICKFOLDERS;
    if (hidePinnedPlaces) {
      options |= FOS_HIDEPINNEDPLACES;
    }
    if (fileMustExist) options |= FOS_PATHMUSTEXIST;
    if (isDirectoryFixed) options |= FOS_NOCHANGEDIR;
    if (forceFileSystemItems) {
      options |= FOS_FORCEFILESYSTEM;
    }

    dialog.setOptions(options);

    if (title.isNotEmpty) {
      dialog.setTitle(arena.pcwstr(title));
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
        dialog.setFolder(shellItem);
      } else {
        dialog.setDefaultFolder(shellItem);
      }
    }

    applyCustomPlaces(dialog, customPlaces, arena);

    try {
      dialog.show(getEffectiveWindowHandle(hWndOwner));
      final item = dialog.getResult();
      if (item == null) return null;
      arena.adopt(item);
      final displayName = arena.using(
        item.getDisplayName(SIGDN_FILESYSPATH),
        free,
      );
      // MAX_PATH is the normal maximum, but if the process is set to support
      // long file paths and the user selects a path with length > MAX_PATH
      // characters, it could be longer. In this case, the file name will be
      // truncated.
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
