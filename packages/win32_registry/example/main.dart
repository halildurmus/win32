import 'package:win32_registry/win32_registry.dart';

void main() {
  final key = LOCAL_MACHINE.open(
    r'Software\Microsoft\Windows NT\CurrentVersion',
  );
  final buildNumber = key.getString('CurrentBuild');
  if (buildNumber != null) {
    print('Windows build number: $buildNumber');
  }
  key.close();
}
