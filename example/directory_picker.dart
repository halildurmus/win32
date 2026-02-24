import 'package:filepicker_windows/filepicker_windows.dart';

void main() {
  final picker = DirectoryPicker()..title = 'Select a directory';

  final directory = picker.getDirectory();
  if (directory != null) {
    print('Selected directory: ${directory.path}');
  } else {
    print('No directory selected.');
  }
}
