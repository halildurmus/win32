import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'document.dart';
import 'editor.dart';
import 'find.dart';
import 'font.dart';
import 'resources.dart';

class CommandDispatcher {
  const CommandDispatcher(
    this._hInstance,
    this._hWnd,
    this._hWndEdit,
    this._hIcon,
    this.editor,
    this.document,
    this.find,
    this.font,
  );

  final HINSTANCE _hInstance;
  final HWND _hWnd;
  final HWND _hWndEdit;
  final HICON _hIcon;
  final NotepadEditor editor;
  final Document document;
  final NotepadFind find;
  final NotepadFont font;

  bool handle(int id) {
    switch (id) {
      case IDM_FILE_NEW:
        return _newFile();

      case IDM_FILE_OPEN:
        return _openFile();

      case IDM_FILE_SAVE:
        return _save();

      case IDM_FILE_SAVE_AS:
        return _saveAs();

      case IDM_FILE_PRINT:
        using(
          (arena) => MessageBox(
            _hWnd,
            arena.pcwstr('Print not yet implemented.'),
            arena.pcwstr(AppResources.appName),
            MB_ICONINFORMATION | MB_OK,
          ).value,
        );
        return true;

      case IDM_FILE_EXIT:
        SendMessage(_hWnd, WM_CLOSE, null, null);
        return true;

      case IDM_EDIT_UNDO:
        SendMessage(_hWndEdit, WM_UNDO, null, null);
        return true;

      case IDM_EDIT_CUT:
        SendMessage(_hWndEdit, WM_CUT, null, null);
        return true;

      case IDM_EDIT_COPY:
        SendMessage(_hWndEdit, WM_COPY, null, null);
        return true;

      case IDM_EDIT_PASTE:
        SendMessage(_hWndEdit, WM_PASTE, null, null);
        return true;

      case IDM_EDIT_DELETE:
        SendMessage(_hWndEdit, WM_CLEAR, null, null);
        return true;

      case IDM_EDIT_SELECT_ALL:
        SendMessage(_hWndEdit, EM_SETSEL, null, const .new(-1));
        return true;

      case IDM_EDIT_FIND:
        find.showFindDialog();
        return true;

      case IDM_EDIT_NEXT:
        if (find.text.isNotEmpty) {
          using((arena) {
            final fr = arena<FINDREPLACE>()
              ..ref.lpstrFindWhat = arena.pwstr(find.text);
            find.findNext(fr);
          });
        } else {
          find.showFindDialog();
        }
        return true;

      case IDM_EDIT_PREVIOUS:
        if (find.text.isNotEmpty) {
          using((arena) {
            final fr = arena<FINDREPLACE>()
              ..ref.lpstrFindWhat = arena.pwstr(find.text);
            find.findPrevious(fr);
          });
        } else {
          find.showFindDialog();
        }
        return true;

      case IDM_EDIT_REPLACE:
        find.showReplaceDialog();
        return true;

      case IDM_FORMAT_FONT:
        if (font.chooseFont()) {
          font.setFont();
        }
        return true;

      case IDM_HELP_ABOUT:
        final lpDialogFunc = NativeCallable<DLGPROC>.isolateLocal(
          _aboutAppDialogProc,
          exceptionalReturn: 0,
        );
        try {
          using(
            (arena) => DialogBoxIndirect(
              _hInstance,
              AppResources.loadAboutAppDialog(allocator: arena),
              _hWnd,
              lpDialogFunc.nativeFunction,
            ),
          );
        } finally {
          lpDialogFunc.close();
        }

        return true;

      case IDM_HELP_VIEW_HELP:
        using(
          (arena) => MessageBox(
            _hWnd,
            arena.pcwstr('Help not yet implemented.'),
            arena.pcwstr(AppResources.appName),
            MB_ICONINFORMATION | MB_OK,
          ).value,
        );
        return true;
    }

    return false;
  }

  bool _newFile() {
    if (!confirmSave()) return false;
    document.reset();
    editor.setText('');
    return true;
  }

  bool _openFile() {
    if (!confirmSave()) return false;
    final path = pickOpenFile(_hWnd);
    if (path == null) return false;
    try {
      editor.setText(document.load(path));
    } catch (e) {
      using(
        (arena) => MessageBox(
          _hWnd,
          arena.pcwstr('Could not open file: "$path"'),
          arena.pcwstr(AppResources.appName),
          MB_ICONERROR | MB_OK,
        ).value,
      );
      return false;
    }
    return true;
  }

