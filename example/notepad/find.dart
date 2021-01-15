// find.dart

// Find and replace routines.

import 'dart:ffi';

import 'package:win32/win32.dart';

import 'utf16string.dart';

const MAX_STRING_LEN = 256;

class NotepadFind {
  late Pointer<FINDREPLACE> find;

  late Utf16String szFindText;
  late Utf16String szReplText;

  NotepadFind() {
    szFindText = Utf16String(MAX_STRING_LEN);
    szReplText = Utf16String(MAX_STRING_LEN);
    find = calloc<FINDREPLACE>();
  }

  int showFindDialog(int hwnd) {
    find.ref.lStructSize = sizeOf<FINDREPLACE>();
    find.ref.hwndOwner = hwnd;
    find.ref.Flags = FR_HIDEUPDOWN | FR_HIDEMATCHCASE | FR_HIDEWHOLEWORD;
    find.ref.lpstrFindWhat = szFindText.pointer;
    find.ref.wFindWhatLen = MAX_STRING_LEN;

    return FindText(find);
  }

  int showReplaceDialog(int hwnd) {
    find.ref.lStructSize = sizeOf<FINDREPLACE>();
    find.ref.hwndOwner = hwnd;
    find.ref.Flags = FR_HIDEUPDOWN | FR_HIDEMATCHCASE | FR_HIDEWHOLEWORD;
    find.ref.lpstrFindWhat = szFindText.pointer;
    find.ref.lpstrReplaceWith = szReplText.pointer;
    find.ref.wFindWhatLen = MAX_STRING_LEN;
    find.ref.wReplaceWithLen = MAX_STRING_LEN;

    return ReplaceText(find);
  }

  bool findTextInEditWindow(
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

  bool findNextTextInEditWindow(int hwndEdit, Pointer<Uint32> piSearchOffset) {
    final fr = calloc<FINDREPLACE>()..ref.lpstrFindWhat = szFindText.pointer;

    return findTextInEditWindow(hwndEdit, piSearchOffset, fr);
  }

  bool replaceTextInEditWindow(
      int hwndEdit, Pointer<Uint32> piSearchOffset, Pointer<FINDREPLACE> fr) {
    if (!findTextInEditWindow(hwndEdit, piSearchOffset, fr)) {
      return false;
    }
    SendMessage(hwndEdit, EM_REPLACESEL, 0, fr.ref.lpstrReplaceWith.address);

    return true;
  }

  bool findValidFind() => !szFindText.isEmpty;
}
