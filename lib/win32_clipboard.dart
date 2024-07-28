/// A Dart library that provides a friendly Dart API for accessing the Windows
/// Clipboard.
///
/// It allows you to perform common clipboard operations such as copying data to
/// the clipboard, pasting data from the clipboard, checking the available data
/// formats on the clipboard, clearing the clipboard, and more.
///
/// Here's a simple example of reading text from the clipboard:
///
/// ```dart
/// import 'package:win32_clipboard/win32_clipboard.dart';
///
/// void main() {
///   if (Clipboard.hasText) {
///     print('Clipboard text: ${Clipboard.getText()}');
///   }
/// }
/// ```
library;

export 'src/clipboard.dart';
export 'src/models/models.dart';
