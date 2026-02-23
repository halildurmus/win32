import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class NotepadFont {
  factory NotepadFont(HWND hWnd, HWND hWndEdit) {
    final logfont = GetThemeSysFont(null, TMT_MENUFONT);
    final hFont = CreateFontIndirect(logfont);
    SendMessage(hWndEdit, WM_SETFONT, .new(hFont.address), const .new(FALSE));
    return NotepadFont._(hWnd, hWndEdit, logfont, hFont);
  }

  NotepadFont._(this.hWnd, this.hWndEdit, this._logfont, this._hFont);

  final HWND hWnd;
  final HWND hWndEdit;
  final Pointer<LOGFONT> _logfont;

  HFONT _hFont;

  bool chooseFont() => using((arena) {
    final cf = arena<CHOOSEFONT>();
    cf.ref
      ..lStructSize = sizeOf<CHOOSEFONT>()
      ..hwndOwner = hWnd
      ..lpLogFont = _logfont
      ..Flags = CF_INITTOLOGFONTSTRUCT | CF_SCREENFONTS | CF_EFFECTS;
    return ChooseFont(cf);
  });

  void setFont() => using((arena) {
    final rect = arena<RECT>();
    final hFontNew = CreateFontIndirect(_logfont);
    SendMessage(
      hWndEdit,
      WM_SETFONT,
      .new(hFontNew.address),
      const .new(FALSE),
    );
    _hFont.close();
    _hFont = hFontNew;
    GetClientRect(hWndEdit, rect);
    InvalidateRect(hWndEdit, rect, true);
  });

  void dispose() {
    _hFont.close();
    free(_logfont);
  }
}
