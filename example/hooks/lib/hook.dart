import 'dart:ffi';

import 'package:win32/win32.dart';

int hHook = NULL;

int callWndProc(int nCode, int wParam, int lParam) {
  print('hook called');
  if (nCode == HC_ACTION) {
    print('Another message');
    final msg = Pointer.fromAddress(lParam).cast<MSG>().ref;
    if (msg.message == WM_SIZE && msg.wParam == SIZE_MAXIMIZED) {
      print('Window maximized.');
    }
  }
  return CallNextHookEx(NULL, nCode, wParam, lParam);
}

bool setHook() {
  final hookProc = Pointer.fromFunction<CallWndProc>(callWndProc, 0);
  final threadID = GetCurrentThreadId();

  hHook = SetWindowsHookEx(WH_CBT, hookProc, NULL, 0);
  print('hook set');

  return hHook != NULL;
}

bool unregisterHook() {
  final result = UnhookWindowsHookEx(hHook);

  return result != FALSE;
}
