// editor.dart

// Represents the main editor
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'file.dart';
import 'font.dart';
import 'notepad.dart';
import 'resources.dart';

class NotepadEditor {
  // Handles to window and edit control. These don't change after the controls
  // are instantiated, so we take a copy here to minimize ceremony while an
  // instance is being used.
  final int _hwnd;
  final int _hwndEdit;

  NotepadFile file;
  NotepadFont font;

  NotepadEditor(this._hwnd, this._hwndEdit) {
    file = NotepadFile(_hwnd);
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

    SendMessage(_hwndEdit, EM_GETSEL, iSelBeg.address, iSelEnd.address);

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
    if (isFileDirty && OfferSave() == IDCANCEL) {
      return;
    }

    if (file.ShowOpenDialog(_hwnd)) {
      file.ReadFileIntoEditControl(_hwndEdit);
    }

    UpdateWindowTitle();
    isFileDirty = false;
  }

  bool SaveFile() {
    if (file.path != null) {
      file.WriteFileFromEditControl(_hwndEdit);
      isFileDirty = false;
      return true;
    }

    return SaveAsFile();
  }

  bool SaveAsFile() {
    if (file.ShowSaveDialog(_hwnd)) {
      UpdateWindowTitle();

      file.WriteFileFromEditControl(_hwndEdit);
      isFileDirty = false;
      return true;
    }

    return false;
  }

  void SetFont() {
    font ??= NotepadFont(_hwnd);

    if (font.NotepadChooseFont(_hwnd)) {
      font.NotepadSetFont(_hwndEdit);
    }
  }

  void UpdateWindowTitle() {
    final caption = '$APP_NAME - ${file.title ?? '(untitled)'}';
    SetWindowText(_hwnd, TEXT(caption));
  }

  void ShowMessage(String szMessage) {
    MessageBox(
        _hwnd, TEXT(szMessage), TEXT(APP_NAME), MB_OK | MB_ICONEXCLAMATION);
  }

  int OfferSave() {
    final buffer = TEXT(file.title != null
        ? 'Save current changes in ${file.title}?'
        : 'Save changes to file?');
    final res = MessageBox(
        _hwnd, buffer, TEXT(APP_NAME), MB_YESNOCANCEL | MB_ICONQUESTION);

    if (res == IDYES) {
      if (SendMessage(_hwnd, WM_COMMAND, IDM_FILE_SAVE, 0) == FALSE) {
        return IDCANCEL;
      }
    }

    return res;
  }
}
