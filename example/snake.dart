// snake.dart

// Simple sample game

import 'dart:ffi';
import 'dart:io';
import 'dart:math' show Random;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final hInstance = GetModuleHandle(nullptr);
bool isRunning = false;

final bitmapInfo = BITMAPINFO.allocate();
Pointer<Void> bitmapMemory = nullptr;
int bitmapWidth;
int bitmapHeight;
int bytesPerPixel = 4;
int gameoverRow = 0;
bool wipedown = true;

int hWnd;
final rng = Random();

const IDT_TIMER1 = 1;
const IDT_TIMER2 = 2;

int appleX = 0;
int appleY = 0;
int blocksPerWidth = 0;
int blocksPerHeight = 0;
int timerAmount = 100;

Point direction = Point();
List<Point> snakePoints = <Point>[];
List<List<int>> data = [<int>[]];

class Point {
  int x;
  int y;

  @override
  String toString() => '($x, $y)';

  Point([this.x = 0, this.y = 0]);
  factory Point.clone(Point orig) => Point(orig.x, orig.y);
}

void drawRect(int rectX, int rectY, int width, int height, int hexColor) {
  final red = (hexColor >> 16) & 0xFF;
  final green = (hexColor >> 8) & 0xFF;
  final blue = hexColor & 0xFF;

  final pitch = bitmapWidth * bytesPerPixel;

  final ptr = Pointer<Uint8>.fromAddress(bitmapMemory.address);
  var rowOffset = 0;
  for (var y = 0; y < bitmapHeight; ++y) {
    var pixelOffset = rowOffset;
    for (var x = 0; x < bitmapWidth; ++x) {
      if ((x >= rectX && y >= rectY) &&
          (x <= (rectX + width) && y <= (rectY + height))) {
        //blue
        ptr.elementAt(pixelOffset).value = blue;
        pixelOffset++;

        //green
        ptr.elementAt(pixelOffset).value = green;
        pixelOffset++;

        //red
        ptr.elementAt(pixelOffset).value = red;
        pixelOffset++;

        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;
      } else {
        // move along
        pixelOffset++;
        pixelOffset++;
        pixelOffset++;
        pixelOffset++;
      }
    }
    rowOffset += pitch;
  }
}

bool first = true;
int RandRange(int rangeMin, int rangeMax) {
  if (first) {
    first = false;
  }
  return rng.nextInt(rangeMax - rangeMin) + rangeMin;
}

void setApple() {
  // clear old apple just in case
  data[appleY][appleX] = 0;
  // get a random x y in our 2d vector coordinate space
  final x = RandRange(0, (bitmapWidth / 10).floor());
  final y = RandRange(0, (bitmapHeight / 10).floor());
  // set to 1 to represent apple
  if (data[y][x] == 0) {
    data[y][x] = 1;
    appleX = x;
    appleY = y;
  } else {
    setApple();
  }
}

void collectApple() {
  // play sound
  Beep(750, 100);
  // increase speed and increase snake
  final newp = Point();
  newp.x = snakePoints[snakePoints.length - 1].x;
  newp.y = snakePoints[snakePoints.length - 1].y;
  snakePoints.add(newp);

  KillTimer(hWnd, IDT_TIMER1);
  timerAmount -= 5;
  if (timerAmount <= 20) {
    timerAmount = 20;
  }
  SetTimer(hWnd, IDT_TIMER1, timerAmount, nullptr);

  // set new apple
  setApple();
}

void moveSnake() {
  // set initial position and length
  // unset old
  // set direction on new
  final lastblock = Point();
  lastblock.x = 0;
  lastblock.y = 0;
  final pointsSize = snakePoints.length;

  for (var i = 0; i < pointsSize; i++) {
    data[snakePoints[i].y][snakePoints[i].x] = 0;
  }

  // set
  for (var i = 0; i < pointsSize; i++) {
    //std::cout << snakePoints[i].x << ", " << snakePoints[i].y << std::endl;

    final tempX = snakePoints[i].x;
    final tempY = snakePoints[i].y;

    if (i == 0) {
      // snake head
      if (direction.x == 1) {
        // right
        snakePoints[i].x += 1;
        if (snakePoints[i].x >= (bitmapWidth / 10)) {
          snakePoints[i].x = 0;
        }
      } else if (direction.x == -1) {
        // left
        snakePoints[i].x -= 1;
        if (snakePoints[i].x < 0) {
          snakePoints[i].x = (bitmapWidth / 10).floor();
        }
      } else if (direction.y == 1) {
        // down
        snakePoints[i].y += 1;
        if (snakePoints[i].y >= (bitmapHeight / 10)) {
          snakePoints[i].y = 0;
        }
      } else if (direction.y == -1) {
        // up
        snakePoints[i].y -= 1;
        if (snakePoints[i].y < 0) {
          snakePoints[i].y = (bitmapHeight / 10).floor() - 1;
        }
      }
    } else {
      // snake body
      // move to where last block was ahead of this one
      snakePoints[i].x = lastblock.x;
      snakePoints[i].y = lastblock.y;
    }

    lastblock.x = tempX;
    lastblock.y = tempY;

    data[snakePoints[i].y][snakePoints[i].x] = 2;
  }
}

