import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:snake/snake.dart';
import 'package:win32/win32.dart';

void main() {
  LeakTracker.enableInDebug();

  registerHighDPISupport();
  Win32Window(title: 'Snake')
    ..show()
    ..messageLoop();

  LeakTracker.verifyNoLeaksInDebug();
}
