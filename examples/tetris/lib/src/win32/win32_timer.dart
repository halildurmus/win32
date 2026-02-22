import 'package:win32/win32.dart';

final class Win32Timer {
  Win32Timer({required this.hWnd, required this.id, required this.intervalMs});

  final HWND hWnd;
  final int id;
  final int intervalMs;

  var _active = false;

  void start() {
    if (_active) return;
    final Win32Result(:value, :error) = SetTimer(hWnd, id, intervalMs, null);
    if (value == 0) throw WindowsException(error.toHRESULT());
    _active = true;
  }

  void stop() {
    if (!_active) return;
    final Win32Result(:value, :error) = KillTimer(hWnd, id);
    if (!value) throw WindowsException(error.toHRESULT());
    _active = false;
  }
}
