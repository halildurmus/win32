import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class NotepadFile {
  NotepadFile(int hwnd, this.path, this.title)
    : _ofn = SmartPointer(
        loggingCalloc<OPENFILENAME>(),
        sizeInBytes: sizeOf<OPENFILENAME>(),
      ) {
    _ofn.ptr.ref
      ..lStructSize = sizeOf<OPENFILENAME>()
      ..hwndOwner = hwnd
      ..lpstrFilter =
          'Text Files (*.txt)\u{0}*.txt\u{0}All Files (*.*)\u{0}*.*\u{0}\u{0}'
              .toPWSTR()
      ..nMaxFile = MAX_PATH
      ..nMaxFileTitle = MAX_PATH
      ..lpstrDefExt = 'txt'.toPWSTR();
  }

  /// The fully-qualified name of the current working file (e.g.,
  /// `C:\src\myfile.txt`)
  String path;

  /// The filename and extension of the current working file (e.g. `myfile.txt`)
  String title;

  final SmartPointer<OPENFILENAME> _ofn;

  /// Shows open dialog.
  ///
  /// Returns `true` if the the user selects a file and the common dialog
  /// is successful.
  bool showOpenDialog(int hwnd) {
    final strFile = path.isNotEmpty ? Pwstr(path) : Pwstr.allocate(MAX_PATH);
    final strFileTitle = title.isNotEmpty
        ? Pwstr(title)
        : Pwstr.allocate(MAX_PATH);

    _ofn.ptr.ref
      ..lpstrFile = strFile.ptr
      ..lpstrFileTitle = strFileTitle.ptr
      ..Flags = OFN_HIDEREADONLY | OFN_CREATEPROMPT;

    if (!GetOpenFileName(_ofn.ptr)) return false;

    path = _ofn.ptr.ref.lpstrFile.toDartString();
    title = _ofn.ptr.ref.lpstrFileTitle.toDartString();
    return true;
  }

  /// Shows save dialog and updates `fileFullPath` and `fileTitle` if the user
  /// selects a valid file.
  ///
  /// Returns `true` if the the user selects a file and the common dialog
  /// is successful.
  bool showSaveDialog(int hwnd) {
    final strFile = path.isNotEmpty ? Pwstr(path) : Pwstr.allocate(MAX_PATH);
    final strFileTitle = title.isNotEmpty
        ? Pwstr(title)
        : Pwstr.allocate(MAX_PATH);
    _ofn.ptr.ref
      ..lpstrFile = strFile.ptr
      ..lpstrFileTitle = strFileTitle.ptr
      ..Flags = OFN_OVERWRITEPROMPT;

    if (!GetSaveFileName(_ofn.ptr)) return false;

    final OPENFILENAME(:lpstrFile, :lpstrFileTitle) = _ofn.ptr.ref;
    path = lpstrFile.toDartString();
    title = lpstrFileTitle.toDartString();
    return true;
  }

  void readFileIntoEditControl(int hwndEdit) {
    // Fairly naive implementation that doesn't account for string encoding.
    // That's fine -- this is a toy app!
    final file = File(path);
    final contents = file.readAsStringSync();
    final lpString = w(contents);
    SetWindowText(hwndEdit, lpString.ptr);
  }

  void writeFileFromEditControl(int hwndEdit) {
    final file = File(path);
    final iLength = GetWindowTextLength(hwndEdit);
    final buffer = Pwstr.allocate(iLength);
    GetWindowText(hwndEdit, buffer.ptr, iLength + 1);
    file.writeAsStringSync(buffer.toDartString());
  }
}
