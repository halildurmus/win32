// ignore_for_file: constant_identifier_names

import 'dart:ffi';
import 'dart:io';

import 'package:win32/win32.dart';

final int hInst = GetModuleHandle(null);

const int EVENT_QUIT = WM_APP + 2;
const int EVENT_TRAY_NOTIFY = WM_APP + 1;

typedef LocalWndProc =
    bool Function(int hWnd, int uMsg, int wParam, int lParam);

final lpfnWndProc = NativeCallable<WNDPROC>.isolateLocal(
  _appWndProc,
  exceptionalReturn: 0,
);

void exec() {
  final msg = loggingCalloc<MSG>();
  while (GetMessage(msg, null, 0, 0)) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }
  free(msg);
}

int loadDartIcon() {
  final dartIconPath = _thisPath('dart.ico');
  final name = w(dartIconPath);
  return LoadImage(
    null,
    name.ptr,
    IMAGE_ICON,
    0,
    0,
    LR_LOADFROMFILE | LR_DEFAULTSIZE | LR_SHARED,
  );
}

final _localWndProcs = <LocalWndProc>[];

/// Use in iterateLocalWndProcs
void registerWndProc(LocalWndProc proc) => _localWndProcs.add(proc);

void deregisterWndProc(LocalWndProc proc) {
  _localWndProcs.remove(proc);
}

int _appWndProc(int hWnd, int uMsg, int wParam, int lParam) {
  if (iterateLocalWndProcs(hWnd, uMsg, wParam, lParam)) {
    return TRUE;
  }

  switch (uMsg) {
    case WM_CLOSE:
      ShowWindow(hWnd, SW_HIDE);
      return TRUE;
  }
  return DefWindowProc(hWnd, uMsg, wParam, lParam);
}

bool iterateLocalWndProcs(int hWnd, int uMsg, int wParam, int lParam) {
  for (final proc in _localWndProcs) {
    final isProcProcessed = proc(hWnd, uMsg, wParam, lParam);
    if (isProcProcessed) {
      return true;
    }
  }
  return false;
}

String _thisPath(String fileName) =>
    Platform.script.toFilePath().replaceFirst(RegExp(r'[^\\]+$'), fileName);
