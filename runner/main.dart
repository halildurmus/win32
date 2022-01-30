import 'dart:ffi';

import 'package:ffi/ffi.dart' show calloc;
import 'package:win32/win32.dart';

import 'flutter_window.dart';
import 'utils.dart';
import 'win32_window.dart';

const EXIT_SUCCESS = 0;
const EXIT_FAILURE = 1;

int main(List<String> args) {
  // Attach to console when present (e.g., 'flutter run') or create a
  // new console when running with a debugger.
  if (AttachConsole(ATTACH_PARENT_PROCESS) == FALSE &&
      IsDebuggerPresent() == TRUE) {
    CreateAndAttachConsole();
  }

  CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);

  final project = const DartProject(
      aotLibraryPath:
          r'C:\scratch\runner_app\build\windows\runner\Release\data\app.so',
      icuDataPath:
          r'C:\scratch\runner_app\build\windows\runner\Release\data\icudtl.dat',
      assetsPath:
          r'C:\scratch\runner_app\build\windows\runner\Release\data\flutter_assets');

  // TODO: Deal with command line arguments

  final window = FlutterWindow(project);
  final origin = Point(10, 10);
  final size = Size(1280, 720);
  if (!window.CreateAndShow('runner', origin, size)) {
    return EXIT_FAILURE;
  }
  window.quitOnClose = true;

  final msg = calloc<MSG>();
  while (GetMessage(msg, NULL, 0, 0) == TRUE) {
    TranslateMessage(msg);
    DispatchMessage(msg);
  }
  free(msg);
  CoUninitialize();
  return EXIT_SUCCESS;
}
