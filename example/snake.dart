// snake.dart

// Simple sample game

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final hInstance = GetModuleHandle(nullptr);
bool isRunning = false;

final BitmapInfo = BITMAPINFO.allocate();

void init(int Width, int Height) {
  // we are initializing the bitmap memory buffer here
  // this can be called on resize too but for now stick to fixed window

  // if(BitmapMemory) {
  //     VirtualFree(BitmapMemory, 0, MEM_RELEASE);
  // }

  // BitmapWidth = Width;
  // BitmapHeight = Height;

  BitmapInfo.biSize = sizeOf<BITMAPINFO>();
  BitmapInfo.biWidth = Width;
  BitmapInfo.biHeight = Height;
  BitmapInfo.biPlanes = 1;
  BitmapInfo.biBitCount = 32;
  BitmapInfo.biCompression = BI_RGB;
  BitmapInfo.biSizeImage = 0;
  BitmapInfo.biXPelsPerMeter = 0;
  BitmapInfo.biYPelsPerMeter = 0;
  BitmapInfo.biClrUsed = 0;
  BitmapInfo.biClrImportant = 0;

  // int BitmapMemorySize = (Width*Height)*BytesPerPixel;
  // BitmapMemory = VirtualAlloc(0, BitmapMemorySize, MEM_COMMIT, PAGE_READWRITE);

  // init other variables here
  // blocksperwidth = Width / 10;
  // blocksperheight = Height / 10;
  // data.resize(blocksperheight, std::vector<int>(blocksperwidth, 0));

  // resetGame();
}

int MainWindowProc(int hwnd, int uMsg, int wParam, int lParam) {
  var result = 0;

  switch (uMsg) {
    case WM_SIZE:
      final ClientRect = RECT.allocate();
      GetClientRect(hwnd, ClientRect.addressOf);
      final Width = ClientRect.right - ClientRect.left;
      final Height = ClientRect.bottom - ClientRect.top;
      init(Width, Height);
      break;

    case WM_DESTROY:
      PostQuitMessage(0);
      break;

    case WM_GETMINMAXINFO:
      final info = Pointer<MINMAXINFO>.fromAddress(lParam).ref;
      info.ptMinTrackSizeX = 400;
      info.ptMinTrackSizeY = 400;
      break;

    case WM_PAINT:
      final Paint = PAINTSTRUCT.allocate();
      final DeviceContext = BeginPaint(hwnd, Paint.addressOf);
      final X = Paint.rcPaintL;
      final Y = Paint.rcPaintT;
      final Width = Paint.rcPaintR - Paint.rcPaintL;
      final Height = Paint.rcPaintB - Paint.rcPaintT;

      final ClientRect = RECT.allocate();
      GetClientRect(hwnd, ClientRect.addressOf);
      // update();
      // draw(DeviceContext, ClientRect.addressOf, X, Y, Width, Height);
      EndPaint(hwnd, Paint.addressOf);
      break;

    default:
      result = DefWindowProc(hwnd, uMsg, wParam, lParam);
  }
  return result;
}

void main() {
  // Register the window class.

  final CLASS_NAME = TEXT('Simple Paint Sample');

  final wc = WNDCLASS.allocate();
  wc.style = CS_HREDRAW | CS_VREDRAW;
  wc.lpfnWndProc = Pointer.fromFunction<WindowProc>(MainWindowProc, 0);
  wc.hInstance = hInstance;
  wc.lpszClassName = CLASS_NAME;
  wc.hCursor = LoadCursor(NULL, IDC_ARROW);
  wc.hbrBackground = GetStockObject(WHITE_BRUSH);
  RegisterClass(wc.addressOf);

  // Create the window.

  final hWnd = CreateWindowEx(
      0, // Optional window styles.
      CLASS_NAME, // Window class
      CLASS_NAME, // Window caption
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
