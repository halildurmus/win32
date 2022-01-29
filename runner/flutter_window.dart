import 'win32_window.dart';

// Temporary
class DartProject {
  DartProject(String s);
}

// A window that does nothing but host a Flutter view.
class FlutterWindow extends Win32Window {
  // Creates a new FlutterWindow driven by the |run_loop|, hosting a
  // Flutter view running |project|.
  FlutterWindow(this.project);

  // Win32Window:
  void OnCreate() {}
  void OnDestroy() {}

  // The project to run.
  final DartProject project;

  void SetQuitOnClose(bool bool) {}

  // The Flutter instance hosted by this window.
  // FlutterViewController flutter_controller_;
}
