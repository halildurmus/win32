import 'package:filepicker_windows/filepicker_windows.dart';

void main() {
  final picker = OpenFilePicker()
    ..filterSpecification = {
      'Word Document (*.doc)': '*.doc',
      'Web Page (*.htm; *.html)': '*.htm;*.html',
      'Text Document (*.txt)': '*.txt',
      'All Files': '*.*',
    }
    ..defaultFilterIndex = 0
    ..defaultExtension = 'doc'
    ..title = 'Select a document';

  final file = picker.getFile();
  if (file != null) {
    print('Selected file: ${file.path}');
  } else {
    print('No file selected.');
  }
}
