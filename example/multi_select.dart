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
    ..title = 'Select document(s)';

  final files = picker.getFiles();
  if (files.isEmpty) {
    print('No files selected.');
  } else {
    print('Selected ${files.length} file(s):');
    for (final file in files) {
      print('  - ${file.path}');
    }
  }
}
