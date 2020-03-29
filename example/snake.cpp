#include <windows.h>
#include <cstdint>
#include <ctime>
#include <iostream>
#include <vector>
#include <cmath>

static bool Running;
static BITMAPINFO BitmapInfo;
static void *BitmapMemory;
static int BitmapWidth;
static int BitmapHeight;
static int BytesPerPixel = 4;
static HWND WindowHandle;
static int gameover_row = 0;
static bool wipedown = true;
struct Point
{
    int x;
    int y;
};

int applex = 0;
int appley = 0;
std::vector<std::vector<int>> data;
Point direction = Point();
std::vector<Point> snakepoints;
int blocksperwidth = 0;
int blocksperheight = 0;
int timer_amount = 100;
#define IDT_TIMER1 1
#define IDT_TIMER2 2

void drawRect(int rectx, int recty, int width, int height, int hexColor)
{
    unsigned char R = static_cast<unsigned char>(((hexColor >> 16) & 0xFF));
    unsigned char G = static_cast<unsigned char>(((hexColor >> 8) & 0xFF));
    unsigned char B = static_cast<unsigned char>((hexColor & 0xFF));
    int Pitch = BitmapWidth * BytesPerPixel;
    uint8_t *Row = (uint8_t *)BitmapMemory;
    for (int Y = 0; Y < BitmapHeight; ++Y)
    {
        uint8_t *Pixel = (uint8_t *)Row;
        for (int X = 0; X < BitmapWidth; ++X)
        {
            if ((X >= rectx && Y >= recty) && (X <= (rectx + width) && Y <= (recty + height)))
            {
                //blue
                *Pixel = B;
                ++Pixel;

                //green
                *Pixel = G;
                ++Pixel;

                //red
                *Pixel = R;
                ++Pixel;

                *Pixel = 0;
                ++Pixel;
            }
            else
            {
                // move along
                ++Pixel;
                ++Pixel;
                ++Pixel;
                ++Pixel;
            }
        }
        Row += Pitch;
    }
}

int RandRange(int range_min, int range_max)
{
    static bool first = true;
    if (first)
    {
        srand(time(NULL)); //seeding for the first time only!
        first = false;
    }
    return range_min + rand() % (range_max - range_min);
}

void setApple()
{
    // clear old apple just in case
    data[appley][applex] = 0;
    // get a random x y in our 2d vector coordinate space
    int x = std::floor(RandRange(0, BitmapWidth / 10));
    int y = std::floor(RandRange(0, BitmapHeight / 10));
    // set to 1 to represent apple
    if (data[y][x] == 0)
    {
        data[y][x] = 1;
        applex = x;
        appley = y;
    }
    else
    {
        setApple();
    }
}

void collectApple()
{
    // play sound
    Beep(750, 100);
    // increase speed and increase snake
    Point newp = Point();
    newp.x = snakepoints[snakepoints.size() - 1].x;
    newp.y = snakepoints[snakepoints.size() - 1].y;
    snakepoints.push_back(newp);

    KillTimer(WindowHandle, IDT_TIMER1);
    timer_amount -= 5;
    if (timer_amount <= 20)
    {
        timer_amount = 20;
    }
    SetTimer(WindowHandle, IDT_TIMER1, timer_amount, NULL);

    // set new apple
    setApple();
}

