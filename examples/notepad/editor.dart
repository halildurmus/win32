import 'dart:ffi';

import 'package:win32/win32.dart';

import 'file.dart';
import 'font.dart';
import 'notepad.dart';
import 'resources.dart';

class NotepadEditor {
  NotepadEditor(this._hwnd, this._hwndEdit)
    : file = NotepadFile(_hwnd, '', ''),
      font = NotepadFont(_hwndEdit);

  // Handles to window and edit control. These don't change after the controls
  // are instantiated, so we take a copy here to minimize ceremony while an
  // instance is being used.
  final int _hwnd;
  final int _hwndEdit;

  final NotepadFile file;
  final NotepadFont font;

  /// Does the current file in memory contain unsaved changes?
  var isFileDirty = false;

  bool get isTextSelected {
    final iSelBeg = loggingCalloc<DWORD>();
    final iSelEnd = loggingCalloc<DWORD>();
    SendMessage(_hwndEdit, EM_GETSEL, iSelBeg.address, iSelEnd.address);
    final result = iSelBeg.value != iSelEnd.value;
    free(iSelBeg);
    free(iSelEnd);
    return result;
  }

  void newFile() {
    file
      ..title = ''
      ..path = '';
    isFileDirty = false;
    updateWindowTitle();
  }

  void openFile() {
    if (isFileDirty && offerSave() == IDCANCEL) return;

    if (file.showOpenDialog(_hwnd)) {
      file.readFileIntoEditControl(_hwndEdit);
    }

    updateWindowTitle();
    isFileDirty = false;
  }

  bool saveFile() {
    if (file.path.isNotEmpty) {
      file.writeFileFromEditControl(_hwndEdit);
      isFileDirty = false;
      return true;
    }

    return saveAsFile();
  }

  bool saveAsFile() {
    if (file.showSaveDialog(_hwnd)) {
      updateWindowTitle();
      file.writeFileFromEditControl(_hwndEdit);
      isFileDirty = false;
      return true;
    }

    return false;
  }

  void setFont() {
    if (font.chooseFont(_hwnd)) {
      font.setFont();
    }
  }

  void updateWindowTitle() {
    final caption =
        '$appName - ${file.title.isNotEmpty ? file.title : '(untitled)'}';
    final string = w(caption);
    SetWindowText(_hwnd, string.ptr);
  }

  void showMessage(String szMessage) {
    final text = w(szMessage);
    final caption = w(appName);
    MessageBox(_hwnd, text.ptr, caption.ptr, MB_OK | MB_ICONEXCLAMATION);
  }

  int offerSave() {
    final text = w(
      file.title.isNotEmpty
          ? 'Save current changes in ${file.title}?'
          : 'Save changes to file?',
    );
    final caption = w(appName);
    final res = MessageBox(
      _hwnd,
      text.ptr,
      caption.ptr,
      MB_YESNOCANCEL | MB_ICONQUESTION,
    );

    if (res == IDYES) {
      if (SendMessage(_hwnd, WM_COMMAND, IDM_FILE_SAVE, 0) == FALSE) {
        return IDCANCEL;
      }
    }

    return res;
  }

  void dispose() => font.dispose();
}
