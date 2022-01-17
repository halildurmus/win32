import 'package:win32_registry/win32_registry.dart';

void main() {
  final key = Registry.openPath(RegistryHive.localMachine,
      path: r'SOFTWARE\Microsoft\Windows NT\CurrentVersion');
  final buildNumber = key.getValueAsString('CurrentBuild');
  if (buildNumber != null) {
    print('Windows build number: $buildNumber');
  }
}
