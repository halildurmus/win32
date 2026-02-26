import 'package:filepicker_windows/filepicker_windows.dart';

// Adds the Public Music folder to the custom places list displayed on the
// left-hand side of the dialog. On Windows 11, this may appear under the
// "Application Links" node.
void main() {
  final picker = OpenFilePicker()..addPlace(.PublicMusic, .bottom);

  final file = picker.getFile();
  if (file != null) {
    print('Selected file: ${file.path}');
  } else {
    print('No file selected.');
  }
}
