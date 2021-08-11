import 'package:win32/win32.dart';

void CreateAndAttachConsole() {
  if (AllocConsole() != 0) {
    // FILE *unused;
    // if (freopen_s(&unused, "CONOUT$", "w", stdout)) {
    //   _dup2(_fileno(stdout), 1);
    // }
    // if (freopen_s(&unused, "CONOUT$", "w", stderr)) {
    //   _dup2(_fileno(stdout), 2);
    // }
    // std::ios::sync_with_stdio();
    // FlutterDesktopResyncOutputStreams();
  }
}
