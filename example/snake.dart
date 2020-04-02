// snake.dart

// The classic Snake game, as popularized by the Nokia phones of the 1990s.

// Original C implementation by David Jones, available here:
//     https://github.com/davidejones/winsnake

// NB THe code isn't yet idiomatic Dart, but it demonstrates some
// useful concepts, including pointer arithmetic and use of virtual
// memory in Win32.

import 'dart:ffi';
import 'dart:math' show Random;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// Win32-specific vars
final hInstance = GetModuleHandle(nullptr);
int hWnd;
const IDT_TIMER1 = 1;
const IDT_TIMER2 = 2;

final rng = Random();

final bitmapInfo = BITMAPINFO.allocate();
Pointer<Void> bitmapMemory = nullptr;
int bitmapWidth;
int bitmapHeight;
const bytesPerPixel = 4;

bool isRunning = false;
int gameOverRow = 0;
bool wipeDown = true;

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

/// Fill rectangle with supplied 24-bit color in RGB format
void drawRect(int rectX, int rectY, int width, int height, int color) {
  final red = (color >> 16) & 0xFF;
  final green = (color >> 8) & 0xFF;
  final blue = color & 0xFF;

  final pitch = bitmapWidth * bytesPerPixel;

  final ptr = Pointer<Uint8>.fromAddress(bitmapMemory.address);
  var rowOffset = 0;

  for (var y = 0; y < bitmapHeight; y++) {
    var pixelOffset = rowOffset;

    for (var x = 0; x < bitmapWidth; x++) {
      if ((x >= rectX && y >= rectY) &&
          (x <= (rectX + width) && y <= (rectY + height))) {
        ptr.elementAt(pixelOffset).value = blue;
        pixelOffset++;

        ptr.elementAt(pixelOffset).value = green;
        pixelOffset++;

        ptr.elementAt(pixelOffset).value = red;
        pixelOffset++;

        ptr.elementAt(pixelOffset).value = 0;
        pixelOffset++;
      } else {
        // move along
        pixelOffset += bytesPerPixel;
      }
    }
    rowOffset += pitch;
  }
}

// Return a random integer from (rangeMin <= n < rangeMax)
int randRange(int rangeMin, int rangeMax) =>
    rng.nextInt(rangeMax - rangeMin) + rangeMin;

// Position an apple at a random location on the gameboard
void setApple() {
  // clear old apple just in case
  data[appleY][appleX] = 0;

  // get a random x, y coordinate on the gameboard
  final x = randRange(0, (bitmapWidth / 10).floor());
  final y = randRange(0, (bitmapHeight / 10).floor());

  // set to 1 to represent apple
  if (data[y][x] == 0) {
    data[y][x] = 1;
    appleX = x;
    appleY = y;
  } else {
    // something else already here, find a new location
    setApple();
  }
}