void moveSnake()
{
    // set initial position and length
    // unset old
    // set direction on new
    Point lastblock = Point();
    lastblock.x = 0;
    lastblock.y = 0;
    int pointssize = snakepoints.size();

    for (int i = 0; i < pointssize; i++)
    {
        data[snakepoints[i].y][snakepoints[i].x] = 0;
    }

    // set
    int tempx = 0;
    int tempy = 0;
    for (int i = 0; i < pointssize; i++)
    {
        //std::cout << snakepoints[i].x << ", " << snakepoints[i].y << std::endl;

        tempx = snakepoints[i].x;
        tempy = snakepoints[i].y;

        if (i == 0)
        {
            // snake head
            if (direction.x == 1)
            {
                // right
                snakepoints[i].x += 1;
                if (snakepoints[i].x >= (BitmapWidth / 10))
                {
                    snakepoints[i].x = 0;
                }
            }
            else if (direction.x == -1)
            {
                // left
                snakepoints[i].x -= 1;
                if (snakepoints[i].x < 0)
                {
                    snakepoints[i].x = (BitmapWidth / 10);
                }
            }
            else if (direction.y == 1)
            {
                // down
                snakepoints[i].y += 1;
                if (snakepoints[i].y >= (BitmapHeight / 10))
                {
                    snakepoints[i].y = 0;
                }
            }
            else if (direction.y == -1)
            {
                // up
                snakepoints[i].y -= 1;
                if (snakepoints[i].y < 0)
                {
                    snakepoints[i].y = (BitmapHeight / 10) - 1;
                }
            }
        }
        else
        {
            // snake body
            // move to where last block was ahead of this one
            snakepoints[i].x = lastblock.x;
            snakepoints[i].y = lastblock.y;
        }

        lastblock.x = tempx;
        lastblock.y = tempy;

        data[snakepoints[i].y][snakepoints[i].x] = 2;
    }
}

void setVectorToMemory()
{
    int vecx = 0;
    int vecy = 0;
    int Pitch = BitmapWidth * BytesPerPixel;
    uint8_t *Row = (uint8_t *)BitmapMemory;
    for (int Y = 0; Y < BitmapHeight; ++Y)
    {
        uint8_t *Pixel = (uint8_t *)Row;
        for (int X = 0; X < BitmapWidth; ++X)
        {
            if (data[vecy][vecx] == 1)
            {
                // Apple
                //blue
                *Pixel = 0;
                ++Pixel;

                //green
                *Pixel = 255;
                ++Pixel;

                //red
                *Pixel = 0;
                ++Pixel;

                *Pixel = 0;
                ++Pixel;
            }
            else if (data[vecy][vecx] == 2)
            {
                // snake
                //blue
                *Pixel = 0;
                ++Pixel;

                //green
                *Pixel = 0;
                ++Pixel;

                //red
                *Pixel = 255;
                ++Pixel;

                *Pixel = 0;
                ++Pixel;
            }
            else if (data[vecy][vecx] == 3)
            {
                // ???
                //blue
                *Pixel = 255;
                ++Pixel;

                //green
                *Pixel = 0;
                ++Pixel;

                //red
                *Pixel = 0;
                ++Pixel;

                *Pixel = 0;
                ++Pixel;
            }
            else if (data[vecy][vecx] == 4)
            {
                //set to purple
                //blue
                *Pixel = 226;
                ++Pixel;

                //green
                *Pixel = 43;
                ++Pixel;

                //red
                *Pixel = 138;
                ++Pixel;

                *Pixel = 0;
                ++Pixel;
            }
            else
            {
                //blue
                *Pixel = 0;
                ++Pixel;

                //green
                *Pixel = 0;
                ++Pixel;

                //red
                *Pixel = 0;
                ++Pixel;

                *Pixel = 0;
                ++Pixel;
                // move along
                //++Pixel;
                //++Pixel;
                //++Pixel;
                //++Pixel;
            }
            vecx = X / 10;
        }
        Row += Pitch;
        vecy = Y / 10;
    }
}

void resetGame()
{
    applex = 0;
    appley = 0;
    timer_amount = 100;

    // init snake direction
    direction.x = 1;
    direction.y = 0;

    // init snake
    snakepoints.clear();
    Point p1 = Point();
    p1.x = 3;
    p1.y = 0;
    snakepoints.push_back(p1);

    Point p2 = Point();
    p2.x = 2;
    p2.y = 0;
    snakepoints.push_back(p2);

    Point p3 = Point();
    p3.x = 1;
    p3.y = 0;
    snakepoints.push_back(p3);

    Point p4 = Point();
    p4.x = 0;
    p4.y = 0;
    snakepoints.push_back(p4);

    for (int i = 0; i < snakepoints.size(); i++)
    {
        data[snakepoints[i].y][snakepoints[i].x] = 2;
    }

    setApple();
    setVectorToMemory();

    SetTimer(WindowHandle, IDT_TIMER1, timer_amount, NULL);
}

