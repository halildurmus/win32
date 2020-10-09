// font.dart

// Font selection

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class NotepadFont {
  LOGFONT logfont = LOGFONT.allocate();
  int/*!*/ hFont;

  NotepadFont(int hwndEdit) {
    final hSysFont = GetStockObject(SYSTEM_FONT);
    GetObject(hSysFont, sizeOf<LOGFONT>(), logfont.addressOf);

    hFont = CreateFontIndirect(logfont.addressOf);
    SendMessage(hwndEdit, WM_SETFONT, hFont, 0);
  }

  bool notepadChooseFont(int hwnd) {
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

    final result = ChooseFont(cf.addressOf);
    return result == TRUE;
  }

  void notepadSetFont(int/*!*//*!*/ hwndEdit) {
    int hFontNew;
    final rect = RECT.allocate();

    hFontNew = CreateFontIndirect(logfont.addressOf);

    SendMessage(hwndEdit, WM_SETFONT, hFontNew, FALSE);
    DeleteObject(hFont);
    hFont = hFontNew;

    GetClientRect(hwndEdit, rect.addressOf);
    InvalidateRect(hwndEdit, rect.addressOf, TRUE);

    free(rect.addressOf);
  }

  void dispose() {
    DeleteObject(hFont);
  }
}
