import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const maxStringLength = 256;

class NotepadFind {
  NotepadFind()
    : _find = SmartPointer(
        loggingCalloc<FINDREPLACE>(),
        sizeInBytes: sizeOf<FINDREPLACE>(),
      ),
      _szFindText = Pwstr.allocate(maxStringLength),
      _szReplaceText = Pwstr.allocate(maxStringLength);

  final SmartPointer<FINDREPLACE> _find;
  final Pwstr _szFindText;
  final Pwstr _szReplaceText;

  int showFindDialog(int hwnd) {
    _find.ptr.ref
      ..lStructSize = sizeOf<FINDREPLACE>()
      ..hwndOwner = hwnd
      ..Flags = FR_HIDEUPDOWN | FR_HIDEMATCHCASE | FR_HIDEWHOLEWORD
      ..lpstrFindWhat = _szFindText.ptr
      ..wFindWhatLen = maxStringLength;
    return FindText(_find.ptr);
  }

  int showReplaceDialog(int hwnd) {
    _find.ptr.ref
      ..lStructSize = sizeOf<FINDREPLACE>()
      ..hwndOwner = hwnd
      ..Flags = FR_HIDEUPDOWN | FR_HIDEMATCHCASE | FR_HIDEWHOLEWORD
      ..lpstrFindWhat = _szFindText.ptr
      ..lpstrReplaceWith = _szReplaceText.ptr
      ..wFindWhatLen = maxStringLength
      ..wReplaceWithLen = maxStringLength;
    return ReplaceText(_find.ptr);
  }

  bool findValidFind() => !_szFindText.isEmpty;

  bool findTextInEditWindow(
    int hwndEdit,
    Pointer<Uint32> piSearchOffset,
    Pointer<FINDREPLACE> pfr,
  ) {
    final int iLength;

    // Read in the edit document
    iLength = GetWindowTextLength(hwndEdit);

    final pDoc = Pwstr.allocate(iLength + 1);
    GetWindowText(hwndEdit, pDoc.ptr, iLength + 1);
    final strDoc = pDoc.toDartString();

    // Search the document for the find string
    final lpstrFindWhat = pfr.ref.lpstrFindWhat;
    final toFind = lpstrFindWhat.toDartString();
    final startOffset = strDoc.indexOf(toFind, piSearchOffset.value);
    if (startOffset == -1) return false;
    final endOffset = startOffset + toFind.length;

    // Set the start for the next search to be the end of the current one.
    piSearchOffset.value = endOffset;

    SendMessage(hwndEdit, EM_SETSEL, startOffset, endOffset);
    SendMessage(hwndEdit, EM_SCROLLCARET, 0, 0);

    return true;
  }

  bool findNextTextInEditWindow(int hwndEdit, Pointer<Uint32> piSearchOffset) {
    final fr = loggingCalloc<FINDREPLACE>()
      ..ref.lpstrFindWhat = _szFindText.ptr;
    final result = findTextInEditWindow(hwndEdit, piSearchOffset, fr);
    free(fr);
    return result;
  }

  bool replaceTextInEditWindow(
    int hwndEdit,
    Pointer<Uint32> piSearchOffset,
    Pointer<FINDREPLACE> fr,
  ) {
    if (!findTextInEditWindow(hwndEdit, piSearchOffset, fr)) return false;
    final lpstrReplaceWith = fr.ref.lpstrReplaceWith;
    SendMessage(hwndEdit, EM_REPLACESEL, 0, lpstrReplaceWith.address);
    return true;
  }
}