void gameOver()
{
    Beep(350, 300);
    KillTimer(WindowHandle, IDT_TIMER1);
    gameover_row = 0;
    SetTimer(WindowHandle, IDT_TIMER2, 20, NULL);
}

void gameover_update_complete()
{
    KillTimer(WindowHandle, IDT_TIMER2);
    resetGame();
}

void gameover_update()
{
    if (wipedown)
    {
        for (int x = 0; x <= data[gameover_row].size(); x++)
        {
            data[gameover_row][x] = 4;
        }
        setVectorToMemory();
        gameover_row++;
        if (gameover_row >= blocksperheight - 1)
        {
            gameover_row = blocksperheight - 1;
            wipedown = false;
        }
    }
    else
    {
        for (int x = data[gameover_row].size(); x > -1; x--)
        {
            data[gameover_row][x] = 0;
        }
        setVectorToMemory();
        gameover_row--;
        if (gameover_row < 0)
        {
            gameover_update_complete();
            wipedown = true;
        }
    }
}

void init(int Width, int Height)
{
    // we are initializing the bitmap memory buffer here
    // this can be called on resize too but for now stick to fixed window

    if (BitmapMemory)
    {
        VirtualFree(BitmapMemory, 0, MEM_RELEASE);
    }

    BitmapWidth = Width;
    BitmapHeight = Height;

    BitmapInfo.bmiHeader.biSize = sizeof(BitmapInfo.bmiHeader);
    BitmapInfo.bmiHeader.biWidth = Width;
    BitmapInfo.bmiHeader.biHeight = Height;
    BitmapInfo.bmiHeader.biPlanes = 1;
    BitmapInfo.bmiHeader.biBitCount = 32;
    BitmapInfo.bmiHeader.biCompression = BI_RGB;
    BitmapInfo.bmiHeader.biSizeImage = 0;
    BitmapInfo.bmiHeader.biXPelsPerMeter = 0;
    BitmapInfo.bmiHeader.biYPelsPerMeter = 0;
    BitmapInfo.bmiHeader.biClrUsed = 0;
    BitmapInfo.bmiHeader.biClrImportant = 0;

    int BitmapMemorySize = (Width * Height) * BytesPerPixel;
    BitmapMemory = VirtualAlloc(0, BitmapMemorySize, MEM_COMMIT, PAGE_READWRITE);

    // init other variables here
    blocksperwidth = Width / 10;
    blocksperheight = Height / 10;
    data.resize(blocksperheight, std::vector<int>(blocksperwidth, 0));

    resetGame();
}

void draw(HDC DeviceContext, RECT *WindowRect, int X, int Y, int Width, int Height)
{
    // update memory state bitmap to window
    // this is a rect to rect copy
    int WindowWidth = WindowRect->right - WindowRect->left;
    int WindowHeight = WindowRect->bottom - WindowRect->top;
    StretchDIBits(
        DeviceContext,
        //X, Y, Width, Height, X, Y, Width, Height,
        0, 0, BitmapWidth, BitmapHeight,
        0, WindowHeight + 1, WindowWidth, -WindowHeight,
        BitmapMemory,
        &BitmapInfo,
        DIB_RGB_COLORS, SRCCOPY);
}

void update()
{
    // Update game simulation
    // set everything in our 10x10 grid and have that write to memory

    //move snake
    moveSnake();

    // is the snake head colliding with apple?
    if (snakepoints[0].x == applex && snakepoints[0].y == appley)
    {
        collectApple();
    }

    // check if snake is colliding with itself
    for (int i = 0; i < snakepoints.size(); i++)
    {
        if (i > 0)
        {
            if (snakepoints[i].x == snakepoints[0].x && snakepoints[i].y == snakepoints[0].y)
            {
                gameOver();
            }
        }
    }

    setVectorToMemory();
}