void setVectorToMemory() {
  var vecX = 0;
  var vecY = 0;

  final pitch = bitmapWidth * bytesPerPixel;

  final ptr = Pointer<Uint8>.fromAddress(bitmapMemory.address);

  var rowOffset = 0;
  for (var y = 0; y < bitmapHeight; ++y) {
    var pixelOffset = rowOffset;
    for (var x = 0; x < bitmapWidth; ++x) {
      if (data[vecY][vecX] == 1) {
        // Apple
        //blue
        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;

        //green
        ptr.elementAt(pixelOffset).value = 255;
        pixelOffset++;

        //red
        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;

        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;
      } else if (data[vecY][vecX] == 2) {
        // snake
        //blue
        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;

        //green
        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;

        //red
        ptr.elementAt(pixelOffset).value = 255;
        pixelOffset++;

        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;
      } else if (data[vecY][vecX] == 3) {
        // ???
        //blue
        ptr.elementAt(pixelOffset).value = 255;
        pixelOffset++;

        //green
        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;

        //red
        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;

        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;
      } else if (data[vecY][vecX] == 4) {
        //set to purple
        //blue
        ptr.elementAt(pixelOffset).value = 226;
        pixelOffset++;

        //green
        ptr.elementAt(pixelOffset).value = 43;
        pixelOffset++;

        //red
        ptr.elementAt(pixelOffset).value = 138;
        pixelOffset++;

        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;
      } else {
        //blue
        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;

        //green
        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;

        //red
        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;

        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;
        // move along
        //++Pixel;
        //++Pixel;
        //++Pixel;
        //++Pixel;
      }
      vecX = (x / 10).floor();
    }
    rowOffset += pitch;
    vecY = (y / 10).floor();
  }
}

void resetGame() {
  appleX = 0;
  appleY = 0;
  timerAmount = 100;

  // init snake direction
  direction.x = 1;
  direction.y = 0;

  // init snake
  snakePoints.clear();
  final p1 = Point();
  p1.x = 3;
  p1.y = 0;
  snakePoints.add(p1);

  final p2 = Point();
  p2.x = 2;
  p2.y = 0;
  snakePoints.add(p2);

  final p3 = Point();
  p3.x = 1;
  p3.y = 0;
  snakePoints.add(p3);

  final p4 = Point();
  p4.x = 0;
  p4.y = 0;
  snakePoints.add(p4);

  for (var i = 0; i < snakePoints.length; i++) {
    data[snakePoints[i].y][snakePoints[i].x] = 2;
  }

  setApple();
  setVectorToMemory();

  SetTimer(hWnd, IDT_TIMER1, timerAmount, nullptr);
}

void gameOver() {
  Beep(350, 300);
  KillTimer(hWnd, IDT_TIMER1);
  gameoverRow = 0;
  SetTimer(hWnd, IDT_TIMER2, 20, nullptr);
}

void gameover_update_complete() {
  KillTimer(hWnd, IDT_TIMER2);
  resetGame();
}

void gameover_update() {
  if (wipedown) {
    for (var x = 0; x <= data[gameoverRow].length; x++) {
      data[gameoverRow][x] = 4;
    }
    setVectorToMemory();
    gameoverRow++;
    if (gameoverRow >= blocksPerHeight - 1) {
      gameoverRow = blocksPerHeight - 1;
      wipedown = false;
    }
  } else {
    for (var x = data[gameoverRow].length; x > -1; x--) {
      data[gameoverRow][x] = 0;
    }
    setVectorToMemory();
    gameoverRow--;
    if (gameoverRow < 0) {
      gameover_update_complete();
      wipedown = true;
    }
  }
}

void init(int width, int height) {
  // we are initializing the bitmap memory buffer here
  // this can be called on resize too but for now stick to fixed window

  if (bitmapMemory != nullptr) {
    VirtualFree(bitmapMemory, 0, MEM_RELEASE);
  }

  bitmapWidth = width;
  bitmapHeight = height;

  bitmapInfo.biSize = sizeOf<BITMAPINFO>();
  bitmapInfo.biWidth = width;
  bitmapInfo.biHeight = height;
  bitmapInfo.biPlanes = 1;
  bitmapInfo.biBitCount = 32;
  bitmapInfo.biCompression = BI_RGB;
  bitmapInfo.biSizeImage = 0;
  bitmapInfo.biXPelsPerMeter = 0;
  bitmapInfo.biYPelsPerMeter = 0;
  bitmapInfo.biClrUsed = 0;
  bitmapInfo.biClrImportant = 0;

  final bitmapMemorySize = (width * height) * bytesPerPixel;
  bitmapMemory =
      VirtualAlloc(nullptr, bitmapMemorySize, MEM_COMMIT, PAGE_READWRITE);

  // init other variables here
  blocksPerWidth = (width / 10).floor();
  blocksPerHeight = (height / 10).floor();
  data = List.generate(
      blocksPerHeight, (e) => List.generate(blocksPerWidth, (e) => 0));

  resetGame();
}

