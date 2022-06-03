import 'package:win32/win32.dart';

void main() {
  winrtInitialize();

  // Requires a package identity.
  final currAppData = ApplicationData.Current;
  print(currAppData.trustLevel);
  final localFolder = IStorageItem(currAppData.LocalFolder);
  final localPath = localFolder.Path;

  print('Local folder path: $localPath');

  winrtUninitialize();
}
