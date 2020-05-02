// notepad.dart

// Comprehensive example of Win32 APIs for a non-game scenario.

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'file.dart';
import 'find.dart';
import 'font.dart';
import 'resources.dart';

const APP_NAME = 'DartNote'; // DartPad was taken :)

/// Win32 handle to the current window instance
final hInstance = GetModuleHandle(nullptr);

/// The fully-qualified name of the current working file
/// (e.g. `C:\src\myfile.txt`)
String fileFullPath;

/// The filename and extension of the current working file (e.g. `myfile.txt`)
String fileTitle;

/// Does the current file in memory contain unsaved changes?
bool isFileDirty = false;

class Notepad {
  static NotepadFile file;
  static NotepadFind find;
  static NotepadFont font;

  static int hDlgModeless = NULL;

  /// The handle of the Notepad window's text edit control
  static int hwndEdit;

  static int messageFindReplace;

  static final iSelBeg = allocate<IntPtr>()..value = 0;
  static final iSelEnd = allocate<IntPtr>()..value = 0;
  static final iOffset = allocate<Uint32>()..value = 0;
  static int iEnable;

  static Pointer<FINDREPLACE> pfr;

  static void SetWindowTitle(int hwnd, String titleName) {
    final caption = APP_NAME + ' - ' + (titleName ?? '(untitled)');
    SetWindowText(hwnd, TEXT(caption));
  }

  static void ShowOKMessage(int hwnd, String szMessage) {
    MessageBox(
        hwnd, TEXT(szMessage), TEXT(APP_NAME), MB_OK | MB_ICONEXCLAMATION);
  }

  static int AskAboutSave(int hwnd) {
    final buffer = TEXT(fileTitle != null
        ? 'Save current changes in $fileTitle?'
        : 'Save changes to file?');
    final res = MessageBox(
        hwnd, buffer, TEXT(APP_NAME), MB_YESNOCANCEL | MB_ICONQUESTION);

    if (res == IDYES) {
      if (SendMessage(hwnd, WM_COMMAND, IDM_FILE_SAVE, 0) == FALSE) {
        return IDCANCEL;
      }
    }

    return res;
  }

  static int MainWindowProc(int hwnd, int message, int wParam, int lParam) {
    switch (message) {
      case WM_CREATE:
        hwndEdit = CreateWindowEx(
            0,
            TEXT('edit'),
            nullptr,
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
            EDITID,
            hInstance,
            nullptr);

        SendMessage(hwndEdit, EM_LIMITTEXT, 32767, 0);

        file = NotepadFile(hwnd);
        font = NotepadFont(hwnd);
        find = NotepadFind();

        messageFindReplace = RegisterWindowMessage(TEXT(FINDMSGSTRING));

        SetWindowTitle(hwnd, fileTitle);
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
                    ? MF_ENABLED
                    : MF_GRAYED);

            // Enable Paste if text is in the clipboard
            EnableMenuItem(
                wParam,
                IDM_EDIT_PASTE,
                IsClipboardFormatAvailable(CF_TEXT) != FALSE
                    ? MF_ENABLED
                    : MF_GRAYED);

            SendMessage(hwndEdit, EM_GETSEL, iSelBeg.address, iSelEnd.address);

            iEnable = iSelBeg != iSelEnd ? MF_ENABLED : MF_GRAYED;

            EnableMenuItem(wParam, IDM_EDIT_CUT, iEnable);
            EnableMenuItem(wParam, IDM_EDIT_COPY, iEnable);
            EnableMenuItem(wParam, IDM_EDIT_CLEAR, iEnable);
            break;

          case 2: // Search menu
            iEnable = hDlgModeless == NULL ? MF_ENABLED : MF_GRAYED;

            EnableMenuItem(wParam, IDM_SEARCH_FIND, iEnable);
            EnableMenuItem(wParam, IDM_SEARCH_NEXT, iEnable);
            EnableMenuItem(wParam, IDM_SEARCH_REPLACE, iEnable);
            break;
        }
        return 0;

      case WM_COMMAND:
        // Messages from edit control
        if ((lParam != 0) && (LOWORD(wParam) == EDITID)) {
          switch (HIWORD(wParam)) {
            case EN_UPDATE:
              isFileDirty = true;
              return 0;
            case EN_ERRSPACE:
            case EN_MAXTEXT:
              MessageBox(hwnd, TEXT('Edit control out of space.'),
                  TEXT(APP_NAME), MB_OK | MB_ICONSTOP);
              return 0;
          }
          break;
        }

