import 'package:filepicker_windows/filepicker_windows.dart';

// Add items to common places
void main() {
  final picker = OpenFilePicker()
  ..addPlace(WindowsKnownFolder.PublicMusic, Place.bottom);

  final result = picker.getFile();
  if (result != null) {
    print(result.path);
  }
}
