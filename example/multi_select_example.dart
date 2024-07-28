import 'package:filepicker_windows/filepicker_windows.dart';

// Multi-select file open dialog box example

void main() {
  final file = OpenFilePicker()
    ..filterSpecification = {
      'Word Document (*.doc)': '*.doc',
      'Web Page (*.htm; *.html)': '*.htm;*.html',
      'Text Document (*.txt)': '*.txt',
      'All Files': '*.*'
    }
    ..defaultFilterIndex = 0
    ..defaultExtension = 'doc'
    ..title = 'Select document(s)';

  for (final file in file.getFiles()) {
    print(file.path);
  }
}
