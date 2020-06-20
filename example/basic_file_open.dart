import 'package:filepicker_windows/filepicker_windows.dart';

// Basic file open
void main() {
  final file = OpenFilePicker();

  file.filterSpecification = {
    'Word Document (*.doc)': '*.doc',
    'Web Page (*.htm; *.html)': '*.htm;*.html',
    'Text Document (*.txt)': '*.txt',
    'All Files': '*.*'
  };
  file.defaultFilterIndex = 0;
  file.defaultExtension = 'doc';
  file.title = 'Select an image';
  final result = file.getFile();
  if (result != null) {
    print(result.path);
  }
}
