// Demonstrates using hooks.
//
// Installs a low-level keyboard hook that changes every 'A' keypress to 'B'.
// Also adds a window that shows keystrokes entered.

// ignore_for_file: constant_identifier_names

import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

const LLKHF_INJECTED = 0x00000010;

const szTop = 'Message        Key          Char       Scan Ext ALT Prev Tran';
const szUnd = '_______        ___          ____       ____ ___ ___ ____ ____';

const messages = <String>[
  'WM_KEYDOWN',
  'WM_KEYUP',
  'WM_CHAR',
  'WM_DEADCHAR',
  'WM_SYSKEYDOWN',
  'WM_SYSKEYUP',
  'WM_SYSCHAR',
  'WM_SYSDEADCHAR',
];

var keyHook = HHOOK(nullptr);

final Pointer<RECT> rectScroll = adaptiveCalloc<RECT>();
var hdc = HDC(nullptr);
var cxClient = 0;
var cyClient = 0;
var cxClientMax = 0;
var cyClientMax = 0;
var cLinesMax = 0;
var cLines = 0;
var cxChar = 0;
var cyChar = 0;

class Message {
  const Message(this.uMsg, this.wParam, this.lParam);

  final int uMsg;
  final int wParam;
  final int lParam;
}

final msgArr = <Message>[];

int lowlevelKeyboardHookProc(int code, int wParam, int lParam) {
  if (code == HC_ACTION) {
    // Windows controls this memory; don't deallocate it.
    final kbs = Pointer<KBDLLHOOKSTRUCT>.fromAddress(lParam);

    if ((kbs.ref.flags & LLKHF_INJECTED) == 0) {
      final input = adaptiveCalloc<INPUT>();
      input.ref.type = INPUT_KEYBOARD;
      input.ref.ki.dwFlags = wParam == WM_KEYDOWN
          ? const KEYBD_EVENT_FLAGS(0)
          : KEYEVENTF_KEYUP;

      // Demonstrate that we're successfully intercepting codes
      if (wParam == WM_KEYUP && kbs.ref.vkCode > 0 && kbs.ref.vkCode < 128) {
        stdout.write(String.fromCharCode(kbs.ref.vkCode));
      }

      // Swap 'A' with 'B' in output
      input.ref.ki.wVk = kbs.ref.vkCode == VK_A
          ? VK_B
          : VIRTUAL_KEY(kbs.ref.vkCode);
      SendInput(1, input, sizeOf<INPUT>());
      free(input);
      return -1;
    }
  }
  return CallNextHookEx(keyHook, code, WPARAM(wParam), LPARAM(lParam));
}

