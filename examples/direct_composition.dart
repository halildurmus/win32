import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:image/image.dart' as img;
import 'package:win32/win32.dart';

const imageUrl =
    'https://flutter.dev/assets/lockup_flutter_vertical.7e432d07dc23bc4f2c04fbaac8d8670e.png';
const title = 'DirectComposition Demo Application';
const logicalWidth = 400;
const logicalHeight = 400;

Future<void> main() async {
  CoInitializeEx(COINIT_APARTMENTTHREADED);
  registerHighDPISupport();

  final imageBytes = await fetchImageBytes(imageUrl);
  final hInstance = HINSTANCE(GetModuleHandle(null).value);
  final wndProc = NativeCallable<WNDPROC>.isolateLocal(
    _windowProc,
    exceptionalReturn: 0,
  );
  final className = 'DartDirectCompositionDemoWindow'.toPcwstr();

  // Register the window class.
  using((arena) {
    final wc = arena<WNDCLASSEX>();
    wc.ref
      ..cbSize = sizeOf<WNDCLASSEX>()
      ..style = CS_HREDRAW | CS_VREDRAW
      ..lpfnWndProc = wndProc.nativeFunction
      ..hInstance = hInstance
      ..hbrBackground = .new(Pointer.fromAddress(COLOR_WINDOW + 1))
      ..hCursor = LoadCursor(null, IDC_ARROW).value
      ..lpszClassName = .new(className);
    final result = RegisterClassEx(wc);
    if (result.value == 0) throw WindowsException(result.error.toHRESULT());
  });

  final size = dpiAwareSize(logicalWidth, logicalHeight);

  // Create the window.
  final hWnd = using((arena) {
    final Win32Result(value: hWnd, :error) = CreateWindowEx(
      WS_EX_LEFT,
      className,
      arena.pcwstr(title),
      WS_OVERLAPPEDWINDOW & ~WS_THICKFRAME & ~WS_MAXIMIZEBOX,
      CW_USEDEFAULT,
      CW_USEDEFAULT,
      size.width,
      size.height,
      null,
      null,
      hInstance,
      null,
    );
    if (hWnd.isNull) throw WindowsException(error.toHRESULT());
    return hWnd;
  });

  var hBitmap = loadImageAsBitmap(
    imageBytes,
    maxWidth: size.width,
    maxHeight: size.height,
  );

  final pD3D11Device = adaptiveCalloc<VTablePointer>();
  D3D11CreateDevice(
    null,
    D3D_DRIVER_TYPE_HARDWARE,
    null,
    D3D11_CREATE_DEVICE_BGRA_SUPPORT,
    null,
    0,
    D3D11_SDK_VERSION,
    pD3D11Device,
    null,
    null,
  );
  final d3d11Device = ID3D11Device(pD3D11Device.value);
  free(pD3D11Device);
  final dxgiDevice = d3d11Device.queryInterface<IDXGIDevice>();
  final dCompDevice = DCompositionCreateDevice2<IDCompositionDesktopDevice>(
    dxgiDevice,
  );
  dxgiDevice.release();

  final dCompTarget = dCompDevice.createTargetForHwnd(hWnd, true)!;

  // Reload bitmap at logical (un-DPI-scaled) size for the visual tree.
  hBitmap = loadImageAsBitmap(
    imageBytes,
    maxWidth: logicalWidth,
    maxHeight: logicalHeight,
  );

  buildVisualTree(hWnd, hBitmap, dCompDevice, dCompTarget);

  // Show the window.
  ShowWindow(hWnd, SW_SHOWNORMAL);
  UpdateWindow(hWnd);

  // Message loop.
  final msg = adaptiveCalloc<MSG>();
  while (GetMessage(msg, null, 0, 0).value) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }

  // Cleanup.
  free(msg);
  wndProc.close();
  UnregisterClass(className, hInstance);
  free(className);
  dCompTarget.release();
  dCompDevice.release();
  d3d11Device.release();
  hBitmap.close();

  CoUninitialize();
}

int _windowProc(Pointer hWnd, int uMsg, int wParam, int lParam) {
  switch (uMsg) {
    case WM_DESTROY:
      PostQuitMessage(0);
      return 0;
  }
  return DefWindowProc(.new(hWnd), uMsg, .new(wParam), .new(lParam));
}

/// Creates an [IDCompositionSurface] and copies [hBitmap] onto it using GDI.
IDCompositionSurface createGDIRenderedDCompSurface(
  HBITMAP hBitmap,
  IDCompositionDevice2 dcompDevice,
) => using((arena) {
  final bmp = arena<BITMAP>();
  final bmpSize = GetObject(.new(hBitmap), sizeOf<BITMAP>(), bmp);
  if (bmpSize == 0) {
    throw StateError('GetObject failed to retrieve bitmap information.');
  }

  final BITMAP(:bmWidth, :bmHeight) = bmp.ref;
  final surface = dcompDevice.createSurface(
    bmWidth,
    bmHeight,
    DXGI_FORMAT_B8G8R8A8_UNORM,
    DXGI_ALPHA_MODE_IGNORE,
  );

  final pointOffset = arena<POINT>();
  final dxgiSurface1 = surface!.beginDraw<IDXGISurface1>(null, pointOffset);
  final POINT(:x, :y) = pointOffset.ref;
  final surfaceDC = dxgiSurface1.getDC(false);

  final hBitmapDC = CreateCompatibleDC(surfaceDC);
  if (hBitmapDC.isNotNull) {
    final hBitmapOld = SelectObject(hBitmapDC, .new(hBitmap));
    BitBlt(surfaceDC, x, y, bmWidth, bmHeight, hBitmapDC, 0, 0, SRCCOPY);
    if (hBitmapOld.isNotNull) SelectObject(hBitmapDC, hBitmapOld);
    DeleteDC(hBitmapDC);
  }

  dxgiSurface1.releaseDC(null);
  surface.endDraw();
  dxgiSurface1.release();

  return surface;
});

