import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:win32/win32.dart';

import 'tools.dart';

part 'native_window.dart';

const kWindowClassName = 'FLUTTER_RUNNER_WIN32_WINDOW';

final _windows = <int, NativeWindow>{};
final _winCtorStack = <int, NativeWindow>{};

// ignore: avoid_classes_with_only_static_members
class NativeApp {
  static final hInst = GetModuleHandle(nullptr);

  static void run() {
    final msg = calloc<MSG>();
    while (GetMessage(msg, NULL, 0, 0) != 0) {
      TranslateMessage(msg);
      DispatchMessage(msg);
    }
    free(msg);
  }
}

int _wndProc(int hWnd, int uMsg, int wParam, int lParam) {
  final window = _windows[hWnd];
  if (window != null) {
    final windowResult = window.wndProc(hWnd, uMsg, wParam, lParam);
    if (windowResult != 0) {
      return windowResult;
    }
  }

  switch (uMsg) {
    case WM_CREATE:
      final createInfo = Pointer<CREATESTRUCT>.fromAddress(lParam).ref;
      final createdClassName = createInfo.lpszClass.toDartString();
      final nativeWindowAddress = createInfo.lpCreateParams.cast<Int64>();
      try {
        if (createdClassName == kWindowClassName) {
          if (_winCtorStack.containsKey(nativeWindowAddress.value)) {
            final nativeWindow = _winCtorStack[nativeWindowAddress.value];
            _windows[hWnd] = nativeWindow!;
            nativeWindow.onCreate();
            return 0;
          }
        }
      } finally {
        free(nativeWindowAddress);
      }
      break;

    case WM_DESTROY:
      if (_windows.isEmpty) {
        PostQuitMessage(0);
      }
      return 0;
  }

  return DefWindowProc(hWnd, uMsg, wParam, lParam);
}

int _createWindowHidden(int nativeWindowAddress) {
  final pNativeWindowAddress = calloc<Int64>()..value = nativeWindowAddress;
  final pWindowClassName = _windowClassName.toNativeUtf16();
  final pTitle = 'Window'.toNativeUtf16();
  try {
    final hWnd = CreateWindowEx(
        0,
        pWindowClassName,
        pTitle,
        WS_OVERLAPPEDWINDOW,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        NULL,
        NULL,
        NativeApp.hInst,
        pNativeWindowAddress);

    if (hWnd == 0) {
      throw 'Window create erorr';
    }

    return hWnd;
  } finally {
    free(pTitle);
    free(pWindowClassName);
  }
}

String __windowClassName = '';

String get _windowClassName {
  if (__windowClassName.isEmpty) {
    __windowClassName = kWindowClassName;
    _registryWinClass();
  }
  return __windowClassName;
}

void _registryWinClass() {
  final pWindowClass = __windowClassName.toNativeUtf16();
  final pWndClass = calloc<WNDCLASS>();

  try {
    pWndClass.ref
      ..style = CS_HREDRAW | CS_VREDRAW
      ..lpfnWndProc = Pointer.fromFunction<WindowProc>(_wndProc, 0)
      ..hInstance = NativeApp.hInst
      //..hbrBackground = LoadResource(hInst, WHITE_BRUSH)
      //..hIcon = LoadIcon (hInst , 1)
      ..hCursor = LoadCursor(NULL, IDC_ARROW)
      ..lpszClassName = pWindowClass;
    RegisterClass(pWndClass);
  } finally {
    free(pWindowClass);
    free(pWndClass);
  }
}
