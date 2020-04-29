// find.dart

// Find and replace routines.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'utf16string.dart';

const MAX_STRING_LEN = 256;

class NotepadFind {
  FINDREPLACE find;
  FINDREPLACE replace;

  Utf16String szFindText;
  Utf16String szReplText;

  NotepadFind() {
    szFindText = Utf16String(MAX_STRING_LEN);
    szReplText = Utf16String(MAX_STRING_LEN);
    find = FINDREPLACE.allocate();
    replace = FINDREPLACE.allocate();
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
    replace.lStructSize = sizeOf<FINDREPLACE>();
    replace.hwndOwner = hwnd;
    replace.hInstance = NULL;
    replace.Flags = FR_HIDEUPDOWN | FR_HIDEMATCHCASE | FR_HIDEWHOLEWORD;
    replace.lpstrFindWhat = szFindText.pointer;
    replace.lpstrReplaceWith = szReplText.pointer;
    replace.wFindWhatLen = MAX_STRING_LEN;
    replace.wReplaceWithLen = MAX_STRING_LEN;
    replace.lCustData = 0;
    replace.lpfnHook = nullptr;
    replace.lpTemplateName = nullptr;
    return ReplaceText(replace.addressOf);
  }

  int FindTextInEditWindow(
      int hwndEdit, Pointer<Uint64> piSearchOffset, Pointer<FINDREPLACE> pfr) {
    int iLength;

    // Read in the edit document
    iLength = GetWindowTextLength(hwndEdit);

    final pDoc = allocate<Uint16>(count: iLength + 1).cast<Utf16>();
    GetWindowText(hwndEdit, pDoc, iLength + 1);
    final strDoc = pDoc.unpackString(iLength + 1);
    free(pDoc);

    // Search the document for the find string
    final toFind = pfr.ref.lpstrFindWhat.unpackString(MAX_STRING_LEN);
    final startOffset = strDoc.indexOf(toFind);
    if (startOffset == -1) return FALSE;
    final endOffset = startOffset + toFind.length;

    SendMessage(hwndEdit, EM_SETSEL, startOffset, endOffset);
    SendMessage(hwndEdit, EM_SCROLLCARET, 0, 0);

    return TRUE;
  }

  int FindNextTextInEditWindow(int hwndEdit, Pointer<Uint64> piSearchOffset) {
    final fr = FINDREPLACE.allocate();

    fr.lpstrFindWhat = szFindText.pointer;

    return FindTextInEditWindow(hwndEdit, piSearchOffset, fr.addressOf);
  }

  int ReaplceTextInEditWindow(
      int hwndEdit, Pointer<Uint64> piSearchOffset, Pointer<FINDREPLACE> fr) {
    if (FindTextInEditWindow(hwndEdit, piSearchOffset, fr) != TRUE) {
      return FALSE;
    }

    SendMessage(hwndEdit, EM_REPLACESEL, 0, fr.ref.lpstrReplaceWith.address);

    return TRUE;
  }

  bool FindValidFind() => !szFindText.isEmpty;
}