/// Builds a minimal visual tree and commits it to the compositor.
void buildVisualTree(
  HWND hwnd,
  HBITMAP hBitmap,
  IDCompositionDesktopDevice dCompDevice,
  IDCompositionTarget dCompTarget,
) {
  final clientRect = adaptiveCalloc<RECT>();
  GetClientRect(hwnd, clientRect);
  final RECT(:right, :bottom) = clientRect.ref;
  free(clientRect);
  final (:width, :height) = bitmapSize(hBitmap);
  final xOffset = ((right - width) / 2).roundToDouble();
  final yOffset = ((bottom - height) / 2).roundToDouble();

  final visual = dCompDevice.createVisual();
  if (visual == null) {
    throw StateError('Failed to create DirectComposition visual.');
  }

  try {
    final surface = createGDIRenderedDCompSurface(hBitmap, dCompDevice);
    try {
      final animation = dCompDevice.createAnimation()!;
      try {
        const degreesPerSecond = 90.0;
        const totalDuration = 3600.0;
        animation
          ..addCubic(0, 0, degreesPerSecond, 0, 0)
          ..end(totalDuration, degreesPerSecond * totalDuration);

        final rotateTransform = dCompDevice.createRotateTransform3D()!;
        try {
          rotateTransform
            ..setAngle(animation)
            ..setAxisX2(0)
            ..setAxisY2(1)
            ..setAxisZ2(0)
            ..setCenterX2(width / 2)
            ..setCenterY2(height / 2)
            ..setCenterZ2(0);

          visual
            ..setContent(surface)
            ..setOffsetX2(xOffset)
            ..setOffsetY2(yOffset);

          final visual3 = visual.queryInterface<IDCompositionVisual3>();
          try {
            visual3.setTransform3(rotateTransform);
          } finally {
            visual3.release();
          }
        } finally {
          rotateTransform.release();
        }
      } finally {
        animation.release();
      }

      dCompTarget.setRoot(visual);
      dCompDevice.commit();
    } finally {
      surface.release();
    }
  } finally {
    visual.release();
  }
}

Future<Uint8List> fetchImageBytes(String url) async {
  final client = HttpClient();
  try {
    final request = await client.getUrl(.parse(url));
    final response = await request.close();
    if (response.statusCode != HttpStatus.ok) {
      throw StateError('Failed to fetch image: HTTP ${response.statusCode}');
    }
    final buffer = <int>[];
    await for (final chunk in response) {
      buffer.addAll(chunk);
    }
    return Uint8List.fromList(buffer);
  } finally {
    client.close();
  }
}

HBITMAP loadImageAsBitmap(
  Uint8List data, {
  int maxWidth = 0,
  int maxHeight = 0,
  double scale = 0.5,
}) {
  final bgra = img.decodeImage(data);
  if (bgra == null) throw StateError('Failed to decode image data.');

  final img.Image image;
  if (maxWidth > 0 && maxHeight > 0) {
    final fitW = maxWidth * scale;
    final fitH = maxHeight * scale;
    if (bgra.width > fitW || bgra.height > fitH) {
      final s = (fitW / bgra.width) < (fitH / bgra.height)
          ? fitW / bgra.width
          : fitH / bgra.height;
      image = img.copyResize(
        bgra,
        width: (bgra.width * s).round(),
        height: (bgra.height * s).round(),
        interpolation: img.Interpolation.linear,
      );
    } else {
      image = bgra;
    }
  } else {
    image = bgra;
  }

  return using((arena) {
    final bmi = arena<BITMAPINFO>();
    bmi.ref.bmiHeader
      ..biSize = sizeOf<BITMAPINFOHEADER>()
      ..biWidth = image.width
      ..biHeight = -image.height
      ..biPlanes = 1
      ..biBitCount = 32
      ..biCompression = BI_RGB;

    final ppvBits = arena<Pointer<Uint8>>();
    final Win32Result(:value, :error) = CreateDIBSection(
      null,
      bmi,
      DIB_RGB_COLORS,
      ppvBits,
      null,
      0,
    );
    if (value.isNull) throw WindowsException(error.toHRESULT());

    final pixels = ppvBits.value;
    var offset = 0;
    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        final pixel = image.getPixel(x, y);
        pixels[offset++] = pixel.b.toInt();
        pixels[offset++] = pixel.g.toInt();
        pixels[offset++] = pixel.r.toInt();
        pixels[offset++] = pixel.a.toInt();
      }
    }

    return value;
  });
}

({int width, int height}) dpiAwareSize(int logicalWidth, int logicalHeight) {
  final hdc = GetDC(null);
  final dpiX = GetDeviceCaps(hdc, LOGPIXELSX);
  final dpiY = GetDeviceCaps(hdc, LOGPIXELSY);
  ReleaseDC(null, hdc);
  return (
    width: (logicalWidth * dpiX / 96).ceil(),
    height: (logicalHeight * dpiY / 96).ceil(),
  );
}

({int width, int height}) bitmapSize(HBITMAP hBitmap) => using((arena) {
  final bmp = arena<BITMAP>();
  GetObject(.new(hBitmap), sizeOf<BITMAP>(), bmp);
  return (width: bmp.ref.bmWidth, height: bmp.ref.bmHeight);
});