void collectApple() {
  // play sound
  Beep(750, 100);
  // increase speed and increase snake
  final newPoint = Point();
  newPoint.x = snakePoints[snakePoints.length - 1].x;
  newPoint.y = snakePoints[snakePoints.length - 1].y;
  snakePoints.add(newPoint);

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
  final lastBlock = Point();
  lastBlock.x = 0;
  lastBlock.y = 0;

  for (var i = 0; i < snakePoints.length; i++) {
    data[snakePoints[i].y][snakePoints[i].x] = 0;
  }

  // set
  for (var i = 0; i < snakePoints.length; i++) {
    //std::cout << snakePoints[i].x << ", " << snakePoints[i].y << std::endl;

    final tempX = snakePoints[i].x;
    final tempY = snakePoints[i].y;

    if (i == 0) {
      // snake head
      if (direction.x == 1) {
        // right
        snakePoints[i].x += 1;
        if (snakePoints[i].x >= (bitmapWidth / 10).floor()) {
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
        if (snakePoints[i].y >= (bitmapHeight / 10).floor()) {
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
      snakePoints[i].x = lastBlock.x;
      snakePoints[i].y = lastBlock.y;
    }

    lastBlock.x = tempX;
    lastBlock.y = tempY;

    data[snakePoints[i].y][snakePoints[i].x] = 2;
  }
}

void setVectorToMemory() {
  var vecX = 0;
  var vecY = 0;

  final pitch = bitmapWidth * bytesPerPixel;

  final ptr = Pointer<Uint8>.fromAddress(bitmapMemory.address);

  var rowOffset = 0;
  for (var y = 0; y < bitmapHeight; y++) {
    var pixelOffset = rowOffset;
    for (var x = 0; x < bitmapWidth; x++) {
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
  gameOverRow = 0;
  SetTimer(hWnd, IDT_TIMER2, 20, nullptr);
}

void gameOverUpdateComplete() {
  KillTimer(hWnd, IDT_TIMER2);
  resetGame();
}

void gameOverUpdate() {
  if (wipeDown) {
    for (var x = 0; x <= data[gameOverRow].length; x++) {
      data[gameOverRow][x] = 4;
    }
    setVectorToMemory();
    gameOverRow++;
    if (gameOverRow >= blocksPerHeight - 1) {
      gameOverRow = blocksPerHeight - 1;
      wipeDown = false;
    }
  } else {
    for (var x = data[gameOverRow].length; x > -1; x--) {
      data[gameOverRow][x] = 0;
    }
    setVectorToMemory();
    gameOverRow--;
    if (gameOverRow < 0) {
      gameOverUpdateComplete();
      wipeDown = true;
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
  data = List.filled(blocksPerHeight, List.filled(blocksPerWidth, 0));

  resetGame();
}

void draw(int hdc, RECT rect, int x, int y, int width, int height) {
  // update memory state bitmap to window
  // this is a rect to rect copy
  final windowWidth = rect.right - rect.left;
  final windowHeight = rect.bottom - rect.top;

  StretchDIBits(
      hdc, // destination device context
      0, // x-coordinate of dest rectangle origin
      0, // y-coordinate of dest rectangle origin
      bitmapWidth, // destination width in logical units
      bitmapHeight, // destination height in logical units
      0, // x-coordinate of source rectangle origin
      windowHeight + 1, // y-coordinate of source rectangle origin
      windowWidth, // source width in pixels
      -windowHeight, // source height in pixels
      bitmapMemory, // pointer to the image bits
      bitmapInfo.addressOf, // pointer to DIB
      DIB_RGB_COLORS, // color table is literal RGB values
      SRCCOPY // copy directly to dest rectangle
      );
}

/// Updates game simulation (one tick of the game loop)
void gameTick() {
  // set everything in our 10x10 grid

  // move snake
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

  // now write the grid to memory
  setVectorToMemory();
}

int MainWindowProc(int hwnd, int uMsg, int wParam, int lParam) {
  var result = 0;

  switch (uMsg) {
    case WM_SIZE:
      final rect = RECT.allocate();
      GetClientRect(hwnd, rect.addressOf);
      final width = rect.right - rect.left;
      final height = rect.bottom - rect.top;

      init(width, height);
      free(rect.addressOf);
      break;

    case WM_CLOSE:
      isRunning = false;
      break;

    case WM_DESTROY:
      KillTimer(hwnd, IDT_TIMER1);
      isRunning = false;
      break;

    case WM_PAINT:
      final ps = PAINTSTRUCT.allocate();
      final dc = BeginPaint(hwnd, ps.addressOf);
      final x = ps.rcPaintL;
      final y = ps.rcPaintT;
      final width = ps.rcPaintR - ps.rcPaintL;
      final height = ps.rcPaintB - ps.rcPaintT;

      final rect = RECT.allocate();
      GetClientRect(hwnd, rect.addressOf);
      gameTick();
      draw(dc, rect, x, y, width, height);
      EndPaint(hwnd, ps.addressOf);

      free(rect.addressOf);
      free(ps.addressOf);
      break;

    case WM_KEYDOWN:
      {
        switch (wParam) {
          case VK_LEFT:
            print('left');
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
            print('down');
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
            gameTick();
            return 0;
          case IDT_TIMER2:
            // process the gameover timer
            gameOverUpdate();
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
  if (RegisterClass(wc.addressOf) != 0) {
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

    if (hWnd != 0) {
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
        free(msg.addressOf);

        final dc = GetDC(hWnd);
        final rect = RECT.allocate();
        GetClientRect(hWnd, rect.addressOf);
        final windowWidth = rect.right - rect.left;
        final windowHeight = rect.bottom - rect.top;
        draw(dc, rect, 0, 0, windowWidth, windowHeight);
        ReleaseDC(hWnd, dc);
      }
    } else {
      MessageBox(0, TEXT('Failed to create window'), TEXT('Error'),
          MB_ICONEXCLAMATION | MB_OK);
    }
  } else {
    MessageBox(0, TEXT('Failed to create window'), TEXT('Error'),
        MB_ICONEXCLAMATION | MB_OK);
  }
}
