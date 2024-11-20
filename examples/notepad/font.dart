import 'dart:ffi';

import 'package:win32/win32.dart';

class NotepadFont {
  NotepadFont(this.hwndEdit) {
    _logfont = SmartPointer(
      GetThemeSysFont(null, TMT_MENUFONT),
      sizeInBytes: sizeOf<LOGFONT>(),
    );
    _hFont = CreateFontIndirect(_logfont.ptr);
    SendMessage(hwndEdit, WM_SETFONT, _hFont, 0);
  }

  final int hwndEdit;
  late final SmartPointer<LOGFONT> _logfont;
  var _hFont = 0;

  bool chooseFont(int hwnd) {
    final cf = loggingCalloc<CHOOSEFONT>();
    cf.ref
      ..lStructSize = sizeOf<CHOOSEFONT>()
      ..hwndOwner = hwnd
      ..lpLogFont = _logfont.ptr
      ..Flags = CF_INITTOLOGFONTSTRUCT | CF_SCREENFONTS | CF_EFFECTS;
    final result = ChooseFont(cf);
    free(cf);
    return result;
  }

  void setFont() {
    final rect = loggingCalloc<RECT>();
    final hFontNew = CreateFontIndirect(_logfont.ptr);
    SendMessage(hwndEdit, WM_SETFONT, hFontNew, FALSE);
    DeleteObject(_hFont);
    _hFont = hFontNew;
    GetClientRect(hwndEdit, rect);
    InvalidateRect(hwndEdit, rect, true);
    free(rect);
  }

  void dispose() => DeleteObject(_hFont);
}
