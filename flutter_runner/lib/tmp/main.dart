import 'dart:ffi';

import 'package:win32/win32.dart';

import 'flutter_window.dart';
import 'runloop.dart';
import 'utils.dart';
import 'win32_window.dart';
import 'window_configuration.dart';

const EXIT_SUCCESS = 0;
const EXIT_FAILURE = 1;

int main() {

  // Attach to console when present (e.g., 'flutter run') or create a
  // new console when running with a debugger.
  if (AttachConsole(ATTACH_PARENT_PROCESS) == 0 && IsDebuggerPresent() != 0) {
    CreateAndAttachConsole();
  }


  CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);

  final run_loop = RunLoop();

  final project = DartProject("data");
  final window = FlutterWindow(run_loop, project);
  final origin = Point(kFlutterWindowOriginX, kFlutterWindowOriginY);
  final size = Size(kFlutterWindowWidth, kFlutterWindowHeight);
  if (!window.CreateAndShow(kFlutterWindowTitle, origin, size)) {
    return EXIT_FAILURE;
  }
  window.SetQuitOnClose(true);

  run_loop.Run();

  CoUninitialize();
  return EXIT_SUCCESS;
}
