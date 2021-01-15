// file.dart

// Represents the file currently loaded in the text editor

import 'dart:ffi';
import 'dart:io';

import 'package:win32/win32.dart';

import 'utf16string.dart';

class NotepadFile {
  /// The fully-qualified name of the current working file
  /// (e.g. `C:\src\myfile.txt`)
  String path;

  /// The filename and extension of the current working file (e.g. `myfile.txt`)
  String title;

  late Pointer<OPENFILENAME> ofn;

  NotepadFile(int hwnd, this.path, this.title) {
    ofn = calloc<OPENFILENAME>()
      ..ref.lStructSize = sizeOf<OPENFILENAME>()
      ..ref.hwndOwner = hwnd
      ..ref.lpstrFilter = TEXT(
          'Text Files (*.txt)\u{0}*.txt\u{0}All Files (*.*)\u{0}*.*\u{0}\u{0}')
      ..ref.nMaxFile = MAX_PATH
      ..ref.nMaxFileTitle = MAX_PATH
      ..ref.lpstrDefExt = TEXT('txt');
  }

  /// Shows open dialog.
  ///
  /// Returns `true` if the the user selects a file and the common dialog
  /// is successful.
  bool showOpenDialog(int hwnd) {
    final strFile =
        path.isNotEmpty ? Utf16String.fromString(path) : Utf16String(MAX_PATH);

    final strFileTitle = title.isNotEmpty
        ? Utf16String.fromString(title)
        : Utf16String(MAX_PATH);

    ofn.ref.lpstrFile = strFile.pointer;
    ofn.ref.lpstrFileTitle = strFileTitle.pointer;
    ofn.ref.Flags = OFN_HIDEREADONLY | OFN_CREATEPROMPT;

    final result = GetOpenFileName(ofn);
    if (result == 0) {
      return false;
    } else {
      path = ofn.ref.lpstrFile.unpackString(MAX_PATH);
      title = ofn.ref.lpstrFileTitle.unpackString(MAX_PATH);
      return true;
    }
  }

  /// Shows save dialog and updates `fileFullPath` and `fileTitle` if the user
  /// selects a valid file.
  ///
  /// Returns `true` if the the user selects a file and the common dialog
  /// is successful.
  bool showSaveDialog(int hwnd) {
    final strFile =
        path.isNotEmpty ? Utf16String.fromString(path) : Utf16String(MAX_PATH);

    final strFileTitle = title.isNotEmpty
        ? Utf16String.fromString(title)
        : Utf16String(MAX_PATH);

    ofn.ref.lpstrFile = strFile.pointer;
    ofn.ref.lpstrFileTitle = strFileTitle.pointer;
    ofn.ref.Flags = OFN_OVERWRITEPROMPT;

    final result = GetSaveFileName(ofn);
    if (result == 0) {
      return false;
    } else {
      path = ofn.ref.lpstrFile.unpackString(MAX_PATH);
      title = ofn.ref.lpstrFileTitle.unpackString(MAX_PATH);
      return true;
    }
  }

  void readFileIntoEditControl(int hwndEdit) {
    // Fairly naive implementation that doesn't account for
    // string encoding. That's fine -- this is a toy app!
    final file = File(path);
    final contents = file.readAsStringSync();

    SetWindowText(hwndEdit, TEXT(contents));
  }

  void writeFileFromEditControl(int hwndEdit) {
    final file = File(path);
    final iLength = GetWindowTextLength(hwndEdit);
    final buffer = Utf16String(iLength);

    GetWindowText(hwndEdit, buffer.pointer, iLength + 1);
    file.writeAsStringSync(buffer.toString());

    buffer.delete();
  }
}
