import 'package:filepicker_windows/filepicker_windows.dart';

void main() {
  final file = DirectoryPicker()..title = 'Select a directory';

  final result = file.getDirectory();
  if (result != null) {
    print(result.path);
  }
}
