import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:system_tray_icon/system_tray_icon.dart';
import 'package:win32/win32.dart';

void main() {
  LeakTracker.enableInDebug();

  registerHighDPISupport();
  Win32Window(title: 'System Tray Icon').messageLoop();

  LeakTracker.verifyNoLeaksInDebug();
}
