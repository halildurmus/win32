import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'document.dart';
import 'resources.dart';

class NotepadEditor {
  NotepadEditor(this.hWnd, this.hWndEdit, this.document);

  final HWND hWnd;
  final HWND hWndEdit;
  final Document document;

  bool get hasSelection => using((arena) {
    final start = arena<Int32>();
    final end = arena<Int32>();
    SendMessage(hWndEdit, EM_GETSEL, .new(start.address), .new(end.address));
    return start.value != end.value;
  });

  void focus() => SetFocus(hWndEdit);

  void resize(int width, int height) =>
      MoveWindow(hWndEdit, 0, 0, width, height, true);

  void setText(String text) {
    using((arena) => SetWindowText(hWndEdit, arena.pcwstr(text)));
    updateTitle();
  }

  String getText() {
    final length = SendMessage(hWndEdit, WM_GETTEXTLENGTH, null, null).value;
    return using((arena) {
      final buffer = arena.pwstrBuffer(length + 1);
      GetWindowText(hWndEdit, buffer, length + 1);
      return buffer.toDartString();
    });
  }

  void onTextChanged() {
    final length = SendMessage(hWndEdit, WM_GETTEXTLENGTH, null, null).value;
    if (document.path == null && length == 0) {
      final isDirty = document.isDirty;
      document.markClean();
      if (isDirty) {
        updateTitle();
      }
    } else {
      final isClean = !document.isDirty;
      document.markDirty();
      if (isClean) {
        updateTitle();
      }
    }
  }

  int confirmSave() => using(
    (arena) => MessageBox(
      hWnd,
      arena.pcwstr('Do you want to save changes to ${document.displayName}?'),
      arena.pcwstr(AppResources.appName),
      MB_ICONQUESTION | MB_YESNOCANCEL,
    ).value,
  );

  void updateTitle() => using((arena) {
    final title =
        '${document.isDirty ? '*' : ''}${document.displayName} - ${AppResources.appName}';
    SetWindowText(hWnd, arena.pcwstr(title));
  });
}
