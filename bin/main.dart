import 'dart:ffi';
import 'package:ffi/ffi.dart' as ffi;
import 'package:win32/win32.dart';

// int WINAPI wWinMain(HINSTANCE hInstance, HINSTANCE, PWSTR pCmdLine, int nCmdShow)
// {
//     // Register the window class.
//     const wchar_t CLASS_NAME[]  = L"Sample Window Class";

//     WNDCLASS wc = { };

//     wc.lpfnWndProc   = WindowProc;
//     wc.hInstance     = hInstance;
//     wc.lpszClassName = CLASS_NAME;

//     RegisterClass(&wc);

//     // Create the window.

//     HWND hwnd = CreateWindowEx(
//         0,                              // Optional window styles.
//         CLASS_NAME,                     // Window class
//         L"Learn to Program Windows",    // Window text
//         WS_OVERLAPPEDWINDOW,            // Window style

//         // Size and position
//         CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,

//         NULL,       // Parent window
//         NULL,       // Menu
//         hInstance,  // Instance handle
//         NULL        // Additional application data
//         );

//     if (hwnd == NULL)
//     {
//         return 0;
//     }

//     ShowWindow(hwnd, nCmdShow);

//     // Run the message loop.

//     MSG msg = { };
//     while (GetMessage(&msg, NULL, 0, 0))
//     {
//         TranslateMessage(&msg);
//         DispatchMessage(&msg);
//     }

//     return 0;
// }

// LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
// {
//     switch (uMsg)
//     {
//     case WM_DESTROY:
//         PostQuitMessage(0);
//         return 0;

//     case WM_PAINT:
//         {
//             PAINTSTRUCT ps;
//             HDC hdc = BeginPaint(hwnd, &ps);

//             FillRect(hdc, &ps.rcPaint, (HBRUSH) (COLOR_WINDOW+1));

//             EndPaint(hwnd, &ps);
//         }
//         return 0;

//     }
//     return DefWindowProc(hwnd, uMsg, wParam, lParam);
// }
final win32 = Win32();

int WindowProc(int hwnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_DESTROY:
      win32.PostQuitMessage(0);
      return 0;

    case WM_PAINT:
      var ps = ffi.allocate<PAINTSTRUCT>();
      var hdc = win32.BeginPaint(hwnd, ps);
      win32.FillRect(
          hdc, Pointer.fromAddress(ps.address + 6), COLOR_WINDOW + 1);
      win32.EndPaint(hwnd, ps);
      return 0;
  }
  return win32.DefWindowProc(hwnd, uMsg, wParam, lParam);
}

int main() {
  var hInstance = win32.GetModuleHandle(Pointer.fromAddress(0));
  print('hInstance: ${hInstance.toRadixString(16)}');

  // Register the window class.

  var CLASS_NAME = ffi.Utf16.toUtf16('Sample Window Class');
  var wcPtr = ffi.allocate<WNDCLASS>();
  var wc = wcPtr.ref;
  wc.lpfnWndProc = Pointer.fromFunction<windowProcNative>(WindowProc, 0);
  wc.hInstance = hInstance;
  wc.lpszClassName = CLASS_NAME;

  var atom = win32.RegisterClass(wcPtr);
  if (atom == 0) {
    print('RegisterClass failed with error: ${win32.GetLastError()}');
    return -1;
  }

  // Create the window.

  var hWnd = win32.CreateWindowEx(
      0, // Optional window styles.
      CLASS_NAME, // Window class
      ffi.Utf16.toUtf16('Learn to Program Windows'), // Window text
      WS_OVERLAPPEDWINDOW, // Window style

      // Size and position
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      NULL, // Parent window
      NULL, // Menu
      hInstance, // Instance handle
      nullptr // Additional application data
      );
  if (hWnd == 0) {
    print('CreateWindowEx failed with error: ${win32.GetLastError()}');
  }

  print('hWnd: $hWnd');

  win32.ShowWindow(hWnd, SW_SHOWNORMAL);

  var msg = ffi.allocate<MSG>();
  while (win32.GetMessage(msg, NULL, 0, 0) != 0) {
    win32.TranslateMessage(msg);
    win32.DispatchMessage(msg);
  }

  ffi.free(wcPtr);
  ffi.free(CLASS_NAME);

  return 0;
}
