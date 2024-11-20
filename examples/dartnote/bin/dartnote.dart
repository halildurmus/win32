import 'package:dartnote/dartnote.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:win32/win32.dart';

void main() {
  LeakTracker.enableInDebug();

  registerHighDPISupport();
  Win32Window(title: 'DartNote')
    ..show()
    ..messageLoop();

  LeakTracker.verifyNoLeaksInDebug();
}
