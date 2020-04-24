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

final APP_NAME = 'DartNote'; // DartPad was taken :)
final UNTITLED = '(untitled)';

final hInstance = GetModuleHandle(nullptr);

final file = NotepadFile();

bool isFileDirty = false;
int hwndEdit;
int iOffset = NULL;
Pointer<Utf16> szFileName = allocate<Uint16>(count: MAX_PATH).cast<Utf16>();
Pointer<Utf16> szTitleName = allocate<Uint16>(count: MAX_PATH).cast<Utf16>();

int messageFindReplace;

final iSelBeg = allocate<Uint64>()..value = 0;
final iSelEnd = allocate<Uint64>()..value = 0;
int iEnable;

Pointer<FINDREPLACE> pfr;
int hDlgModeless = NULL;

void main() {
  szFileName.cast<Uint16>().elementAt(0).value = 0;
  szTitleName.cast<Uint16>().elementAt(0).value = 0;

  // Register the window class.

  final wc = WNDCLASS.allocate();
  wc.style = CS_HREDRAW | CS_VREDRAW;
  wc.lpfnWndProc = Pointer.fromFunction<WindowProc>(MainWindowProc, 0);
  wc.hInstance = hInstance;
  wc.lpszClassName = TEXT(APP_NAME);
  wc.hCursor = LoadCursor(NULL, IDC_ARROW);
  wc.hbrBackground = GetStockObject(WHITE_BRUSH);

  RegisterClass(wc.addressOf);

  final hMenu = ResourceLibrary.LoadMenus();

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

  final hAccel = ResourceLibrary.LoadAccelerators();

  // Run the message loop.

  final msg = MSG.allocate();
  while (GetMessage(msg.addressOf, NULL, 0, 0) != 0) {
    if (TranslateAccelerator(hWnd, hAccel, msg.addressOf) == FALSE) {
      TranslateMessage(msg.addressOf);
      DispatchMessage(msg.addressOf);
    }
  }
  free(msg.addressOf);
}

void DoCaption(int hwnd, String titleName) {
  final caption = APP_NAME + ' - ' + (titleName.isEmpty ? UNTITLED : titleName);
  SetWindowText(hwnd, TEXT(caption));
}

void OkMessage(int hwnd, String szMessage) {
  MessageBox(hwnd, TEXT(szMessage), TEXT(APP_NAME), MB_OK | MB_ICONEXCLAMATION);
}

int AskAboutSave(int hwnd, String szTitleName) {
  final buffer = TEXT('Save current changes in ${szTitleName ?? UNTITLED}?');
  final res = MessageBox(
      hwnd, buffer, TEXT(APP_NAME), MB_YESNOCANCEL | MB_ICONQUESTION);

  if (res == IDYES) {
    if (SendMessage(hwnd, WM_COMMAND, IDM_FILE_SAVE, 0) == FALSE) {
      return IDCANCEL;
    }
  }

  return res;
}

int MainWindowProc(int hwnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
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
          0,
          hInstance,
          nullptr);

      SendMessage(hwndEdit, EM_LIMITTEXT, 32000, 0);

      file.PopFileInitialize(hwnd);

      DoCaption(hwnd, szTitleName.unpackString(MAX_PATH));
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
      switch (LOWORD(wParam)) {
        case IDM_FILE_NEW:
          if (isFileDirty) return 0;

          SetWindowText(hwndEdit, TEXT('\u{0}'));
          szFileName.cast<Uint16>().elementAt(0).value = 0;
          szTitleName.cast<Uint16>().elementAt(0).value = 0;
          DoCaption(hwnd, szTitleName.unpackString(MAX_PATH));
          isFileDirty = false;
          return 0;

        case IDM_FILE_OPEN:
          if (isFileDirty &&
              AskAboutSave(hwnd, szTitleName.unpackString(MAX_PATH)) ==
                  IDCANCEL) {
            return 0;
          }

          if (file.PopFileOpenDlg(hwnd, szFileName, szTitleName) == TRUE) {
            if (!file.PopFileRead(hwndEdit, szFileName)) {
              print('OKmessage');
              OkMessage(hwnd, 'Could not read file $szTitleName!');
              szFileName.cast<Uint16>().elementAt(0).value = 0;
              szTitleName.cast<Uint16>().elementAt(0).value = 0;
            }
          }

          DoCaption(hwnd, szTitleName.unpackString(MAX_PATH));
          isFileDirty = false;
          return 0;

        case IDM_FILE_SAVE:
          if (szFileName.elementAt(0).cast<Uint16>().value != 0) {
            if (file.PopFileWrite(hwndEdit, szFileName)) {
              isFileDirty = false;
              return 1;
            } else {
              OkMessage(hwnd,
                  'Could not write file ${szFileName.unpackString(MAX_PATH)}');
              return 0;
            }
          }
          continue SAVE_AS; // fallthru if file is empty

        SAVE_AS:
        case IDM_FILE_SAVE_AS:
          if (file.PopFileSaveDlg(hwnd, szFileName, szTitleName) != 0) {
            DoCaption(hwnd, szTitleName.unpackString(MAX_PATH));

            if (file.PopFileWrite(hwndEdit, szFileName)) {
              isFileDirty = false;
              return 1;
            } else {
              OkMessage(hwnd,
                  'Could not write file ${szFileName.unpackString(MAX_PATH)}');
            }
          }
          return 0;

        case IDM_FILE_PRINT:
          OkMessage(hwnd, 'Print not yet implemented!');
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
          SendMessage(hwndEdit, EM_GETSEL, 0, iOffset);
          hDlgModeless = NotepadFind().ShowFindDialog(hwnd);
          return 0;

        case IDM_SEARCH_NEXT:
          SendMessage(hwndEdit, EM_GETSEL, 0, iOffset);
          return 0;

        case IDM_SEARCH_REPLACE:
          SendMessage(hwndEdit, EM_GETSEL, 0, iOffset);
          hDlgModeless = NotepadFind().ShowReplaceDialog(hwnd);
          return 0;

        case IDM_FORMAT_FONT:
          final font = NotepadFont(hwndEdit);

          if (font.NotepadChooseFont(hwnd)) {
            font.NotepadSetFont(hwndEdit);
          }

          return 0;

        case IDM_HELP:
          OkMessage(hwnd, 'Help not yet implemented!');
          return 0;

        case IDM_APP_ABOUT:
          OkMessage(hwnd, 'About not yet implemented!');
          return 0;
      }
      return 0;

    case WM_CLOSE:
      if (!isFileDirty) {
        DestroyWindow(hwnd);
      }
      return 0;

    case WM_QUERYENDSESSION:
      if (!isFileDirty) {
        return 1;
      }
      return 0;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;
  }
  return DefWindowProc(hwnd, uMsg, wParam, lParam);
}
