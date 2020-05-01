// find.dart

// Find and replace routines.

import 'dart:ffi';

import 'package:win32/win32.dart';

import 'utf16string.dart';

const MAX_STRING_LEN = 256;

class NotepadFind {
  FINDREPLACE find;

  Utf16String szFindText;
  Utf16String szReplText;

  NotepadFind() {
    szFindText = Utf16String(MAX_STRING_LEN);
    szReplText = Utf16String(MAX_STRING_LEN);
    find = FINDREPLACE.allocate();
  }

  int ShowFindDialog(int hwnd) {
    find.lStructSize = sizeOf<FINDREPLACE>();
    find.hwndOwner = hwnd;
    find.hInstance = NULL;
    find.Flags = FR_HIDEUPDOWN | FR_HIDEMATCHCASE | FR_HIDEWHOLEWORD;
    find.lpstrFindWhat = szFindText.pointer;
    find.lpstrReplaceWith = nullptr;
    find.wFindWhatLen = MAX_STRING_LEN;
    find.wReplaceWithLen = 0;
    find.lCustData = 0;
    find.lpfnHook = nullptr;
    find.lpTemplateName = nullptr;

    return FindText(find.addressOf);
  }

  int ShowReplaceDialog(int hwnd) {
    find.lStructSize = sizeOf<FINDREPLACE>();
    find.hwndOwner = hwnd;
    find.hInstance = NULL;
    find.Flags = FR_HIDEUPDOWN | FR_HIDEMATCHCASE | FR_HIDEWHOLEWORD;
    find.lpstrFindWhat = szFindText.pointer;
    find.lpstrReplaceWith = szReplText.pointer;
    find.wFindWhatLen = MAX_STRING_LEN;
    find.wReplaceWithLen = MAX_STRING_LEN;
    find.lCustData = 0;
    find.lpfnHook = nullptr;
    find.lpTemplateName = nullptr;

    return ReplaceText(find.addressOf);
  }

  bool FindTextInEditWindow(
      int hwndEdit, Pointer<Uint32> piSearchOffset, Pointer<FINDREPLACE> pfr) {
    int iLength;

    // Read in the edit document
    iLength = GetWindowTextLength(hwndEdit);

    final pDoc = Utf16String(iLength + 1);
    GetWindowText(hwndEdit, pDoc.pointer, iLength + 1);
    final strDoc = pDoc.toString();
    pDoc.delete();

    // Search the document for the find string
    final toFind = pfr.ref.lpstrFindWhat.unpackString(MAX_STRING_LEN);
    final startOffset = strDoc.indexOf(toFind, piSearchOffset.value);
    if (startOffset == -1) return false;
    final endOffset = startOffset + toFind.length;

    // Set the start for the next search to be the end of the current one
    piSearchOffset.value = endOffset;

    SendMessage(hwndEdit, EM_SETSEL, startOffset, endOffset);
    SendMessage(hwndEdit, EM_SCROLLCARET, 0, 0);

    return true;
  }

  bool FindNextTextInEditWindow(int hwndEdit, Pointer<Uint32> piSearchOffset) {
    final fr = FINDREPLACE.allocate();

    fr.lpstrFindWhat = szFindText.pointer;

    return FindTextInEditWindow(hwndEdit, piSearchOffset, fr.addressOf);
  }

  bool ReplaceTextInEditWindow(
      int hwndEdit, Pointer<Uint32> piSearchOffset, Pointer<FINDREPLACE> fr) {
    if (!FindTextInEditWindow(hwndEdit, piSearchOffset, fr)) {
      return false;
    }
    print('received repl: ' +
        fr.ref.lpstrFindWhat.unpackString(MAX_STRING_LEN) +
        ' with ' +
        fr.ref.lpstrReplaceWith.unpackString(MAX_STRING_LEN));
    SendMessage(hwndEdit, EM_REPLACESEL, 0, fr.ref.lpstrReplaceWith.address);

    return true;
  }

  bool FindValidFind() => !szFindText.isEmpty;
}
