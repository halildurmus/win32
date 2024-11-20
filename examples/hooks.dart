// Demonstrates using hooks.

// Installs a low-level keyboard hook that changes every 'A' keypress to 'B'.
// Also adds a window that shows keystrokes entered.

// ignore_for_file: constant_identifier_names

import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'package:win32/win32.dart';

const LLKHF_INJECTED = 0x00000010;

const szTop = 'Message        Key          Char       Scan Ext ALT Prev Tran';
const szUnd = '_______        ___          ____       ____ ___ ___ ____ ____';
final Pcwstr pszTop = w(szTop);
final Pcwstr pszUnd = w(szUnd);

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

int keyHook = NULL;

final Pointer<RECT> rectScroll = loggingCalloc<RECT>();
int hdc = NULL;
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
final Pcwstr className = w('Keyboard Hook WndClass');
final Pcwstr windowCaption = w('Keyboard message viewer');

int lowlevelKeyboardHookProc(int code, int wParam, int lParam) {
  if (code == HC_ACTION) {
    // Windows controls this memory; don't deallocate it.
    final kbs = Pointer<KBDLLHOOKSTRUCT>.fromAddress(lParam);

    if ((kbs.ref.flags & LLKHF_INJECTED) == 0) {
      final input = loggingCalloc<INPUT>();
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
  return CallNextHookEx(keyHook, code, wParam, lParam);
}

int mainWindowProc(int hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_CREATE:
    case WM_DISPLAYCHANGE:
      final textMetrics = loggingCalloc<TEXTMETRIC>();

      // Get maximum size of client area
      cxClientMax = GetSystemMetrics(SM_CXMAXIMIZED);
      cyClientMax = GetSystemMetrics(SM_CYMAXIMIZED);

      hdc = GetDC(hWnd);

      SelectObject(hdc, GetStockObject(SYSTEM_FIXED_FONT));
      GetTextMetrics(hdc, textMetrics);
      cxChar = textMetrics.ref.tmAveCharWidth;
      cyChar = textMetrics.ref.tmHeight;
      cLinesMax = cyClientMax ~/ cyChar;
      cLines = 0;

      ReleaseDC(hWnd, hdc);
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

      InvalidateRect(hWnd, null, true);
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
      ScrollWindow(hWnd, 0, -cyChar, rectScroll, rectScroll);
      InvalidateRect(hWnd, null, true);

    case WM_PAINT:
      final ps = loggingCalloc<PAINTSTRUCT>();
      final hdc = BeginPaint(hWnd, ps);

      SelectObject(hdc, GetStockObject(SYSTEM_FIXED_FONT));
      SetBkMode(hdc, TRANSPARENT);
      TextOut(hdc, 0, 0, pszTop.ptr, szTop.length);
      TextOut(hdc, 0, 0, pszUnd.ptr, szUnd.length);

      var index = 0;
      for (final msg in msgArr) {
        final iType =
            msg.uMsg == WM_CHAR ||
            msg.uMsg == WM_SYSCHAR ||
            msg.uMsg == WM_DEADCHAR ||
            msg.uMsg == WM_SYSDEADCHAR;

        final pszKeyName = Pwstr.allocate(256);
        GetKeyNameText(msg.lParam, pszKeyName.ptr, 256);
        final keyName = pszKeyName.toDartString();

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
        final pszBuffer = w(szBuffer);
        TextOut(
          hdc,
          0,
          ((cyClient ~/ cyChar) - 1 - index++) * cyChar,
          pszBuffer.ptr,
          szBuffer.length,
        );
      }

      EndPaint(hWnd, ps);

      free(ps);

      return 0;

    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;
  }

  return DefWindowProc(hWnd, uMsg, wParam, lParam);
}

void main() => initApp(winMain);

void winMain(int hInstance, List<String> args, SHOW_WINDOW_CMD nShowCmd) {
  final lpfn = NativeCallable<HOOKPROC>.isolateLocal(
    lowlevelKeyboardHookProc,
    exceptionalReturn: 0,
  );

  keyHook = SetWindowsHookEx(WH_KEYBOARD_LL, lpfn.nativeFunction, null, 0);

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
    ..hIcon = LoadIcon(null, IDI_APPLICATION)
    ..hCursor = LoadCursor(null, IDC_ARROW)
    ..hbrBackground = GetStockObject(WHITE_BRUSH);
  RegisterClass(wc);

  final hWnd = CreateWindow(
    className.ptr, // Window class
    windowCaption.ptr, // Window caption
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
  );

  ShowWindow(hWnd, nShowCmd);
  UpdateWindow(hWnd);

  final msg = loggingCalloc<MSG>();
  while (GetMessage(msg, null, 0, 0)) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  lpfnWndProc.close();
  lpfn.close();
  free(msg);
  free(wc);
  free(rectScroll);
}
