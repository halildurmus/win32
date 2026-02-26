import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'file_dialog.dart';
import 'utils.dart';

/// A picker that allows the user to select a file from the file system.
class OpenFilePicker extends FileDialog {
  OpenFilePicker() : super() {
    fileMustExist = true;
  }

  /// Indicates to the Open dialog box that the preview pane should always be
  /// displayed.
  bool? forcePreviewPaneOn;

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

  /// Returns a [File] object from the selected file.
  ///
  /// Returns `null` if the user cancels the dialog.
  File? getFile() => using((arena) {
    final fileDialog = arena.adopt(_createDialog());

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

  /// Returns a list of [File] objects from the selected files.
  ///
  /// Returns an empty list if the user cancels the dialog.
  List<File> getFiles() => using((arena) {
    final fileDialog = arena.adopt(_createDialog(multiSelect: true));

    try {
      fileDialog.show(null);
      final itemArray = fileDialog.getResults();
      if (itemArray == null) return const [];
      arena.adopt(itemArray);
      final count = itemArray.getCount();

      final filePaths = <String>[];
      for (var i = 0; i < count; i++) {
        final item = itemArray.getItemAt(i);
        if (item == null) break;
        arena.adopt(item);
        final displayName = arena.using(
          item.getDisplayName(SIGDN_FILESYSPATH),
          free,
        );
        filePaths.add(displayName.toDartString());
      }

      return .unmodifiable(filePaths.map(File.new));
    } on WindowsException catch (e) {
      if (e.hr == ERROR_CANCELLED.toHRESULT()) {
        return const [];
      } else {
        rethrow;
      }
    }
  });

  IFileOpenDialog _createDialog({bool multiSelect = false}) => using((arena) {
    final dialog = createInstance<IFileOpenDialog>(FileOpenDialog);
    var options = dialog.getOptions();

    if (!addToRecentDocuments) {
      options |= FOS_DONTADDTORECENT;
    }
    if (!dereferenceLinks) {
      options |= FOS_NODEREFERENCELINKS;
    }
    if (fileMustExist) {
      options |= FOS_FILEMUSTEXIST;
    }
    if (forcePreviewPaneOn ?? false) {
      options |= FOS_FORCEPREVIEWPANEON;
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
    if (multiSelect) {
      options |= FOS_ALLOWMULTISELECT;
    }
    if (showHiddenAndSystemItems) {
      options |= FOS_FORCESHOWHIDDEN;
    }

    dialog.setOptions(options);

    if (defaultExtension case final defaultExtension?
        when defaultExtension.isNotEmpty) {
      dialog.setDefaultExtension(arena.pcwstr(defaultExtension));
    }

    if (fileName.isNotEmpty) {
      dialog.setFileName(arena.pcwstr(fileName));
    }

    if (fileNameLabel.isNotEmpty) {
      dialog.setFileNameLabel(arena.pcwstr(fileNameLabel));
    }

    if (title.isNotEmpty) {
      dialog.setTitle(arena.pcwstr(title));
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
      dialog.setFileTypes(filterSpecification.length, rgSpec);
    }

    if (defaultFilterIndex case final defaultFilterIndex?) {
      if (defaultFilterIndex > 0 &&
          defaultFilterIndex < filterSpecification.length) {
        // SetFileTypeIndex is one-based, not zero-based
        dialog.setFileTypeIndex(defaultFilterIndex + 1);
      }
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

    return dialog;
  });
}