void draw(int hdc, RECT rect, int x, int y, int width, int height) {
  // update memory state bitmap to window
  // this is a rect to rect copy
  final windowWidth = rect.right - rect.left;
  final windowHeight = rect.bottom - rect.top;
  StretchDIBits(
      hdc,
      //X, Y, Width, Height, X, Y, Width, Height,
      0,
      0,
      bitmapWidth,
      bitmapHeight,
      0,
      windowHeight + 1,
      windowWidth,
      -windowHeight,
      bitmapMemory,
      bitmapInfo.addressOf,
      DIB_RGB_COLORS,
      SRCCOPY);
}

void update() {
  // Update game simulation
  // set everything in our 10x10 grid and have that write to memory

  //move snake
  moveSnake();

  // is the snake head colliding with apple?
  if (snakePoints[0].x == appleX && snakePoints[0].y == appleY) {
    collectApple();
  }

  // check if snake is colliding with itself
  for (var i = 0; i < snakePoints.length; i++) {
    if (i > 0) {
      if (snakePoints[i].x == snakePoints[0].x &&
          snakePoints[i].y == snakePoints[0].y) {
        gameOver();
      }
    }
  }

  setVectorToMemory();
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
      final ps = PAINTSTRUCT.allocate();
      final dc = BeginPaint(hwnd, ps.addressOf);
      final X = ps.rcPaintL;
      final Y = ps.rcPaintT;
      final Width = ps.rcPaintR - ps.rcPaintL;
      final Height = ps.rcPaintB - ps.rcPaintT;

      final rect = RECT.allocate();
      GetClientRect(hwnd, rect.addressOf);
      update();
      draw(dc, rect, X, Y, Width, Height);
      EndPaint(hwnd, ps.addressOf);
      free(ps.addressOf);
      break;

    case WM_KEYDOWN:
      {
        switch (wParam) {
          case VK_LEFT:
            if (direction.x != 1) {
              direction.x = -1;
              direction.y = 0;
            }
            break;
          case VK_RIGHT:
            if (direction.x != -1) {
              direction.x = 1;
              direction.y = 0;
            }
            break;
          case VK_UP:
            if (direction.y != 1) {
              direction.x = 0;
              direction.y = -1;
            }
            break;
          case VK_DOWN:
            if (direction.y != -1) {
              direction.x = 0;
              direction.y = 1;
            }
            break;
          case VK_ESCAPE:
            isRunning = false;
            break;
        }
      }
      break;

    case WM_TIMER:
      {
        switch (wParam) {
          case IDT_TIMER1:
            // process the gameplay timer
            update();
            return 0;
          case IDT_TIMER2:
            // process the gameover timer
            gameover_update();
            return 0;
        }
      }
      break;

    default:
      result = DefWindowProc(hwnd, uMsg, wParam, lParam);
  }
  return result;
}

void main() {
  // Register the window class.

  final CLASS_NAME = TEXT('WinSnakeWindowClass');

  final wc = WNDCLASS.allocate();
  wc.lpfnWndProc = Pointer.fromFunction<WindowProc>(MainWindowProc, 0);
  wc.hInstance = hInstance;
  wc.lpszClassName = CLASS_NAME;
  RegisterClass(wc.addressOf);

  // Create the window.

  hWnd = CreateWindowEx(
      0, // Optional window styles.
      CLASS_NAME, // Window class
      TEXT('WinSnake'), // Window caption
      WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX | WS_VISIBLE,

      // Size and position
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      800,
      600,
      NULL, // Parent window
      NULL, // Menu
      hInstance, // Instance handle
      nullptr // Additional application data
      );

  if (hWnd == 0) {
    stderr.writeln('CreateWindowEx failed with error: ${GetLastError()}');
    exit(-1);
  } else {
    SetTimer(hWnd, IDT_TIMER1, timerAmount, nullptr);

    isRunning = true;
    while (isRunning) {
      // Run the message loop.

      final msg = MSG.allocate();
      while (PeekMessage(msg.addressOf, 0, 0, 0, PM_REMOVE) != 0) {
        if (msg.message == WM_QUIT) {
          isRunning = false;
        }
        TranslateMessage(msg.addressOf);
        DispatchMessage(msg.addressOf);
      }

      final dc = GetDC(hWnd);
      final rect = RECT.allocate();
      GetClientRect(hWnd, rect.addressOf);
      final windowWidth = rect.right - rect.left;
      final windowHeight = rect.bottom - rect.top;
      draw(dc, rect, 0, 0, windowWidth, windowHeight);
      ReleaseDC(hWnd, dc);
    }
  }
}
