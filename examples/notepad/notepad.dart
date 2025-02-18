// notepad.dart

// Comprehensive example of Win32 APIs for a non-game scenario.

// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'editor.dart';
import 'find.dart';
import 'resources.dart';

const APP_NAME = 'DartNote'; // DartPad was taken :)

/// Win32 handle to the current window instance
final hInstance = GetModuleHandle(nullptr);

late NotepadEditor editor;
late NotepadFind find;

/// The handle of the Notepad window's text edit control
late int hwndEdit;

late Pointer<FINDREPLACE> findReplace;
int messageFindReplace = 0;
int hDlgModeless = NULL;

final iOffset = calloc<Uint32>();

int mainWindowProc(int hwnd, int message, int wParam, int lParam) {
  switch (message) {
    case WM_CREATE:
      hwndEdit = CreateWindowEx(
        0,
        TEXT('edit'),
        nullptr,
        WINDOW_STYLE.WS_CHILD |
            WINDOW_STYLE.WS_VISIBLE |
            WINDOW_STYLE.WS_HSCROLL |
            WINDOW_STYLE.WS_VSCROLL |
            WINDOW_STYLE.WS_BORDER |
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
        EDITID,
        hInstance,
        nullptr,
      );

      SendMessage(hwndEdit, EM_LIMITTEXT, 32767, 0);

      editor = NotepadEditor(hwnd, hwndEdit);
      find = NotepadFind();

      messageFindReplace = RegisterWindowMessage(TEXT(FINDMSGSTRING));

      editor.updateWindowTitle();
      return 0;

    case WM_SETFOCUS:
      SetFocus(hwndEdit);
      return 0;

    case WM_SIZE:
      MoveWindow(hwndEdit, 0, 0, LOWORD(lParam), HIWORD(lParam), TRUE);
      return 0;

    case WM_INITMENUPOPUP:
      switch (lParam) {
        case 1: // Edit menu

          // Enable Undo if edit control can do it
          EnableMenuItem(
            wParam,
            IDM_EDIT_UNDO,
            SendMessage(hwndEdit, EM_CANUNDO, 0, 0) != FALSE
                ? MENU_ITEM_FLAGS.MF_ENABLED
                : MENU_ITEM_FLAGS.MF_GRAYED,
          );

          // Enable Paste if clipboard contains text
          EnableMenuItem(
            wParam,
            IDM_EDIT_PASTE,
            IsClipboardFormatAvailable(CLIPBOARD_FORMAT.CF_TEXT) != FALSE
                ? MENU_ITEM_FLAGS.MF_ENABLED
                : MENU_ITEM_FLAGS.MF_GRAYED,
          );

          // Enable Cut / Copy / Clear if there is a selection
          final menuStyle =
              editor.isTextSelected
                  ? MENU_ITEM_FLAGS.MF_ENABLED
                  : MENU_ITEM_FLAGS.MF_GRAYED;

          EnableMenuItem(wParam, IDM_EDIT_CUT, menuStyle);
          EnableMenuItem(wParam, IDM_EDIT_COPY, menuStyle);
          EnableMenuItem(wParam, IDM_EDIT_CLEAR, menuStyle);

        case 2: // Search menu
          final menuStyle =
              hDlgModeless == NULL
                  ? MENU_ITEM_FLAGS.MF_ENABLED
                  : MENU_ITEM_FLAGS.MF_GRAYED;

          EnableMenuItem(wParam, IDM_SEARCH_FIND, menuStyle);
          EnableMenuItem(wParam, IDM_SEARCH_NEXT, menuStyle);
          EnableMenuItem(wParam, IDM_SEARCH_REPLACE, menuStyle);
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
            MessageBox(
              hwnd,
              TEXT('Edit control out of space.'),
              TEXT(APP_NAME),
              MESSAGEBOX_STYLE.MB_OK | MESSAGEBOX_STYLE.MB_ICONSTOP,
            );
            return 0;
        }
        break;
      }

      // Messages from menu system
      switch (LOWORD(wParam)) {
        case IDM_FILE_NEW:
          if (editor.isFileDirty &&
              editor.offerSave() == MESSAGEBOX_RESULT.IDCANCEL) {
            return 0;
          }

          // Empty edit control
          SetWindowText(hwndEdit, TEXT('\u{0}'));

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
            find.findNextTextInEditWindow(hwndEdit, iOffset);
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
            pDialog,
            hwnd,
            lpDialogFunc.nativeFunction,
          );
          lpDialogFunc.close();
          return 0;
      }
      return 0;

    case WM_CLOSE:
      if (!editor.isFileDirty ||
          editor.offerSave() != MESSAGEBOX_RESULT.IDCANCEL) {
        DestroyWindow(hwnd);
      }
      return 0;

    case WM_QUERYENDSESSION:
      if (!editor.isFileDirty ||
          editor.offerSave() != MESSAGEBOX_RESULT.IDCANCEL) {
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

        if (findReplace.ref.Flags & FINDREPLACE_FLAGS.FR_DIALOGTERM ==
            FINDREPLACE_FLAGS.FR_DIALOGTERM) {
          hDlgModeless = NULL;
        }

        if (findReplace.ref.Flags & FINDREPLACE_FLAGS.FR_FINDNEXT ==
            FINDREPLACE_FLAGS.FR_FINDNEXT) {
          if (!find.findTextInEditWindow(hwndEdit, iOffset, findReplace)) {
            editor.showMessage('Text not found!');
          }
        }

        if ((findReplace.ref.Flags & FINDREPLACE_FLAGS.FR_REPLACE ==
                FINDREPLACE_FLAGS.FR_REPLACE) ||
            (findReplace.ref.Flags & FINDREPLACE_FLAGS.FR_REPLACEALL ==
                FINDREPLACE_FLAGS.FR_REPLACEALL)) {
          if (!find.replaceTextInEditWindow(hwndEdit, iOffset, findReplace)) {
            editor.showMessage('Text not found!');
          }
        }

        if (findReplace.ref.Flags & FINDREPLACE_FLAGS.FR_REPLACEALL ==
            FINDREPLACE_FLAGS.FR_REPLACEALL) {
          while (find.replaceTextInEditWindow(
            hwndEdit,
            iOffset,
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
        case MESSAGEBOX_RESULT.IDOK:
          EndDialog(hDlg, 0);
          return TRUE;
      }
  }
  return FALSE;
}

void main() {
  registerHighDPISupport();

  // Register the window class.
  final className = TEXT(APP_NAME);

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  final wc =
      calloc<WNDCLASS>()
        ..ref.style = WNDCLASS_STYLES.CS_HREDRAW | WNDCLASS_STYLES.CS_VREDRAW
        ..ref.lpfnWndProc = lpfnWndProc.nativeFunction
        ..ref.hInstance = hInstance
        ..ref.lpszClassName = className
        ..ref.hCursor = LoadCursor(NULL, IDC_ARROW)
        ..ref.hbrBackground = GetStockObject(
          GET_STOCK_OBJECT_FLAGS.WHITE_BRUSH,
        );
  RegisterClass(wc);

  final hMenu = NotepadResources.loadMenus();

  // Create the window.
  final hWnd = CreateWindowEx(
    0, // Optional window styles.
    className, // Window class
    TEXT(APP_NAME),
    WINDOW_STYLE.WS_OVERLAPPEDWINDOW, // Window style
    // Size and position
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    NULL, // Parent window
    hMenu, // Menu
    hInstance, // Instance handle
    nullptr, // Additional application data
  );

  if (hWnd == 0) {
    final error = GetLastError();
    throw WindowsException(HRESULT_FROM_WIN32(error));
  }

  ShowWindow(hWnd, SHOW_WINDOW_CMD.SW_SHOWNORMAL);
  UpdateWindow(hWnd);

  final hAccel = NotepadResources.loadAccelerators();

  // Run the message loop.

  final msg = calloc<MSG>();
  while (GetMessage(msg, NULL, 0, 0) != 0) {
    // Translate dialog messages
    if ((hDlgModeless == NULL) ||
        (IsDialogMessage(hDlgModeless, msg) == FALSE)) {
      // Translate window accelerators and messages
      if (TranslateAccelerator(hWnd, hAccel, msg) == FALSE) {
        TranslateMessage(msg);
        DispatchMessage(msg);
      }
    }
  }

  lpfnWndProc.close();
  free(msg);
}
