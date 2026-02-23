import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

import 'resources.dart';

class NotepadFind {
  NotepadFind(this.hWnd, this.hWndEdit)
    : _findReplace = adaptiveCalloc<FINDREPLACE>(),
      _szFindText = wsalloc(128),
      _szReplaceText = wsalloc(128);

  final HWND hWnd;
  final HWND hWndEdit;
  final Pointer<FINDREPLACE> _findReplace;
  final PWSTR _szFindText;
  final PWSTR _szReplaceText;

  var _caretIndex = 0;
  var _hDialog = HWND(nullptr);
  var _text = '';

  HWND get hDialog => _hDialog;

  String get text => _text;

  void dispose() {
    free(_findReplace);
    free(_szFindText);
    free(_szReplaceText);
  }

  int findNext(Pointer<FINDREPLACE> fr) => _findNext(fr) ? FALSE : TRUE;

  int findPrevious(Pointer<FINDREPLACE> fr) {
    final find = fr.ref.lpstrFindWhat.toDartString();
    if (find.isEmpty) return TRUE;
    final length = SendMessage(hWndEdit, WM_GETTEXTLENGTH, null, null).value;
    if (length == 0) return TRUE;
    return using((arena) {
      final lpString = arena.pwstrBuffer(length + 1);
      GetWindowText(hWndEdit, lpString, length + 1);
      final text = lpString.toDartString();

      final startIndex = _caretIndex - find.length - 1;
      if (startIndex < 0) {
        _showMessage('Cannot find "$find"');
        return TRUE;
      }

      final index = text.lastIndexOf(find, startIndex);
      if (index == -1) {
        _showMessage('Cannot find "$find"');
        return TRUE;
      }

      _text = find;
      SendMessage(hWndEdit, EM_SETSEL, .new(index), .new(index + find.length));
      SendMessage(hWndEdit, EM_SCROLLCARET, null, null);
      _caretIndex = index;
      return FALSE;
    });
  }

  HWND showFindDialog() => _showDialog(replace: false);

  HWND showReplaceDialog() => _showDialog(replace: true);

  bool handleMessage(HWND hWnd, int message, LPARAM lParam, HWND hwndEdit) {
    if (message == 0) return false;

    final fr = Pointer<FINDREPLACE>.fromAddress(lParam);
    final flags = fr.ref.Flags;

    if (flags & FR_DIALOGTERM == FR_DIALOGTERM) {
      _hDialog = HWND(nullptr);
    }

    if (flags & FR_FINDNEXT == FR_FINDNEXT) {
      _findNext(fr);
    }

    if (flags & FR_REPLACE == FR_REPLACE) {
      _replaceSingle(fr);
    }

    if (flags & FR_REPLACEALL == FR_REPLACEALL) {
      _replaceAllUndoSafe(fr);
    }

    return true;
  }

  HWND _showDialog({required bool replace}) {
    ZeroMemory(_findReplace, sizeOf<FINDREPLACE>());
    _findReplace.ref
      ..lStructSize = sizeOf<FINDREPLACE>()
      ..hwndOwner = hWnd
      ..Flags = FR_HIDEUPDOWN | FR_HIDEMATCHCASE | FR_HIDEWHOLEWORD
      ..lpstrFindWhat = _szFindText
      ..wFindWhatLen = 128
      ..lpstrReplaceWith = PWSTR(replace ? _szReplaceText : nullptr)
      ..wReplaceWithLen = replace ? 128 : 0;
    return _hDialog = replace
        ? ReplaceText(_findReplace)
        : FindText(_findReplace);
  }

  bool _findNext(Pointer<FINDREPLACE> fr) {
    final find = fr.ref.lpstrFindWhat.toDartString();
    if (find.isEmpty) return false;

    final length = SendMessage(hWndEdit, WM_GETTEXTLENGTH, null, null).value;
    if (length == 0) return false;

    return using((arena) {
      final lpString = arena.pwstrBuffer(length + 1);
      GetWindowText(hWndEdit, lpString, length + 1);

      final text = lpString.toDartString();
      final index = text.indexOf(find, _caretIndex);
      if (index == -1) {
        _showMessage('Cannot find "$find"');
        return false;
      }

      _text = find;

      SendMessage(hWndEdit, EM_SETSEL, .new(index), .new(index + find.length));
      SendMessage(hWndEdit, EM_SCROLLCARET, null, null);

      _caretIndex = index + find.length;
      return true;
    });
  }

  bool _replaceAllUndoSafe(Pointer<FINDREPLACE> fr) {
    final find = fr.ref.lpstrFindWhat.toDartString();
    final replace = fr.ref.lpstrReplaceWith.toDartString();
    if (find.isEmpty) return false;

    final length = SendMessage(hWndEdit, WM_GETTEXTLENGTH, null, null).value;
    if (length == 0) return false;

    return using((arena) {
      final lpString = arena.pwstrBuffer(length + 1);
      GetWindowText(hWndEdit, lpString, length + 1);
      final original = lpString.toDartString();
      if (!original.contains(find)) {
        _showMessage('Cannot find "$find"');
        return false;
      }

      _text = find;

      final replaced = original.replaceAll(find, replace);
      SendMessage(hWndEdit, EM_SETSEL, null, const .new(-1));
      SendMessage(
        hWndEdit,
        EM_REPLACESEL,
        const .new(TRUE),
        .new(arena.pcwstr(replaced).address),
      );

      _caretIndex = 0;
      return true;
    });
  }

  bool _replaceSingle(Pointer<FINDREPLACE> fr) {
    if (!_findNext(fr)) return false;

    final lpstrReplaceWith = fr.ref.lpstrReplaceWith;
    final replace = lpstrReplaceWith.toDartString();
    SendMessage(
      hWndEdit,
      EM_REPLACESEL,
      const .new(TRUE),
      .new(lpstrReplaceWith.address),
    );
    _caretIndex += replace.length;
    return true;
  }

  void _showMessage(String message) => using(
    (arena) => MessageBox(
      hWndEdit,
      arena.pcwstr(message),
      arena.pcwstr(AppResources.appName),
      MB_ICONINFORMATION | MB_OK,
    ),
  );
}
