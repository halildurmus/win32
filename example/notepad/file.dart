import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class NotepadFile {
  OPENFILENAME ofn;

  void PopFileInitialize(int hwnd) {
    ofn = OPENFILENAME.allocate();
    ofn.lStructSize = sizeOf<OPENFILENAME>();
    ofn.hwndOwner = hwnd;
    ofn.hInstance = NULL;
    ofn.lpstrFilter =
        TEXT('Text Files (*.TXT)\0*.txt\0All Files (*.*)\0*.*\0\0');
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

  int PopFileOpenDlg(
      int hwnd, Pointer<Utf16> fileName, Pointer<Utf16> titleName) {
    ofn.hwndOwner = hwnd;
    ofn.lpstrFile = fileName;
    ofn.lpstrFileTitle = titleName;
    ofn.Flags = OFN_HIDEREADONLY | OFN_CREATEPROMPT;

    return GetOpenFileName(ofn.addressOf);
  }

  int PopFileSaveDlg(
      int hwnd, Pointer<Utf16> fileName, Pointer<Utf16> titleName) {
    ofn.hwndOwner = hwnd;
    ofn.lpstrFile = fileName;
    ofn.lpstrFileTitle = titleName;
    ofn.Flags = OFN_OVERWRITEPROMPT;

    return GetSaveFileName(ofn.addressOf);
  }

  bool PopFileRead(int hwndEdit, Pointer<Utf16> fileName) {
    // Fairly naive implementation that doesn't account for
    // string encoding. That's fine -- this is a toy app!
    final file = File(fileName.unpackString(MAX_PATH));
    final contents = file.readAsStringSync();

    SetWindowText(hwndEdit, TEXT(contents));

    return true;
  }
}
