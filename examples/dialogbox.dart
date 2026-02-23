// Creates a custom dialog box from code.

// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// Control IDs
const ID_TEXT = 200;
const ID_EDITTEXT = 201;
const ID_PROGRESS = 202;

// Window class constants
const WINDOW_CLASS_BUTTON = 0x0080;
const WINDOW_CLASS_EDIT = 0x0081;
const WINDOW_CLASS_STATIC = 0x0082;

final hInstance = HINSTANCE(GetModuleHandle(null).value);

void main() {
  final dialog = DialogBuilder();
  final result = dialog.show();
  if (result != null) {
    print('Entered: $result');
  }
}

/// Builds and displays a custom dialog box.
class DialogBuilder {
  static const _bufferSize = 4096;
  static const _textBufferSize = 256;

  String? _textEntered;

  /// Creates and displays the dialog, returning the entered text if OK was clicked.
  String? show() => using((arena) {
    final ptr = arena<Uint16>(_bufferSize);
    var idx = 0;
    idx += _setDialogProperties(ptr, idx);
    idx += _addOkButton(ptr, idx);
    idx += _addCancelButton(ptr, idx);
    idx += _addStaticText(ptr, idx);
    idx += _addProgressBar(ptr, idx);
    idx += _addEditControl(ptr, idx);
    final result = _showDialog(ptr);
    if (result <= 0) {
      print('Error: $result');
      return null;
    }

    return _textEntered;
  });

  int _setDialogProperties(Pointer<Uint16> ptr, int idx) =>
      (ptr + idx).cast<DLGTEMPLATE>().setDialog(
        style:
            WS_POPUP |
            WS_BORDER |
            WS_SYSMENU |
            DS_MODALFRAME |
            DS_SETFONT |
            WS_CAPTION,
        title: 'Sample dialog',
        cdit: 5, // number of controls
        cx: 300, // width
        cy: 200, // height
        fontName: 'MS Shell Dlg',
        fontSize: 8,
      );

  int _addOkButton(Pointer<Uint16> ptr, int idx) =>
      (ptr + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
        style: WS_CHILD | WS_VISIBLE | WS_TABSTOP | BS_DEFPUSHBUTTON,
        x: 100,
        y: 160,
        cx: 50,
        cy: 14,
        id: IDOK,
        windowSystemClass: WINDOW_CLASS_BUTTON,
        text: 'OK',
      );

  int _addCancelButton(Pointer<Uint16> ptr, int idx) =>
      (ptr + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
        style: WS_CHILD | WS_VISIBLE | WS_TABSTOP | BS_PUSHBUTTON,
        x: 190,
        y: 160,
        cx: 50,
        cy: 14,
        id: IDCANCEL,
        windowSystemClass: WINDOW_CLASS_BUTTON,
        text: 'Cancel',
      );

  int _addStaticText(Pointer<Uint16> ptr, int idx) =>
      (ptr + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
        style: WS_CHILD | WS_VISIBLE,
        x: 10,
        y: 10,
        cx: 60,
        cy: 20,
        id: ID_TEXT,
        windowSystemClass: WINDOW_CLASS_STATIC,
        text: 'Some static wrapped text here.',
      );

  int _addProgressBar(Pointer<Uint16> ptr, int idx) =>
      (ptr + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
        style: PBS_SMOOTH | WS_BORDER | WS_VISIBLE,
        x: 10,
        y: 30,
        cx: 150,
        cy: 12,
        id: ID_PROGRESS,
        windowClass: PROGRESS_CLASS,
      );

  int _addEditControl(Pointer<Uint16> ptr, int idx) =>
      (ptr + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
        style: WS_CHILD | WS_VISIBLE | WS_TABSTOP | WS_BORDER | ES_AUTOHSCROLL,
        x: 10,
        y: 50,
        cx: 150,
        cy: 20,
        id: ID_EDITTEXT,
        windowSystemClass: WINDOW_CLASS_EDIT,
        text: 'Enter text',
      );

  int _showDialog(Pointer<Uint16> ptr) {
    final lpDialogFunc = NativeCallable<DLGPROC>.isolateLocal(
      _dialogProc,
      exceptionalReturn: 0,
    );
    try {
      return DialogBoxIndirectParam(
        hInstance,
        ptr.cast<DLGTEMPLATE>(),
        null,
        lpDialogFunc.nativeFunction,
        const .new(0),
      ).value;
    } finally {
      lpDialogFunc.close();
    }
  }

  // Documentation: https://learn.microsoft.com/windows/win32/dlgbox/using-dialog-boxes
  int _dialogProc(Pointer hWndDlg, int message, int wParam, int lParam) {
    final hwndDlg = HWND(hWndDlg);
    switch (message) {
      case WM_INITDIALOG:
        SendDlgItemMessage(
          hwndDlg,
          ID_PROGRESS,
          PBM_SETPOS,
          const .new(35),
          const .new(0),
        );
        return TRUE;

      case WM_COMMAND:
        switch (LOWORD(wParam)) {
          case IDOK:
            print('OK');
            _textEntered = _getEditText(hwndDlg);
            EndDialog(hwndDlg, wParam);
            return TRUE;

          case IDCANCEL:
            print('Cancel');
            EndDialog(hwndDlg, wParam);
            return TRUE;
        }

        return FALSE;
    }

    return FALSE;
  }

  String? _getEditText(HWND hwndDlg) => using((arena) {
    final textPtr = arena.pwstrBuffer(_textBufferSize);
    final result = GetDlgItemText(
      hwndDlg,
      ID_EDITTEXT,
      textPtr,
      _textBufferSize,
    ).value;
    return result != NULL ? textPtr.toDartString() : null;
  });
}