LRESULT CALLBACK
MainWindowCallback(HWND Window, UINT Message, WPARAM WParam, LPARAM LParam)
{
    LRESULT Result = 0;
    switch (Message)
    {
    case WM_SIZE:
    {
        RECT ClientRect;
        GetClientRect(Window, &ClientRect);
        int Width = ClientRect.right - ClientRect.left;
        int Height = ClientRect.bottom - ClientRect.top;
        init(Width, Height);
    }
    break;

    case WM_CLOSE:
    {
        Running = false;
    }
    break;

    case WM_ACTIVATEAPP:
    {
        //std::cout << "WM_ACTIVATEAPP" << std::endl;
    }
    break;

    case WM_DESTROY:
    {
        KillTimer(WindowHandle, IDT_TIMER1);
        Running = false;
        break;
    }
    break;

    case WM_PAINT:
    {
        PAINTSTRUCT Paint;
        HDC DeviceContext = BeginPaint(Window, &Paint);
        int X = Paint.rcPaint.left;
        int Y = Paint.rcPaint.top;
        int Width = Paint.rcPaint.right - Paint.rcPaint.left;
        int Height = Paint.rcPaint.bottom - Paint.rcPaint.top;

        RECT ClientRect;
        GetClientRect(Window, &ClientRect);
        update();
        draw(DeviceContext, &ClientRect, X, Y, Width, Height);
        EndPaint(Window, &Paint);
    }
    break;

    case WM_KEYDOWN:
    {
        switch (WParam)
        {
        case VK_LEFT:
            if (direction.x != 1)
            {
                direction.x = -1;
                direction.y = 0;
            }
            break;
        case VK_RIGHT:
            if (direction.x != -1)
            {
                direction.x = 1;
                direction.y = 0;
            }
            break;
        case VK_UP:
            if (direction.y != 1)
            {
                direction.x = 0;
                direction.y = -1;
            }
            break;
        case VK_DOWN:
            if (direction.y != -1)
            {
                direction.x = 0;
                direction.y = 1;
            }
            break;
        case VK_ESCAPE:
            Running = false;
            break;
        }
    }
    break;

    case WM_TIMER:
    {
        switch (WParam)
        {
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
    {
        Result = DefWindowProc(Window, Message, WParam, LParam);
    }
    break;
    }
    return (Result);
}

int CALLBACK WinMain(HINSTANCE Instance, HINSTANCE PrevInstance, LPSTR CommandLine, int ShowCode)
{
    WNDCLASS WindowClass = {};

    WindowClass.lpfnWndProc = MainWindowCallback;
    WindowClass.hInstance = Instance;
    //WindowClass.hIcon;
    WindowClass.lpszClassName = "WinSnakeWindowClass";

    if (RegisterClassA(&WindowClass))
    {
        WindowHandle = CreateWindowExA(
            0, WindowClass.lpszClassName, "WinSnake",
            WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX | WS_VISIBLE,
            CW_USEDEFAULT, CW_USEDEFAULT,
            800, 600, 0, 0, Instance, 0);
        if (WindowHandle)
        {
            SetTimer(WindowHandle, IDT_TIMER1, timer_amount, NULL);

            Running = true;
            while (Running)
            {
                MSG Message;
                while (PeekMessage(&Message, 0, 0, 0, PM_REMOVE))
                {
                    if (Message.message == WM_QUIT)
                    {
                        Running = false;
                    }
                    TranslateMessage(&Message);
                    DispatchMessageA(&Message);
                }

                HDC DeviceContext = GetDC(WindowHandle);
                RECT ClientRect;
                GetClientRect(WindowHandle, &ClientRect);
                int WindowWidth = ClientRect.right - ClientRect.left;
                int WindowHeight = ClientRect.bottom - ClientRect.top;
                draw(DeviceContext, &ClientRect, 0, 0, WindowWidth, WindowHeight);
                ReleaseDC(WindowHandle, DeviceContext);
            }
        }
        else
        {
            MessageBox(0, "Failed to create window", "Error", MB_ICONEXCLAMATION | MB_OK);
        }
    }
    else
    {
        MessageBox(0, "Failed to create window", "Error", MB_ICONEXCLAMATION | MB_OK);
    }

    return (0);
}