int mainWindowProc(Pointer hWnd, int uMsg, int wParam, int lParam) {
  final hwnd = HWND(hWnd);
  switch (uMsg) {
    case WM_CREATE:
    case WM_DISPLAYCHANGE:
      final textMetrics = adaptiveCalloc<TEXTMETRIC>();

      // Get maximum size of client area
      cxClientMax = GetSystemMetrics(SM_CXMAXIMIZED);
      cyClientMax = GetSystemMetrics(SM_CYMAXIMIZED);

      hdc = GetDC(hwnd);

      SelectObject(hdc, GetStockObject(SYSTEM_FIXED_FONT));
      GetTextMetrics(hdc, textMetrics);
      cxChar = textMetrics.ref.tmAveCharWidth;
      cyChar = textMetrics.ref.tmHeight;
      cLinesMax = cyClientMax ~/ cyChar;
      cLines = 0;

      ReleaseDC(hwnd, hdc);
      free(textMetrics);
      continue resize;

    resize:
    case WM_SIZE:
      if (uMsg == WM_SIZE) {
        cxClient = LOWORD(lParam);
        cyClient = HIWORD(lParam);
      }

      // Calculate scroll rectangle
      rectScroll.ref.left = 0;
      rectScroll.ref.right = cxClient;
      rectScroll.ref.top = cyChar;
      rectScroll.ref.bottom = cyChar * (cyClient ~/ cyChar);

      InvalidateRect(hwnd, null, true);
      return 0;

    case WM_KEYDOWN:
    case WM_KEYUP:
    case WM_CHAR:
    case WM_DEADCHAR:
    case WM_SYSKEYDOWN:
    case WM_SYSKEYUP:
    case WM_SYSCHAR:
    case WM_SYSDEADCHAR:
      msgArr.add(Message(uMsg, wParam, lParam));
      cLines = min(cLines + 1, cLinesMax);

      // Scroll up
      ScrollWindow(hwnd, 0, -cyChar, rectScroll, rectScroll);
      InvalidateRect(hwnd, null, true);

    case WM_PAINT:
      final ps = adaptiveCalloc<PAINTSTRUCT>();
      final hdc = BeginPaint(hwnd, ps);
      final pszTop = szTop.toPcwstr();
      final pszUnd = szUnd.toPcwstr();

      SelectObject(hdc, GetStockObject(SYSTEM_FIXED_FONT));
      SetBkMode(hdc, TRANSPARENT);
      TextOut(hdc, 0, 0, pszTop, szTop.length);
      TextOut(hdc, 0, 0, pszUnd, szUnd.length);
      free(pszTop);
      free(pszUnd);

      var index = 0;
      for (final msg in msgArr) {
        final iType =
            msg.uMsg == WM_CHAR ||
            msg.uMsg == WM_SYSCHAR ||
            msg.uMsg == WM_DEADCHAR ||
            msg.uMsg == WM_SYSDEADCHAR;

        final pszKeyName = wsalloc(256);
        GetKeyNameText(msg.lParam, pszKeyName, 256);
        final keyName = pszKeyName.toDartString();
        free(pszKeyName);

        final szBuffer =
            '${messages[msg.uMsg - WM_KEYDOWN].padRight(15)}'
            '${msg.wParam.toString().padRight(3)}'
            '${!iType ? keyName.padRight(3) : '   '}'
            '${String.fromCharCode(msg.wParam).padRight(6)} '
            '${LOWORD(msg.lParam).toHexString(8).substring(2)} '
            '${(HIWORD(msg.lParam) & 0xFF).toHexString(8).substring(2)}      '
            '${msg.lParam & 0x01000000 == 0x01000000 ? 'Yes' : 'No '}  '
            '${msg.lParam & 0x02000000 == 0x02000000 ? 'Yes' : 'No '}   '
            '${msg.lParam & 0x04000000 == 0x04000000 ? 'Down' : 'Up  '}  '
            '${msg.lParam & 0x08000000 == 0x08000000 ? 'Up  ' : 'Down'} ';
        final pszBuffer = szBuffer.toPcwstr();
        TextOut(
          hdc,
          0,
          ((cyClient ~/ cyChar) - 1 - index++) * cyChar,
          pszBuffer,
          szBuffer.length,
        );
        free(pszBuffer);
      }

      EndPaint(hwnd, ps);

      free(ps);
      return 0;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;
  }

  return DefWindowProc(hwnd, uMsg, WPARAM(wParam), LPARAM(lParam));
}

void main() => initApp(winMain);

void winMain(HINSTANCE hInstance, List<String> args, SHOW_WINDOW_CMD nShowCmd) {
  final lpfn = NativeCallable<HOOKPROC>.isolateLocal(
    lowlevelKeyboardHookProc,
    exceptionalReturn: 0,
  );

  keyHook = SetWindowsHookEx(
    WH_KEYBOARD_LL,
    lpfn.nativeFunction,
    null,
    0,
  ).value;

  final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
    mainWindowProc,
    exceptionalReturn: 0,
  );

  final className = 'Keyboard Hook WndClass'.toPcwstr();
  final windowCaption = 'Keyboard message viewer'.toPcwstr();

  final wc = adaptiveCalloc<WNDCLASS>();
  wc.ref
    ..style = CS_HREDRAW | CS_VREDRAW
    ..lpfnWndProc = lpfnWndProc.nativeFunction
    ..hInstance = hInstance
    ..lpszClassName = PWSTR(className)
    ..hIcon = LoadIcon(null, IDI_APPLICATION).value
    ..hCursor = LoadCursor(null, IDC_ARROW).value
    ..hbrBackground = HBRUSH(GetStockObject(WHITE_BRUSH));
  RegisterClass(wc);

  final hWnd = CreateWindow(
    className, // Window class
    windowCaption, // Window caption
    WS_OVERLAPPEDWINDOW, // Window style
    // Size and position
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    CW_USEDEFAULT,
    null, // Parent window
    null, // Menu
    hInstance, // Instance handle
    nullptr, // Additional application data
  ).value;
  free(className);
  free(windowCaption);
  ShowWindow(hWnd, nShowCmd);
  UpdateWindow(hWnd);

  final msg = adaptiveCalloc<MSG>();
  while (GetMessage(msg, null, 0, 0).value) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  lpfnWndProc.close();
  lpfn.close();
  free(msg);
  free(wc);
  free(rectScroll);
}