  bool _save() {
    if (document.path == null) return _saveAs();
    document.save(editor.getText());
    editor.updateTitle();
    return true;
  }

  bool _saveAs() {
    final path = pickSaveFile(_hWnd);
    if (path == null) return false;
    document.saveAs(path, editor.getText());
    editor.updateTitle();
    return true;
  }

  bool confirmSave() {
    if (!document.isDirty) return true;
    final result = editor.confirmSave();
    if (result == IDYES) return _save();
    return result == IDNO;
  }

  int _aboutAppDialogProc(Pointer hDlg, int msg, int wParam, int lParam) {
    switch (msg) {
      case WM_INITDIALOG:
        final hIconCtrl = GetDlgItem(HWND(hDlg), IDC_APP_ICON).value;
        SendMessage(
          hIconCtrl,
          STM_SETIMAGE,
          const .new(IMAGE_ICON),
          .new(_hIcon.address),
        );
        _centerWindow(HWND(hDlg), GetParent(HWND(hDlg)).value);
        return TRUE;

      case WM_COMMAND:
        switch (LOWORD(wParam)) {
          case IDOK:
            EndDialog(HWND(hDlg), 0);
            return TRUE;
        }

      case WM_CLOSE:
        EndDialog(HWND(hDlg), 0);
        return TRUE;
    }

    return FALSE;
  }
}

String? pickOpenFile(HWND hwnd) => using((arena) {
  final lpstrFile = arena.pwstrBuffer(MAX_PATH);
  final ofn = arena<OPENFILENAME>();
  ofn.ref
    ..lStructSize = sizeOf<OPENFILENAME>()
    ..hwndOwner = hwnd
    ..lpstrFilter = arena.pwstr(
      'Text Files (*.txt)\u0000*.txt\u0000All Files (*.*)\u0000*.*\u0000',
    )
    ..lpstrFile = lpstrFile
    ..nMaxFile = MAX_PATH
    ..Flags = OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST;
  return GetOpenFileName(ofn) ? lpstrFile.toDartString() : null;
});

String? pickSaveFile(HWND hwnd) => using((arena) {
  final lpstrFile = arena.pwstrBuffer(MAX_PATH);
  final ofn = arena<OPENFILENAME>();
  ofn.ref
    ..lStructSize = sizeOf<OPENFILENAME>()
    ..hwndOwner = hwnd
    ..lpstrDefExt = arena.pwstr('txt')
    ..lpstrFilter = arena.pwstr('Text Files (*.txt)\u0000*.txt\u0000')
    ..lpstrFile = lpstrFile
    ..nMaxFile = MAX_PATH
    ..Flags = OFN_EXPLORER | OFN_PATHMUSTEXIST;
  return GetSaveFileName(ofn) ? lpstrFile.toDartString() : null;
});

void _centerWindow(HWND hWndChild, HWND hWndParent) => using((arena) {
  final pRectChild = arena<RECT>();
  final pRectParent = arena<RECT>();
  var result = GetWindowRect(hWndChild, pRectChild);
  if (!result.value) return;

  if (hWndParent.isNotNull && IsWindow(hWndParent)) {
    result = GetWindowRect(hWndParent, pRectParent);
  } else {
    result = SystemParametersInfo(
      SPI_GETWORKAREA,
      0,
      pRectParent,
      const SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS(0),
    );
  }
  if (!result.value) return;

  final RECT(:left, :right, :top, :bottom) = pRectChild.ref;
  final childWidth = right - left;
  final childHeight = bottom - top;
  final RECT(
    left: leftParent,
    right: rightParent,
    top: topParent,
    bottom: bottomParent,
  ) = pRectParent.ref;
  final parentWidth = rightParent - leftParent;
  final parentHeight = bottomParent - topParent;
  final x = leftParent + (parentWidth - childWidth) ~/ 2;
  final y = topParent + (parentHeight - childHeight) ~/ 2;
  SetWindowPos(hWndChild, null, x, y, 0, 0, SWP_NOZORDER | SWP_NOSIZE);
});
