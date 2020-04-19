import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

const MAX_STRING_LEN = 256;

class NotepadFind {
  FINDREPLACE find;
  FINDREPLACE replace;

  Pointer<Utf16> szFindText;
  Pointer<Utf16> szReplText;

  NotepadFind() {
    szFindText = allocate<Utf16>(count: MAX_STRING_LEN).cast();
    szReplText = allocate<Utf16>(count: MAX_STRING_LEN).cast();
    find = FINDREPLACE.allocate();
    replace = FINDREPLACE.allocate();
  }

  int FindDialog(int hwnd) {
    find.lStructSize = sizeOf<FINDREPLACE>();
    find.hwndOwner = hwnd;
    find.hInstance = NULL;
    find.Flags = FR_HIDEUPDOWN | FR_HIDEMATCHCASE | FR_HIDEWHOLEWORD;
    find.lpstrFindWhat = szFindText;
    find.lpstrReplaceWith = nullptr;
    find.wFindWhatLen = MAX_STRING_LEN;
    find.wReplaceWithLen = 0;
    find.lCustData = 0;
    find.lpfnHook = nullptr;
    find.lpTemplateName = nullptr;

    return FindText(find.addressOf);
  }

  int ReplaceDialog(int hwnd) {
    replace.lStructSize = sizeOf<FINDREPLACE>();
    replace.hwndOwner = hwnd;
    replace.hInstance = NULL;
    replace.Flags = FR_HIDEUPDOWN | FR_HIDEMATCHCASE | FR_HIDEWHOLEWORD;
    replace.lpstrFindWhat = szFindText;
    replace.lpstrReplaceWith = szReplText;
    replace.wFindWhatLen = MAX_STRING_LEN;
    replace.wReplaceWithLen = MAX_STRING_LEN;
    replace.lCustData = 0;
    replace.lpfnHook = nullptr;
    replace.lpTemplateName = nullptr;
    return ReplaceText(replace.addressOf);
  }
}
