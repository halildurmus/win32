// msgbox.dart

// Demonstrates a MessageBox from the console

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void showTaskDialog() {
  final message =
      TEXT('Some text that will be displayed in the task dialog goes here.');
  final title = TEXT('Title message goes here');

  // Requires a reference to comctl32.dll v6 in the manifest to work
  final hr = TaskDialog(
      NULL,
      NULL,
      title,
      message,
      nullptr,
      TASKDIALOG_COMMON_BUTTON_FLAGS.TDCBF_OK_BUTTON,
      TD_INFORMATION_ICON,
      nullptr);
  print(hr);

  free(title);
  free(message);
}

void showMessageBox() {
  final message =
      TEXT('This is not really an error, but we are pretending for the sake '
          'of this test.\n\nResource error.\nDo you want to try again?');
  final title = TEXT('Dart MessageBox Test');

  final result = MessageBox(
      NULL,
      message,
      title,
      MB_ICONWARNING | // Warning
          MB_CANCELTRYCONTINUE | // Action button
          MB_DEFBUTTON2 // Second button is the default
      );

  free(message);
  free(title);

  switch (result) {
    case IDCANCEL:
      print('Cancel pressed');
      break;
    case IDTRYAGAIN:
      print('Try Again pressed');
      break;
    case IDCONTINUE:
      print('Continue pressed');
      break;
  }
}

void main() {
  showMessageBox();

  // Commenting out for general purposes, since this needs a Dart2Native
  // executable with an app manifest to work.
  showTaskDialog();
}
