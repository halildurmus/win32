// Creates a custom dialog box from code.

// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:win32/win32.dart';

const ID_TEXT = 200;
const ID_EDITTEXT = 201;
const ID_PROGRESS = 202;
const PROGRESS_CLASS = 'msctls_progress32';

final int hInstance = GetModuleHandle(null);
String? textEntered;

void main() {
  // Allocate 8KB, which is more than enough space for the dialog in memory.
  final ptr = loggingCalloc<Uint16>(4096);
  var idx = 0;

  idx += (ptr + idx).cast<DLGTEMPLATE>().setDialog(
    style:
        WS_POPUP |
        WS_BORDER |
        WS_SYSMENU |
        DS_MODALFRAME |
        DS_SETFONT |
        WS_CAPTION,
    title: 'Sample dialog',
    cdit: 5, // number of controls in the dialog
    cx: 300,
    cy: 200,
    fontName: 'MS Shell Dlg',
    fontSize: 8,
  );

  idx += (ptr + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
    style: WS_CHILD | WS_VISIBLE | WS_TABSTOP | BS_DEFPUSHBUTTON,
    x: 100,
    y: 160,
    cx: 50,
    cy: 14,
    id: IDOK,
    windowSystemClass: 0x0080, // button
    text: 'OK',
  );

  idx += (ptr + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
    style: WS_CHILD | WS_VISIBLE | WS_TABSTOP | BS_PUSHBUTTON,
    x: 190,
    y: 160,
    cx: 50,
    cy: 14,
    id: IDCANCEL,
    windowSystemClass: 0x0080, // button
    text: 'Cancel',
  );

  idx += (ptr + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
    style: WS_CHILD | WS_VISIBLE,
    x: 10,
    y: 10,
    cx: 60,
    cy: 20,
    id: ID_TEXT,
    windowSystemClass: 0x0082, // static
    text: 'Some static wrapped text here.',
  );

  idx += (ptr + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
    style: PBS_SMOOTH | WS_BORDER | WS_VISIBLE,
    x: 10,
    y: 30,
    cx: 150,
    cy: 12,
    id: ID_PROGRESS,
    windowClass: PROGRESS_CLASS, // progress bar
  );

  idx += (ptr + idx).cast<DLGITEMTEMPLATE>().setDialogItem(
    style: WS_CHILD | WS_VISIBLE | WS_TABSTOP | WS_BORDER | ES_AUTOHSCROLL,
    x: 10,
    y: 50,
    cx: 150,
    cy: 20,
    id: ID_EDITTEXT,
    windowSystemClass: 0x0081, // edit
    text: 'Enter text',
  );

  final lpDialogFunc = NativeCallable<DLGPROC>.isolateLocal(
    dialogReturnProc,
    exceptionalReturn: 0,
  );

  final nResult = DialogBoxIndirectParam(
    hInstance,
    ptr.cast<DLGTEMPLATE>(),
    null,
    lpDialogFunc.nativeFunction,
    0,
  );

  if (nResult <= 0) {
    print('Error: $nResult');
  } else {
    if (textEntered != null) {
      print('Entered: $textEntered');
    }
  }

  lpDialogFunc.close();
  free(ptr);
}

// Documentation on this function here:
// https://learn.microsoft.com/windows/win32/dlgbox/using-dialog-boxes
int dialogReturnProc(int hwndDlg, int message, int wParam, int lParam) {
  switch (message) {
    case WM_INITDIALOG:
      SendDlgItemMessage(hwndDlg, ID_PROGRESS, PBM_SETPOS, 35, 0);
    case WM_COMMAND:
      switch (LOWORD(wParam)) {
        case IDOK:
          print('OK');
          final textPtr = Pwstr.allocate(256);
          final result = GetDlgItemText(hwndDlg, ID_EDITTEXT, textPtr.ptr, 256);
          if (result != NULL) {
            textEntered = textPtr.toDartString();
          }
          EndDialog(hwndDlg, wParam);
          return TRUE;
        case IDCANCEL:
          print('Cancel');
          EndDialog(hwndDlg, wParam);
          return TRUE;
      }
  }

  return FALSE;
}
