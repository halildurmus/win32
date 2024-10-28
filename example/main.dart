import 'package:win32_clipboard/win32_clipboard.dart';

void main() {
  // Clear the clipboard initially.
  if (Clipboard.clear()) print('Clipboard cleared.');

  // Check if the clipboard is empty.
  if (Clipboard.isEmpty) print('Clipboard is empty.');

  // Set text data to the clipboard.
  const text = 'Hello, Clipboard!';
  if (Clipboard.setText(text)) print('Text set to clipboard: "$text"');

  // Check if the clipboard has text data (optional).
  if (Clipboard.hasText) {
    print('Clipboard has text data.');
    // Retrieve and print the text data from the clipboard.
    final text = Clipboard.getText();
    print('Retrieved text from clipboard: "$text"');
  }

  // Set file list data to the clipboard.
  final files = [r'c:\src\file1.dart', r'd:\file2.txt'];
  if (Clipboard.setFileList(files)) print('File list set to clipboard: $files');

  // Check if the clipboard has a file list (optional).
  if (Clipboard.hasFileList) {
    print('Clipboard has file list data.');
    // Retrieve and print the file list from the clipboard.
    final fileList = Clipboard.getFileList();
    print('Retrieved file list from clipboard: $fileList');
  }

  // Clear the clipboard.
  if (Clipboard.clear()) print('Clipboard contents cleared.');
}
