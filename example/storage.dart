import 'package:win32/win32.dart';

void main() {
  winrtInitialize();

  // Requires a package identity.
  final currAppData = ApplicationData.current;
  print(currAppData.trustLevel);
  final localFolder = IStorageItem.fromRawPointer(currAppData.localFolder);
  final localPath = localFolder.path;

  print('Local folder path: $localPath');

  winrtUninitialize();
}
