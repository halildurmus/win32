import 'runloop.dart';
import 'win32_window.dart';

// Temporary
class DartProject {
  final String dir;

  DartProject(this.dir);
}

// A window that does nothing but host a Flutter view.
class FlutterWindow extends Win32Window {
  // Creates a new FlutterWindow driven by the |run_loop|, hosting a
  // Flutter view running |project|.
  FlutterWindow(this.run_loop, this.project);

  // Win32Window:
  void OnCreate() {}

  void OnDestroy() {}

  // The run loop driving events for this window.
  RunLoop run_loop;

  // The project to run.
  DartProject project;

  void SetQuitOnClose(bool bool) {}

// The Flutter instance hosted by this window.
// FlutterViewController flutter_controller_;
}
