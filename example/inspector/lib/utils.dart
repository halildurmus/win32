import 'package:win32_registry/win32_registry.dart';

class WindowsSystemConfiguration {
  static bool get isDarkMode {
    final key = CURRENT_USER.open(
      r'Software\Microsoft\Windows\CurrentVersion\Themes\Personalize',
    );
    try {
      // Default to light, since older versions of Windows that don't have this
      // key have no dark theme.
      return key.getInt('AppsUseLightTheme') == 0x00;
    } on Exception {
      // Registry security issue or some other unknown problem.
      return false;
    } finally {
      key.close();
    }
  }
}
