// notepad.dart

// Comprehensive example of Win32 APIs for a non-game scenario.

import 'dart:ffi';
import 'dart:io';

import 'package:win32/win32.dart';

import 'file.dart';
import 'resources.dart';

final hInstance = GetModuleHandle(nullptr);

final file = NotepadFile();

bool isFileDirty = false;
int hwndEdit;
int iOffset;
String szFileName, szTitleName;
int messageFindReplace;
int iSelBeg, iSelEnd, iEnable;
Pointer<FINDREPLACE> pfr;

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
      return 0;

    case WM_SETFOCUS:
      SetFocus(hwndEdit);
      return 0;

    case WM_SIZE:
      MoveWindow(hwndEdit, 0, 0, LOWORD(lParam), HIWORD(lParam), TRUE);
      return 0;

    case WM_CLOSE:
      if (!isFileDirty) {
        DestroyWindow(hwnd);
      }
      return 0;

    case WM_COMMAND:
      switch (LOWORD(wParam)) {
        case IDM_FILE_NEW:
          if (isFileDirty) return 0;

          SetWindowText(hwndEdit, TEXT('\0'));
          return 0;

        case IDM_FILE_OPEN:
          if (file.PopFileOpenDlg(hwnd, szFileName, szTitleName) == TRUE) {
            return 0;
          }
          return 0;

        case IDM_FILE_SAVE:
          return 0;

        case IDM_FILE_SAVE_AS:
          return 0;

        case IDM_FILE_PRINT:
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

void main() {
  // Register the window class.

  final APP_NAME = TEXT('Dartnote'); // DartPad was taken :)

  final wc = WNDCLASS.allocate();
  wc.style = CS_HREDRAW | CS_VREDRAW;
  wc.lpfnWndProc = Pointer.fromFunction<WindowProc>(MainWindowProc, 0);
  wc.hInstance = hInstance;
  print('hInstance: $hInstance');
  wc.lpszClassName = APP_NAME;
  wc.hCursor = LoadCursor(NULL, IDC_ARROW);
  wc.hbrBackground = GetStockObject(WHITE_BRUSH);
  RegisterClass(wc.addressOf);

  final hMenu = LoadMenus();

  // Create the window.
  final hWnd = CreateWindowEx(
      0, // Optional window styles.
      APP_NAME, // Window class
      APP_NAME,
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

  // Run the message loop.

  final msg = MSG.allocate();
  while (GetMessage(msg.addressOf, NULL, 0, 0) != 0) {
    TranslateMessage(msg.addressOf);
    DispatchMessage(msg.addressOf);
  }
}
