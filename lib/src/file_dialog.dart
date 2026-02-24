import 'dart:ffi';

import 'package:win32/win32.dart';

import 'place.dart';
import 'windows_known_folder.dart';

/// An abstract class that represents a file dialog on Windows.
abstract class FileDialog {
  FileDialog() {
    _initializeCom();
  }

  /// Whether to add the item being opened or saved to the recent documents
  /// list.
  var addToRecentDocuments = true;

  /// A list of custom places.
  ///
  /// Use [addPlace] to add an item to this list.
  final customPlaces = <CustomPlace>[];

  /// The default extension to be added to file names.
  ///
  /// This string should not include a leading period. For example, `jpg` is
  /// correct, while `.jpg` is not. If this field is set, the dialog will update
  /// the default extension automatically when the user chooses a new file type.
  String? defaultExtension;

  /// Which entry in the [filterSpecification] is shown by default. Typically
  /// this is the first entry shown.
  int? defaultFilterIndex;

  /// Whether shortcuts should be treated as their target items.
  ///
  /// When this value is set to `true`, the application will follow the target
  /// of a shortcut when encountering a `.lnk` file, rather than treating it as
  /// the shortcut itself.
  ///
  /// Setting this value to `false` allows an application to open a `.lnk` file
  /// directly, without resolving the target it points to.
  var dereferenceLinks = true;

  /// The item returned must exist.
  var fileMustExist = false;

  /// The file name that appears in the File name edit box when that dialog box
  /// is opened.
  var fileName = '';

  /// The text of the label next to the file name edit box.
  var fileNameLabel = '';

  /// The filter for the file types shown.
  ///
  /// When using the Open dialog, the file types declared here are used to
  /// filter the view. When using the Save dialog, these values determine which
  /// file name extension is appended to the file name.
  ///
  /// The first value is the "friendly" name which is shown to the user (e.g.
  /// `JPEG Files`); the second value is a filter, which may be a semicolon-
  /// separated list (for example `*.jpg;*.jpeg`).
  Map<String, String> filterSpecification = {};

  /// Ensure that returned items are file system items.
  var forceFileSystemItems = true;

  /// Hide all of the standard namespace locations (such as Favorites,
  /// Libraries, Computer, and Network) shown in the navigation pane.
  var hidePinnedPlaces = false;

  /// HWND of dialog.
  Pointer hWndOwner = nullptr;

  /// Don't change the current working directory.
  var isDirectoryFixed = false;

  /// Include hidden and system items.
  var showHiddenAndSystemItems = false;

  /// The title of the dialog.
  var title = '';

  /// Whether COM has been initialized.
  static var _isComInitialized = false;

  void _initializeCom() {
    if (!_isComInitialized) {
      final hr = CoInitializeEx(
        COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE,
      );
      if (hr.isError) throw WindowsException(hr);
      _isComInitialized = true;
    }
  }

  /// Add a known folder to the `Quick Access` list.
  ///
  /// On Windows 11, this may appear under the `Application Links` node.
  void addPlace(WindowsKnownFolder folder, Place location) =>
      customPlaces.add(.new(folder, location));
}
