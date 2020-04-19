import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class NotepadFont {
  LOGFONT logfont;
  int hFont;

  NotepadFont(int hwndEdit) {
    logfont = LOGFONT.allocate();
    final sysFont = GetStockObject(SYSTEM_FONT);
    GetObject(sysFont, sizeOf<LOGFONT>(), logfont.addressOf.cast());
    hFont = CreateFontIndirect(logfont.addressOf);
    SendMessage(hwndEdit, WM_SETFONT, hFont, 0);
  }

  bool NotepadChooseFont(int hwnd) {
    final cf = CHOOSEFONT.allocate();
    cf.lStructSize = sizeOf<CHOOSEFONT>();
    cf.hwndOwner = hwnd;
    cf.hDC = NULL;
    cf.lpLogFont = logfont.addressOf;
    cf.iPointSize = 0;
    cf.Flags = CF_INITTOLOGFONTSTRUCT | CF_SCREENFONTS | CF_EFFECTS;
    cf.rgbColors = 0;
    cf.lCustData = 0;
    cf.lpfnHook = nullptr;
    cf.lpTemplateName = nullptr;
    cf.hInstance = NULL;
    cf.lpszStyle = nullptr;
    cf.nFontType = 0;
    cf.nSizeMin = 0;
    cf.nSizeMax = 0;

    return (ChooseFont(cf.addressOf) != FALSE);
  }

  void NotepadSetFont(int hwndEdit) {
    int hFontNew;
    final rect = RECT.allocate();

    hFontNew = CreateFontIndirect(logfont.addressOf);
    SendMessage(hwndEdit, WM_SETFONT, hFontNew, 0);
    DeleteObject(hFont);
    hFont = hFontNew;
    GetClientRect(hwndEdit, rect.addressOf);
    InvalidateRect(hwndEdit, rect.addressOf, TRUE);
  }

  void Delete() {
    DeleteObject(hFont);
  }
}
