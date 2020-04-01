@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

int MainWindowProc(int hwnd, int uMsg, int wParam, int lParam) =>
    DefWindowProc(hwnd, uMsg, wParam, lParam);

void main() {
  test('GetModuleHandle()', () {
    final outputHandle = GetModuleHandle(nullptr);
    expect(outputHandle, isNot(0));
  });
  test('RegisterClass()', () {
    final hInstance = GetModuleHandle(nullptr);

    final CLASS_NAME = TEXT('CLASS_NAME');

    final wc = WNDCLASS.allocate();
    wc.style = CS_HREDRAW | CS_VREDRAW;
    wc.lpfnWndProc = Pointer.fromFunction<WindowProc>(MainWindowProc, 0);
    wc.hInstance = hInstance;
    wc.lpszClassName = CLASS_NAME;
    wc.hCursor = LoadCursor(NULL, IDC_ARROW);
    wc.hbrBackground = GetStockObject(WHITE_BRUSH);

    final result = RegisterClass(wc.addressOf);

    expect(result, isNot(0));
  });
}