        // Messages from menu system
        switch (LOWORD(wParam)) {
          case IDM_FILE_NEW:
            if (isFileDirty && AskAboutSave(hwnd) == IDCANCEL) {
              return 0;
            }

            // Empty edit control
            SetWindowText(hwndEdit, TEXT('\u{0}'));

            fileFullPath = null;
            fileTitle = null;
            SetWindowTitle(hwnd, fileTitle);

            isFileDirty = false;
            return 0;

          case IDM_FILE_OPEN:
            if (isFileDirty && AskAboutSave(hwnd) == IDCANCEL) {
              return 0;
            }

            if (file.ShowOpenDialog(hwnd)) {
              file.ReadFileIntoEditControl(hwndEdit);
            }

            SetWindowTitle(hwnd, fileTitle);
            isFileDirty = false;
            return 0;

          case IDM_FILE_SAVE:
            if (fileFullPath != null) {
              file.WriteFileFromEditControl(hwndEdit);
              isFileDirty = false;
              return 1;
            }

            if (file.ShowSaveDialog(hwnd)) {
              SetWindowTitle(hwnd, fileTitle);

              file.WriteFileFromEditControl(hwndEdit);
              isFileDirty = false;
              return 1;
            }

            return 0;

          case IDM_FILE_SAVE_AS:
            if (file.ShowSaveDialog(hwnd)) {
              SetWindowTitle(hwnd, fileTitle);

              file.WriteFileFromEditControl(hwndEdit);
              isFileDirty = false;
              return 1;
            }
            return 0;

          case IDM_FILE_PRINT:
            ShowOKMessage(hwnd, 'Print not yet implemented!');
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
            hDlgModeless = find.ShowFindDialog(hwnd);
            return 0;

          case IDM_SEARCH_NEXT:
            SendMessage(hwndEdit, EM_GETSEL, 0, iOffset.address);

            if (find.FindValidFind()) {
              find.FindNextTextInEditWindow(hwndEdit, iOffset);
            } else {
              hDlgModeless = find.ShowFindDialog(hwnd);
            }
            return 0;

          case IDM_SEARCH_REPLACE:
            SendMessage(hwndEdit, EM_GETSEL, 0, iOffset.address);
            hDlgModeless = find.ShowReplaceDialog(hwnd);
            return 0;

          case IDM_FORMAT_FONT:
            if (font.NotepadChooseFont(hwnd)) {
              font.NotepadSetFont(hwndEdit);
            }

            return 0;

          case IDM_HELP:
            ShowOKMessage(hwnd, 'Help not yet implemented!');
            return 0;

          case IDM_APP_ABOUT:
            ShowOKMessage(hwnd, 'About not yet implemented!');
            return 0;
        }
        return 0;

      case WM_CLOSE:
        if (!isFileDirty || AskAboutSave(hwnd) != IDCANCEL) {
          DestroyWindow(hwnd);
        }
        return 0;

      case WM_QUERYENDSESSION:
        if (!isFileDirty || AskAboutSave(hwnd) != IDCANCEL) {
          return 1;
        }
        return 0;

      case WM_DESTROY:
        font.Delete();
        PostQuitMessage(0);
        return 0;

      default:
        // Process "Find/Replace" messages

        if (message == messageFindReplace) {
          pfr = Pointer<FINDREPLACE>.fromAddress(lParam);

          if (pfr.ref.Flags & FR_DIALOGTERM == FR_DIALOGTERM) {
            hDlgModeless = NULL;
          }

          if (pfr.ref.Flags & FR_FINDNEXT == FR_FINDNEXT) {
            if (!find.FindTextInEditWindow(hwndEdit, iOffset, pfr)) {
              ShowOKMessage(hwnd, 'Text not found!');
            }
          }

          if ((pfr.ref.Flags & FR_REPLACE == FR_REPLACE) ||
              (pfr.ref.Flags & FR_REPLACEALL == FR_REPLACEALL)) {
            print('replaces: ' +
                pfr.ref.lpstrFindWhat.unpackString(256) +
                ' with ' +
                pfr.ref.lpstrReplaceWith.unpackString(256));
            if (!find.ReplaceTextInEditWindow(hwndEdit, iOffset, pfr)) {
              ShowOKMessage(hwnd, 'Text not found!');
            }
          }

          if (pfr.ref.Flags & FR_REPLACEALL == FR_REPLACEALL) {
            while (find.ReplaceTextInEditWindow(hwndEdit, iOffset, pfr)) {}
          }

          return 0;
        }
        break;
    }
    return DefWindowProc(hwnd, message, wParam, lParam);
  }

  static void runApp() {
    // Register the window class.

    final wc = WNDCLASS.allocate();
    wc.style = CS_HREDRAW | CS_VREDRAW;
    wc.lpfnWndProc = Pointer.fromFunction<WindowProc>(MainWindowProc, 0);
    wc.hInstance = hInstance;
    wc.lpszClassName = TEXT(APP_NAME);
    wc.hCursor = LoadCursor(NULL, IDC_ARROW);
    wc.hbrBackground = GetStockObject(WHITE_BRUSH);

    RegisterClass(wc.addressOf);

    final hMenu = NotepadResources.LoadMenus();

    // Create the window.
    final hWnd = CreateWindowEx(
        0, // Optional window styles.
        TEXT(APP_NAME), // Window class
        TEXT(APP_NAME),
        WS_OVERLAPPEDWINDOW, // Window style

        // Size and position
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        NULL, // Parent window
        hMenu, // Menu
        hInstance, // Instance handle
        nullptr // Additional application data
        );

    if (hWnd == 0) {
      stderr.writeln('CreateWindowEx failed with error: ${GetLastError()}');
      exit(-1);
    }

    ShowWindow(hWnd, SW_SHOWNORMAL);
    UpdateWindow(hWnd);

    final hAccel = NotepadResources.LoadAccelerators();

    // Run the message loop.

    final msg = MSG.allocate();
    while (GetMessage(msg.addressOf, NULL, 0, 0) != 0) {
      if ((hDlgModeless == NULL) ||
          (IsDialogMessage(hDlgModeless, msg.addressOf) == 0)) {
        if (TranslateAccelerator(hWnd, hAccel, msg.addressOf) == FALSE) {
          TranslateMessage(msg.addressOf);
          DispatchMessage(msg.addressOf);
        }
      }
    }
    free(msg.addressOf);
  }
}

void main() => Notepad.runApp();
