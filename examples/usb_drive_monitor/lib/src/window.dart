import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'events.dart';
import 'parser.dart';

final class Win32Window {
  Win32Window(this._emit);

  final void Function(UsbDriveEvent) _emit;

  static final Map<HWND, Win32Window> _registry = {};

  final PCWSTR _className = 'UsbDriveMonitorWindow'.toPcwstr();
  late final HWND hWnd;
  final _hInstance = HINSTANCE(GetModuleHandle(null).value);
  late final NativeCallable<WNDPROC> _wndProc;
  late final _token = HWND(Pointer.fromAddress(identityHashCode(this)));

  void create() => using((arena) {
    _wndProc = NativeCallable.isolateLocal(_windowProc, exceptionalReturn: 0);

    final wc = arena<WNDCLASS>();
    wc.ref
      ..lpfnWndProc = _wndProc.nativeFunction
      ..hInstance = _hInstance
      ..lpszClassName = .new(_className);
    final result = RegisterClass(wc);
    if (result.value == 0 && result.error != ERROR_CLASS_ALREADY_EXISTS) {
      throw WindowsException(result.error.toHRESULT());
    }

    _registry[_token] = this;
    final Win32Result(value: hwnd, :error) = CreateWindowEx(
      WS_EX_LEFT,
      _className,
      arena.pcwstr(''),
      WS_OVERLAPPED,
      0,
      0,
      0,
      0,
      null,
      null,
      _hInstance,
      _token,
    );
    if (hwnd.isNull) throw WindowsException(error.toHRESULT());

    hWnd = hwnd;
  });

  void destroy() {
    DestroyWindow(hWnd);
    UnregisterClass(_className, _hInstance);
    free(_className);
    _registry.remove(_token);
    _wndProc.close();
  }

  static int _windowProc(Pointer hWnd, int msg, int wParam, int lParam) {
    final hwnd = HWND(hWnd);
    switch (msg) {
      case WM_CREATE:
        final cs = Pointer<CREATESTRUCT>.fromAddress(lParam).ref;
        SetWindowLongPtr(hwnd, GWLP_USERDATA, cs.lpCreateParams.address);
        return 0;

      case WM_DEVICECHANGE:
        final Win32Result(value: token, :error) = GetWindowLongPtr(
          hwnd,
          GWLP_USERDATA,
        );
        if (token == 0) throw WindowsException(error.toHRESULT());
        final window = _registry[HWND(Pointer.fromAddress(token))];
        window?._handleDeviceChange(wParam, lParam);
        return 0;
    }

    return DefWindowProc(hwnd, msg, .new(wParam), .new(lParam));
  }

  void _handleDeviceChange(int wParam, int lParam) {
    final events = DeviceChangeParser.parse(wParam, lParam);
    for (final event in events) {
      _emit(event);
    }
  }
}
