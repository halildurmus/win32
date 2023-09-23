// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// A Dart library that provides a comprehensive Dart API for interacting with
/// the Windows Clipboard.
///
/// This library allows you to perform various clipboard operations, such as
/// clearing the clipboard, retrieving data in different formats, storing data,
/// and checking the availability of specific data formats.
///
/// Example:
/// ```dart
/// import 'package:win32_clipboard/win32_clipboard.dart';
///
/// void main() {
///   // Check if text data is available on the clipboard.
///   if (Clipboard.hasText) {
///     final clipboardText = Clipboard.getText();
///     print('Text on clipboard: $clipboardText');
///   } else {
///     print('Clipboard does not contain text.');
///   }
///
///   // Set text data on the clipboard.
///   Clipboard.setText('Hello, Clipboard!');
///
///   // Check the available clipboard formats.
///   final availableFormats = Clipboard.formats;
///   print('Available clipboard formats: $availableFormats');
/// }
/// ```
library;

export 'src/clipboard.dart';
export 'src/models/models.dart';
