// file.dart

// File loading and saving

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'notepad.dart';

class NotepadFile {
  OPENFILENAME ofn;

  NotepadFile(int hwnd) {
    ofn = OPENFILENAME.allocate();
    ofn.lStructSize = sizeOf<OPENFILENAME>();
    ofn.hwndOwner = hwnd;
    ofn.hInstance = NULL;
    ofn.lpstrFilter = TEXT(
        'Text Files (*.txt)\u{0}*.txt\u{0}All Files (*.*)\u{0}*.*\u{0}\u{0}');
    ofn.lpstrCustomFilter = nullptr;
    ofn.nMaxCustFilter = 0;
    ofn.nFilterIndex = 0;
    ofn.lpstrFile = nullptr; // Set in Open and Close functions
    ofn.nMaxFile = MAX_PATH;
    ofn.lpstrFileTitle = nullptr; // Set in Open and Close functions
    ofn.nMaxFileTitle = MAX_PATH;
    ofn.lpstrInitialDir = nullptr;
    ofn.lpstrTitle = nullptr;
    ofn.Flags = 0; // Set in Open and Close functions
    ofn.nFileOffset = 0;
    ofn.nFileExtension = 0;
    ofn.lpstrDefExt = TEXT('txt');
    ofn.lCustData = 0;
    ofn.lpfnHook = nullptr;
    ofn.lpTemplateName = nullptr;
  }

  /// Shows open dialog.
  ///
  /// Returns `true` if the the user selects a file and the common dialog
  /// is successful.
  bool ShowOpenDialog(int hwnd) {
    Pointer<Utf16> lpstrFile;
    Pointer<Utf16> lpstrFileTitle;

    if (fileFullPath == null) {
      lpstrFile = (allocate<Uint16>(count: MAX_PATH)..value = 0).cast<Utf16>();
    } else {
      lpstrFile = TEXT(fileFullPath);
    }

    if (fileTitle == null) {
      lpstrFileTitle =
          (allocate<Uint16>(count: MAX_PATH)..value = 0).cast<Utf16>();
    } else {
      lpstrFileTitle = TEXT(fileTitle);
    }

    ofn.hwndOwner = hwnd;
    ofn.lpstrFile = lpstrFile;
    ofn.lpstrFileTitle = lpstrFileTitle;
    ofn.Flags = OFN_HIDEREADONLY | OFN_CREATEPROMPT;

    final result = GetOpenFileName(ofn.addressOf);
    if (result == 0) {
      return false;
    } else {
      fileFullPath = ofn.lpstrFile.unpackString(MAX_PATH);
      fileTitle = ofn.lpstrFileTitle.unpackString(MAX_PATH);
      return true;
    }
  }

  /// Shows save dialog and updates `fileFullPath` and `fileTitle` if the user
  /// selects a valid file.
  ///
  /// Returns `true` if the the user selects a file and the common dialog
  /// is successful.
  bool ShowSaveDialog(int hwnd) {
    Pointer<Utf16> lpstrFile;
    Pointer<Utf16> lpstrFileTitle;

    if (fileFullPath == null) {
      lpstrFile = (allocate<Uint16>(count: MAX_PATH)..value = 0).cast<Utf16>();
    } else {
      lpstrFile = TEXT(fileFullPath);
    }

    if (fileTitle == null) {
      lpstrFileTitle =
          (allocate<Uint16>(count: MAX_PATH)..value = 0).cast<Utf16>();
    } else {
      lpstrFileTitle = TEXT(fileTitle);
    }

    ofn.hwndOwner = hwnd;
    ofn.lpstrFile = lpstrFile;
    ofn.lpstrFileTitle = lpstrFileTitle;
    ofn.Flags = OFN_OVERWRITEPROMPT;

    final result = GetSaveFileName(ofn.addressOf);
    if (result == 0) {
      return false;
    } else {
      fileFullPath = ofn.lpstrFile.unpackString(MAX_PATH);
      fileTitle = ofn.lpstrTitle.unpackString(MAX_PATH);
      return true;
    }
  }

  void ReadFileIntoEditControl(int hwndEdit) {
    // Fairly naive implementation that doesn't account for
    // string encoding. That's fine -- this is a toy app!
    final file = File(fileFullPath);
    final contents = file.readAsStringSync();

    SetWindowText(hwndEdit, TEXT(contents));
  }

  void WriteFileFromEditControl(int hwndEdit) {
    final file = File(fileFullPath);
    final iLength = GetWindowTextLength(hwndEdit);
    final pstrBuffer = allocate<Uint16>(count: iLength + 1).cast<Utf16>();

    GetWindowText(hwndEdit, pstrBuffer, iLength + 1);
    file.writeAsStringSync(pstrBuffer.unpackString(iLength + 1));

    free(pstrBuffer);
  }
}
