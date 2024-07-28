import 'package:filepicker_windows/filepicker_windows.dart';

// Adds the Public Music folder to the common places list displayed on the left
// hand side of the file item chooser. On Windows 11, this may appear under the
// "Application Links" node.

void main() {
  final picker = OpenFilePicker()
    ..addPlace(WindowsKnownFolder.PublicMusic, Place.bottom);

  final result = picker.getFile();
  if (result != null) {
    print(result.path);
  }
}
