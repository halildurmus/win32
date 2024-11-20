import 'dart:ffi';

import 'package:win32/win32.dart';

import 'editor.dart';
import 'find.dart';
import 'resources.dart';

const appName = 'DartNote'; // DartPad was taken :)

/// Win32 handle to the current window instance
final int hInstance = GetModuleHandle(null);

late NotepadEditor editor;
late NotepadFind find;

/// The handle of the Notepad window's text edit control
late int hwndEdit;

late Pointer<FINDREPLACE> findReplace;
var messageFindReplace = 0;
var hDlgModeless = 0;

final SmartPointer<Uint32> iOffset = SmartPointer(loggingCalloc<Uint32>());

int mainWindowProc(int hwnd, int message, int wParam, int lParam) {
  switch (message) {
    case WM_CREATE:
      const hMenu = EDITID;
      final className = w('edit');
      hwndEdit = CreateWindowEx(
        WS_EX_LEFT,
        className.ptr,
        null,
        WS_CHILD |
            WS_VISIBLE |
            WS_HSCROLL |
            WS_VSCROLL |
            WS_BORDER |
            ES_LEFT |
            ES_MULTILINE |
            ES_NOHIDESEL |
            ES_AUTOHSCROLL |
            ES_AUTOVSCROLL,
        0,
        0,
        0,
        0,
        hwnd,
        hMenu,
        hInstance,
        null,
      );
      SendMessage(hwndEdit, EM_LIMITTEXT, 32767, 0);
      editor = NotepadEditor(hwnd, hwndEdit);
      find = NotepadFind();
      final lpString = w(FINDMSGSTRING);
      messageFindReplace = RegisterWindowMessage(lpString.ptr);
      editor.updateWindowTitle();
      return 0;

    case WM_SETFOCUS:
      SetFocus(hwndEdit);
      return 0;

    case WM_SIZE:
      MoveWindow(hwndEdit, 0, 0, LOWORD(lParam), HIWORD(lParam), true);
      return 0;

    case WM_INITMENUPOPUP:
      switch (lParam) {
        case 1: // Edit menu
          final hMenu = wParam;

          // Enable Undo if edit control can do it
          EnableMenuItem(
            hMenu,
            IDM_EDIT_UNDO,
            SendMessage(hwndEdit, EM_CANUNDO, 0, 0) != FALSE
                ? MF_ENABLED
                : MF_GRAYED,
          );

          // Enable Paste if clipboard contains text
          EnableMenuItem(
            hMenu,
            IDM_EDIT_PASTE,
            IsClipboardFormatAvailable(CF_TEXT) ? MF_ENABLED : MF_GRAYED,
          );

          // Enable Cut / Copy / Clear if there is a selection
          final menuStyle = editor.isTextSelected ? MF_ENABLED : MF_GRAYED;

          EnableMenuItem(hMenu, IDM_EDIT_CUT, menuStyle);
          EnableMenuItem(hMenu, IDM_EDIT_COPY, menuStyle);
          EnableMenuItem(hMenu, IDM_EDIT_CLEAR, menuStyle);

        case 2: // Search menu
          final hMenu = wParam;
          final menuStyle = hDlgModeless == NULL ? MF_ENABLED : MF_GRAYED;

          EnableMenuItem(hMenu, IDM_SEARCH_FIND, menuStyle);
          EnableMenuItem(hMenu, IDM_SEARCH_NEXT, menuStyle);
          EnableMenuItem(hMenu, IDM_SEARCH_REPLACE, menuStyle);
      }
      return 0;

    case WM_COMMAND:
      // Messages from edit control
      if ((lParam != 0) && (LOWORD(wParam) == EDITID)) {
        switch (HIWORD(wParam)) {
          case EN_UPDATE:
            editor.isFileDirty = true;
            return 0;
          case EN_ERRSPACE:
          case EN_MAXTEXT:
            final text = w('Edit control out of space.');
            final caption = w(appName);
            MessageBox(hwnd, text.ptr, caption.ptr, MB_OK | MB_ICONSTOP);
            return 0;
        }
        break;
      }

      // Messages from menu system
      switch (LOWORD(wParam)) {
        case IDM_FILE_NEW:
          if (editor.isFileDirty && editor.offerSave() == IDCANCEL) {
            return 0;
          }

          // Empty edit control
          final string = w('\u{0}');
          SetWindowText(hwndEdit, string.ptr);

          editor.newFile();
          return 0;

        case IDM_FILE_OPEN:
          editor.openFile();
          return 0;

        case IDM_FILE_SAVE:
          return editor.saveFile() ? 1 : 0;

        case IDM_FILE_SAVE_AS:
          return editor.saveAsFile() ? 1 : 0;

        case IDM_FILE_PRINT:
          editor.showMessage('Print not yet implemented!');
          return 0;

        case IDM_APP_EXIT:
          SendMessage(hwnd, WM_CLOSE, 0, 0);
          return 0;

        case IDM_EDIT_UNDO:
          SendMessage(hwndEdit, WM_UNDO, 0, 0);
          return 0;

        case IDM_EDIT_CUT:
          SendMessage(hwndEdit, WM_CUT, 0, 0);
          return 0;

        case IDM_EDIT_COPY:
          SendMessage(hwndEdit, WM_COPY, 0, 0);
          return 0;

        case IDM_EDIT_PASTE:
          SendMessage(hwndEdit, WM_PASTE, 0, 0);
          return 0;

        case IDM_EDIT_CLEAR:
          SendMessage(hwndEdit, WM_CLEAR, 0, 0);
          return 0;

        case IDM_EDIT_SELECT_ALL:
          SendMessage(hwndEdit, EM_SETSEL, 0, -1);
          return 0;

        case IDM_SEARCH_FIND:
          SendMessage(hwndEdit, EM_GETSEL, 0, iOffset.address);
          hDlgModeless = find.showFindDialog(hwnd);
          return 0;

        case IDM_SEARCH_NEXT:
          SendMessage(hwndEdit, EM_GETSEL, 0, iOffset.address);

          if (find.findValidFind()) {
            find.findNextTextInEditWindow(hwndEdit, iOffset.ptr);
          } else {
            hDlgModeless = find.showFindDialog(hwnd);
          }
          return 0;

        case IDM_SEARCH_REPLACE:
          SendMessage(hwndEdit, EM_GETSEL, 0, iOffset.address);
          hDlgModeless = find.showReplaceDialog(hwnd);
          return 0;

        case IDM_FORMAT_FONT:
          editor.setFont();
          return 0;

        case IDM_HELP:
          editor.showMessage('Help not yet implemented!');
          return 0;

        case IDM_APP_ABOUT:
          final pDialog = NotepadResources.loadAboutBox();
          final lpDialogFunc = NativeCallable<DLGPROC>.isolateLocal(
            dialogReturnProc,
            exceptionalReturn: 0,
          );
          DialogBoxIndirect(
            hInstance,
            pDialog.ptr,
            hwnd,
            lpDialogFunc.nativeFunction,
          );
          lpDialogFunc.close();
          return 0;
      }
      return 0;

    case WM_CLOSE:
      if (!editor.isFileDirty || editor.offerSave() != IDCANCEL) {
        DestroyWindow(hwnd);
      }
      return 0;

    case WM_QUERYENDSESSION:
      if (!editor.isFileDirty || editor.offerSave() != IDCANCEL) {
        return 1;
      }
      return 0;

    case WM_DESTROY:
      editor.dispose();
      PostQuitMessage(0);
      return 0;

    default:
      // Process "Find/Replace" messages
      if (message == messageFindReplace) {
        findReplace = Pointer<FINDREPLACE>.fromAddress(lParam);

        if (findReplace.ref.Flags & FR_DIALOGTERM == FR_DIALOGTERM) {
          hDlgModeless = 0;
        }

        if (findReplace.ref.Flags & FR_FINDNEXT == FR_FINDNEXT) {
          if (!find.findTextInEditWindow(hwndEdit, iOffset.ptr, findReplace)) {
            editor.showMessage('Text not found!');
          }
        }

        if ((findReplace.ref.Flags & FR_REPLACE == FR_REPLACE) ||
            (findReplace.ref.Flags & FR_REPLACEALL == FR_REPLACEALL)) {
          if (!find.replaceTextInEditWindow(
            hwndEdit,
            iOffset.ptr,
            findReplace,
          )) {
            editor.showMessage('Text not found!');
          }
        }

        if (findReplace.ref.Flags & FR_REPLACEALL == FR_REPLACEALL) {
          while (find.replaceTextInEditWindow(
            hwndEdit,
            iOffset.ptr,
            findReplace,
          )) {}
        }

        return 0;
      }
  }
  return DefWindowProc(hwnd, message, wParam, lParam);
}

