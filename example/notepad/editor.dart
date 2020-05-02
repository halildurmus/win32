// editor.dart

// Represents the main editor
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'notepad.dart';
import 'file.dart';
import 'font.dart';
import 'resources.dart';

class NotepadEditor {
  int hwnd, hwndEdit;

  NotepadFile file;
  NotepadFont font;

  NotepadEditor(this.hwnd, this.hwndEdit) {
    file = NotepadFile(hwnd);
  }

  void Dispose() {
    if (font != null) {
      font.Dispose();
    }
  }

  /// Does the current file in memory contain unsaved changes?
  bool isFileDirty = false;

  bool get isTextSelected {
    bool result;

    final iSelBeg = allocate<Uint32>()..value = NULL;
    final iSelEnd = allocate<Uint32>()..value = NULL;

    SendMessage(hwndEdit, EM_GETSEL, iSelBeg.address, iSelEnd.address);

    result = (iSelBeg.value != iSelEnd.value);

    free(iSelBeg);
    free(iSelEnd);

    return result;
  }

  void NewFile() {
    file.title = null;
    file.path = null;
    isFileDirty = false;
    UpdateWindowTitle();
  }

  void OpenFile() {
    if (isFileDirty && AskAboutSave() == IDCANCEL) {
      return;
    }

    if (file.ShowOpenDialog(hwnd)) {
      file.ReadFileIntoEditControl(hwndEdit);
    }

    UpdateWindowTitle();
    isFileDirty = false;
  }

  bool SaveFile() {
    if (file.path != null) {
      file.WriteFileFromEditControl(hwndEdit);
      isFileDirty = false;
      return true;
    }

    return SaveAsFile();
  }

  bool SaveAsFile() {
    if (file.ShowSaveDialog(hwnd)) {
      UpdateWindowTitle();

      file.WriteFileFromEditControl(hwndEdit);
      isFileDirty = false;
      return true;
    }

    return false;
  }

  void SetFont() {
    font ??= NotepadFont(hwnd);

    if (font.NotepadChooseFont(hwnd)) {
      font.NotepadSetFont(hwndEdit);
    }
  }

  void UpdateWindowTitle() {
    final caption = APP_NAME + ' - ' + (file.title ?? '(untitled)');
    SetWindowText(hwnd, TEXT(caption));
  }

  void ShowOKMessage(String szMessage) {
    MessageBox(
        hwnd, TEXT(szMessage), TEXT(APP_NAME), MB_OK | MB_ICONEXCLAMATION);
  }

  int AskAboutSave() {
    final buffer = TEXT(file.title != null
        ? 'Save current changes in ${file.title}?'
        : 'Save changes to file?');
    final res = MessageBox(
        hwnd, buffer, TEXT(APP_NAME), MB_YESNOCANCEL | MB_ICONQUESTION);

    if (res == IDYES) {
      if (SendMessage(hwnd, WM_COMMAND, IDM_FILE_SAVE, 0) == FALSE) {
        return IDCANCEL;
      }
    }

    return res;
  }
}
