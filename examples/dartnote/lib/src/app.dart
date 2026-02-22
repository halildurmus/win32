import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'dispatcher.dart';
import 'document.dart';
import 'editor.dart';
import 'find.dart';
import 'font.dart';
import 'resources.dart';

class App {
  factory App(HINSTANCE hInstance, HWND hWnd, HWND hWndEdit, HICON hIcon) {
    final document = Document();
    final editor = NotepadEditor(hWnd, hWndEdit, document);
    final find = NotepadFind(hWnd, hWndEdit);
    final font = NotepadFont(hWnd, hWndEdit);
    final dispatcher = CommandDispatcher(
      hInstance,
      hWnd,
      hWndEdit,
      hIcon,
      editor,
      document,
      find,
      font,
    );
    return App._(hWnd, hWndEdit, document, editor, find, font, dispatcher);
  }

  const App._(
    this._hWnd,
    this._hWndEdit,
    this.document,
    this.editor,
    this.find,
    this.font,
    this.dispatcher,
  );

  final HWND _hWnd;
  final HWND _hWndEdit;
  final Document document;
  final NotepadEditor editor;
  final NotepadFind find;
  final NotepadFont font;
  final CommandDispatcher dispatcher;

  bool get canClose => !document.isDirty || editor.confirmSave() != IDCANCEL;

  void focusEditor() => editor.focus();

  void resize(int width, int height) => editor.resize(width, height);

  int handleDialogMessage(HWND hWnd, int message, LPARAM lParam) =>
      find.handleMessage(hWnd, message, lParam, _hWndEdit) ? FALSE : TRUE;

  int onCommand(int commandId) => dispatcher.handle(commandId) ? FALSE : TRUE;

  void onEditUpdate() {
    editor.onTextChanged();
  }

  void onEditError() => using(
    (arena) => MessageBox(
      _hWnd,
      arena.pcwstr('Edit control out of space.'),
      arena.pcwstr(AppResources.appName),
      MB_ICONERROR | MB_OK,
    ),
  );

  void openFile(String path) {
    if (!dispatcher.confirmSave()) return;

    try {
      editor.setText(document.load(path));
    } catch (e) {
      using(
        (arena) => MessageBox(
          _hWnd,
          arena.pcwstr('Could not open file: "$path"'),
          arena.pcwstr(AppResources.appName),
          MB_ICONERROR | MB_OK,
        ),
      );
    }
  }

  void dispose() {
    find.dispose();
    font.dispose();
  }
}