int dialogReturnProc(int hDlg, int msg, int wParam, int lParam) {
  switch (msg) {
    case WM_INITDIALOG:
      return TRUE;
    case WM_COMMAND:
      switch (LOWORD(wParam)) {
        case IDOK:
          EndDialog(hDlg, 0);
          return TRUE;
      }
  }
  return FALSE;
}

void main() {
  registerHighDPISupport();

  // Register the window class.
  final className = w(appName);

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  final wc = loggingCalloc<WNDCLASS>();
  wc.ref
    ..style = CS_HREDRAW | CS_VREDRAW
    ..lpfnWndProc = lpfnWndProc.nativeFunction
    ..hInstance = hInstance
    ..lpszClassName = className.ptr
    ..hCursor = LoadCursor(null, IDC_ARROW)
    ..hbrBackground = GetStockObject(WHITE_BRUSH);
  RegisterClass(wc);

  final hMenu = NotepadResources.loadMenus();

  // Create the window.
  final lpWindowName = w(appName);
  final hWnd = CreateWindowEx(
    WS_EX_LEFT, // Optional window styles.
    className.ptr, // Window class
    lpWindowName.ptr,
    WS_OVERLAPPEDWINDOW, // Window style
    // Size and position
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    null, // Parent window
    hMenu, // Menu
    hInstance, // Instance handle
    null, // Additional application data
  );

  if (hWnd == NULL) {
    final error = GetLastError();
    throw WindowsException(error.toHRESULT());
  }

  ShowWindow(hWnd, SW_SHOWNORMAL);
  UpdateWindow(hWnd);

  final hAccel = NotepadResources.loadAccelerators();

  // Run the message loop.

  final msg = loggingCalloc<MSG>();
  while (GetMessage(msg, null, 0, 0)) {
    // Translate dialog messages
    if (hDlgModeless == NULL || !IsDialogMessage(hDlgModeless, msg)) {
      // Translate window accelerators and messages
      if (TranslateAccelerator(hWnd, hAccel, msg) == FALSE) {
        TranslateMessage(msg);
        DispatchMessage(msg);
      }
    }
  }

  lpfnWndProc.close();
  free(msg);
  free(wc);
}
